part of contact_mvc; 

// lib/contact/mvc/init.dart 
 
initContactMvc(var entries) { 
  _initContacts(entries); 
} 
 
_initContacts(var entries) { 
  Contact contact1 = new Contact(entries.contacts.concept); 
  contact1.nom = "ASSO"; 
  contact1.prenoms = "Jean-Pierre"; 
  contact1.tel = "418 655 4675"; 
  contact1.e_mail = "j_pierre@yahoo.ca"; 
  entries.contacts.add(contact1); 
 
  Contact contact2 = new Contact(entries.contacts.concept); 
  contact2.nom = "LAURENT";
  contact2.prenoms = "Didier"; 
  contact2.tel = "418 655 6775"; 
  contact2.e_mail = "laurent.didier@gmail.com"; 
  entries.contacts.add(contact2); 
 
  Contact contact3 = new Contact(entries.contacts.concept); 
  contact3.nom = "LABERGE"; 
  contact3.prenoms = "Patick"; 
  contact3.tel = "418 655 7875"; 
  contact3.e_mail = "patrickl@hotmail.com"; 
  entries.contacts.add(contact3); 
 
  Contact contact4 = new Contact(entries.contacts.concept); 
  contact4.nom = "DESCHAMPS"; 
  contact4.prenoms = "Fox"; 
  contact4.tel = "418 655 2475"; 
  contact4.e_mail = "fox.dps@love.com"; 
  entries.contacts.add(contact4); 
 
  
} 
 
