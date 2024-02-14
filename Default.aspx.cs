using System;
using System.Web;
using System.Web.UI;

namespace BE_U1_W3_D3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Costruisci la stringa con le informazioni dell'utente
                string userInfo = $"Nome: {Nome.Text}, Cognome: {Cognome.Text}, Sala: {SalaDropDownList.SelectedItem.Text}, Tipo Biglietto: {TipoBigliettoDropDownList.SelectedItem.Text}; ";

                // Recupera il cookie esistente (se presente)
                HttpCookie existingCookie = Request.Cookies["UserInfo"];

                if (existingCookie != null)
                {
                    // Aggiungi le nuove informazioni al cookie esistente
                    existingCookie.Value += userInfo;
                    existingCookie.Expires = DateTime.Now.AddDays(30); // Imposta una nuova data di scadenza
                    Response.Cookies.Add(existingCookie);
                }
                else
                {
                    // Crea un nuovo cookie se non esiste
                    HttpCookie userCookie = new HttpCookie("UserInfo", userInfo)
                    {
                        Expires = DateTime.Now.AddDays(30) // Imposta la data di scadenza
                    };
                    Response.Cookies.Add(userCookie);
                }

                // Redirect o aggiornamento della pagina per mostrare un messaggio di successo, ecc.
            }
        }

    }
}