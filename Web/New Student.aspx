<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //creat Connection object 
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|UserInfo.mdf;Integrated Security=True";
        
        //creat sql INSERT statemnet 
        string strInsert = "INSERT INTO [dbo].[Table]"
            + " VALUES('" + fname.Text + "', '"
            + lname.Text + "', '"
            + id.Text + "', '"
            + radio.Text + "', '"
            + Calendar1.SelectedDate + "', '"
            + email.Text + "', '"
            + phone.Text + "', '"
            + password.Text + "')"
            + nationality.Text + "')"
            + DropDownList1.SelectedValue + "')"
            +Label15.Text+ "')";
        
        //creat sql command 

        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        
      
            conn.Open();
            cmdInsert.ExecuteNonQuery();
           
            lbl.Text = "Welcome " + fname.Text + " Your Account Has Been Successfully Created!!";

            conn.Close();
       
        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 263px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000066" Text="New Student"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" ForeColor="#000066" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="#000066" Text="Second Name "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" ForeColor="#000066" Text="ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" ForeColor="#000066" Text="gender "></asp:Label>
                </td>
                <td>
                      <asp:RadioButtonList ID="radio" runat="server">
                          <asp:ListItem Value="m">male</asp:ListItem>
                          <asp:ListItem Value="t">female</asp:ListItem>
                      </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" ForeColor="#000066" Text="Birthday"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" ForeColor="#000066" Text="Email"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" ForeColor="#000066" Text="phone Number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" ForeColor="#000066" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" ForeColor="#000066" Text="Password "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" ForeColor="#000066" Text="Confirm Password "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" ForeColor="#000066" Text="Nationality"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="nationality" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="faculity" runat="server" ForeColor="#000066" Text="Faculity"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>CS</asp:ListItem>
                        <asp:ListItem>Bussines</asp:ListItem>
                        <asp:ListItem>political</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" ForeColor="#000066" Text="Buss"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="buss" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="5">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="277px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
