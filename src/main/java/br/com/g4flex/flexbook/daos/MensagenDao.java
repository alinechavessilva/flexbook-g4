package br.com.g4flex.flexbook.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import br.com.g4flex.flexbook.models.PaginatedList;
import br.com.g4flex.flexbook.models.Mensagen;

@Repository
public class MensagenDao
{

   @PersistenceContext
   private EntityManager manager;

   public List<Mensagen> all()
   {
      return manager.createQuery("select m from Mensagen m", Mensagen.class).getResultList();
   }

   public void save(Mensagen msg)
   {
      manager.persist(msg);
   }

   public Mensagen findById(Integer id)
   {
      return manager.find(Mensagen.class, id);
   }

   public void remove(Mensagen msg)
   {
      manager.remove(msg);
   }

   public void update(Mensagen msg)
   {
      manager.merge(msg);
   }

   public PaginatedList paginated(int page, int max){
      return new PaginatorQueryHelper().list(manager, Mensagen.class, page, max);
   }

}
