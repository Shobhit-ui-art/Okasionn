<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.master" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class ="container ">
            <div class ="form-horizontal ">
                <h2>Add Event</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="EventName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtEvent" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Event name" ControlToValidate="txtEvent" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddEvent" CssClass ="btn btn-success " runat="server" Text="Add" OnClick="btnAddEvent_Click"   />
                        
                    </div>
                </div>
            </div>

        <h1>Events</h1>
        <hr />


   <div class="panel-heading"> All Events</div>
     

     

     
        </div>
    <asp:GridView ID="gridviewevents" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" DataKeyNames="Eventcode">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


         <Columns>
                    <asp:TemplateField HeaderText="Event Code">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Eventcode") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event Type">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Event_type") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteventtype" Text='<%# Eval("Event_type") %>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/resources/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/resources/images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/resources/images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/resources/images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>


     </asp:GridView>
</asp:Content>

