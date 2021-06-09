package admin;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.primefaces.context.RequestContext;
import org.primefaces.model.UploadedFile;

import com.amazonaws.services.s3.model.ObjectMetadata;

import packages.ServerRequest;
import packages.navigation;
import sQL_con.Credens;


@ManagedBean
@SessionScoped
public class Admin_user {

	
	private String id,title,paths,write_up,titles,write,verifys,create_p="",user="",pass="",source="",ads_link="",ads;
	private UploadedFile  uploadedFile,uploadedFile2;
	
		
	List<Admin_user> lis;
	
	static  String rols,r1,
				a0="Select Category",
				a1="Watch Video ",
				a2="Read More",
				a3="Music download",
				
				
				a4="Music",
				a5="News",
				a6="Gist",
				a7="Funny";
	 			
	 static int a=1,b=0;
	 static String sign="Main account";
	 
	

	
	
	
	


	
	
	
	public void read() {
		if(rols.equals(a0)) {
			message("Pls Select a Drop");
			a=1;
		}else
			if(rols.equals(a1)) {
			setRols(a1);
			a=2;
		}else 
			if(rols.equals(a2)) {
				setRols(a2);
				a=2;
				
			}
		else 
			if(rols.equals(a3)) {
				setRols(a3);
				a=2;
			}
		
	}
	
	
	public void read1() {
		
		if(r1.equals(a0)) 
			message("Pls Select a Drop");
			
		else
			if(r1.equals(a4)) 
				pass("Music",a4);
								
		else 
			if(r1.equals(a5)) 
				pass("News",a5);
			
		else 
			if(r1.equals(a6)) 
				pass("Gist",a6);
		
		else 
			if(r1.equals(a7)) 
				pass("Funny",a7);
			
		
	}
	
	

	public String change_view() {
		
		if(getSign().equals("Main account")){
		     b = 1; setSign("Switch Account"); ads_link="None"; write="None";}
		else{b = 0;  setSign("Main account"); ads_link=""; write="";}
		
		return "Control.xhtml";
	}
	
	
	
	
	public String  send_in() throws IOException {
		
		if( b  !=  1) {
		
		if(read_cre().trim().length()==0)
			message("Pls Sign in");
			else
		if(title.trim().length()==0 | write.trim().length()==0 & (a!=1))
			message("Pls Fill both Fields ! ");
		else
			if(new navigation().session().getAttribute("page")!=null)
				message("Pls Select a Page View");
		else
			if (uploadedFile.getSize()==0)
						message("Pls add a File");
			else
				 if(a == 1)
					 message("Pls Select Drop down ! ");
				 else
					 if(new navigation().session().getAttribute("st")==null)
					 message("Pls Select a Catgory 1");
				else 	
			        check_type(uploadedFile.getContentType(), name());	
				
		}
		else
			if( b == 1) 
				post_request();
		
		
		return  null;
	}
	
	

    
	private void post_request() {
		System.out.println("PASS");
		
		if(read_cre().trim().length()==0)
			message("Pls Sign in");
		else
			if(title.trim().length()==0 | write.trim().length()==0 & (a!=1))
				message("Pls Fill both Fields ! ");
			else
				if (uploadedFile.getSize()==0)
							message("Pls add a File");
				else
					send_in(uploadedFile.getContentType());
					
		
	}


    
	
	private void send_in(String contents) {
		
		 String a = "";
		 int n=contents.lastIndexOf(File.separator);
		 String	 string=contents.substring(n+1);
		 if(string.endsWith("png") | string.endsWith("jpg") | string.endsWith("jpeg") | string.endsWith("webp") | string.endsWith("svg") ) {
 		 	a=getSource().concat(".png").trim();
 		 	TYPE(a,"Vid",uploadedFile);
 		    clear();
		 }
		 else
			 message("Pls Select a Picture or image File.");
		
	}


	private String read_cre() {
	  FacesContext  context=FacesContext.getCurrentInstance();
	  String   x=context.getExternalContext().getRequestParameterMap().get("cre");
      return x;
	}




