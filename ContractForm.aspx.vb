Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.DirectoryServices
Imports Microsoft.VisualBasic
Imports System.Object
Imports System.IO
Imports ContractorPage.ADAuthentication
Imports System.Web.Services


Public Class ContractForm1
    Inherits System.Web.UI.Page
    ' Dim Sqlconn As String = ConfigurationManager.ConnectionStrings("conString35").ConnectionString
    Dim Sqlconn As String = ConfigurationManager.ConnectionStrings("conString35").ConnectionString


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    <WebMethod>
    Public Shared Function GetEmail(email As String) As List(Of String)
        Dim Sqlconn As String = ConfigurationManager.ConnectionStrings("conString35").ConnectionString
        Dim emailResult As New List(Of String)()
        Using con As New SqlConnection(Sqlconn)
            Using cmd As New SqlCommand()
                cmd.CommandText = "SELECT Top 10 email FROM AD_Info WHERE email LIKE '' + '%' +@SearchEmail + '%'"
                cmd.Connection = con
                con.Open()
                cmd.Parameters.AddWithValue("@SearchEmail", email)
                Dim dr As SqlDataReader = cmd.ExecuteReader()
                While dr.Read()
                    emailResult.Add(dr("email").ToString())
                End While
            End Using
        End Using
        Return emailResult
    End Function

    Protected Sub Submit_Click(sender As Object, e As EventArgs)
        Dim obj1 As New DataBaseProc
        Dim sql As New StringBuilder
        Dim obj As New Object
        Dim ck1 As String = ""
        Dim ck2 As String = ""
        Dim ck3 As String = ""
        Dim ck4 As String = ""
        Dim ck5 As String = ""
        Dim ck6 As String = ""
        Dim ck7 As String = ""
        Dim ck8 As String = ""
        Dim ck9 As String = ""
        Dim ck10 As String = ""
        Dim ck11 As String = ""
        Dim ck12 As String = ""
        Dim ck13 As String = ""
        Dim ck14 As String = ""

        'ck1,ck2 
        If Radio1.Checked = True Then
            ck1 = "Yes"

        ElseIf Radio2.Checked = True Then

            ck1 = "No"
        End If

        'ck3,ck4
        If Radio3.Checked = True Then
            ck3 = "Yes"
        ElseIf Radio4.Checked = True Then
            ck3 = "No"
        End If

        'ck5,ck6
        If Radio5.Checked = True Then
            ck5 = "Yes"
        ElseIf Radio6.Checked = True Then
            ck5 = "No"
        End If
        'ck7,ck8

        If Radio7.Checked = True Then
            ck7 = "Yes"

        ElseIf Radio8.Checked = True Then
            ck7 = "No"
        End If

        'ck9,ck10

        If Radio9.Checked = True Then
            ck9 = "Yes"
        ElseIf Radio10.Checked = True Then
            ck9 = "No"
        End If
        'ck11,ck12
        If Radio11.Checked = True Then
            ck11 = "Yes"
        ElseIf Radio12.Checked = True Then
            ck11 = "Yes"
        End If

        'ck13,ck14 
        If Radio13.Checked = True Then
            ck13 = "CW"
        ElseIf Radio14.Checked = True Then
            ck14 = "IC"
        End If
        lblRequestSignature.Text = hRequestSignature.Value
        txtRequestSignature.Visible = False

        'obj = obj1.InsertContract(txtAPN.Text, txtName.Text, txtProject.Text, txtCom.Text, txtdate.Text, ck1, ck3, ck5, ck7, ck9, ck11, ck13, ck14,
        '                          hRequestSignature.Value, txtdate12.Text, txtEmail.Text, Sqlconn)





    End Sub
End Class