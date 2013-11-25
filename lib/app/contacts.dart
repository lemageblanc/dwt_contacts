
//import "package: dart_web_toolkit/ui.dart" as ui;
part of contact_mvc_app;

class ContactsApp extends ui.VerticalPanel {
  var _listPanel = new ui.VerticalPanel();
  ContactApp _contactApp;
  Contact contc;

  var Nom = new ui.TextBox();
  var Prenoms = new ui.TextBox();
  var Telephone = new ui.TextBox();
  var e_mail = new ui.TextBox();
  var boutonAjouter= new ui.Button("Ajouter");
  var boutonAnnuler= new ui.Button("Annuler");
  

  
  ContactsApp(Contacts contacts) {
  ui.FlexTable layout = new ui.FlexTable();
  layout.setCellSpacing(6);
  ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
  layout.setHtml(0, 0, "Ajout de contact");
  cellFormatter.setColSpan(0, 0, 2);
  cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
  layout.setHtml(1, 0, "Nom:");
  layout.setWidget(1, 1, Nom);
  layout.setHtml(2, 0, "Prénoms:");
  layout.setWidget(2, 1, Prenoms);
  layout.setHtml(3, 0, "Téléphone:");
  layout.setWidget(3, 1, Telephone);
  layout.setHtml(4, 0, "e_mail:");
  layout.setWidget(4, 1, e_mail);
  layout.setWidget(5, 0, boutonAjouter);
  layout.setWidget(5, 1, boutonAnnuler);
// Wrap the content in a DecoratorPanel
  ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
  decPanel.setWidget(layout);
  

 ui.DecoratorPanel  dePanels = new ui.DecoratorPanel();
  
 
 boutonAjouter.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
   if (Nom.text.trim() != '') {
     var contact = new Contact(contacts.concept);
     
     contact.nom = Nom.text.trim();
     contact.prenoms = Prenoms.text.trim();
     contact.tel = Telephone.text.trim();
     contact.e_mail = e_mail.text.trim();
     if(boutonAjouter.text=='Ajouter'){
       if(contacts.add(contact)){
         save(contacts);
         window.alert("Enregistrement fait avec succès ");
         window.location.reload();
       }else{window.alert("Ce contact existe deja");}
       //window.location.reload();
       
     }else{
       
       contacts.update(contc, contact);
       save(contacts);
       //window.location.reload();
       window.alert("Modification effectuée avec succes");
      
       Nom.setValue("");
       Prenoms.setValue("");
       Telephone.setValue("");
       e_mail.setValue("");
      
       boutonAjouter.text='Ajouter';
       window.location.reload();
     }
     
   }else {
     window.alert("Veuillez entrer les données de votre contact"); 
    
   }
 })); 
 
 boutonAnnuler.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
   Nom.setValue("");
   Prenoms.setValue("");
   Telephone.setValue("");
   e_mail.setValue("");
   boutonAjouter.text='Ajouter';
 })); 
 
 // ui.RootPanel.get().add(decPanel);
 
 String json = window.localStorage['todos-dartling-dwt'];
 if (json != null) {
   try {
     contacts.fromJson(JSON.decode(json));
     
     ui.FlexTable layouts = new ui.FlexTable();
     layouts.setCellSpacing(6);
     ui.FlexCellFormatter cellFormatter = layouts.getFlexCellFormatter();

// Add a title to the form
     layouts.setBorderWidth(2);
     
     layouts.setHtml(0, 0, "Nom");
     layouts.setHtml(0, 1, "Prénoms");
     layouts.setHtml(0, 2, "Téléphone");
     layouts.setHtml(0, 3, "e_mail");
     layouts.setHtml(0, 4, "Modifier");
     layouts.setHtml(0, 5, "Supprimer");

     
     var color="#c8bfe7";
     int i=1;
     for (var contact in contacts) {
       var boutonModif = new ui.Button("Modifier");
       var boutonSuppr = new ui.Button("Supprimer");
       
       if(color=="#c8bfe7")
       {color="#FFC2A6";}else{color="#c8bfe7";}
       layouts.setHtml(i, 0, contact.nom);
       layouts.setHtml(i, 1, contact.prenoms);
       layouts.setHtml(i, 2, contact.tel);
       layouts.setHtml(i, 3, contact.e_mail);
       layouts.setWidget(i, 4, boutonModif);
       layouts.setWidget(i, 5, boutonSuppr);
       
       boutonSuppr.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
         if (window.confirm("Confirmez la suppression?"))
         {
           contacts.remove(contact);
           save(contacts);
           window.location.reload();
           window.alert("Suppression effectuée avec succes");
         }
       })); 
       
       
       boutonModif.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
         
         Nom.setValue(contact.nom);
         Prenoms.setValue(contact.prenoms);
         Telephone.setValue(contact.tel);
         e_mail.setValue(contact.e_mail);
        
         boutonAjouter.text="Modifier";
         contc=contact;
         
       })); 
       i++;
     }
     dePanels.add(layouts);
   } on Exception catch(e) {
     print(e);
   }
 }

 add(decPanel);
 add(dePanels);
  }

  
  
  
  save(Contacts contacts) { 
    window.localStorage['todos-dartling-dwt'] = JSON.encode(contacts.toJson());
  }
  
  
  
  
}
