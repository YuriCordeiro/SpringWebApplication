package br.com.corp;

import br.com.corp.util.HibernateUtil;
import org.hibernate.Session;

public class Teste {

    public static void main(String[] args) {
        System.out.println("Testando aplicação, 1, 2..");
        Session session = HibernateUtil.getEcomerceSessionFactory().openSession();
        session.getNamedQuery("findAll").list();
        session.close();
        System.out.println("Sucesso!");
        System.exit(0);
    }
}
