part of contact_mvc;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/contact/mvc/json/model.dart

var contactMvcModelJson = r'''
{
    "width":990,
    "height":580,
    "boxes":[
        {
            "name":"Contact",
            "entry":true,
            "x":202,
            "y":350,
            "width":120,
            "height":120,
            "items":[
                {
                    "sequence":10,
                    "name":"nom",
                    "category":"identifier",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":20,
                    "name":"prenoms",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":30,
                    "name":"tel",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":40,
                    "name":"e_mail",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                }
            ]
        }
    ],
    "lines":[
        
    ]
}
''';
  