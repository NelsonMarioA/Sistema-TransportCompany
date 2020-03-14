using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using CapaEntidades;
using System.Web.UI.WebControls;

namespace TransportCompany.FormsDrivers
{
    public partial class FrmAddDriver : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreateOnClick(object sender, EventArgs e)
        {
            string nombre = this.txtFullName.Text;
            string identificacion = this.txtIdentification.Text;
            string telephone = this.txtTelephone.Text;
            string address = this.txtAddress.Text;

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(identificacion) ||
                string.IsNullOrEmpty(telephone) || string.IsNullOrEmpty(address))
            {
                this.Alert("Verifique los campos", "Alerta");
                return;
            }

            EDriver eDriver = new EDriver
            {
                Full_name = nombre,
                Identification_driver = identificacion,
                Telephone = telephone,
                Address = address
            };

            string rpta = EDriver.InsertarDriver(eDriver);
            if (rpta.Equals("OK"))
            {
                this.Alert("Driver inserted successfull", "Correct");
                //GridView1.DataSource = metodos.mostrar_datos();
                //GridView1.DataBind();
            }
            else
            {
                this.Alert("Error: details: " + rpta, "Error");
            }
        }

        private void Alert(string mensaje, string titulo)
        {
            
                string script = @"<script type='text/javascript'>alert('" + mensaje + "');</script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), titulo, script, false);
        }
    }
}