<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Emailsender._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    <section class="row">
        <div class="col-md-6">
            <h2>Send Email via ANU Gmail</h2>

            <asp:Label ID="lblSender" runat="server" Text="Sender Email:" />
            <asp:TextBox ID="txtSender" runat="server" CssClass="form-control" />
            <asp:RegularExpressionValidator ID="revSender" runat="server"
                ControlToValidate="txtSender"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@anu\.ac\.ke$"
                ErrorMessage="Sender must be an ANU email."
                ForeColor="Red"
                Display="Dynamic" />

            <br />

            <asp:Label ID="lblReceiver" runat="server" Text="Receiver Email:" />
            <asp:TextBox ID="txtReceiver" runat="server" CssClass="form-control" />
            <asp:RegularExpressionValidator ID="revReceiver" runat="server"
                ControlToValidate="txtReceiver"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@anu\.ac\.ke$"
                ErrorMessage="Receiver must be an ANU email."
                ForeColor="Red"
                Display="Dynamic" />

            <br />

            <asp:Label ID="lblSubject" runat="server" Text="Subject:" />
            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" />

            <br />

            <asp:Label ID="lblMessage" runat="server" Text="Message:" />
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" Columns="40" CssClass="form-control" />

            <br />

            <asp:Button ID="btnSend" runat="server" Text="Send Email" CssClass="btn btn-primary" OnClick="btnSend_Click" />

            <br /><br />

            <asp:Label ID="lblStatus" runat="server" ForeColor="Green" />
        </div>
    </section>
</main>


</asp:Content>
