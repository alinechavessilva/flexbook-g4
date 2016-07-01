package br.com.g4flex.flexbook.controllers;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.g4flex.flexbook.daos.MensagenDao;
import br.com.g4flex.flexbook.daos.UsuarioDao;
import br.com.g4flex.flexbook.models.Mensagen;
import br.com.g4flex.flexbook.models.Usuario;

@Controller
@RequestMapping("/")
@Transactional
public class HomeController{

   @Autowired
   private UsuarioDao usuarioDao;
   @Autowired
   private MensagenDao mensagenDao;

   @RequestMapping(method = RequestMethod.GET)
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page){
      ModelAndView modelAndView = new ModelAndView("index");
      //////usuarios
  
      List<Usuario> listUsers = usuarioDao.all();	
      for(Object u: usuarioDao.paginated(page, 10).getCurrentList()){
    	     Usuario user = (Usuario) u;
    	     listUsers.add(user);
    	     System.out.println("nome = "+ user.getName());
	         System.out.println("email = "+ user.getEmail());
      }
      
      
      
      
      
      
      
      
      List<Mensagen> listMsg = mensagenDao.all();
      for(Object m : mensagenDao.paginated(page, 10).getCurrentList()){
    	  Mensagen msg = (Mensagen) m;
    	  listMsg.add(msg);
    	  System.out.println("mensagem = " + msg.getMensagem());
    	  System.out.println("id usuario recebe = " + msg.getId());
    	   
      }
      
      modelAndView.addObject("listUsuarios", listUsers);
      modelAndView.addObject("listMensagens", listMsg);
      return modelAndView;
      
   }
 
}
