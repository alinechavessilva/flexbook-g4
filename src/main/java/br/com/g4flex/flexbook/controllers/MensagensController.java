package br.com.g4flex.flexbook.controllers;

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
import br.com.g4flex.flexbook.models.Mensagen;

@Controller
@RequestMapping("/mensagen")
@Transactional
public class MensagensController{

   @Autowired
   private MensagenDao mensagenDao;

   @RequestMapping("/form")
   public ModelAndView form(Mensagen msg){
      ModelAndView modelAndView = new ModelAndView("/form-add");
      return modelAndView;

   }

   @RequestMapping(method = RequestMethod.POST)
   public ModelAndView save(@Valid Mensagen msg, BindingResult bindingResult){
      if (bindingResult.hasErrors()){
         return form(msg);
      }
      mensagenDao.save(msg);
      return new ModelAndView("redirect:/usuario");
   }


   @RequestMapping(method = RequestMethod.GET)
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page){
      ModelAndView modelAndView = new ModelAndView("mensagen/listMsg");
      modelAndView.addObject("paginatedList", mensagenDao.paginated(page, 10));
      return modelAndView;
   }

   //just because get is easier here. Be my guest if you want to change.
   @RequestMapping(method = RequestMethod.GET, value = "/remove/{id}")
   public String remove(@PathVariable("id") Integer id){
      Mensagen msg= mensagenDao.findById(id);
      mensagenDao.remove(msg);
      return "redirect:/usuario";
   }
   
}