     private String check_type(String contentType, String x) throws IOException {
	 //System.out.println(contentType+"  Type");	 
	 int n=contentType.lastIndexOf(File.separator);
	 String	 string=contentType.substring(n+1);
	 String a=null; 
	
		  
		 		if(string.endsWith("mp4") | string.endsWith("mkv")) {
		 		
		 			if(uploadedFile.getSize()>0 && uploadedFile2.getSize()>0) {
		 		  
		 				a=x.concat(".mp4");
		 						TYPE(a,"Vid",uploadedFile);
		 			
		 			a=x.concat(".png");
		 			  title=	title.toLowerCase();
		 			    TYPE(a,"Pics",uploadedFile2);
		 			 
		 			  clear();
		 			    
		 		     	System.out.println("Video File "+string);
		 			}
		 			else
		 				message("Pls upload both a video and tumbnail ");
		 		
		 		}
		 		else
			 		 if(string.endsWith("png") | string.endsWith("jpg") 
			 				 | string.endsWith("jpeg") 
			 				 | string.endsWith("webp") 
			 				 | string.endsWith("svg") ) {
			 		 	a=x.concat(".png");
			 		 	TYPE(a,"Pics",uploadedFile);
			 		   clear();
			 		   
			 	   System.out.println("Pictute  file "+string);
			 		 }
		 		else 
		 			if (string.endsWith("mp3") | string.endsWith("mpeg")  | string.endsWith("octet-stream")) {
		 				a=x.concat(".mp3");
		 			title=	title.toLowerCase();
		 		      TYPE(a, "Music",uploadedFile);	
		 		     clear();
		 		     
		 		     System.out.println("Music File "+string);
		 			}
		 
		 
		 return a;
}


private void clear() {
	 title=""; write="";source=""; ads_link="";
	
}


private void TYPE(String a3, String string, UploadedFile nuploadedFile) {
	try {
		new ServerRequest().Upload_file(Credens.bucket,a3,nuploadedFile.getInputstream(),meta(nuploadedFile));
		String cn=null;
		
		if(!ads_link.trim().isEmpty() && !ads_link.trim().equals("None"))
			cn="reviews";
		else
			cn="0000";
			
		if(source.trim().isEmpty() && !source.trim().equals("None"))
			source="#";
		
		based_on(new ServerRequest().put_in_blogs(ads_link,source,title,write,getRols(),a3,(String)new navigation().session().getAttribute("st"),string,cn));	
		
		System.out.println("Key= "+a3);
		
	 } catch (IOException e) {
		System.out.println(e); 
		  message("Error Occured Pls  try again aws");
	}
}



private void based_on(int z) {
	if(z==200)
	message("Upload Successfully ! ");
	else
		message("Error Occured Pls  try again");
		


}






public ObjectMetadata meta( UploadedFile  kuploadedFile) {
ObjectMetadata  metadata=new ObjectMetadata();
	metadata.setContentLength(kuploadedFile.getSize());
	metadata.setContentType(kuploadedFile.getContentType());
	return metadata;
}


public String name() {
 long  time=System.currentTimeMillis();
 long date=System.nanoTime();
return	String.valueOf(time).concat(String.valueOf(date));
}









	public String video_drop() {
		if(read_cre().trim().length()==0)
			message("Pls Sign in");
			else
		new navigation().session().setAttribute("tables", "Vid_path");
	return null;
	}
	
	
public String pics_drop() {
	if(read_cre().trim().length()==0)
		message("Pls Sign in");
		else
	new navigation().session().setAttribute("tables", "Pics_path");
	return null;
	}


public String music_drop() {
	if(read_cre().trim().length()==0)
		message("Pls Sign in");
		else
	new navigation().session().setAttribute("tables", "Music_path");
	return null;
}


public String visit_drop() {
	if(read_cre().trim().length()==0)
		message("Pls Sign in");
		else
	new navigation().session().setAttribute("tables", "Visit_counts");
	return null;
}







