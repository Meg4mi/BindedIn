﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BindedIn.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser" RequireEmail="false">
        <%--<LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>--%>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep0" runat="server">
                <ContentTemplate>
                    <h2>
                        Rejoignez BindedIn
                    </h2>
                    <p>
                        Inscrivez vous et intégrez le plus grand réseau professionnel.
                    </p>                    
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Informations</legend>                             
                            <div class="form-horizontal">
                            <div class="control-group">
                                <asp:Label ID="LastNameLabel" CssClass="control-label" runat="server" AssociatedControlID="LastName">Nom</asp:Label>
                                <div class="controls">
                                    <asp:TextBox ID="LastName" runat="server" ></asp:TextBox> 
                                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                                     CssClass="failureNotification" ErrorMessage="Entrez votre nom." ToolTip="Entrez votre nom."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>                              
                                </div>
                            </div>
                            <div class="control-group">
                                <asp:Label ID="FirstNameLabel" CssClass="control-label" runat="server" AssociatedControlID="FirstName">Prénom</asp:Label>
                                <div class="controls">
                                    <asp:TextBox ID="FirstName" runat="server" ></asp:TextBox>  
                                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                                     CssClass="failureNotification" ErrorMessage="Entrez votre prénom." ToolTip="Entrez votre prénom."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </div>                              
                            </div> 
                            <div class="control-group">
                                <asp:Label ID="UserNameLabel" runat="server" CssClass="control-label" AssociatedControlID="UserName">Email</asp:Label>
                                <div class="controls">
                                    <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                     CssClass="failureNotification" ErrorMessage="Adresse email invalide." ToolTip="Adresse email invalide."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </div>  
                            </div>     
                            <div class="control-group">
                                <asp:Label ID="PasswordLabel" runat="server" CssClass="control-label" AssociatedControlID="Password">Mot de passe</asp:Label>
                                <div class="controls">
                                    <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                     CssClass="failureNotification" ErrorMessage="Mot de passe requis." ToolTip="Mot de passe requis."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                  </div></div>                               
                            
                           <%-- <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server"
                                     ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>--%>

                            <div class="control-group">
                                <div class="controls">
                                    <asp:Button ID="CreateUserButton" CssClass="btn btn-large btn-success" runat="server" CommandName="MoveNext" Text="S'inscrire"
                                         ValidationGroup="RegisterUserValidationGroup"/>
                                </div>
                            </div>         
                           </div>
                        </fieldset>
                        
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>