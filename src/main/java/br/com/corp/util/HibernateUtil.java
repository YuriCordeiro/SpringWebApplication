package br.com.corp.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static SessionFactory ecomerceSessionFactory = createEcomerceSessionFactory();

    public static SessionFactory getEcomerceSessionFactory() {
        return ecomerceSessionFactory;
    }

    private static SessionFactory createEcomerceSessionFactory() {
        try {
            if (null != ecomerceSessionFactory) {
                return getEcomerceSessionFactory();
            } else {
                return new Configuration().configure().buildSessionFactory();
            }

        } catch (Throwable ex) {
            System.err.println("Something went wrong when trying to create the E-comerce Session Factory." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
}
