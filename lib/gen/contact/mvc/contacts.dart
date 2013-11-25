part of contact_mvc; 
 
// lib/gen/contact/mvc/contacts.dart 
 
abstract class ContactGen extends ConceptEntity<Contact> { 
 
  ContactGen(Concept concept) : super.of(concept); 
 
  ContactGen.withId(Concept concept, String nom) : super.of(concept) { 
    setAttribute("nom", nom); 
  } 
 
  String get nom => getAttribute("nom"); 
  set nom(String a) => setAttribute("nom", a); 
  
  String get prenoms => getAttribute("prenoms"); 
  set prenoms(String a) => setAttribute("prenoms", a); 
  
  String get tel => getAttribute("tel"); 
  set tel(String a) => setAttribute("tel", a); 
  
  String get e_mail => getAttribute("e_mail"); 
  set e_mail(String a) => setAttribute("e_mail", a); 
  
  Contact newEntity() => new Contact(concept); 
  Contacts newEntities() => new Contacts(concept); 
  
  int nomCompareTo(Contact other) { 
    return nom.compareTo(other.nom); 
  } 
 
} 
 
abstract class ContactsGen extends Entities<Contact> { 
 
  ContactsGen(Concept concept) : super.of(concept); 
 
  Contacts newEntities() => new Contacts(concept); 
  Contact newEntity() => new Contact(concept); 
  
} 
 
