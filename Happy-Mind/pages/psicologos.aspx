<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="psicologos.aspx.cs" Inherits="Happy_Mind.pages.psicologos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>psicólogos</title>
    <!-- <link rel="stylesheet" href="estilo.css"> -->
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />

    <style>
        *,
        ::after,
        ::before {
            margin: 0px 0 0 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            width: 100%;
            height: 100%;
        }

        .main--psicologo {
            width: 100%;
            height: 100%;
            background-color: #1d1825;
        }

        .banner-psicologos {
            margin-top: 90px;
            text-align: center;
            background-image: url('/images/banner-psicologos.png');
            background-position: 100%;
            background-attachment: fixed;
            background-size: auto;
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 2.2rem;
        }

        #formPsicologo {
            width: 100%;
            height: 100%;
            padding: 20px 40px 20px 40px;
            background-color: #1d1825;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 100%;
            height: 350px;
            background-color: #2f2741;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 50px;
            border-radius: 2rem;
        }

        .card--psicologo-img {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }

        .card--img {
            width: 100%;
            height: 150px;
            padding: 3px;
            background-color: white;
            border-radius: 5rem;
        }

        .card--nome {
            padding: 10px 0 10px 0;
            font-size: 1.2rem;
            color: white;
        }

        .card--psicologo-texto {
            width: 100%;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
            height: 100px;
            margin: 0 0 20px 0;
            color: white;
        }

        .btnPsico {
            padding: 8px;
            outline: 0;
            border: none;
            width: 50%;
            border-radius: 20px;
            margin-bottom: 20px;
            background-color: #27bee7;
            cursor: pointer;
            transition: all .5s ease-in-out;
            font-weight: 600;
        }

        .Pesquisar {
            margin: 15px 0 15px 0;
            font-size: 1.1rem;
            padding: 10px;
        }

        #btnBuscar {
            cursor: pointer;
            background-color: #27bee7;
            color: #1d1825;
            font-size: 1.1rem;
        }

        #Text1{
            font-size: 1rem;
        }




        /*tablet responsive*/
        @media screen and (min-width: 736px) and (max-width: 1049px) {
            .card {
                width: 60%;
                height: 350px;
                background-color: #2f2741;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
                border-radius: 2rem;
                margin-bottom: 40px;
            }

            .btnPsico {
                padding: 8px;
                outline: 0;
                border: none;
                width: 30%;
                border-radius: 20px;
                margin-bottom: 20px;
                background-color: #27bee7;
                cursor: pointer;
            }


            .card--psicologo-img {
                width: 100%;
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
                padding: 10px;
            }

            .card--img {
                width: 50%;
                height: 140px;
                padding: 3px;
                background-color: white;
                border-radius: 1.4rem;
            }

            .card--nome {
                width: 50%;
                text-align: center;
            }
        }
        /*pc responsive*/
        @media screen and (min-width: 1050px) {




            #formPsicologo {
                display: flex;
                flex-flow: wrap;
                gap: 40px;
            }

            .card {
                width: 30%;
                height: 380px;
                background-color: #2f2741;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
                border-radius: 2rem;
                margin-bottom: 40px;
            }



            .btnPsico {
                padding: 8px;
                outline: 0;
                border: none;
                width: 40%;
                border-radius: 20px;
                margin-bottom: 20px;
                background-color: #27bee7;
                cursor: pointer;
            }


            .card--psicologo-img {
                width: 100%;
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
                padding: 10px;
            }

            .card--psicologo-texto {
                width: 90%;
                background-color: #1d1825;
                padding: 2px;
                border-radius: 1rem;
            }

            .card--img {
                width: 50%;
                height: 140px;
                padding: 3px;
                background-color: white;
                border-radius: 1.4rem;
            }

            .card--nome {
                width: 50%;
                text-align: center;
            }
        }

        @media screen and (min-width: 1600px) {

            .card {
                width: 20%;
                height: 380px;
                background-color: #2f2741;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
                border-radius: 2rem;
                margin-bottom: 40px;
                transition: all ease-in-out .6s;
            }

                .card:hover {
                    transform: scale(1.05);
                }

                    .card:hover .btnPsico {
                        width: 60%;
                    }
        }

        .Pesquisar {
            text-align: center;
            background-color: #1d1825;
        }

        #Text1 {
            padding-left: 10px;
            margin: auto;
            border: 1px solid black;
            border-radius: 50px;
            width: 250px;
            height: 30px;
        }

        #btnBuscar {
            border: 1px solid black;
            border-radius: 10px;
            Width: 80px;
            padding: 5px;
        }
    </style>
</head>

