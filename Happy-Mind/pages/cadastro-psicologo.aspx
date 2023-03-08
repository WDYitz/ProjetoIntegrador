<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-psicologo.aspx.cs" Inherits="Happy_Mind.pages.cadastro_psicologo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="../css/header.css" />
    <link rel="stylesheet" href="../css/style.css"/>
    <title>Mandar Formulário</title>
</head>
<body>
    <a href="perfil.html" id="voltar">Voltar</a>
    <main id="criar-conta">
        <form id="form1" runat="server" name="form" onsubmit="return validarCadastro()" action="../default.html">
            <h1>Mande seu formulário:</h1>
            <div class="card-criar-conta">
                <div class="textfield">
                    <asp:Label runat="server" for="nome-psico">Seu Nome Completo:</asp:Label>
                    <asp:TextBox runat="server" type="text" autocomplete="off" name="nome_completo" id="nomeCadastro"></asp:TextBox>
                    <br/><small id="txtaviso"></small>
                </div>
                <div class="textfield">
                    <asp:Label runat="server" for="cpf-psico">CPF:</asp:Label>
                    <asp:TextBox runat="server" type="text" autocomplete="off" name="nome_completo" id="CpfCadastro" placeholder="000000000/00"></asp:TextBox>
                    <br/><small id="txtaviso1"></small>
                </div>
                <div class="textfield">
                    <asp:Label runat="server" for="email-psico">Email:</asp:Label>
                    <asp:TextBox runat="server" type="text" autocomplete="off" name="email" id="EmailCadastro" placeholder="email@email.com"></asp:TextBox>
                    <br/><small id="txtaviso2"></small>
                </div>
                <div class="textfield">
                    <asp:Label runat="server" for="telefone-psico">Seu Telefone de contato</asp:Label>
                    <asp:TextBox runat="server" type="text" autocomplete="off" name="nome_usuario" id="TelefoneCadastro" placeholder="00 00000-0000"></asp:TextBox>
                    <br/><small id="txtaviso3"></small>
                </div>
                <div class="textfield">
                    <asp:Label  runat="server" for="Cfp-psico">Seu CFP Profissional:</asp:Label>
                    <asp:TextBox  runat="server" type="text" autocomplete="off" name="nome_usuario" id="CfpCadastro" placeholder="000.000.000-00"></asp:TextBox>
                    <br/><small id="txtaviso4"></small>
                    <asp:Button class="btn-login" ID="Button1" runat="server" text="Mandar Formulário" OnClick="botao_click"></asp:Button>
                </div>
            </div>
        </form>
                
         
    </main>
    <style>
        body {
            background: #201b2c;

        }

        small {
            color: red;
            font-size: 15px;
        }
    </style>

    <script>
        function validarCadastro() {
            if (document.form.nomeCadastro.value === "" || document.form.CpfCadastro.value === "" || document.form.EmailCadastro.value === "" || document.form.TelefoneCadastro.value === "" || document.form.CfpCadastro.value === "" || validatorNome(document.form.nomeCadastro.value) !== true || validatorCPF(document.form.CpfCadastro.value) !== true || validatorEmail(document.form.EmailCadastro.value) !== true || validatorCelular(document.form.TelefoneCadastro.value) !== true || validatorCFP(document.form.CfpCadastro.value) !== true) {
                if (document.form.nomeCadastro.value === "" || validatorNome(document.form.nomeCadastro.value) !== true) {
                    txtaviso.textContent = '*Você precisa preencher o seu nome!!';
                }
                else {
                    txtaviso.textContent = "";
                }

                if (document.form.CpfCadastro.value === "" || validatorCPF(document.form.CpfCadastro.value) !== true) {
                    txtaviso1.textContent = '*Você precisa preencher seu CPF!!';
                }
                else {
                    txtaviso1.textContent = "";
                }
                if (document.form.EmailCadastro.value === "" || validatorEmail(document.form.EmailCadastro.value) !== true) {
                    txtaviso2.textContent = '*Você precisa preencher seu Email!!';
                }
                else {
                    txtaviso2.textContent = "";
                }
                if (document.form.TelefoneCadastro.value === "" || validatorCelular(document.form.TelefoneCadastro.value) !== true) {
                    txtaviso3.textContent = '*Você precisa preencher seu Telefone!!';
                }
                else {
                    txtaviso3.textContent = "";
                }
                if (document.form.CfpCadastro.value === "" || validatorCFP(document.form.CfpCadastro.value) !== true) {
                    txtaviso4.textContent = '*Você precisa preencher seu CFP!!';
                }
                else {
                    txtaviso4.textContent = "";
                }
                return false;
            }
            else {
                return true;
            }
        }
        function validatorEmail(Email) {
            let emailPattern =
                /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;
            return emailPattern.test(Email);
        }
        function validatorCelular(Celular) {
            var celularPattern = /^\(?(\d{2})\)?[ ]?(\d{5})[-]?(\d{4})$/;
            return celularPattern.test(Celular);
        }
        function validatorCPF(CPF){
            var CPFPattern = /^\(?(\d{9})[/]?(\d{2})$/
            return CPFPattern.test(CPF);
        }
        function validatorNome(Nome){
            var nomePattern = /^([a-z A-Z]{2,50})$/
            return nomePattern.test(Nome);
        }
        function validatorCFP(CFP){
            var CFPPattern = /^\(?(\d{3})[.]?(\d{3})[.]?(\d{3})[-]?(\d{2})$/
            return CFPPattern.test(CFP);
        }
    </script>
</body>

</html>