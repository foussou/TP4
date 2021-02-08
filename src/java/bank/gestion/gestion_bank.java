/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bank.gestion;

import compte.CompteBancaire;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author HP
 */
@Stateless
public class gestion_bank {
    @PersistenceContext
    private EntityManager em;
public CompteBancaire creeCompte(String firstName , String lastName, String accountNumber, double balance) {
       CompteBancaire u = new CompteBancaire(firstName,  lastName,  accountNumber, balance);
       em.persist(u);
        return u;
    }

public Collection<CompteBancaire> getAllCompte() {
        // Exécution d'une requête équivalente à un select *
        Query q = em.createQuery("select u from CompteBancaire u");
        return q.getResultList();
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
