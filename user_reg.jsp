<%@include file="include/dbconnect.jsp" %>
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>


<%   
    try {
        String btn = request.getParameter("Submit");

         String Email= "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
        
        if (btn.equals("Submit")) {
            
            
            String name = request.getParameter("name");
        
            String contact = request.getParameter("contact");
            String email = request.getParameter("email");
             String genter = request.getParameter("genter");
            String address = request.getParameter("address");
            String password = request.getParameter("password");
         
           if(contact.matches("^[0-9]*$")&& contact.length()==10){
           if(email.matches(Email)){
                    String qry = "select max(id) as maxid from user";
                    ResultSet rs = stmt1.executeQuery(qry); 
                    int id1 = 0;
                    if (rs.next()) {
                        id1 = rs.getInt("maxid");
                    }
                    int id2 = id1 + 1;
                    
            String ins = "insert into user values('"+id2+ "','" +name + "','" +contact + "','" + email + "','" + genter + "','" + address + "','"+ password  +"','0')";
            int n = stmt.executeUpdate(ins);
            if (n == 1) {
%>
<script language="javascript">
    alert("added  successfully");
    window.location.href = "user.jsp";
</script>
<%
} else {
%>
<script language="javascript">
    alert("Data Not Save");
    window.location.href = "user_reg.jsp";
</script>
<%
            }
                
           }else {
             %>
               <script language='javascript'>
                            alert("Pls Enter the vaild email");
                            window.location.href = "user_reg.jsp";
                        </script>
              <%
        }  }
        
       else
               {
             %>
               <script language='javascript'>
                            alert("Pls enter the valid number");
                          window.location.href = "user_reg.jsp";
                        </script>
              <%
        }
        }
           
   } catch (Exception ex) {

    }
%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Data  Visualization</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   <body>
      <!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <div class="container">
            <div class="header_section_top">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="custom_menu">
                        <ul>
                           <li><a href="index.jsp">Home</a></li>
                           <li><a href="admin.jsp">Admin</a></li>
                         
                           <li><a href="user.jsp">User</a></li>
                           
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header top section start -->
         <!-- logo section start -->
         <div class="logo_section">
            <div class="container">
               <div class="row">
                  
               </div>
            </div>
         </div>
         <!-- logo section end -->
         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <a href="index.html">Home</a>
                     <a href="fashion.html">Fashion</a>
                     <a href="electronic.html">Electronic</a>
                     <a href="jewellery.html">Jewellery</a>
                  </div>
                  <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
                  <div class="dropdown">
<!--                     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     </button>-->
                    
                  </div>
                  <div class="main">
                     <!-- Another variation with a button -->
                     <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search this blog">
                        <div class="input-group-append">
                           <button class="btn btn-secondary" type="button" style="background-color: #f26522; border-color:#f26522 ">
                           <i class="fa fa-search"></i>
                           </button>
                        </div>
                     </div>
                  </div>
                  <div class="header_box">
                     <div class="lang_box ">
                        <a href="#" title="Language" class="nav-link" data-toggle="dropdown" aria-expanded="true">
                        <img src="images/flag-uk.png" alt="flag" class="mr-2 " title="United Kingdom"> English <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu ">
                           <a href="#" class="dropdown-item">
                           <img src="images/flag-france.png" class="mr-2" alt="flag">
                           French
                           </a>
                        </div>
                     </div>
                     <div class="login_menu">
                        <ul>
                           <li><a href="#">
                              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                              <span class="padding_10">Cart</span></a>
                           </li>
                          
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
          <div class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get YOUR<br>MEMBERSHIP ACCESS AND GET FLAT 50% DISCOUNT</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get Start <br>YOUR FAVOURITE SHOPPING</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">WE ARE HERE <br> ONLY FOR YOU</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                  </a>
                  <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                  </a>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->
     <form id="form" name="form" method="post" action="">
  <table width="80%" ailgn="center">
  <tr>
    <td height="53" colspan="9"><div align="center" class="style1 style3">  <h1 style="color:#e6b800;">User Register : </h1></div></td></h1>
   </tr>
   
       <tr>
    <td width="25%" height="61">&nbsp;</td>
    <td width="25%"><div align="center" class="style2"><h2> Name : </h2></div></td>
    <td width="14%"><input name="name" type="text" class="style2"></td>
    <td width="36%">&nbsp;</td>
  </tr>
  
  
  <tr>
    <td width="38%" height="61">&nbsp;</td>
    <td width="12%"><div align="center" class="style2"><h2>Contact :</h2> </div></td>
    <td width="14%"><input  name="contact" type="tel" class="style2"title="numbers only"placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"� required></td>
    <td width="36%">&nbsp;</td>
  </tr>
  <tr>
    <td width="38%" height="61">&nbsp;</td>
    <td width="12%"><div align="center" class="style2"><h2>Email : </h2></div></td>
    <td width="14%"><input name="email" type="email" class="style2"></td>
    <td width="36%">&nbsp;</td>
  </tr>
  <tr>
    <td width="38%" height="61">&nbsp;</td>
    <td width="12%"><div align="center" class="style2"><h2>Gender : </h2></div></td>
   
 <td> <select name="genter" id="genter" style="width:150px ">
    <option value="male">Male</option>
    <option value="female">Female</option></td>
     <td width="36%">&nbsp;</td>
  </select>
     </tr>
   
  
  <tr>
    <td width="38%" height="61">&nbsp;</td>
    <td width="12%"><div align="center" class="style2"><h2>Address : </h2></div></td>
    <td width="14%"><input name="address" type="text" class="style2"></td>
    <td width="36%">&nbsp;</td>
  </tr>
    <tr>
    <td height="59">&nbsp;</td>
    <td><div align="center" class="style2" ><h2>Password : </h2></div></td>
    <td><input name="password" type="password" placeholder="password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"title="at least 4 characters" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td height="54">&nbsp;</td>
    <td><div align="center">
      <input name="Submit" type="submit" class="ringcon" value="Submit">
    </div></td>
    <td><input name="Clear" type="reset" class="ringcon" value="Clear"></td>
    <td>&nbsp;</td>
  </tr>
</table>
</form> 
    
      <!-- jewellery  section end -->
      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
<!--             <div class="input_bt">
               <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
               <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
            </div>-->
             <div class="footer_menu">
               <ul>
                  <li><a href="ads.jsp">Best Sellers</a></li>
                  <li><a href="ads.jsp">Gift Ideas</a></li>
                  <li><a href="ads.jsp">New Releases</a></li>
                  <li><a href="ads.jsp">Today's Deals</a></li>
                  <li><a href="ads.jsp">Customer Service</a></li>
               </ul>
            </div>
            <div class="location_main">Help Line  Number : <a href="#">+91638 160 9857</a></div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">� 2023 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
         }
      </script>
   </body>
</html>