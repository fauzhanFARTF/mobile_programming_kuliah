<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pgmain.aspx.vb" Inherits="pages_pgmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SISTEM INFORMASI KRS</title>
    <style type="text/css">
     .newStyle1
             {
             font-family: Arial, Helvetica, sans-serif;
             font-size: x-large;
             text-align: center;
             }
             .UrbanGreyMenu
             {
             width: 885px;
             }
             .Frame_Inside_Footer
             {
             margin-bottom: 0px;
             }
     </style>
</head>
<body>
    <form id="Default" runat="server">
                <div class ="Frame_Background" >
                    <div class ="Frame_Header">
                        <div style="font-size: x-large">
                            <marquee direction="left" onmouseover="this.stop()" onmouseout="this.start()"style="width: 883px; height: 32px"> SELAMAT DATANG DI MENUUTAMA </marquee>
                        </div>
                    </div>
                    <div class ="Frame_Body ">
                         <div class ="Frame_Body_Left ">
                             <div class ="Frame_Inside_Body_Left2 ">
                                <div class="UrbanGreyMenu" style="border: thin groove #800000; background-color: #C0C0C0">
                                    <h3 class="HeaderBar" style="left: auto; margin-bottom: 19px;"> FILE</h3>
                                    <ul style="color: #FFFFFF">
                                        <li>
                                            <a href="">HOME</a>

                                        </li>
                                    </ul>
                                    <h3 class="HeaderBar">MASTER</h3>
                                        <ul>
                                            <li><a href="pgmahasiswa.aspx">DATA MAHASISWA</a></li>
                                            <li><a href="Default.aspx">DATA MATAKULIAH</a></li>
                                        </ul>
                                    <h3 class="HeaderBar">TRANSACTION</h3>
                                         <ul>
                                            <li><a href="">TRX KRS</a></li>
                                         </ul>
                                    <h3 class="HeaderBar">REPORT</h3>
                                    <ul>
                                        <li><a href="">LAPORAN MAHASISWA</a></li>
                                        <li><a href="">LAPORAN MATAKULIAH</a></li>
                                        <li><a href="">LAPORAN KRS</a></li>
                                    </ul>
                                    <h3 class="HeaderBar">USER</h3>
                                    <ul>
                                        <li><a href="">ADD USER</a></li>
                                    </ul>
                                        <h3 class="HeaderBar">LOGOUT</h3>
                                    <ul>
                                        <li>
                                            <a href="http://localhost:49454/default.aspx">Close</a>
                                        </li>
                                    </ul>
                                    <center>
                                        <div class="Frame_Footer ">
                                            <div class ="Frame_Inside_Footer " style="background-color: #800000; color:
                                            #FFFFFF;">
                                            <span class="style1" style="color: #FFFFFF">Copyrights by Mustar Aman,
                                            M.Kom</span><br class="style1" />
                                            <span class="style1"><span class="style1">&copy; 2020 All Rights
                                            Reserved</span></span><span class="style1"> </span>
                                            </div>
                                        </div>
                                    </center>
                                </div>
                            </div>
                         </div>
                    </div>
                 </div>
      </form>
</body>
</html>
</body>
</html>
