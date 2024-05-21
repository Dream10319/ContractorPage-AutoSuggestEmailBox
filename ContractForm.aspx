<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContractForm.aspx.vb" Inherits="ContractorPage.ContractForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css' />
      <style>
            body {
                /*background-image: url("https://img.freepik.com/free-vector/map-point-abstract-3d-polygonal-wireframe-airplane-blue-night-sky-with-dots-stars-illustration-background_587448-568.jpg");*/
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                max-width: max-content;
                margin: auto;
                margin-top: 20px;
                text-align: center;
            }

            .titles {
                font: Calibri;
                font-size: x-large;
               /* color: #91c2c5;*/
               color:black;
               font-weight:bold;
            }

            #form1 {
                background: #A9D2FF;
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0, 0, 0, .7);
                border-radius: 10px;
            }

            .forms > td {
                border:none
            }

            .LaT{
                background-color:#185088;

            }
         
            .borderspace {
                border-spacing: 2em;
            }

            .lbl1 {
                background-color: beige;
            }

            .lbl2 {
                color: white;
            }

            .lat1{
                font-size:x-large;
                color:white;

            }
            .lat2{
                font-size:larger;
                color:white;
            }
            .lat3{

                background:white;
            }

            .lat4{
                color:blue;

            }

            .lat5{

               color:black;

            }

            .lbl3 {
                color: blue;

            }
            .lbl4{
             font-weight:bold;
             
            }
            
            .auto-style3
            {
                left:50px;



            }

            .lbl5{
                color:black;
                border:3px solid black;
                padding:5px;
                margin:5px;


            }
         

            .pt {
                cursor: pointer;
                color: Blue;
            }

            .lblS {
                font: 400 130px/0.8 'Great Vibes', Helvetica, sans-serif;
                font-size: x-large;
                font-weight: 600;
                color: black;
            }

          

            .auto-style4{
               background:#185088;
               width:850px;
               height:1.5em


            }

             .shadowbutton {
                background-color: #FDDF11;
                border: none;
                color: black;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                border-radius: 10px;
                box-shadow: 10px 5px 5px grey;

            }
              .shadowbutton1 {
                background-color:white ;
                border: none;
                color: black;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                border-radius: 10px;
                box-shadow: 10px 10px 10px black;

            }



           
        </style>
           <script src="https://momentjs.com/downloads/moment.min.js"></script>
          <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css" />
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

     <script>

         $(function () {
             $("#txtdate").datepicker();
         });

     </script>
      <script>

          $(function () {
              $("#txtdate12").datepicker();
          });

      </script>


    <script  type="text/javascript">


        windows.history.forward();
        function SetName(SignName, type) {
            if (type == 'RP') {
                document.getElementById('lblRequestSignature').innerHTML = SignName;
                document.getElementById('hRequestSignature').value = SignName;
                document.getElementById('txtRequestSignature').style.display = "none";
            }
            if (type == 'AS') {
                document.getElementById('lblApproverSignature').innerHTML = SignName;
                document.getElementById('hApproverSignature').value = SignName;
                document.getElementById('txtApproverSignature').style.display = "none";
            }
            if (type == 'PAS') {
                document.getElementById('lblPurchaseSignature').innerHTML = SignName;
                document.getElementById('hPurchaseSignature').value = SignName;
                document.getElementById('txtPurchaseSignature').style.display = "none";
            }
        }





        function Validate() {
            //windows.history.forward();
            var required = '';
           
            if (document.getElementById('txtAPN').value == '') {
                required = '- Please Enter Agency Program Unit:\n';
            }
            if (document.getElementById('txtName').value == '') {
                required += '- Please Enter Name of Individual/Contractor:\n';
            }
            if (document.getElementById('txtProject').value == '') {
                required += '- Please Enter Project/Program:\n';
            }
            if (document.getElementById('txtCom').value == '') {
                required += '- Please Enter Completed by: \n';
            }

            if (document.getElementById('txtdate').value == '') {
                required += '- Please Enter Date: \n';
            }
            if ((document.getElementById('Radio1').checked == false) && (document.getElementById('Radio2').checked == false)) {
               
                required += " - When and Where to do the work? \n";
              
            }
            if ((document.getElementById('Radio3').checked == false) && (document.getElementById('Radio4').checked == false)) {

                required += " - What tools or equipment to use? \n";

            }
            if ((document.getElementById('Radio5').checked == false) && (document.getElementById('Radio6').checked == false)) {

                required += " - What workers to hire or to assist with the work? \n";

            }
            if ((document.getElementById('Radio7').checked == false) && (document.getElementById('Radio8').checked == false)) {

                required += " - Where to purchase supplies and services? \n";
            }
            if ((document.getElementById('Radio9').checked == false) && (document.getElementById('Radio10').checked == false)) {

                required += " - What work must be performed by a specific individual \n";
            }
            if ((document.getElementById('Radio11').checked == false) && (document.getElementById('Radio12').checked == false)) {

                required += " - What order or sequence to follow \n";
            }
           
            if (document.getElementById('hRequestSignature').value == '') {
                required += '- Please Enter your Signature:\n';
            }
            if (document.getElementById('txtdate12').value == '') {
                required += '- Please Enter Approve Date:\n';
            }

            if (document.getElementById('txtEmail').value == '') {
                required += '- Please Enter Approve Email:\n';
            }


             if ((document.getElementById('Radio13').checked == false) && (document.getElementById('Radio14').checked == false)) {

                required += " - you want to select  Contract Worker or Independent Contractor \n";
            }

            if (required != '') {
                alert(required);
                return false;
            }
        }

    </script>

    <script type="text/javascript">  
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $("#txtDropdownEmailList").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "ContractForm.aspx/GetEmail",
                        data: "{'email':'" + document.getElementById('txtDropdownEmailList').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            
                        }
                    });
                }
            });
        }
    </script> 
     

