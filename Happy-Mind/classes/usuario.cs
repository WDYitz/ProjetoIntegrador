using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Happy_Mind.classes
{
    public class usuario
    {
        public int idU;
        private string nome, email, dtNascimento;
        private decimal rg, telefone;

        SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString());

        public void construtor(string nomeC, string emailC, string dtNascimentoC, decimal rgC, decimal telefoneC)
        {
            nome = nomeC;
            email = emailC;
            dtNascimento = dtNascimentoC;
            rg = rgC;
            telefone = telefoneC;
        }

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into usuario values(" + nome + "," + email + "," + Convert.ToDateTime(dtNascimento) + "," + rg + "," + telefone + ")";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                cmd.ExecuteNonQuery();
                conexao.Close();

                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }

        public string selecionarComRG(decimal rg)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from usuario where rg = " + rg;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    leitor.Read();
                    idU = leitor.GetInt32(0);
                    nome = leitor.GetString(1);
                    email = leitor.GetString(2);
                    dtNascimento = leitor.GetDateTime(3).ToString();
                    telefone = leitor.GetDecimal(5);
                }
                else
                {
                    return "Não existe";
                }

                conexao.Close();
                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }
        public string update()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "update usuario set nome=" + nome + "and email=" + email +"and dtNascimento="+ dtNascimento + "and rg="+ rg + "and telefone=" + telefone+ "where idU=" + idU + ")";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                cmd.ExecuteNonQuery();
                conexao.Close();

                return "";
            }
            catch (SqlException)
            {
                return "Problemas com acesso ao banco de dados!!!";
            }
            catch (Exception)
            {
                return "Erro desconhecido!!!";
            }
        }
    }
}