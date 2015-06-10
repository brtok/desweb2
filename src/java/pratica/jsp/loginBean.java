package pratica.jsp;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Bruno
 */
public class loginBean {

    private String login = "";
    private String senha = "";
    private int perfil = 0;
    
    public loginBean() {

    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }
    
    public String getPerfilString() {
        switch (perfil) {
            case 1:
                return "Cliente";
            case 2:
                return "Gerente";
            case 3:
                return "Administrador";
            default:
                return "Você conseguiu, entrou com algum perfil que ninguém conhece";
        }
    }
    
    public String getDataHoraServidor() {
         Date now = new Date();
         DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         String dh = formatter.format(now);
         return dh;
    }
    
}
