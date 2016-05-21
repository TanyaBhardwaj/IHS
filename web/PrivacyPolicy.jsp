<%-- 
    Document   : PrivacyPolicy
    Created on : 18 May, 2016, 1:35:00 PM
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Indian Health Services</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">       
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">   
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Photo Swipe Image Gallery -->     
    <link rel='stylesheet prefetch' href='css/photoswipe.css'>
    <link rel='stylesheet prefetch' href='css/default-skin.css'>    

    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>  
    <link href='http://fonts.googleapis.com/css?family=Habibi' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Cinzel+Decorative:900' rel='stylesheet' type='text/css'>
        <link href="css/style.css" rel="stylesheet" type="text/css" />

    <style>
         .main{
            background-image: none;
            background-color: black;
        }
        .content{
            background-color:lightpink;
        }
        body,html{
        background-image:C:\Users\Tanya\Documents\NetBeansProjects\WebApplication4\web\images\;
        }
        .row-fluid{
            color: rgb(51, 51, 51);
font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
font-size: 12px;
line-height: 20px;
width:900px;

        }
        span12{
            box-sizing: border-box;
color: rgb(51, 51, 51);
display: block;
floatleftfont-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
font-size: 12px;
line-height: 20px;
margin-left: 10px;
min-height: 30px;
width: 900px;

        }
        ul {
	list-style-type: none;
}

li {
	padding-bottom: 10px;
	margin-left: 10px;
}
    </style>
    <!-- jQuery Library  -->
    <script src="js/jquery.js"></script> 
    </head>
    <body>
         <!-- BEGAIN PRELOADER -->
    <div id="preloader">
      <div id="status">&nbsp;</div>
    </div>
    <!-- END PRELOADER -->

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-heartbeat"></i></a>
    <!-- END SCROLL TOP BUTTON -->
<header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  
          <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->              
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="index.jsp"><i class="fa fa-heartbeat"></i> <span>Indian Health Services</span></a>              
              <!-- IMG BASED LOGO  -->
              <!--  <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>   -->                    
            </div>
            <div id="navbar" class="navbar-collapse collapse">
        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
          <li class="active"><a href="index.jsp"><span>HOME</span></a></li>
          <li><a href="Login.jsp"><span>LOGIN</span></a></li>
          <li><a href="register.jsp"><span>REGISTER</span></a></li>
          <li><a href="contact.jsp"><span>CONTACT US</span></a></li>
     
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Service <span class="fa fa-angle-down"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="FirstAid.jsp">First Aid</a></li>
                    <li><a href="Diseases,jsp">Diseases</a></li>
                    <li><a href="Fruits.jsp">Fruits and their benefits</a></li>
                  </ul>
                </li>
              <li> <a href="Feedback.jsp"><span>FEEDBACK</span></a></li>
          </UL>
      </div>
          </div>
        </nav>
      </div>
</header>
       <div style="background-color:rgb(255, 209, 51);" class="row">  
                <div class="single-top-feature">   
        
        
        
        
        
        
        
        
        
        
        
         <div class="container">
    <div class="row-fluid">
      <div class="span12">
        <div class="left_content" style="margin: 0 100px 0 12px;padding: 16px 7px 12px;">
          <div style="font-size: 13px;line-height: 16px;margin: 0;padding: 0;font-weight:bold;">
      Lybrate for <span class="platform_name"></span>
            <div style="font-size: 12px;font-weight: normal;margin: 0;">
             Available free in the <span class="platform_store_name"></span>
            </div>
          </div>
        </div>
        <div class="right-content" style="width: 90px;right: 0;margin-top: -45px;float: right;top: 0;">
            <a href="#" class="btn btn-danger platform_url" target="_blank" onclick="ga('send', 'event', 'Patient App Promo', 'Top Fixed Promo', 'On mobile')">View</a>
        </div>
      </div>
    </div>
  </div>
  <input type="hidden" class="iphone_url" url="http://app.appsflyer.com/id960716567?pid=LybrateMobile" />
  <input type="hidden" class="android_url" url="http://app.appsflyer.com/com.lybrate.phoenix?pid=LybrateMobile" />
