using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;

namespace Happy_Mind.pages
{
    public partial class cadastro_psicologo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botao_click(object sender, EventArgs e)
        {
            try
            {
                psicologo novoPsicologo = new psicologo();
                novoPsicologo.construtor(nomeCadastro.Text, Convert.ToDecimal(CpfCadastro.Text), EmailCadastro.Text,
                Convert.ToDecimal(TelefoneCadastro.Text), Convert.ToDecimal(CfpCadastro.Text)," ",Convert.ToDecimal(" ")," "," ") ;

                if (novoPsicologo.inserir()=="")
                {
                    Response.Write("Formulario enviado!");
                    Response.Redirect("../default.html");
                }
                else
                {
                  Response.Write(novoPsicologo.inserir());
                }
            


            }
            catch (Exception)
            {

            }
            
        }
    }
}