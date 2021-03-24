using System;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Valider_Click(object sender, EventArgs e)
        {
            Message.ForeColor = Color.Red;
            if (!isTousRemplis()) return;
            #region la date de naissance doit etre valide
            Regex dateRegex = new Regex(@"^[0-9]{2}/[0-9]{2}/[0-9]{4}");
            string date = $"{Jour.Text}/{Mois.Text}/{Anne.Text}";
            if (!dateRegex.IsMatch(date))
            {
                Message.Text = "la date n'est pas valide";
                return;
            }
            else
            {
                int jour = int.Parse(Jour.Text);
                int mois = int.Parse(Mois.Text);
                int anne = int.Parse(Anne.Text);
                if (jour > 31 || mois > 12||anne>2021)
                {
                    Message.Text = "la date n'est pas valide";
                    return;
                }
            }
            #endregion

            #region CIN doit commance par une lettre
            Regex cinRegex = new Regex(@"^[a-zA-Z]");
            if (!cinRegex.IsMatch(CIN.Text))
            {
                Message.Text = "le CIN n'est pas valide";
                return;
            }
            #endregion

            Message.Text = "valide";
            Message.ForeColor = Color.Green;
        }
        private bool isTousRemplis()
        {
            foreach (Control control in form1.Controls)
                if (control is TextBox)
                    if (string.IsNullOrEmpty(((TextBox)control).Text))
                    {
                        Message.Text = "Tous les champs sont obligatoires";
                        return false;
                    }
            return true;
        }
    }
}