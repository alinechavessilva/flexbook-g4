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
@RequestMapping("/usuario")
@Transactional
public class UsuarioController{

   @Autowired
   private UsuarioDao usuarioDao;
   @Autowired
   private MensagenDao mensagenDao;
  
   
  
   @RequestMapping("/form")
   public ModelAndView form(Usuario user){
      ModelAndView modelAndView = new ModelAndView("/form-add");
      return modelAndView.addObject(modelAndView);

   }


   @RequestMapping(method = RequestMethod.POST)
   public ModelAndView save(@Valid Usuario user, BindingResult bindingResult){
      if (bindingResult.hasErrors()){
         return form(user);
      } 
      usuarioDao.save(user);
      System.out.println("cadastrando usuario");
      return new ModelAndView("redirect:/form-add");
   }

   @RequestMapping(method = RequestMethod.GET, value = "/{id}")
   public ModelAndView load(@PathVariable("id") Integer id){
      ModelAndView modelAndView = new ModelAndView("/form-update");
      modelAndView.addObject("usuario", usuarioDao.findById(id));
      return modelAndView;
   }

   @RequestMapping(method = RequestMethod.GET)
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page){
      ModelAndView modelAndView = new ModelAndView("/list");
      //////retorna mensagens
  
      List<Mensagen> msg = mensagenDao.all();	
      System.out.println(msg == null);
      
      modelAndView.addObject("paginatedList", usuarioDao.paginated(page, 10));
      modelAndView.addObject("listMsg", mensagenDao.paginated(page, 10));
      modelAndView.addObject("listMsg", msg);
      return modelAndView;
      
   }

   //just because get is easier here. Be my guest if you want to change.
   @RequestMapping(method = RequestMethod.GET, value = "/remove/{id}")
   public String remove(@PathVariable("id") Integer id){
      Usuario user = usuarioDao.findById(id);
      usuarioDao.remove(user);
      return "redirect:/usuario";
   }

   @RequestMapping(method = RequestMethod.POST, value = "/{id}")
   public ModelAndView update(@PathVariable("id") Integer id, @Valid Usuario user, BindingResult bindingResult){
      user.setId(id);
      if (bindingResult.hasErrors()){
         return new ModelAndView("/form-update");
      }
      usuarioDao.update(user);
      return new ModelAndView("redirect:/usuario");
   }
   
}
