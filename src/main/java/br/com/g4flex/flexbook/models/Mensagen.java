package br.com.g4flex.flexbook.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Mensagen
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;  
   private int id_UserRec;
   private int id_UserEnv;
   private String mensagem;
   
   
   public int getId_UserRec(){
	return id_UserRec;
	}

   public void setId_UserRec(int id_UserRec){
	this.id_UserRec = id_UserRec;
   }

   public int getId_UserEnv() {
	return id_UserEnv;
   }

   public void setId_UserEnv(int id_UserEnv) {
	this.id_UserEnv = id_UserEnv;
   }

   public String getMensagem() {
	return mensagem;
   }

   public void setMensagem(String mensagem) {
	this.mensagem = mensagem;
   }

   public Integer getId(){
      return this.id;
   }

   public void setId(Integer id){
      this.id = id;
   }

}
