part of contact_mvc_app;

/**
 * Contact Application entry point.
 */
class ContactApp {
  ContactModels domain;
  DomainSession session;
  Contacts contacts;
  /*ui.CaptionPanel panelP = new ui.CaptionPanel("Gestion de contact");
  ui.CaptionPanel panelL = new ui.CaptionPanel("List");
  ui.CaptionPanel panelF = new ui.CaptionPanel("Formulaire");
  
  //Header header;
  //Footer footer;

  **
   * Create new instance of [ContactApp].
   */
 
  ContactApp(this.domain) {
    session = domain.newSession();
    MvcEntries model = domain.getModelEntries('mvc');
    contacts = model.contacts;
    
    var rootPanel = ui.RootLayoutPanel.get();
    var vPanel = new ui.VerticalPanel();
    vPanel.spacing = 10;
    rootPanel.add(vPanel);
    var title = new ui.Label('Contacts');
    vPanel.add(title);
    var conts = new ContactsApp(contacts);
    vPanel.add(conts);
      
    //header = new Header(this);
    //Todos todos = new Todos(this);
    //footer = new Footer(this, todos);

    //updateDisplay();
  }

  /**
   * Save list of task to local storage.
   */
  save() { 
    window.localStorage['contacts-dartling-dwt'] = JSON.encode(contacts.toJson());
  }

  /**
   * Update header and footer components on page.
   */
  updateDisplay() {
    //header.updateDisplay();
    //footer.updateDisplay();
    
   /*  panelP.getElement().style.border = "3px solid #00c";
     panelP.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
     panelP.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
     panelP.getContentWidget().getElement().style.border = "1px solid #ccf";

    
    panelP.add(panelL);
    panelP.add(panelF);
    ui.RootPanel.get().add(panelP);*/
  }
}

/*

ui.FlexTable layout = new ui.FlexTable();
layout.setCellSpacing(6);
ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
layout.setHtml(0, 0, "Enter Search Criteria");
cellFormatter.setColSpan(0, 0, 2);
cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
layout.setHtml(1, 0, "Name:");
layout.setWidget(1, 1, new ui.TextBox());
layout.setHtml(2, 0, "Description:");
layout.setWidget(2, 1, new ui.TextBox());

// Wrap the content in a DecoratorPanel
ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
decPanel.setWidget(layout);

ui.RootPanel.get().add(decPanel);
}*/