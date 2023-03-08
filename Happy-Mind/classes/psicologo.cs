using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Happy_Mind.classes
{
    public class psicologo
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string descricao { get; set; }
        public string imgPerfil { get; set; }
        public string senha { get; set; }
        public decimal cpf { get; set; }
        public decimal telefone { get; set; }
        public decimal cfp { get; set; }
        public decimal nota { get; set; }

        public string[] nomes = new string[6];

        public void construtor(string nomeC, decimal cpfC, string emailC, decimal telefoneC, decimal cfpC, string descricaoC, decimal notaC, string imgPerfilC, string senhaC)
        {
            nome = nomeC;
            email = emailC;
            descricao = descricaoC;
            imgPerfil = imgPerfilC;
            senha = senhaC;
            cpf = cpfC;
            telefone = telefoneC;
            cfp = cfpC;
            nota = notaC;
        }

        SqlConnection conexao = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString());

        public string inserir()
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "insert into psicologo values(" + nome + "," + cpf + "," + email + "," + telefone + "," + cfp + "," + descricao + "," + nota + "," + imgPerfil + "," + senha + ")";
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

        public string selecionarComNome(string nome)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select * from psicologo where nome = " + nome;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    leitor.Read();
                    id = leitor.GetInt32(0);
                    this.nome = leitor.GetString(1);
                    cpf = leitor.GetDecimal(2);
                    email = leitor.GetString(3);
                    telefone = leitor.GetDecimal(4);
                    cfp = leitor.GetDecimal(5);
                    descricao = leitor.GetString(6);
                    nota = leitor.GetDecimal(7);
                    imgPerfil = leitor.GetString(8);
                    senha = leitor.GetString(9);
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
        public string filtroManeiro(string nome)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader leitor;

                cmd.CommandText = "select nome from psicologo where nome like " + nome + "% order by notaPsicologo DESC";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conexao;

                conexao.Open();
                leitor = cmd.ExecuteReader();

                if (leitor.HasRows)
                {
                    int cont = 1;
                    while (leitor.Read())
                    {
                        nomes[cont] = leitor.GetString(1);
                        cont++;
                    }
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
    }
}