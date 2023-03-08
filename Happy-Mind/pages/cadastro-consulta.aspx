<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-consulta.aspx.cs" Inherits="Happy_Mind.pages.cadastro_consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/style.css" />
    <title>Cadastrar consulta</title>
</head>
<body>
    <a href="perfil.aspx" id="voltar">Voltar</a>
    <main id="criar-conta">
        <form name="form2" onsubmit="return validarConsulta()" action="calendario.aspx" runat="server">
            <h1>Crie sua consulta aqui:</h1>
            <div class="card-criar-conta">
                <div class="textfield">
                    <label for="nome-completo">Digite nome completo:</label>
                    <asp:TextBox ID="Nomeconsulta" runat="server" autocomplete="off"></asp:TextBox>
                    <br />
                    <small id="avisoN"></small>

                </div>
                <div class="textfield">
                    <label for="rg-consulta">Digite seu RG:</label>
                    <asp:TextBox ID="RGconsulta" runat="server" placeholder="00.000.000-0" autocomplete="off"></asp:TextBox>
                    <br />
                    <small id="avisoC"></small>
                </div>

                <div class="textfield">
                    <label for="telefone-consulta">Digite seu Telefone:</label>
                    <asp:TextBox ID="Telefoneconsulta" runat="server" placeholder="00 00000-0000" autocomplete="off"></asp:TextBox>
                    <br />
                    <small id="avisoT"></small>
                </div>
                <div class="textfield">
                    <label for="email-consulta">digite seu Email:</label>
                    <asp:TextBox ID="Emailconsulta" runat="server" placeholder="email@email.com" autocomplete="off" name="email-consulta"></asp:TextBox>
                    <br />
                    <small id="avisoE"></small>
                </div>
                <div class="textfield">
                    <label for="data_nascimento-consulta">Data De Nascimento</label>
                    <asp:TextBox ID="DataNascimentoconsulta" runat="server" name="data_nascimento-consulta" placeholder="00/00/0000"></asp:TextBox>
                    <br />
                    <small id="avisoNA"></small>
                </div>
                <asp:Button class="btn-login" ID="Button1" runat="server" Text="Marcar consulta" OnClick="Button1_Click" />
            </div>
        </form>
    </main>
    <style>
        body {
            background: #201b2c;
            
        }

        main{
            height: 100vh;
        }

        #ctl01 h1{
            text-align:center;
            color: white;
        }

        small {
            color: red;
            font-size: 15px;
        }
    </style>
    <script>
        function validarConsulta() {
            if (document.form2.Nomeconsulta.value === "" || document.form2.RGconsulta.value === "" || document.form2.Telefoneconsulta.value === "" || document.form2.Emailconsulta.value === "" || document.form2.DataNascimentoconsulta.value === "" || validatorEmail(document.form2.Emailconsulta.value) !== true || validatorRG(document.form2.RGconsulta.value) !== true || validatorCelular(document.form2.Telefoneconsulta.value) !== true || validatorNome(document.form2.Nomeconsulta.value) !== true) {
                if (document.form2.Nomeconsulta.value === "" || validatorNome(document.form2.Nomeconsulta.value) !== true) {
                    avisoN.textContent = '*Veja se escreveu o nome corretamente!!';
                }
                else {
                    avisoN.textContent = "";
                }
                if (document.form2.RGconsulta.value === "" || validatorRG(document.form2.RGconsulta.value) !== true) {
                    avisoC.textContent = '*Veja se escreveu o RG corretamente!!';
                }
                else {
                    avisoC.textContent = "";
                }
                if (document.form2.Telefoneconsulta.value === "" || validatorCelular(document.form2.Telefoneconsulta.value) !== true) {
                    avisoT.textContent = '*Veja se escreveu o telefone corretamente!!';
                }
                else {
                    avisoT.textContent = "";
                }
                if (document.form2.Emailconsulta.value === "" || validatorEmail(document.form2.Emailconsulta.value) !== true) {
                    avisoE.textContent = '*Veja se escreveu o email corretamente!!';
                }
                else {
                    avisoE.textContent = "";
                }
                if (document.form2.DataNascimentoconsulta.value === "") {
                    avisoNA.textContent = '*Você precisa preencher sua Data de Nascimento!!';
                }
                else {
                    avisoNA.textContent = "";
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
        function validatorRG(RG) {
            var RGPattern = /^\(?(\d{2})[.]?(\d{3})[.]?(\d{3})[-]?(\d{1})$/;
            return RGPattern.test(RG);
        }
        function validatorNome(Nome) {
            var nomePattern = /^([a-z A-Z]{2,50})$/;
            return nomePattern.test(Nome);
        }
    </script>
</body>

</html>