<body>
    <header>

        <a href="/default.html">
            <img class="logo--header" src="/images/Logo--img.png" alt="" />
        </a>

        <div class="nav--desktop">
            <a href="psicologos.aspx">
                <p>Psicólogos</p>
            </a>
        </div>

        <div class="container--nav-btn-mobile" onclick="toggleMenu()">
            <span class="bnt--mobile-linha-1"></span>
            <span class="bnt--mobile-linha-2"></span>
            <span class="bnt--mobile-linha-3"></span>
        </div>

        <ul class="nav--area">
            <li><a href="psicologos.aspx">Psicólogos</a></li>
        </ul>


    </header>

    <main class="main--psicologo">
        <h1 id="banner-destaque" class="banner-psicologos">Psicólogos</h1>
        <form runat="server">
            <div class="Pesquisar">

                <input id="Text1" type="text" placeholder="Procure Um Psicologo..." />
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
            </div>
            <div id="formPsicologo">

                <div class="card--psicologo1 card">
                    <div class="card--psicologo-img">
                        <asp:Image ID="Image1" class="card--img" runat="server" ImageUrl="../images/LuizaPsicologa.png" />
                        <asp:Label ID="txtBoxNome1" class="card--nome" runat="server">Silva Ferreira</asp:Label>
                    </div>

                    <div class="card--psicologo-texto">
                        <asp:Label ID="txtBoxDescricao1" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxTelefone1" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxNotaC1" runat="server" Text="none"></asp:Label>
                    </div>
                    <asp:Button ID="btn" class="btnPsico" runat="server" Text="Disponível Agora" OnClick="btn_Click" />
                </div>

                <div class="card--psicologo2 card">
                    <div class="card--psicologo-img">
                        <asp:Image ID="Image2" class="card--img" runat="server" ImageUrl="../images/LuizaPsicologa.png" />
                        <asp:Label ID="txtBoxNome2" class="card--nome" runat="server">Cleide Matagal</asp:Label>
                    </div>

                    <div class="card--psicologo-texto">
                        <asp:Label ID="txtBoxDescricao2" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxTelefone2" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxNotaC2" runat="server" Text="none"></asp:Label>
                    </div>
                    <asp:Button ID="Button1" class="btnPsico" runat="server" Text="Disponível Agora" OnClick="btn_Click" />
                </div>

                <div class="card--psicologo3 card">
                    <div class="card--psicologo-img">
                        <asp:Image ID="Image3" class="card--img" runat="server" ImageUrl="../images/LuizaPsicologa.png" />
                        <asp:Label ID="txtBoxNome3" class="card--nome" runat="server">Dalma Pentel</asp:Label>
                    </div>

                    <div class="card--psicologo-texto">
                        <asp:Label ID="txtBoxDescricao3" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxTelefone3" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxNotaC3" runat="server" Text="none"></asp:Label>
                    </div>
                    <asp:Button ID="Button2" class="btnPsico" runat="server" Text="Disponível Agora" OnClick="btn_Click" />
                </div>

                <div class="card--psicologo4 card">
                    <div class="card--psicologo-img">
                        <asp:Image ID="Image4" class="card--img" runat="server" ImageUrl="../images/LuizaPsicologa.png" />
                        <asp:Label ID="txtBoxNome4" class="card--nome" runat="server">Silva Ferreira</asp:Label>
                    </div>

                    <div class="card--psicologo-texto">
                        <asp:Label ID="txtBoxDescricao4" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxTelefone4" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxNotaC4" runat="server" Text="none"></asp:Label>
                    </div>
                    <asp:Button ID="Button3" class="btnPsico" runat="server" Text="Disponível Agora" OnClick="btn_Click" />
                </div>

                <div class="card--psicologo5 card">
                    <div class="card--psicologo-img">
                        <asp:Image ID="Image5" class="card--img" runat="server" ImageUrl="../images/LuizaPsicologa.png" />
                        <asp:Label ID="txtBoxNome5" class="card--nome" runat="server">Silva Ferreira</asp:Label>
                    </div>

                    <div class="card--psicologo-texto">
                        <asp:Label ID="txtBoxDescricao5" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxTelefone5" runat="server" Text="none"></asp:Label>
                        <asp:Label ID="txtBoxNotaC5" runat="server" Text="none"></asp:Label>
                    </div>
                    <asp:Button ID="Button4" class="btnPsico" runat="server" Text="Disponível Agora" OnClick="btn_Click" />
                </div>
            </div>
        </form>
    </main>
    <footer>
        <div id="footer2">
            <figure>
                <img src="../images/logo2.png" alt="logo" id="logoFooter" />
            </figure>

            <address>
                <img src="../images/email.png" alt="E-mail" id="imgEmail" />
                <a class="socialFooter" href="/">: Contato@HappyMind.com</a>
            </address>

            <address>
                <img src="../images/whatsapp.png" alt="Whatsapp" id="imgWhatsapp" />
                <a class="socialFooter" href="/">: (13) 99639-6895</a>
            </address>

            <p id="referenciaFooter">Desenvolvido por turma TI-42</p>
        </div>
        <p id="avisoFooter">
            ATENÇÃO: Este portal não oferece atendimento de urgência para
            casos relacionados a crises suicidas. Nestes casos, entre em
            contato gratuitamente com o CVV (Centro de Valorização da Vida)
            pelo telefone 188 ou acesse www.cvv.org.br. Em caso de
            emergências, busque o hospital mais próximo ou ligue 192
            (SAMU).
       
       
        </p>
    </footer>

    <script src="../js/btnmobile.js"></script>
</body>

</html>
