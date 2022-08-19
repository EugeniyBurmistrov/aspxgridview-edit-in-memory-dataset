<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="MasterGridView" runat="server" AutoGenerateColumns="False"
            KeyFieldName="ID" OnRowUpdating="MasterGridView_RowUpdating" Width="588px" OnRowDeleting="MasterGridView_RowDeleting" OnRowInserting="MasterGridView_RowInserting">
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True" ShowNewButton="True"/>
                <dxwgv:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Data" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsDetail ShowDetailRow="True" />
            <Templates>
                <DetailRow>
                    <dxwgv:ASPxGridView ID="DetailGridView" runat="server" AutoGenerateColumns="False"
                        KeyFieldName="ID" OnBeforePerformDataSelect="DetailGridView_BeforePerformDataSelect"
                        OnRowUpdating="MasterGridView_RowUpdating" Width="100%">
                        <Columns>
                            <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                            <dxwgv:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="MasterID" ReadOnly="True" VisibleIndex="2">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="Data" VisibleIndex="3">
                            </dxwgv:GridViewDataTextColumn>
                        </Columns>
                    </dxwgv:ASPxGridView>
                </DetailRow>
            </Templates>
        </dxwgv:ASPxGridView>
    
    </div>
    </form>
</body>
</html>