	public String delete() {
		
		FacesContext  context=FacesContext.getCurrentInstance();
		String sx=context.getExternalContext().getRequestParameterMap().get("del");	
		String key=context.getExternalContext().getRequestParameterMap().get("pat");
		
		     int z= new ServerRequest().delete_from_table(
		    		 Integer.parseInt(sx=sx.substring(sx.indexOf(":")+1).trim()), 
		    		 (String)new  navigation().session().getAttribute("tables"));	 
		     
		     new ServerRequest().delete_single_item(Credens.bucket, key);
		    
		     if(new navigation().session().getAttribute("tables").toString().equals("Vid_path")) 
		    	 checker(key,".png",sub(key,".png"),"Pics_path");
		    else
		    	 if(new navigation().session().getAttribute("tables").toString().equals("Pics_path")) 	 
				    	 checker(key,".mp4",sub(key,".mp4"),"Vid_path");
		
		     
				     if(z==200) 
						message1("deleted");
				else
					message1("Error Occurred ! ");
				     
		return  null;
	}






	public List<Admin_user> getLis() {
		if(!starting().isEmpty())
		return new ServerRequest()
				.pick_table((String)new navigation()
						.session().getAttribute("tables"));
	return null;
}
	
	
	
	
	public void setLis(List<Admin_user> lis) {
		this.lis = lis;
	}



	
	public String  sign_out() {
		Pass_out("");
		new navigation()
		.session()
		.setAttribute("tables","0000");
		Admin_user  user=new Admin_user();
		starting().put("stat", user);
	return null;}
	
	




	public String authenticate_admin() {
		//System.out.println(user+"  "+pass);
		if(user.trim().length()>0  && pass.trim().length()>0) 
	   return   error_class( new ServerRequest().user_verify(user,pass));
		else
			if(create_p.trim().length()>0 && user.trim().length()>0) 
				return		error_class(new ServerRequest().add_amin(user, new Auth07().encrypt(create_p)));
			else
				message("Pls fill out Fields");
		
	return  null;}
	
	

	private String  error_class(int x) {
		//System.out.println(x);
		user=""; pass=""; create_p="";
	switch (x) {   
	
	case 0:
		message("Dead Request !  ");
		break;
		
	case 500:
		message("Internal Error  Sign in Failed ! ");
		break;
		
	case  200:
		message("Successfully Sign in");
		return "/Control.xhtml";
		
	case  406:
		message("Password not Correct");
		break;
		
	case 400:
		message("Exception Occured Pls try again");
		break;
		
	case 401:
		message("Unauthoriazed  Access" );
		break;
		
	case  201:
		message("Updated Admin Credentails");
		break;
		
	case  300:
		message("Connection Refused ! ");
		break;
		
	case 405:
			message("Error Could'nt Update admin Creden ! ");
			break;
			
	case 404:
		message("Cound'nt add admin Right");
		break;
		
		case 407:
			message("Error While Updating Admin");
			break;
			
		case 501:
			message("Email's  Incorrect");
			break;
			
	default:
		message("Failed Contact Support ! ");
		break;
	}

	return null;
	
	}

	
	
	
	@SuppressWarnings("deprecation")
	public void message1( String h) {
		 RequestContext context2=RequestContext.getCurrentInstance();
		 context2.execute("swal('"+h+"')");
	}	
	
	public void message( String h) {
		FacesContext context=FacesContext.getCurrentInstance();
		FacesMessage  message =new FacesMessage(FacesMessage.SEVERITY_INFO,"",h);
	context.addMessage(null, message);
	}	
		

	public void Pass_out(String v) {	
		if(v.trim().length()==0)
			message("Sign Out");

		Admin_user usr=new Admin_user();
		usr.setVerifys(v);
		starting().put("passed", usr);
		
	}

