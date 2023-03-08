using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Happy_Mind.classes;

namespace Happy_Mind.pages
{
    public partial class cadastro_consulta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {/*
            if (Session["id"] == null)
            {
                Response.Redirect("../default.html");
            }*/
            try
            {
                HttpCookie nome = Request.Cookies["nome"];
                HttpCookie email = Request.Cookies["email"];
                HttpCookie dtNascomento = Request.Cookies["dtNascimento"];
                HttpCookie rg = Request.Cookies["rg"];
                HttpCookie telefone = Request.Cookies["telefone"];
                Nomeconsulta.Text = nome.ToString();
                Emailconsulta.Text = email.ToString();
                DataNascimentoconsulta.Text = dtNascomento.ToString();
                RGconsulta.Text = rg.ToString();
                Telefoneconsulta.Text = telefone.ToString();
            }
            catch 
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Nomeconsulta.Text != "" && Emailconsulta.Text != "" && DataNascimentoconsulta.Text != "" && RGconsulta.Text != "" && Telefoneconsulta.Text != "")
            {
                usuario usuario = new usuario();
                if (usuario.selecionarComRG(Convert.ToDecimal(RGconsulta.Text)) == "Não existe")
                {
                    usuario.construtor(Nomeconsulta.Text, Emailconsulta.Text, DataNascimentoconsulta.Text, Convert.ToDecimal(RGconsulta.Text), Convert.ToDecimal(Telefoneconsulta.Text));
                    if (usuario.inserir() == "")
                    {
                        if (usuario.selecionarComRG(Convert.ToDecimal(RGconsulta.Text)) == "")
                        {
                            Session["idU"] = usuario.idU;
                            Response.Redirect("calendario.aspx");
                        }
                        else
                        {
                            Response.Write(usuario.selecionarComRG(Convert.ToDecimal(RGconsulta.Text)));
                        }
                    }
                    else
                    {
                        Response.Write(usuario.inserir());
                    }
                }
                else if (usuario.selecionarComRG(Convert.ToDecimal(RGconsulta.Text)) == "")
                {
                    usuario.construtor(Nomeconsulta.Text, Emailconsulta.Text, DataNascimentoconsulta.Text, Convert.ToDecimal(RGconsulta.Text), Convert.ToDecimal(Telefoneconsulta.Text));
                    if (usuario.update() == "")
                    {
                        Session["idU"] = usuario.idU;
                        Response.Redirect("calendario.aspx");
                    }
                    else
                    {
                        Response.Write(usuario.update());
                    }
                }
                else
                {
                    Response.Write(usuario.selecionarComRG(Convert.ToDecimal(RGconsulta.Text)));
                }
                DateTime agora = DateTime.Now;
                TimeSpan tempo = new TimeSpan(30, 0, 0);

                HttpCookie nome = new HttpCookie(Nomeconsulta.Text);
                nome.Expires = agora + tempo;
                Response.Cookies.Add(nome);

                HttpCookie email = new HttpCookie(Emailconsulta.Text);
                email.Expires = agora + tempo;
                Response.Cookies.Add(email);

                HttpCookie dtNascimento = new HttpCookie(DataNascimentoconsulta.Text);
                dtNascimento.Expires = agora + tempo;
                Response.Cookies.Add(dtNascimento);

                HttpCookie rg = new HttpCookie(RGconsulta.Text);
                rg.Expires = agora + tempo;
                Response.Cookies.Add(rg);

                HttpCookie telefone = new HttpCookie(Telefoneconsulta.Text);
                telefone.Expires = agora + tempo;
                Response.Cookies.Add(telefone);
            }
        }
    }
}