</div>
<div class="lyb-bot-strip" id="appAskBot" style="background:#C82506;  text-align: center;   padding:12px 0;	   font-size: 15px;   color: #fff;   position:fixed;   right:0px;   left:0px;   bottom:0px;   display: none;   z-index: 70;">
	<a href="/lp/questions/ask?lpt=PS-PPVF" onclick="ga('send', 'event', 'Ask FREE Question', 'PPV', 'Sticky Footer')" style="color:#fff">
		<img src="/img/app-strip/AskQuestion.png" style="max-height: 18px;    line-height: 35px;  vertical-align:text-bottom;"/> Ask FREE Question to Health Experts
	</a>
</div>
		<div class="bg_gray">
			<div class="container">
				<div class="row-fluid">
					<div class="span12">
						<div class="white_item">
                                                    <center>   <h1 ><b> <u>Privacy Policy</u> </b></h1> </center>
						</div>
						<div class="white_item">
							<p style="text-align: left; margin-left: 50px;">
								Lybrate India Private Limited. ("Lybrate", "Company", "We",
								"Our" or "Us") is the owner of <a href="https://www.lybrate.com">www.lybrate.com</a>
								and the Lybrate mobile application (the URLs and mobile
								application together referred to as "<b>Websites</b>" and
								individually a "<b>Website</b>"). The terms 'You' or 'Your'
								refer to You as the user (whether You are a Registered User,
								Unregistered user or an HCP) of the Website or of the services
								offered by the Website ("<b>Service</b>").
							</p>
							<p style="text-align: left; margin-left: 50px;">Lybrate is
								committed to Your privacy. This privacy policy ("Privacy
								Policy") applies to the collection, use, storage, processing,
								disclosure and transfer of Your Information (defined below) when
								You use the Website and/or the Services.</p>
							<ul>
								<li style="font-weight: bold">1. CONSENT</li>
								<li style="margin-left: 20px;">1.1. By clicking on the "I
									accept' button at the end of page containing the Terms of Use
									or by providing us Your Personal Information or by making use
									of the features provided by the Website, You hereby consent to
									the collection, storage, processing, disclosure and transfer of
									Your Information in accordance with the provisions of this
									Privacy Policy.</li>
								<li style="margin-left: 20px;">1.2. You acknowledge that
									You are providing Your Personal Information out of Your free
									will.</li>
								<li style="margin-left: 20px;">1.3. You have the option not
									to provide us the Personal Information sought to be collected.
									You will also have an option to withdraw Your consent at any
									point, provided such withdrawal of consent is intimated to us
									in writing at <a href="mailto:hello@lybrate.com">hello@lybrate.com</a>.
									If You do not provide us Your Personal Information or if You
									withdraw the consent at any point in time, We shall have the
									option not to fulfill the purposes for which the said Personal
									Information was sought and we may restrict You from using the
									Website.
								</li>
								<li style="font-weight: bold">2. CHANGES TO THE PRIVACY
									POLICY</li>
								<li style="margin-left: 20px;">2.1. We may update this
									Privacy Policy from time to time. There is a tab at the end of
									the Privacy Policy which indicates when the Privacy Policy was
									last updated.</li>
								<li style="margin-left: 20px;">2.2. When We update Our
									Privacy Policy, the next time You visit the Website, the
									Website will provide a message which will intimate You of the
									amendments to the Privacy Policy. You will be required to
									provide Your consent to the amendments before You proceed. If
									You do not agree to the amendments, please do not use the
									Website any further.</li>
								<li style="font-weight: bold">3. WHAT PERSONAL INFORMATION
									IS COLLECTED FROM YOU?</li>
								<li style="margin-left: 20px;">3.1. The kinds of
									information that We collect about You include Personal
									Information and Non-Personal Information. Personal Information
									and Non-Personal Information are collectively referred to as "<b>Information</b>".
								</li>
								<li style="margin-left: 20px;">3.2. Personal Information is
									data collected that can be used to uniquely identify or contact
									You. Personal Information for the purposes of this Privacy
									Policy shall include, but not be limited to:</li>
								<li style="margin-left: 30px;">(i) Name,</li>
								<li style="margin-left: 30px;">(ii) Birth date,</li>
								<li style="margin-left: 30px;">(iii) Email address,</li>
								<li style="margin-left: 30px;">(iv) Gender</li>
								<li style="margin-left: 30px;">(v) financial information
									such as Bank account or credit card or debit card or other
									payment instrument details ;</li>
								<li style="margin-left: 30px;">(vi) physical, physiological
									and mental health condition;</li>
								<li style="margin-left: 30px;">(vii) sexual orientation;</li>
								<li style="margin-left: 30px;">(viii) medical records and
									history</li>
								<li style="margin-left: 30px;">(ix) Login ID and password,</li>
								<li style="margin-left: 20px;">3.3. We may also collect
									information other than Personal Information from You through
									the Website when You visit and /or use the Website. Such
									information may be stored in server logs. Such Non-Personal
									Information would not assist us to identify You personally.
									Such Non-Personal Information may include</li>
								<li style="margin-left: 30px;">(i) Your usage details such
									as time, frequency, duration and pattern of use, features used
									and the amount of storage used,</li>
								<li style="margin-left: 30px;">(ii) Master and transaction
									data and other data stored in Your user account,</li>
								<li style="margin-left: 30px;">(iii) Internet Protocol
									address, browser type, browser language, referring URL, files
									accessed, errors generated, time zone, operating system and
									other visitor details collected in Our log files,</li>
								<li style="font-weight: bold">4. HOW WE COLLECT
									INFORMATION?</li>
								<li style="margin-left: 10px;">The methods by which We
									collect Your Information include but are not limited to the
									following:</li>
								<li style="margin-left: 30px;">(i) When You register on Our
									Website,</li>
								<li style="margin-left: 30px;">(ii) When You create a
									profile on Our Website or as part of Services</li>
								<li style="margin-left: 30px;">(iii) When You provide Your
									Information to us,</li>
								<li style="margin-left: 30px;">(iv) When You use the
									features on Our Website and/or when You use Services,</li>
								<li style="margin-left: 30px;">(v) When You access Website
									or Services,</li>
								<li style="margin-left: 30px;">(vi) By use of cookies
									(discussed below).</li>
								<li style="font-weight: bold">5. HOW THE INFORMATION
									COLLECTED IS USED?</li>
								<li style="margin-left: 10px;">We collect Your Information
									for various purposes, including the following:</li>
								<li style="margin-left: 30px;">(i) In order to enable You
									to use the Website and utilize the Services. For instance, You
									may provide Your health related information on the Website in
									order to consult privately with an HCP, or You may provide Your
									financial information in order to process a payment which You
									need to make on the Website.</li>
								<li style="margin-left: 30px;">(ii) to respond to Your
									inquiries;</li>
								<li style="margin-left: 30px;">(iii) to provide You with
									information about products and services available on the
									Website;</li>
								<li style="margin-left: 30px;">(iv) to personalize Your
									experience on the Website;</li>
								<li style="margin-left: 30px;">(v) to help You address Your
									problems incurred on the Website including addressing any
									technical problems;</li>
								<li style="margin-left: 30px;">(vi) for proper
									administering of the Website;</li>
								<li style="margin-left: 30px;">(vii) to conduct internal
									reviews and data analysis for the Website (e.g., to determine
									the number of visitors to specific pages within the Website);</li>
								<li style="margin-left: 30px;">(viii) to improve the
									services, content and advertising on the Website;</li>
								<li style="margin-left: 30px;">(ix) to protect the
									integrity of the Website; and</li>
								<li style="margin-left: 30px;">(x) to respond to judicial
									process and provide information to law enforcement agencies or
									in connection with an investigation on matters related to
									public safety, as permitted by law.</li>
								<li style="margin-left: 30px;">(xi) to conduct analytical
									studies on various aspects including user behaviour, user
									preferences etc</li>
								<li style="margin-left: 30px;">(xii) to make disclosures as
									may be required under applicable law.</li>
								<li style="margin-left: 30px;">(above uses collectively
									referred to as "<b>Purpose(s)</b>")
								</li>
								<li style="font-weight: bold">6. HOW INFORMATION MAY BE
									SHARED AND TRANSFERRED?</li>
								<li style="margin-left: 20px;">6.1. We may exchange,
									transfer, share, part with all or any of Your Information,
									across borders and from Your country to any other countries
									across the world with Our affiliates / agents / third party
									service providers / partners / banks and financial institutions
									for the Purposes specified under this privacy Policy or as may
									be required by applicable law or in case of sale, acquisition,
									merger or bankruptcy involving Lybrate.</li>
								<li style="margin-left: 20px;">6.2. You acknowledge that
									some countries where We may transfer Your Information may not
									have data protection laws which are as stringent as the laws of
									Your own country.</li>
								<li style="margin-left: 20px;">6.3. You acknowledge that it
									is adequate that when Lybrate transfers Your Information to any
									other entity within or outside Your country of residence,
									Lybrate will place contractual obligations on the transferee
									which will oblige the transferee to adhere to the provisions of
									this Privacy Policy</li>
								<li style="font-weight: bold">7. HOW WE PROTECT YOUR
									INFORMATION?</li>
								<li style="margin-left: 20px;">7.1. The security of Your
									Personal Information is important to us. We have adopted
									reasonable security practices and procedure to ensure that the
									Personal Information (protected health information) collected
									is secure. You agree that such measures are secured and
									adequate. We restrict access to Your Personal Information to
									Our and Our affiliates' employees, agents, third party service
									providers, partners, and agencies who need to know such
									Personal Information in relation to the Purposes as specified
									above in this Privacy Policy and provided that such entities
									agree to abide by this Privacy Policy.</li>
								<li style="margin-left: 20px;">7.2. While We will endeavor
									to take all reasonable and appropriate steps to keep secure any
									information which We hold about You and prevent unauthorized
									access, You acknowledge that the internet is not 100% secure
									and that We cannot provide any absolute assurance regarding the
									security of Your Personal Information. We nor any of the HCP on
									Lybrate will not be liable in any way in relation to any breach
									of security or unintended loss or disclosure of information
									caused by Us in relation to Your Personal Information.</li>
								<li style="font-weight: bold">8. COOKIES</li>
								<li style="margin-left: 10px;">We may store temporary or
									permanent 'cookies' on Your computer. A cookie is a small piece
									of data that is sent to Your browser from a web server and
									stored on Your computer&#39;s hard drive. A cookie cannot read
									data off Your hard disk or read cookie files created by other
									sites. Once You close Your browser, the cookie simply
									terminates. For instance, by setting a cookie on Your browser,
									You would not have to log in a password more than once, thereby
									saving time while on the Websites. You can choose whether to
									accept cookies by changing the settings of Your browser. You
									can reset Your browser to refuse all cookies or allow Your
									browser to show You when a cookie is being sent. If You reject
									the cookies on the websites, You may still be able to use the
									Websites, but it shall be limited to certain minimal
									functionality. The only drawback to this is that You may be
									limited only to some areas of the Websites or limited to
									certain functions of the Websites. Some of Our business
									partners may use cookies on the Websites. Please note that We
									have no access to or control over such cookies. Lybrate and Our
									business partners may use cookies to better personalize the
									content, banners, and promotions that You see on the Websites.</li>
								<li style="font-weight: bold">9. LINKS</li>
								<li style="margin-left: 10px;">The Websites may contain
									links to other third party sites. The third party sites are not
									under the control of Lybrate. Please note that Lybrate is not
									responsible for the privacy practices of such third party
									sites. Lybrate encourages You to be aware when You leave the
									Websites and to read the privacy policies of each and every
									third party site that collects personal information. If You
									decide to access any of the third-party sites linked to the
									Websites, You do this entirely at Your own risk. Any links to
									any partner of the Websites is the responsibility of the
									linking party, and Lybrate shall not be responsible for
									notification of any change in name or location of any
									information on the Websites.</li>
								<li style="font-weight: bold">10. CORRECTING INACCURACIES
									OR UPDATING PERSONAL INFORMATION</li>
								<li style="margin-left: 10px;">If Your Personal Information
									changes, or if You need to update or correct Your Personal
									Information or have any grievance with respect to the
									processing or use of Your Personal Information, for any reason,
									You may send updates and corrections to us at <a
									href="mailto:hello@lybrate.com">hello@lybrate.com</a> and We
									will take all reasonable efforts to incorporate the changes
									within a reasonable period of time. If Your Personal
									Information is stored as part of Your profile on the Website,
									You can update Your profile on the profile pages of the
									Websites.
								</li>
								<li style="margin-left: 10px;">You are not allowed to use
									the Website or the Services of the Website if any of the terms
									of this Privacy Policy are not in accordance with the
									applicable laws of Your country.</li>
								<li style="font-weight: bold">11. COMPLIANCE WITH LAWS</li>
								<li style="font-weight: bold">12. GRIEVANCE OFFICER</li>
								<li style="margin-left: 10px;">We have appointed a
									Grievance Officer to address any concerns or grievances that
									You may have regarding the processing of Your Personal
									Information. If You have any such grievances, please write to
									Our Grievance Officer at <a
									href="mailto:grievances@lybrate.com">grievances@lybrate.com</a>
									and Our officer will attempt to resolve Your issues in a timely
									manner.
								</li>
								<li style="margin-left: 10px; font-weight: bold;">Lybrate
									reserves the right, in its sole discretion, to change, modify,
									add or delete portions of the terms of this Privacy Policy at
									any time.</li>
							</ul>
						</div>
					</div>
	
                                </div>
                        </div>   <div>   
                               <!--=========== Start Footer SECTION ================-->
    <footer id="footer">
      <!-- Start Footer Top -->
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>About Us</h2>
                <div class="line"></div>
              </div>           
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
              </div>
            </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Our Service</h2>
                <div class="line"></div>
              </div>
              <ul class="footer-service">
                <li><a href="#"><span class="fa fa-check"></span>Service 1</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 2</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 3</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 4</a></li>
                <li><a href="#"><span class="fa fa-check"></span>Service 5</a></li>
              </ul>
              </div>
            </div> &nbsp;&nbsp;
          
          <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="single-footer-widget">
                <div class="section-heading">
                <h2>Contact Info</h2>
                <div class="line"></div>
              </div>
              <p>The point of using Lorem Ipsum is convinience for the users.</p>
              <address class="contact-info">
                <p><span class="fa fa-home"></span>16th Main,BTM 2nd stage,Bangalore</p>
                <p><span class="fa fa-phone">8054955858</span></p>
                <p><span class="fa fa-envelope"></span>tanyajune7@gmail.com</p>
              </address>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Start Footer Middle -->
      <div class="footer-middle">
        
          
        <div class="container">
          <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="footer-copyright">
              <p>&copy; Copyright 2016 <a href="index.jsp">WpF Medinova</a></p>
            </div>
          </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"> 
               <div class="footer-bottom">              
               
              <p>Design & Developed By <a rel="nofollow" href=""> Tanya Bhardwaj</a></p>
            </div>
            </div>
          
        </div>
        </div>
      </div>
      <!-- Start Footer Bottom -->
      <div style="background-color: #11060a;" class="footer-social">                         
    
      <br>
            <div class="container">
          <div class="row">
          
       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
           <br>
            <div style="align-content:center; "class="footer-social">              
                <a href="#"><span class="fa fa-facebook"></span></a>
                <a href="#"><span class="fa fa-twitter"></span></a>
                <a href="#"><span class="fa fa-google-plus"></span></a>
                <a href="#"><span class="fa fa-linkedin"></span></a>     
                <br>
                <br></div>
          </div>
       </div>
            </div>
       </div>
      </div>
    </footer>
    <!--=========== End Footer SECTION ================-->
     <!-- Bootstrap default js --> 
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>    
   <script type="text/javascript" src="js/modernizr.custom.79639.js"></script>    
    <!-- counter -->
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <!-- Doctors hover effect -->
    <script src="js/snap.svg-min.js"></script>
    <script src="js/hovers.js"></script>
    <!-- Photo Swipe Gallery Slider -->
    <script src='js/photoswipe.min.js'></script>
    <script src='js/photoswipe-ui-default.min.js'></script>    
    <script src="js/photoswipe-gallery.js"></script>
 <script src="js/custom.js"></script>
</body>
</html>

   
