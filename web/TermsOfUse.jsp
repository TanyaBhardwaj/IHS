<%-- 
    Document   : TOU
    Created on : 18 May, 2016, 1:42:27 PM
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
                                                    <center>        <h1><b><u>Terms of Use </u></b></h1> </center>
						</div>
						<div class="white_item">
							<p style="text-align: left; margin-left: 50px;">
								Welcome to the portal <a href="https://www.lybrate.com">www.lybrate.com</a>,
								(the "<b>Website</b>"). The Website is operated by Lybrate India
								Private Limited., having its registered office at 199 Sector
								15A, Faridabad, Haryana, India, 121007.
							<p>
							<p style="text-align: left; margin-left: 50px;">The terms
								'You' or 'Your' refer to You as the user (irrespective of
								whether You are a Registered User or a Non-Registered User or an
								HCP) and the terms 'Lybrate' ,'We', 'Us', 'Company', and 'Our'
								refer to Lybrate India Private Limited.</p>
							<p style="text-align: left; margin-left: 50px;">
								<b>PLEASE CAREFULLY READ THE FOLLOWING TERMS OF USE OF THE
									WEBSITE. THESE TERMS OF USE, TOGETHER WITH THE PRIVACY POLICY
									AVAILABLE AT <a href="https://www.lybrate.com/privacy">www.lybrate.com/privacy</a>,
									ADDITIONAL TERMS OF USE FOR HCPS
									<a href="https://doctor.lybrate.com/terms">https://doctor.lybrate.com/terms</a> AND OTHER POLICIES WHICH MAY
									BE APPLICABLE TO SPECIFIC PORTIONS OF THIS WEBSITE CONSTITUTE
									THE TERMS OF YOUR ACCESS TO AND USAGE OF THE WEBSITE. BY
									CLICKING ON THE 'I ACCEPT' BUTTON AT THE END OF THIS PAGE OR
									ACCESSING OR USING THIS WEBSITE, YOU AGREE TO BE BOUND BY THESE
									TERMS OF USE, THE PRIVACY POLICY, THE ADDITIONAL TERMS OF USE
									FOR HCPS AND OTHER POLICIES WHICH MAY BE APPLICABLE TO THIS
									WEBSITE. IF YOU DO NOT AGREE TO BE BOUND BY THESE TERMS OF USE,
									THE PRIVACY POLICY, THE ADDITIONAL TERMS OF USE FOR HCPS AND
									OTHER POLICIES WHICH MAY BE APPLICABLE TO SPECIFIC PORTIONS OF
									THIS WEBSITE PLEASE DO NOT ACCESS OR USE THE WEBSITE.
								</b>
							</p>
							<p style="text-align: left; margin-left: 50px;">
								These Terms of Use, the Privacy Policy, the Additional Terms of
								Use for HCPs, together with any other policies which may be
								applicable to specific portions of Website and any disclaimers
								which may be present on the Website are referred to as "<b>Agreement</b>".
							</p>
							<p style="text-align: left; margin-left: 50px;">If You are
								accessing the Lybrate mobile application, then this Agreement
								will continue to apply to such use. In addition, there may be
								additional terms (such as the terms imposed by mobile
								application stores) which will govern the use of the mobile
								application. In such case, the term 'Website' will be deemed to
								refer to the Lybrate mobile application.</p>
							<p style="text-align: left; margin-left: 50px;">The features
								/ services of this Website are available only in India. However
								Non-Registered Users outside India may browse through the
								information provided in the Website</p>
							<p style="text-align: left; margin-left: 50px;">The Agreement
								supersedes all previous oral and written terms and conditions
								(if any) communicated to You.</p>
							<ul>
								<li style="font-weight: bold;">1. THE WEBSITE</li>
								<li style="margin-left: 20px;">1.1. Users: The Website is
									accessible to visitors / non-registered users, registered users
									and healthcare practitioners. "<b>Registered Users</b>" are
									users who have registered themselves an account on the Website
									by providing Lybrate with certain information and who can log
									on to the Website by providing their username and password. "<b>Non-Registered
										Users</b>" are users who are not registered with the Website but
									may access information on the Website. Certain features of the
									Website are available to Registered Users only. "<b>Health
										Care Practitioners</b>" or "<b>HCPs</b>" are duly qualified
									members of medical or dental profession and (a) with whom
									Registered Users can book appointment using the Website or (b)
									who can provide information to questions raised by Registered
									Users or (c) with whom Registered Users can consult privately
									with respect to their queries or d) who can generate and
									provide health related information and education material for
									general use of Registered Users."<b>Labs</b>" are registered
									laboratories that collect patient samples from Registered Users
									for the purpose of conducting pathological tests and varied
									diagnostic services referred to as "<b>Lab Tests</b>".
									Registered Users, Non-Registered Users and HCPs shall
									collectively be referred to as "<b>Users</b>".
								</li>
								<li style="margin-left: 20px;">1.2. Features of the
									Website: The Website offers the following features:</li>
								<li style="margin-left: 30px;">a) For Registered Users:</li>
								<li style="margin-left: 40px;">i. Platform for obtaining
									generic and preliminary information from HCP to a health
									related question: You may ask any health related question on
									the Website and obtain preliminary and generic information to
									such question from a HCP. Your identity is not disclosed to the
									HCPs or other Registered Users at this stage.</li>
								<li style="margin-left: 40px;">ii. Platform for viewing
									generic and preliminary information of HCP on questions
									submitted by other Registered Users: You may access the
									information provided by an HCP to questions submitted by other
									Registered Users on the Website.</li>
								<li style="margin-left: 40px;">iii. Platform to schedule
									in-person appointment with HCP: You may use Website to schedule
									an in-person appointment with HCP at the HCP's premises.</li>
								<li style="margin-left: 40px;">iv. Platform to interact
									with HCP privately: You may interact with an HCP privately on
									the chat feature available on the Website or via other
									communication feature which the Website may provide after
									paying consultation fee to the HCP and an internet handling fee
									to Lybrate.</li>
								<li style="margin-left: 40px;">v. Platform to pay HCP for
									non-Website interaction: You may make use of the Website solely
									for the purpose of paying an HCP for a non-Website/offline
									interaction with such HCP after paying Lybrate's internet
									handling fee.</li>
								<li style="margin-left: 40px;">vi. Platform to order Lab
									Tests from Labs: You may use the Website to order Lab Tests
									from Labs. The Website allows you to schedule a sample pick-up
									at Your home, which will be used by a Lab to conduct a Lab Test
									and share the results of such Lab Test with You through the
									Website. Visit www.lybrate.com/lab-tests to learn more about
									the Lab Tests that are offered on the Website.</li>
								<li style="margin-left: 30px;">b) For Non-Registered Users:</li>
								<li style="margin-left: 40px;">i. Access to HCP Profiles:
									Depending on the extent of information shared by HCPs at the
									time of registering with the Website, the HCPs' profile
									containing their name, qualification, experience,
									specialization, consultant fees, personal statement, education,
									professional memberships etc. can be accessed by You. The
									Website offers various search features to aid You in accessing
									HCP profiles.</li>
								<li style="margin-left: 40px;">ii. Access to HCP
									Availability for in-person appointment: Based on information
									communicated by HCP, the Website shows indicative appointment
									slots available for in-person consultation at HCP's premises.</li>
								<li style="margin-left: 30px;">c) For HCPs:</li>
								<li style="margin-left: 40px;">i. Platform to publish
									profile: You may upload Your profile containing Your name,
									qualification, experience, specialization, consultation fees,
									personal statement, education, professional memberships etc. on
									Website. Your profile is accessible to all Registered as well
									as Non-Registered Users.</li>
								<li style="margin-left: 40px;">ii. Platform for private
									interaction: You may use Website for private interaction with
									Registered Users. In course of the private interaction, You can
									exchange texts, images, videos over the chat feature of the
									platform and communicate through other means provided by the
									Lybrate such as calls.</li>
								<li style="margin-left: 40px;">iii. Platform to receive
									consultation fees for non-Website interaction: You may use the
									Website to receive fees for Your interactions with Registered
									User outside the Website / offline.</li>
								<li style="margin-left: 40px;">iv. Platform to provide
									information to questions to health related questions submitted
									by Registered Users: You may provide Your preliminary and
									generic information to health related questions submitted by
									Registered Users.</li>
								<li style="margin-left: 40px;">v. Platform to publish
									HCP-contributed health related information and education
									material: You may contribute health related information and
									education material which Lybrate may, with or without
									modification, in its sole discretion, publish on the Website.</li>
								<li style="margin-left: 20px;">1.3. Types of content on the
									Website:</li>
								<li style="margin-left: 20px;">The various types of content
									available on the Website may be categorised as follows:</li>
								<li style="margin-left: 30px;">1.3.1. Content provided by
									Registered Users including questions provided by Registered
									Users and interactions in the course of private interactions
									with HCPs ("<b>User Content</b>")
								</li>
								<li style="margin-left: 30px;">1.3.2. Content provided by
									HCP including health related information and educational
									material; and information provided by way of responses to
									questions raised by Registered Users or in course of private
									interactions with Registered Users ("<b>HCP Content</b>");
								</li>
								<li style="margin-left: 30px;">1.3.3 Content provided by
									Labs including instructions, results, reports and any other
									information relating to Lab Tests ("<b>Lab Content</b>").
								</li>
								<li style="margin-left: 30px;">1.3.4. Content which Lybrate
									(through itself or its contractors) has generated or procured
									for the Website ("<b>Lybrate Content</b>");
								</li>
								<li style="font-weight: bold;">2. USE OF THE SITE</li>
								<li style="margin-left: 20px;">2.1. Use by all Users
									(Registered, Non-Registered User and HCP)</li>
								<li style="margin-left: 30px;">2.1.1. You will use the
									Website and the features provided by the Website only in
									relation to and in compliance with all applicable Indian laws.
									You will not use this Website or any feature provided by the
									Website for any purposes not intended under this Agreement.</li>
								<li style="margin-left: 30px;">2.1.2. You will not
									deliberately use the Website in any way that is unlawful or
									harms Lybrate, its directors, employees, affiliates,
									distributors, partners, service providers and/or any User
									and/or data or content on the Website.</li>
								<li style="margin-left: 30px;">2.1.3. You understand that
									as part of Your registration process as well as in course of
									Your use of the Website, You may receive SMS messages from
									Lybrate on Your registered mobile number. These messages will
									relate to Your registration, transactions that You carry out
									through the Website and any such information found suitable of
									Your attention by Lybrate. Please note that Lybrate will send
									these SMS messages only to the mobile number that You provide
									on the Website. It is Your responsibility to ensure that You
									provide the correct number for the transaction You wish to
									enter into. Further, Lybrate may also send notifications and
									reminders to You with respect to appointments scheduled by You
									for the features that You may be using on the Website. You
									hereby consent to receive such messages from Lybrate.</li>
								<li style="margin-left: 30px;">2.1.4. By using the website
									and/or registering yourself at Lybrate you authorize us to
									contact you via email or phone call or sms and offer you
									services for the product you have opted for, imparting product
									knowledge, offer promotional offers running on website, for
									which reasons, personally identifiable information may be
									collected as detailed below. And Irrespective of the fact if
									also you have registered yourself under DND or DNC or NCPR
									service, you still authorize us to give you a call from the
									Lybrate & associate partners for the above mentioned purposes
									till 45 days of your engagement with us.</li>
								<li style="margin-left: 20px;">2.2. Use by Registered User</li>
								<li style="margin-left: 30px;">2.2.1. You acknowledge that
									this Website is an informative platform only. Lybrate and this
									Website are not in the business of providing healthcare service
									or hospital services.</li>
								<li style="margin-left: 30px;">2.2.2. We encourage You to
									independently verify any information You see on the Website
									including information provided by a HCP. You will use the
									Website and the features provided by the Website only in
									relation to and in compliance with all applicable Indian laws.
									You will not use this Website or any feature provided by the
									Website for any purposes not intended under this Agreement.</li>
								<li style="margin-left: 30px;">2.2.3. The Website allows
									You to select and schedule appointments with HCPS. In doing so,
									Lybrate can help providing You with lists and/or profile
									previews of HCPs who may be suitable to deliver the health care
									that You are seeking based on information that You provide to
									Lybrate (such as area of specialty and geographical location).</li>
								<li style="margin-left: 30px;">2.2.4. Please note that
									Lybrate (i) does not recommend or endorse any HCPs mentioned on
									the Website; and (ii) does not make any representations or
									warranties with respect to HCPs or the quality of the
									healthcare services they may provide, and (iii) does not grade
									physicians.</li>
								<li style="margin-left: 30px;">2.2.5. You will obtain all
									relevant consents and approvals prior to posting or providing
									any User Content.</li>
								<li style="margin-left: 30px;">2.2.6. You may schedule an
									appointment on the Website for Your family members and friends.
									However please note that such You will be solely responsible
									for any activity that is undertaken through his/her account on
									behalf of his/her family members and friends. </li>
								<li style="margin-left: 30px;">2.2.7. You have the option
									of uploading Your identifiable health information including
									physical, physiological and mental health condition, and
									medical records and history on the Website which may be
									accessed by the HCP at the time of private interactions using
									the Website. </li>
								<li style="margin-left: 30px;">2.2.8. Lybrate will levy an
									advance internet handling fee for each private interaction that
									You have with an HCP through the Website. Lybrate will also
									collect the consultation fee payable to the HCP in advance.</li>
								<li style="margin-left: 30px;">2.2.9. You may use the Website to order Lab Tests from Labs. The Website allows You to schedule a time for a home sample collection and pay the corresponding Lab Test fee. If you cancel a Lab Test order prior to the sample collection, you will receive a full refund of the Lab Test fee. If you cancel a Lab Test after the sample collection, you will receive a refund for the Lab Test fee, less the applicable collection service charge.</li>
								<li style="margin-left: 20px;">2.3. Use by Non-Registered
									User</li>
								<li style="margin-left: 30px;">2.3.1. Lybrate will provide
									You with lists and/or profile previews of HCPs based on
									information that You provide to the Website's search features
									(such as area of specialty and geographical location). Please
									note that Lybrate (i) does not recommend or endorse any HCPs
									mentioned on the Website; and (ii) does not make any
									representations or warranties with respect to these HCPs or the
									quality of the healthcare services they may provide</li>
								<li style="font-weight: bold;">3. ROLE OF LYBRATE</li>
								<li style="margin-left: 20px;">3.1. Lybrate's role is
									limited to a) providing a platform for hosting and publishing
									User Content, Lab Content and HCP Content b) providing a platform for
									Registered Users to raise health related questions and HCP's to
									provide preliminary and generic information to the questions c)
									providing a platform for private interaction between Registered
									User and HCP d) providing a platform to find HCPs based on
									Registered User's inputs and HCP profiles created by HCPs
									themselves and e) providing a platform for Registered Users to order Lab Tests f) facilitating collection and disbursal of
									consultationand service fees for HCPs and Labs.</li>
								<li style="margin-left: 20px;">3.2. Lybrate's role is that
									of an 'intermediary' as defined under the Information
									Technology Act, 2000 and the rules thereunder. Being an
									intermediary, Lybrate has no responsibility and / or liability
									in respect of the content and transactions on the Website
									including any User Content, Lab Content or HCP Content , information
									provided by HCPs or Labs, interactions between HCPs and Labs on the one hand and Users on the other hand.</li>
								<li style="margin-left: 20px;">3.3. Lybrate does not have
									the obligation to pre-screen or monitor User Content, Lab Content or HCP
									Content at any time. However Lybrate may elect to monitor any
									User Content or HCP Content and remove any User Content and HCP
									Content from the Website if Lybrate determines in its sole
									discretion that such User Content and/or HCP Content is in
									violation of this Agreement or any applicable law and best
									practices. Where Lybrate removes any User Content or HCP
									Content from the Website, Lybrate will make reasonable efforts
									to inform the User or HCP who had posted such User Content or
									HCP Content respectively. Such actions do not in manner negate
									or dilute Lybrate's position as an intermediary or impose any
									liability on Lybrate with respect to User Content and/or HCP
									Content.</li>
								<li style="margin-left: 20px;">3.4. If Lybrate suspects any
									illegal, wrongful or fraudulent activity on the Website by any
									Registered User, Lab or HCP, notwithstanding any other rights
									Lybrate may have, Lybrate reserves the right to inform the
									relevant government or law enforcement authorities. Lybrate
									will cooperate in all investigative procedures or requests for
									access / information initiated by any such government or law
									enforcement authorities.</li>
								<li style="margin-left: 20px;">3.5. Lybrate does not
									endorse or influence control over any particular branch of
									medicine, theory, opinion, viewpoint or position on any topic.</li>
								<li style="font-weight: bold;">4. LINKS TO THIRD PARTY
									WEBSITES</li>
								<li style="margin-left: 20px;">4.1. You may be provided
									with links on the Website that direct You to third party
									websites / applications / content or service providers,
									including advertisers and e-commerce websites (collectively "<b>Third
										Party Websites</b>").
								</li>
								<li style="margin-left: 20px;">4.3. Lybrate does not
									endorse any Third Party Websites that You may be directed to
									from the Website.</li>
								<li style="margin-left: 20px;">4.2. Links to such Third
									Party Websites are provided for Your convenience only. Please
									exercise Your independent judgment and prudence when visiting /
									using any Third Party Websites via a link available on the
									Website. Should You decide to click on the links to visit such
									Third Party Website, You do so of Your own volition. Your usage
									of such Third Party Websites and all content available on such
									Third Party Websites is subject to the terms of use of the
									respective Third Party Website and Lybrate is not responsible
									for Your use of any Third Party Websites.</li>
								<li style="font-weight: bold;">5. PROPRIETARY RIGHTS</li>
								<li style="margin-left: 20px;">5.1. Lybrate respects the
									intellectual property rights of others, and We expect the same
									from You. The Website, User Content, HCP Content, Lab Content and the
									Lybrate Content are protected by applicable intellectual
									property laws.</li>
								<li style="margin-left: 20px;">5.2. <u>Lybrate's Rights to the
									Website and Lybrate Content</u></li>
								<li style="margin-left: 30px;">5.2.1. All intellectual
									property in and to the Website, any software, techniques and
									processes used in connection with the Website, belongs
									exclusively to Lybrate or its licensors. Through Your use of
									the Website, by no means are any rights impliedly or expressly
									granted by Lybrate to You in respect of such works.</li>
								<li style="margin-left: 30px;">5.2.2. Lybrate and/or its
									licensors assert all proprietary rights in and to all names and
									trademarks contained on the Website. Notwithstanding the
									generality of the foregoing, the name, "<b>Lybrate</b>" is the
									trademark and copyright (or any other intellectual property
									right) of Lybrate and/or its licensors. Any use of the
									Lybrate's trademarks or copyright, unless otherwise authorized
									in a written agreement, will constitute an infringement upon
									the trademark and copyright (or any other such intellectual
									property right) of Lybrate and may be actionable under the
									applicable laws.
								</li>
								<li style="margin-left: 30px;">5.2.3. Except as stated
									otherwise in this Agreement all Lybrate Content (including all
									intellectual property rights to such content) is owned
									exclusively by Lybrate and/or its licensors.</li>
								<li style="margin-left: 30px;">5.2.4. When You use the
									Website in accordance with this Agreement, a limited
									royalty-free right is granted to You by Lybrate to use Lybrate
									Content for personal and non-commercial use in India for the
									time that You are either a Registered User or an HCP or for the
									time that You make use of the Website, whichever is less.</li>
								<li style="margin-left: 30px;">5.2.5. Unless explicitly
									stated herein, nothing in this Agreement shall be construed as
									conferring on You any license to intellectual property rights,
									whether by estoppel, implication, or otherwise.</li>
								<li style="margin-left: 30px;">5.2.6. Unless expressly
									authorized by Lybrate, You agree not to reproduce, modify,
									sell, distribute, mirror, frame, republish, download, transmit,
									or create derivative works of the Lybrate Content, in whole or
									in part, by any means. You must not remove or modify any
									copyright or trademark notice, or other notice of ownership.</li>
								<li style="margin-left: 20px;">5.3. Rights in User Content
									And HCP Content</li>
								<li style="margin-left: 30px;">5.3.1. You agree that You
									are the owner of all rights (including all intellectual
									property rights) in the User Content (in case You are a
									Registered User) or HCP Content (in case You are a HCP) that
									You post on the Website or provide to Lybrate.</li>
								<li style="margin-left: 30px;">5.3.2. You hereby grant
									Lybrate a perpetual, non-revocable, worldwide, royalty-free
									license to make use of such User Content (in case You are a
									Registered User) or HCP Content (in case You are a HCP)
									including the right to copy, distribute, display, reproduce,
									modify, adapt, the User Content or HCP Content, as the case may
									me, and create derivate works of the User Content or HCP
									Content, as the case may be.</li>
								<li style="font-weight: bold;">6. PERSONAL INFORMATION</li>
								<li style="margin-left: 30px;">6.1.1. We may collect
									various personal information from You when You use the Website
									and or the features provided by the Website.</li>
								<li style="margin-left: 30px;">6.1.2. Our Privacy Policy
									available at <a href="https://www.lybrate.com/privacy">www.lybrate.com/privacy</a> sets out Our policy with respect to
									the collection, storage, use, transfer and protection of any
									such personal information.</li>
								<li style="margin-left: 30px;">6.1.3. When You click on the
									'I accept' or 'I agree' tab at the time of registering or
									otherwise provide Your personal information, You specifically
									consent to Our Privacy Policy.</li>
								<li style="margin-left: 30px;">6.1.4. Lybrate may disclose
									Your Personal Information in accordance with applicable law.</li>
								<li style="font-weight: bold;">7. DISCLAIMERS</li>
								<li style="margin-left: 20px;">7.1. Interaction with HCP on
									the Website:</li>
								<li style="margin-left: 30px;">7.1.1. You understand and
									agree that any interactions and associated issues with the
									HCP(s) on the Website, is strictly between You and the HCP(s).
									You shall not hold Lybrate responsible for any such
									interactions and associated issues. Lybrate is not involved in
									the providing any healthcare or medical advice or diagnosis and
									hence is not responsible for any outcome between You and the
									HCP You interact with. If You decide to engage with a HCP to
									provide medical services to You, You do so at Your own risk.</li>
								<li style="margin-left: 30px;">7.1.2. The results of any
									search You perform on the Website for HCPs, or provision of
									access to any HCP on the basis of Your specific request, should
									not be construed as endorsement by this Website of any such
									particular HCP. We make no guarantees, representations or
									warranties, whether expressed or implied, with respect to
									professional qualifications, quality of work, expertise of the
									HCP. The search results are based on an object computer
									algorithm.</li>
								<li style="margin-left: 30px;">7.1.3. Lybrate shall not be
									responsible for any breach of service or service deficiency by
									any HCP.</li>
								<li style="margin-left: 30px;">7.1.4. We can neither assure
									that all transactions on the Website will be completed nor do
									We guarantee the ability or intent of HCP to fulfill their
									obligations in any transaction. We advise You to perform Your
									own investigation prior to selecting a HCP. </li>
								<li style="margin-left: 20px;">7.2. Interaction with Labs
									on the Website:</li>
								<li style="margin-left: 30px;">7.2.1. You understand and
									agree that any interactions and associated issues with the
									Lab(s) on the Website, is strictly between You and the Lab(s).
									You shall not hold Lybrate responsible for any such
									interactions and associated issues. Lybrate is not involved in
									the providing any healthcare or medical advice or diagnosis and
									hence is not responsible for any outcome between You and the
									Lab You interact with. If You decide to engage with a Lab to
									provide lab or diagnostic services to You, You do so at Your
									own risk.</li>
								<li style="margin-left: 30px;">7.2.2. We make no
									guarantees, representations or warranties, whether expressed or
									implied, with respect to professional qualifications, quality
									of work, or expertise of any Lab.</li>
								<li style="margin-left: 30px;">7.2.3. Lybrate shall not be
									responsible for any breach of service or service deficiency by
									any Lab.</li>
								<li style="margin-left: 30px;">7.2.4. We can neither assure
									that all transactions on the Website will be completed nor do
									We guarantee the ability or intent of a Lab to fulfill their
									obligations in any transaction. We advise You to perform Your
									own investigation prior to ordering a Lab Test.</li>
								<li style="margin-left: 20px;">7.3. Clinical Support
									Information: We may provide information to assist You in
									clinical decision-making. This may include information and
									reminders concerning drug interactions, lab and diagnostic
									services, allergies, dosages, as well as general health-care
									related information and resources. The information and
									materials available through the Website are for informational
									and educational purposes only and are not intended to
									constitute professional advice, diagnosis or treatment, or to
									substitute professional judgment. Information that may be
									placed on the Website by third parties, including HCP Content,
									and Lab Content, is beyond Our control. We are not responsible
									for the accuracy or completeness of information available from
									or through Our Website. You assume full risk and responsibility
									for the use of information You obtain from or through this
									site, and You agree that Lybrate is not responsible or liable
									for any claim, loss, or liability arising from the use of the
									information. We do not recommend or endorse any HCP, Lab or
									diagnostic or health-related products, items or services, and
									the appearance of materials on the Website relating to any such
									products, items or services is not an endorsement or
									recommendation of them. You agree to review the definitions,
									functionality, and limitations of the information on the
									Website, and to make an independent determination of their
									suitability for Your use. We make no guarantees,
									representations or warranties, whether expressed or implied,
									with respect to information provided on the website</li>
								<li style="margin-left: 20px;">7.4. Information regarding
									HCP/Lab and practice information: Information regarding HCP/Lab and
									practice information found on the Website is intended for
									general reference purposes only. Such information found on the
									Website is mainly self-reported by the HCP. Such information
									often changes frequently and may become out of date or
									inaccurate. Neither the Website nor Lybrate provides any advice
									or qualification certification about any particular HCP or Lab. You
									are encouraged to independently verify any such information You
									see on the Website with respect to a HCP or Lab that You seek to make
									an appointment with. </li>
								<li style="margin-left: 20px;">7.5. No Professional
									Relationship: Please note that some of the content including
									text, data, graphics, images, information, suggestions,
									guidance, and other material that may be available on the
									Website (including information provided in direct response to
									Your questions or postings) may be provided by HCPs or Labs. The
									provision of such content to You by Lybrate does not constitute
									delivery of health care or diagnostic services to You and does not create a
									professional relationship between Lybrate and You. </li>
								<li style="margin-left: 20px;">7.6. No Medical Advice
									Provided: The content provided by the Website, either by
									Lybrate or by HCP, should not be construed under any
									circumstances to be an opinion, medical advice, or diagnosis or
									treatment of any particular condition, but is only provided to
									assist you with locating appropriate medical care from a
									qualified practitioner. </li>
								<li style="margin-left: 20px;">If You rely on any of the
									Information provided by the Website, You do so solely at Your
									own risk. The Information that You obtain or receive from
									Lybrate, and its employees, contractors, partners, sponsors,
									advertisers, licensors or otherwise on the Website is for
									informational and scheduling purposes only. In no event shall
									We be liable to You or anyone else for any decision made or
									action taken by You in reliance on such information.</li>
								<li style="margin-left: 20px;">7.7. Non-substitution of
									professional medical advice: The Information provided on the
									Website and in any other communications from or provided
									through Lybrate is not intended as a substitute for, nor does
									it replace, professional medical advice, diagnosis, or
									treatment. Do not disregard, avoid or delay obtaining medical
									advice from a qualified health care professional because of
									advice that You may have obtained through the Website. Your use
									of Information provided on the Website is solely at Your own
									risk. Nothing stated or posted on the Website or available
									through any Services is intended to be, and must not be taken
									to be, the practice of medicine or the provision of medical
									care. You acknowledge and confirm that Lybrate shall not be
									responsible for Your treatment or be treated as a health care
									provider on account of collection of the consultation fees for
									private consultation by HCP or collection of fees for Lab Tests
									by Labs, for any reason whatsoever.</li>
								<li style="margin-left: 20px;">7.8. LYBRATE DISCLAIMS ANY
									REPRESENTATION AND/OR WARRANTYFOR THE SECURITY, RELIABILITY,
									QUALITY, TIMELINESS, AND PERFORMANCE OF (I) THE WEBSITE AND ITS
									FEATURES; (II) HCP WHO RESPONDS TO QUESTION OF A REGISTERED
									USER OR WHO INTERACTS PRIVATELY WITH A REGISTERED USER; (III)
									ANY INFORMATION, CONTENT OR ADVICE AVAILABLE ON OR RECEIVED
									THROUGH THE WEBSITE (IV) ACCESS TO OR ALTERATION OF USER
									CONTENT OR HCP CONTENT (V) TRANSMISSIONS OR DATA AND (VI) THE
									ACCURACY OF ANY LAB CONTENT INCLUDING LAB TEST RESULTS (VII)ANY
									OTHER MATTER RELATING TO THE WEBSITE AND / OR SERVICES.</li>
								<li style="margin-left: 20px;">7.9. LYBRATE MAKES NO
									WARRANTY OR REPRESENTATION THAT ANY ERRORS IN THE WEBSITE WILL
									BE CORRECTED EXCEPT AS REQUIRED BY LAW.</li>
								<li style="margin-left: 20px;">7.10. LYBRATE ASSUMES NO
									RESPONSIBILITY AND/OR LIABILITY WITH RESPECT TO ANY USER
									CONTENT, LAB CONTENT OR HCP CONTENT (AS APPLICABLE) WHICH YOU MAY POST ON
									THE WEBSITE AND YOU ARE SOLELY RESPONSIBLE FOR SUCH USER
									CONTENT POSTED ON THE SITE.</li>
								<li style="margin-left: 20px;">7.11. YOU AGREE THAT THE
									OPEN AND REAL-TIME NATURE OF THE PLATFORM MAKE IT IMPOSSIBLE
									FOR LYBRATE TO VOUCH FOR THE VALIDITY, AUTHETICITY AND HONESTY
									OF USER CONTENT OR HCP CONTENT. LYBRATE IS NOT RESPONSIBLE FOR
									ANY USER CONTENT OR HCP CONTENT ON THE SITE, OR FOR THE
									CONSEQUENCES OF YOU READING OR RELYING ON SUCH CONTENT.</li>
								<li style="margin-left: 20px;">7.12. THE SITE IS PROVIDED
									ON A "<b>AS IS</b>" AND "<b>AS AVAILABLE</b>" BASIS. NEITHER
									LYBRATE NOR ANY THIRD PARTY SERVICE PROVIDERS ARE LIABLE FOR
									ANY TECHNICAL OR OTHER OPERATIONAL DIFFICULTIES OR PROBLEMS
									WHICH MAY RESULT IN LOSS OF YOUR DATA, PERSONALIZATION SETTINGS
									OR OTHER INTERRUPTIONS IN THE FEATURES OFFERED ON THE WEBSITE.
									NEITHER LYBRATE NOR ANY THIRD PARTY IS LIABLE FOR THE DELETION,
									LOSS, MIS-DELIVERY, TIMELINESS OR FAILURE TO STORE OR TRANSMIT
									ANY USER CONTENT, LAB CONTENT OR HCP CONTENT, LYBRATE CONTENT OR YOUR
									PERSONALIZATION SETTINGS.
								</li>
								<li style="margin-left: 20px;">7.13. LYBRATE DOES NOT
									PROVIDE ANY GUARANTEE AND SHALL NOT BE HELD LIABLE OR
									RESPONSIBLE FOR THE FAILURE TO SEND SMS OR OTHER NOTIFICATIONS
									OR REMINDERS TO YOU AS A FEATURE OF THE WEBSITE.</li>
								<li style="margin-left: 20px;">7.14. Neither the HCPs, Labs nor
									Lybrate shall be responsible or liable for any breach or loss
									of data including Personal Information caused due to events
									beyond the control of HCPs / Lybrate or due to technical
									reasons or third party actions.</li>
								<li style="font-weight: bold;">8. LIMITATION OF LIABILITY:</li>
								<li style="margin-left: 20px;">8.1. To the fullest extent
									permitted by law, in no event will Lybrate or its affiliates be
									liable for any direct, indirect, special, incidental, punitive,
									exemplary or consequential damages (including, without
									limitation, loss of business, revenue, profits, goodwill),
									whether or not Lybrate has been warned of the possibility of
									such damages or could have reasonably foreseen such damages.
									Notwithstanding anything to the contrary in this Agreement,
									Lybrate&#39;s liability under this Agreement to YOU shall in no
									event exceed the fee amounts collected from You in the
									preceding one year or INR 5000 whichever is lower. </li>
								<li style="font-weight: bold;">9. REPRESENTATION AND
									WARRANTIES</li>
								<li style="margin-left: 10px;">By Using This Website You
									Represent And Warrant That: </li>
								<li style="margin-left: 20px;">9.1. You are 18 years of age
									or older and that Your use of the Website shall not violate any
									applicable law or regulation;</li>
								<li style="margin-left: 20px;">9.2. All registration
									information You submit is truthful and accurate and that You
									agree to maintain the accuracy of such information;</li>
								<li style="margin-left: 20px;">9.3. You as a Registered or
									Non-Registered User will use the Website solely for Your
									personal and non-commercial use. Any use of this Website or its
									content other than for personal purposes is prohibited.</li>
								<li style="margin-left: 20px;">9.4. Your use of this
									Website shall be subjected to the following restrictions:</li>
								<li style="margin-left: 30px;">9.4.1. You will not delete
									or modify any content of the Website including but not limited
									to, legal notices, disclaimers or proprietary notices such as
									copyright or trademark symbols, logos, that You do not own or
									have express permission to modify;</li>
								<li style="margin-left: 30px;">9.4.2. You will not
									decompile, reverse engineer, or disassemble the content, or</li>
								<li style="margin-left: 30px;">9.4.3. You will not remove
									any copyright, trademark registration, or other proprietary
									notices from the Website. You further agree not to access or
									use this Website in any manner that may be harmful to the
									operation of this Website or its content. </li>
								<li style="margin-left: 20px;">9.5. You will not use the
									Website and / or services in any way that is unlawful, or harms
									the Company or any other person or entity, as determined in the
									Company's sole discretion.</li>
								<li style="margin-left: 20px;">9.6. You will not engage in
									any form of antisocial, disrupting, or destructive acts,
									including &#34;flaming&#34;, &#34;spamming&#34;,
									&#34;flooding&#34;, &#34;trolling&#34;, &#34;phishing&#34; and
									&#34;griefing&#34; as those terms are commonly understood and
									used on the Internet.</li>
								<li style="margin-left: 20px;">9.7. You will not host,
									display, upload, modify, publish, transmit, update or share any
									information that —</li>
								<li style="margin-left: 30px;">(a) belongs to another
									person and to which the user does not have any right to;</li>
								<li style="margin-left: 30px;">(b) is grossly harmful,
									harassing, blasphemous defamatory, obscene, pornographic,
									paedophilic, libellous, invasive of another&#39;s privacy,
									hateful, or racially, ethnically objectionable, disparaging,
									relating or encouraging money laundering or gambling, or
									otherwise unlawful in any manner whatever;</li>
								<li style="margin-left: 30px;">(c) harm minors in any way;</li>
								<li style="margin-left: 30px;">(d) infringes any patent,
									trademark, copyright or other proprietary rights(s), violates
									any law for the time being in force;</li>
								<li style="margin-left: 30px;">(f) deceives or misleads the
									addressee about the origin of such messages or communicates any
									information which is grossly offensive or menacing in nature;</li>
								<li style="margin-left: 30px;">(g) impersonate another
									person;</li>
								<li style="margin-left: 30px;">(h) contains software
									viruses or any other computer code, files or programs designed
									to interrupt, destroy or limit the functionality of any
									computer resource;</li>
								<li style="margin-left: 30px;">(i) threatens the unity,
									integrity, defence, security or sovereignty of India, friendly
									relations with foreign states, or public order or causes
									incitement to the commission of any cognizable offence or
									prevents investigation of any offence or is insulting any other
									nation.</li>
								<li style="font-weight: bold;">10. INDEMNIFICATION</li>
								<li style="margin-left: 10px;">You hereby indemnify,
									defend, and hold Lybrate, the Lybrate&#39;s distributors,
									agents, representatives and other authorized users (Registered
									and Non-Registered Users, HCPs), and each of the foregoing
									entities&#39; respective resellers, distributors, service
									providers and suppliers, and all of the foregoing entities&#39;
									respective officers, directors, owners, employees, agents,
									representatives, harmless from and against any and all losses,
									damages, liabilities and costs arising from (i)Your use of the
									Website (ii) Your breach of provisions of this Agreement and
									(iii) any negligent or intentional wrongdoing on Your part. </li>
								<li style="font-weight: bold;">11. TERMINATION </li>
								<li style="margin-left: 10px;">Lybrate reserves the right,
									in the event it finds out in its sole discretion that You
									breached the Agreement, to suspend and / or terminate Your user
									account and/or access to the Website by blocking Your IP
									address or email id with or without notice to You. Any
									suspected illegal, fraudulent or abusive activity may be
									grounds for suspending and / or terminating Your user account
									and/or Your access to the Website. Upon suspension or
									termination, Your right to use the features on the Website
									shall immediately cease and the Company reserves the right to
									remove or delete Your information that is available with the
									Company, including but not limited to login and account
									information. </li>
								<li style="margin-left: 10px;">Upon user account
									termination or suspension, regardless of the reasons therefore,
									Your right to use the Website, User Content, HCP Content or
									Lybrate Content immediately ceases, and You acknowledge and
									agree that We may immediately deactivate or delete Your account
									and all related information and files in Your account and/or
									bar any further access to such files or this site. Lybrate
									shall not be liable to You or any third party for any claims or
									damages arising out of any termination or suspension of Your
									user account or any other actions taken by Us in connection
									with such account termination or suspension.</li>
								<li style="font-weight: bold;">12. GOVERNING LAW AND
									JURISDICTION</li>
								<li style="margin-left: 10px;">The interpretation of this
									Agreement and the resolution of any disputes arising under this
									Agreement shall be governed by the laws of India. </li>
								<li style="font-weight: bold;">13. MODIFICATIONS</li>
								<li style="margin-left: 20px;">13.1. Lybrate reserves the
									right to modify any part of the Agreement at any time without
									giving You prior notice.</li>
								<li style="margin-left: 20px;">13.2. When We update the
									Agreement, the next time You visit the Website, the Website
									will provide a message to you (which may be sent by email if
									You have provided Your Email Id) which will intimate You of the
									amendments. You do not agree to the amendments, please do not
									use the Website any further.</li>
								<li style="font-weight: bold;">14. ARBITRATION </li>
								<li style="margin-left: 20px;">14.1. Any dispute, claim or
									controversy arising out of or relating to this notice or the
									breach, termination, enforcement, interpretation or validity
									thereof, including the determination of the scope or
									applicability of this Agreement to arbitrate, or to Your use of
									the Website or its features or the information to which it
									gives access, shall be determined by arbitration in India,
									before a single arbitrator in accordance with the London Court
									of International Arbitration, India Arbitration Rules (LCIA
									Rules), which LCIA Rules are deemed to be incorporated by
									reference into this Agreement. The venue of such arbitration
									shall be New Delhi, India. The governing law of the Agreement
									shall be the substantive law of India. All proceedings of such
									arbitration, including, without limitation, any awards, shall
									be in the English language. The award shall be final and
									binding on the Parties .</li>
								<li style="margin-left: 20px;">14.2. The Parties shall have
									the right to apply to a court of competent jurisdiction to
									obtain interim injunctive relief in respect of any dispute,
									pending resolution of such dispute in accordance with the
									Agreement.</li>
								<li style="font-weight: bold;">15. GENERAL PROVISIONS</li>
								<li style="margin-left: 20px;">15.1. Severability: If any
									provision of this Agreement is held by a court of competent
									jurisdiction or arbitral tribunal to be unenforceable under
									applicable law, then such provision shall be excluded from the
									Agreement and the remainder of the Agreement shall be
									interpreted as if such provision were so excluded and shall be
									enforceable in accordance with its terms; provided however
									that, in such event the Agreement shall be interpreted so as to
									give effect, to the greatest extent consistent with and
									permitted by applicable law, to the meaning and intention of
									the excluded provision as determined by such court of competent
									jurisdiction or arbitral tribunal. </li>
								<li style="margin-left: 20px;">15.2. Notices: All notices
									and other communications required or permitted hereunder to be
									given to a Party shall be in writing, in the English language,
									and shall be sent by facsimile, e-mail, or mailed by prepaid
									internationally-recognized courier, or otherwise delivered by
									hand or by messenger, addressed to such Party&#39;s address as
									set forth below or at such other address as the Party shall
									have furnished to the other Party in writing in accordance with
									this provision:</li>
								<li style="margin-left: 30px;">If to Lybrate:</li>
								<li style="margin-left: 30px;">Lybrate India Private
									Limited</li>
								<li style="margin-left: 30px;">199 Sector 15A</li>
								<li style="margin-left: 30px;">Faridabad, Haryana, India –
									121007</li>
								<li style="margin-left: 30px;">If to You:</li>
								<li style="margin-left: 30px;">at the email address
									provided by You to us when You registered as a Lybrate User.</li>
								<li style="margin-left: 20px;">15.3. Waiver: No term of the
									Agreement shall be deemed waived and no breach excused, unless
									such waiver or consent shall be in writing and signed by the
									Party claimed to have waived or consented. Any consent by any
									Party to, or waiver of a breach by the other, whether expressed
									or implied, shall not constitute consent to, waiver of, or
									excuse for any other different or subsequent breach. </li>
								<li style="margin-left: 20px;">15.4. Complete
									Understanding: The Agreement contain the entire understanding
									of the Parties, and there are no other written or oral
									understandings or promises between the Parties with respect to
									the subject matter of the Agreement other than those contained
									or referenced in the Agreement. </li>
								<li style="margin-left: 20px;">15.5. Force Majeure: Lybrate
									shall not be liable for any downtime or delay or unavailability
									of the Website caused by circumstances beyond Lybrate's
									reasonable control, including without limitation, acts of God,
									acts of government, floods, fires, earthquakes, civil unrest,
									acts of terror, strikes or other labour problems, internet
									service provider failures or delays, or denial of service
									attacks.</li>
								<li style="margin-left: 20px;">15.6. Advice of Counsel:
									Each Party acknowledges: (a) having fully read the Agreement in
									its entirety; (b) having had full opportunity to study and
									review the Agreement.</li>
								<li style="margin-left: 20px;">15.7. Advertisement: Lybrate
									shall have the right to place advertisements and publicity
									materials of its choice, including that pertaining to parties
									other than itself for commercial use through electronic means
									on the Website.  </li>
								<li style="margin-left: 20px;">15.8. Assignment: You may
									not assign or sub-license, without the prior written consent of
									Lybrate, the rights, duties or obligations under this
									Agreement, in whole or in part, to any person or entity.</li>
								<li style="margin-left: 20px;">15.9. Conflict: In the event
									there is any conflict between the terms set out in these Terms
									of Use, the Privacy Policy, the Additional Terms of Use for
									HCPs and any other policies applicable to specific pages of the
									Website, the following order of prevalence shall apply: (i) the
									Privacy Policy (ii) these Terms of Use, (iii) the Additional
									Terms of Use for HCPs and (iv) any other policies applicable to
									specific pages of the Website.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
                </DIV>
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

  