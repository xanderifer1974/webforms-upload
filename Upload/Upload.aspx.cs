using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Upload
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string caminho = Server.MapPath(@"upload\");
            string nome = fuArquivo.FileName;
            txtNome.Text = nome;
            txtTamanho.Text = fuArquivo.PostedFile.ContentLength.ToString();
            fuArquivo.PostedFile.SaveAs(caminho + nome);

            
        }

        protected void btnEnviarMarq_Click(object sender, EventArgs e)
        {
            string caminho = Server.MapPath(@"upload\");
            string nome = "";
            
            for(int i = 0; i < fuArquivo.PostedFiles.Count; i++)
            {
                nome = nome + fuArquivo.PostedFiles[i].FileName + " - ";
                fuArquivo.PostedFiles[i].SaveAs(caminho + fuArquivo.PostedFiles[i].FileName);
            }
            txtNome.Text = nome;
        }
    }
}