	public Map<String, Object> starting() {
		FacesContext context=FacesContext.getCurrentInstance();
		Map<String, Object>  obj=context.getExternalContext().getSessionMap();
		return  obj;
	}
	
	
	
	
	public String  sub(String v, String z) {
		int c=v.indexOf(".");
		String x=v.substring(0,c);
		return	x=	x.concat(z);		 
	}
	
	
	
	
	private void checker(String key, String string, String x, String string2) {
		new ServerRequest().delete_single_item(Credens.bucket, x);
   	 new ServerRequest().delete_from_table_sql(x,string2);
		
	}
	
	
	
	
	private void pass(String a, String a42) {
		new navigation().session().setAttribute("st", a);
		System.out.println("called"+" "+ new navigation().session().getAttribute("st"));
	
		
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public UploadedFile getUploadedFile2() {
		return uploadedFile2;
	}
	
	
	public void setUploadedFile2(UploadedFile uploadedFile2) {
		this.uploadedFile2 = uploadedFile2;
	}
	
	
	public UploadedFile getUploadedFile() {
		return uploadedFile;
	}
	
	
	public void setUploadedFile(UploadedFile uploadedFile) {
		this.uploadedFile = uploadedFile;
	}
	
	





	public  String getR1() {
		return r1;
	}

	public  void setR1(String r1) {
		this.r1 = r1;
	}


	public String getRols() {
		return rols;
	}

	public void setRols(String rols) {
		this.rols = rols;
	}


	public String getA1() {
		return a1;
	}

	public void setA1(String a1) {
		this.a1 = a1;
	}

	public String getA2() {
		return a2;
	}

	public void setA2(String a2) {
		this.a2 = a2;
	}

	
	public String getA0() {
		return a0;
	}

	public void setA0(String a0) {
		this.a0 = a0;
	}
	
	
	

	public  String getA3() {
		return a3;
	}
	
	
	public  void setA3(String a3) {
		this.a3 = a3;
	}
	
	
	
	public String getId() {
		return id;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}
	
	
	public String getTitle() {
		return title;
	}
	
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	public String getPaths() {
		return paths;
	}
	
	
	public void setPaths(String paths) {
		this.paths = paths;
	}
	
	
	public String getWrite_up() {
		return write_up;
	}
	
	
	public void setWrite_up(String write_up) {
		this.write_up = write_up;
	}
	
	
	public String getTitles() {
		return titles;
	}
	
	
	public void setTitles(String titles) {
		this.titles = titles;
	}
	
	
	public String getWrite() {
		return write;
	}
	
	
	public void setWrite(String write) {
		this.write = write;
	}
	
	
	
	public String getUser() {
		return user;
	}
	
	
	public void setUser(String user) {
		this.user = user;
	}
	
	
	public String getPass() {
		return pass;
	}
	
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
	
	public String getVerifys() {
		return verifys;
	}
	
	
	
	
	public void setVerifys(String verifys) {
		this.verifys = verifys;
	}
	
	
	
	
	public String getCreate_p() {
		return create_p;
	}
	
	
	public void setCreate_p(String create_p) {
		this.create_p = create_p;
	}
	
	
	
	
	public String getSource() {
		return source;
	}
	
	
	
	
	public void setSource(String source) {
		this.source = source;
	}
	
	
	
	
	public  String getA4() {
		return a4;
	}
	
	
	
	
	public  void setA4(String a4) {
		this.a4 = a4;
	}
	
	
	
	
	public  String getA5() {
		return a5;
	}
	
	
	
	
	public  void setA5(String a5) {
		this.a5 = a5;
	}
	
	
	
	
	public  String getA6() {
		return a6;
	}
	
	
	
	
	public  void setA6(String a6) {
		this.a6 = a6;
	}
	
	
	
	
	public  String getA7() {
		return a7;
	}
	
	
	
	public  void setA7(String a7) {
		this.a7 = a7;
	}
	
	
	public String getAds_link() {
		return ads_link;
	}
	
	
	public void setAds_link(String ads_link) {
		this.ads_link = ads_link;
	}
	
	public String getAds() {
		return ads;
	}
	
	
	public void setAds(String ads) {
		this.ads = ads;
	}


	public String getSign() {
		return sign;
	}


	public void setSign(String sign) {
		this.sign = sign;
	}
	
	
	
	


	
}
