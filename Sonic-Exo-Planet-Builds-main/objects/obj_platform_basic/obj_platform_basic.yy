{
  "$GMObject":"",
  "%Name":"obj_platform_basic",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_platform_basic",
  "overriddenProperties":[],
  "parent":{
    "name":"Common",
    "path":"folders/Objects/Common.yy",
  },
  "parentObjectId":{
    "name":"c_object",
    "path":"objects/c_object/c_object.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"Type","filters":[],"listItems":[
        "\"None\"",
        "\"Falls\"",
        "\"Horizontal\"",
        "\"Vertical\"",
        "\"Circular\"",
      ],"multiselect":false,"name":"Type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"\"None\"","varType":6,},
    {"$GMObjectProperty":"v1","%Name":"CollisionWidth","filters":[],"listItems":[],"multiselect":false,"name":"CollisionWidth","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"CollisionHeight","filters":[],"listItems":[],"multiselect":false,"name":"CollisionHeight","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"16","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"AngleOffset","filters":[],"listItems":[],"multiselect":false,"name":"AngleOffset","rangeEnabled":true,"rangeMax":360.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"ReverseMovement","filters":[],"listItems":[],"multiselect":false,"name":"ReverseMovement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_obj_platform_basic",
    "path":"sprites/spr_obj_platform_basic/spr_obj_platform_basic.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}