</head>
<body>
    <label class="titles" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mississippi State Department of Health<br />
    &nbsp;
          Contract Worker /Independent Contractor Determination Worksheet </label>
                                 <br />    <br /> 
    <form id="form1" runat="server">
        <div>
            
<asp:Table runat="server" Width="850px">
              <%--  Agency Program Unit:--%>
               
                <asp:TableRow >
                   
                     <asp:TableCell ColumnSpan="2"  > 
                         <br />
                         <asp:Table runat="server">
                             <asp:TableRow>
                               <asp:TableCell CssClass="lbl4">
                                 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblAgency" runat="server" Text="Agency Program Unit:" ></asp:Label>&nbsp;&nbsp;
                               </asp:TableCell>
                               <asp:TableCell  CssClass="">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAPN" runat="server"  Width="400px"></asp:TextBox>
                               </asp:TableCell>
                             </asp:TableRow>
                         </asp:Table>
                     </asp:TableCell>
                </asp:TableRow>

               <%-- Name of Individual/Contractor:--%>

              <asp:TableRow>
                   <asp:TableCell ColumnSpan="2" >
                       <asp:Table runat="server">
                           <asp:TableRow>
                             <asp:TableCell CssClass="lbl4">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblName" runat="server"  Text ="Name of Indivdual/Contractor:"></asp:Label>
                             </asp:TableCell>
                             <asp:TableCell CssClass="">
                                 <asp:TextBox ID="txtName" runat="server"  Width="400px"></asp:TextBox>
                             </asp:TableCell>
                           </asp:TableRow>
                      </asp:Table>
                  </asp:TableCell>
             </asp:TableRow>
            <%--    Project /Program--%>
              <asp:TableRow>
                  <asp:TableCell ColumnSpan="2">
                      <asp:Table runat="server">
                          <asp:TableRow>
                              <asp:TableCell ColumnSpan="2">
                                  <asp:Table runat="server">
                                      <asp:TableRow>
                                          <asp:TableCell CssClass="lbl4">
                                               &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblProject" runat="server"  Text ="Project/Program:"></asp:Label>
                                           </asp:TableCell>
                                          <asp:TableCell CssClass="">
                                              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtProject" runat="server"  Width="400px"></asp:TextBox>
                                          </asp:TableCell>
                                       </asp:TableRow>
                                 </asp:Table>
                            </asp:TableCell>
                      </asp:TableRow>
                   </asp:Table>
                 </asp:TableCell>
               </asp:TableRow>
             <%--  Complated by and date--%>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="4">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                 <asp:TableCell CssClass="lbl4">
                                      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblcom" runat="server"  Text ="Completed by:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell CssClass="">
                                     &nbsp; <asp:TextBox ID="txtCom" runat="server"  Width="230px"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell CssClass="">
                                    &nbsp;<asp:Label ID="lbldate" runat="server"  Text ="Date:"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell CssClass="">
                                    <asp:TextBox ID="txtdate" runat="server" Width="70px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                   </asp:TableCell>
                 </asp:TableRow>
               <asp:TableRow>
                  
                   <asp:TableCell CssClass ="">
                        <br />
                      <asp:Label ID="lb1"  runat="server" Text=""><strong>Instruction:</strong>Answers to the following questions will help determine whether contacts with individual should be </asp:Label> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:Label runat="server" ID="l32" Width="30px"></asp:Label></asp:TableCell>
                  
                   
                  </asp:TableRow>
                <asp:TableRow>
                 <asp:TableCell CssClass ="">
                    &nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Text="">handled as contract workers or independent contractor by the agency for accounting purposes. 'YES' answer indecate</asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass ="">
                        <asp:Label ID="lb3" runat="server" Text=""> a contract worker relationship while 'NO' answers indicate an indepdent contractor relationship.The guidance is </asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:TableCell>
                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass ="">
                         <asp:Label ID="lb4" runat="server" Text="">provided by Federal IRS regulations.&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                   <br /><br />
                        </asp:TableCell>
                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell >
                                    &nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="lb5" runat="server" Text=""><strong>Does the agency direct the individual as to:</strong></asp:Label>
                                </asp:TableCell>
                                    <asp:TableCell>
                                       &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:Label ID="lb6" runat="server" Text=""><strong>YES</strong></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell  >
     &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lb7" runat="server" Text=""><strong>NO</strong></asp:Label>
                                   </asp:TableCell>
                               </asp:TableRow>
                             </asp:Table>
                          </asp:TableCell>
                        </asp:TableRow>
  
                <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                             &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;<asp:Label ID="lb8" runat="server" Text="">1. When and Where to do the work?  </asp:Label>  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </asp:TableCell>

                        <asp:TableCell>  <asp:RadioButton ID="Radio1" GroupName="Radio1" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio2"  GroupName="Radio1" runat="server"  />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>

                </asp:TableRow>
            <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                             &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;<asp:Label ID="Label1" runat="server" Text="">2. What tools or equipment to use?  </asp:Label>  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </asp:TableCell>
                        <asp:TableCell><asp:RadioButton ID="Radio3"  GroupName="Radio3" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio4"  GroupName="Radio3" runat="server"  />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                           <asp:Label ID="Las2" runat="server" Width="28px" Text=""></asp:Label>  <asp:Label ID="Label2" runat="server" Text="">3. What workers to hire or to assist with the work?  </asp:Label> &nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </asp:TableCell>
                        <asp:TableCell><asp:RadioButton ID="Radio5" GroupName="Radio5" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio6" GroupName="Radio5" runat="server"  />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>
             </asp:TableRow>

                  <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                            <asp:Label ID="Label4" runat="server" Width="28px" Text=""></asp:Label><asp:Label ID="Label3" runat="server" Text="">4. Where to purchase supplies and services?  </asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </asp:TableCell>
                        <asp:TableCell><asp:RadioButton ID="Radio7" GroupName="Radio7" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio8" GroupName="Radio7" runat="server"  />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                             &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="">5. What work must be performed by a specific individual &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</asp:Label>  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          </asp:TableCell>
                        <asp:TableCell><asp:RadioButton ID="Radio9" GroupName="Radio9" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio10" GroupName="Radio9" runat="server"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>
                </asp:TableRow> 
                 <asp:TableRow>
                 <asp:TableCell ColumnSpan="3">
                    <asp:Table runat="server">
                      <asp:TableRow>
                          <asp:TableCell>
                             &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="">6. What order or sequence to follow&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</asp:Label>  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </asp:TableCell>
                        <asp:TableCell><asp:RadioButton ID="Radio11" GroupName="Radio11" runat="server"  /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                            <asp:TableCell><asp:RadioButton ID="Radio12" GroupName="Radio11" runat="server"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell> 
                      </asp:TableRow>
                      </asp:Table>
                </asp:TableCell>
                </asp:TableRow> 
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Table runat="server">
                        <asp:TableRow>
                <asp:TableCell><asp:Label ID="Lb12" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server"  Width="200px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________</asp:Label> </asp:TableCell>
                <asp:TableCell><asp:Label ID="Lbl3" runat="server" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________</asp:Label> </asp:TableCell>
              
                </asp:TableRow>
                </asp:Table>
                </asp:TableCell>
                </asp:TableRow>
              <asp:TableRow> <asp:TableCell><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Width="230px" ></asp:Label>Contract  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Independent</strong></asp:TableCell></asp:TableRow>
              <asp:TableRow>
              </asp:TableRow>
              <asp:TableRow> <asp:TableCell><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" Id="Lb18" Width="100px"></asp:Label> Worker  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contractor</strong></asp:TableCell></asp:TableRow>
              <asp:TableRow>

              <asp:TableCell cssCss="">&nbsp;&nbsp;<strong>Other Consideration:</strong><asp:Label ID="Label7" runat="server" Width="600px" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell>
              </asp:TableRow> 
              <asp:TableRow>
                  <asp:TableCell CssClass="">&nbsp;&nbsp;&nbsp; Independent contractor usually are more likely to:<asp:Label ID="Label10" runat="server" Width="400px" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </asp:TableCell>
              </asp:TableRow>
              <asp:TableRow>
                  <asp:TableCell CssClass="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1) Have un-reimbursed,fixed ongoing cost incurred regardless of the current work.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </asp:TableCell>
              </asp:TableRow>
              <asp:TableRow>
                   <asp:TableCell CssClass="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (2) Have significant investment in facilities or assets.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:TableCell>

              </asp:TableRow>
                <asp:TableRow>
                  <asp:TableCell CssClass=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3) Be free to seek out business opportunities(advertise,visible business location,etc.).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </asp:TableCell>
              </asp:TableRow>
            <asp:TableRow>
                  <asp:TableCell CssClass=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(4) Be paid a flat fee for the job verses a conntract worker generally guaranted a regular wage.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:TableCell>
              </asp:TableRow>
             <asp:TableRow>
                   <asp:TableCell CssClass="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(5) Be engaged for a limited time or project.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lb16" Width="150px"></asp:Label>   <br /></asp:TableCell>
             </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;The substance of the relationship is more important than the form agreement.It is not expect that all of the&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell>&nbsp;&nbsp;&nbsp;characteristics will be present and judgement should be used in determining whether an entity is a contract employee or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:TableCell>
             </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;an independent contractor<asp:Label runat="server" ID="L31" width="650px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TableCell>
             </asp:TableRow>
             <asp:TableRow CssClass="auto-style4"  >
               <asp:TableCell ColumnSpan="5">
                   <asp:Table runat="server">
                    <asp:TableRow>

                     <asp:TableCell> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="CONCLUSION" CssClass="lat1"></asp:Label></asp:TableCell>
                     <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Radio13" GroupName="Radio13" runat="server" /></asp:TableCell>
                     <asp:TableCell> <asp:Label ID="Label12" runat="server" Text="Contract Worker" CssClass="lat2"></asp:Label></asp:TableCell>
                     <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Radio14" GroupName="Radio13" runat="server" /></asp:TableCell>    
                     <asp:TableCell><asp:Label ID="Label13" runat="server" Text="Independent Contractor" CssClass="lat2"></asp:Label></asp:TableCell>   

             </asp:TableRow>

           </asp:Table>
         </asp:TableCell>
             
         </asp:TableRow>
       </asp:Table>
    </div>
        <div style ="text-align:center">
            <asp:Table runat="server" Width="850px" BackColor="Olive">
                <asp:TableRow>
                    <asp:TableHeaderCell ColumnSpan="4">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Text=""><strong>Program Director Signature:</strong></asp:Label></asp:TableCell>
                                <asp:TableCell>
                                    <asp:HiddenField ID="hRequestSignature" runat="server" />
                                    <a id="txtRequestSignature" style="width: 120px;" runat="server" title="" class="pt"  onclick="popupWindow=window.open('Signature.aspx?type=RP', '_blank', 'toolbar=no,top=400,left=520,location=no,height=200,width=300,scrollbars=no,status=no');" >sign here</a>
                                    <asp:Label ID="lblRequestSignature" runat="server"  CssClass="lblS"></asp:Label>
                                    </asp:TableCell>
                                 <asp:TableCell><asp:Label ID="Label16" runat="server"  CssClass="lat5"></asp:Label><strong>Date:</strong> </asp:TableCell>
                                 <asp:TableCell> <asp:TextBox ID="txtdate12" runat="server" Height="10px" Width="100px" CssClass="shadowbutton1"></asp:TextBox></asp:TableCell>
                         </asp:TableRow>
                         </asp:Table>
                       </asp:TableHeaderCell>
               </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server"  CssClass="lat5"><strong>Office Director Email:&nbsp;</strong></asp:Label> </asp:TableCell>
                                <asp:TableCell><asp:TextBox ID="txtDropdownEmailList" runat="server" Width="200px" Height="10px" CssClass="shadowbutton1"></asp:TextBox></asp:TableCell>
                                    


                            </asp:TableRow>


                        </asp:Table>


                    </asp:TableCell>

                </asp:TableRow>

            </asp:Table>
          </div>



        <div style ="text-align:center">
            <asp:Table runat="server" Width="850px">
                     <asp:TableRow CssClass="lat3">
                       <asp:TableCell HorizontalAlign="right">
                           <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="shadowbutton" OnClick="Submit_Click" OnClientClick="return Validate()" />&nbsp;&nbsp;
                       </asp:TableCell> 
                   </asp:TableRow>

            </asp:Table>

        </div>

    </form>
</body>
</html>
