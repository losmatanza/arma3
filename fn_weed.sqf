



////////////////////////////////
//----By: Pablo Palomares----//
///////////////////////////////


_param = _this select 0;


if (_param isEqualTo "init") then {


  _maria = nearestObject [player, "JDMarijuana"];
  _girasol = nearestObject [player, "stv_Girasol"];
  _calabaza = nearestObject [player, "stv_Calabaza"];
  _frijol = nearestObject [player, "stv_Frijoles"];
  _bambu = nearestObject [player, "stv_Bambu"];
  _maceta = nearestObject [player, "rmair_PlantPotSmallLow"];
  allvariablesmias = [_maria, _girasol, _calabaza, _frijol, _bambu, _maceta];
  publicVariable "allvariablesmias";


 if (_maria getvariable "lista" == 1) then {
  {
    deleteVehicle _x;
    detach _x;
    titleText ["Has recogido una planta de marihuna", "PLAIN DOWN"];
    titleFadeOut 2;
    player addItem "stv_cannabis_i";
    planta = "";
  } forEach nearestObjects [player, ["JDMarijuana"], 1.5];

 };

 if (_girasol getvariable "listo" == 1) then {
  {
    deleteVehicle _x;
    detach _x;
    titleText ["Has recogido una planta de girasol", "PLAIN DOWN"];
    titleFadeOut 2;
    player addItem "stv_Girasol_i";
    planta = "";
  } forEach nearestObjects [player, ["stv_Girasol"], 1.5];

 };

 if (_calabaza getvariable "listos" == 1) then {
  {
    deleteVehicle _x;
    detach _x;
    titleText ["Has recogido una calabaza", "PLAIN DOWN"];
    titleFadeOut 2;
    player addItem "stv_calabaza_i";
    planta = "";
  } forEach nearestObjects [player, ["stv_Calabaza"], 1.5];

 };

  if (_frijol getvariable "listo" == 1) then {
   {
     deleteVehicle _x;
     detach _x;
     titleText ["Has recogido unos frijoles", "PLAIN DOWN"];
     titleFadeOut 2;
     player addItem "stv_frijole_i";
     planta = "";
   } forEach nearestObjects [player, ["stv_Frijoles"], 1.5];
  };

  if (_bambu getvariable "listo" == 1) then {
   {
     deleteVehicle _x;
     detach _x;
     titleText ["Has recogido una caña de bambu", "PLAIN DOWN"];
     titleFadeOut 2;
     player addItem "stv_bamboo_i";
     planta = "";
   } forEach nearestObjects [player, ["stv_Bambu"], 1.5];
  };

  _pos = getpos _maceta;

  //MARIHUNA
  if (player distance _pos <= 1.5) then {
    _canabis = {"stv_semilla_cannabis" == _x} count ((backpackItems player) + (uniformItems player) + (vestItems player));
    if (_canabis <= 0) exitWith {};
    if (count attachedObjects _maceta >= 1) exitWith {};
    if (planta != "JDMarijuana" ) exitWith {};
    player removeItem "stv_semilla_cannabis";
    _maria = planta createVehicle _pos;
    _maria attachTo [_maceta, [0, 0, 0] ];
    sleep 4;
    _maria attachTo [_maceta, [0, 0, 0.5] ];
    sleep 4;
    _maria attachTo [_maceta, [0, 0, 0.7] ];
    _maria setvariable ["lista", 1];
  };
  // GIRASOL
  if (player distance _pos <= 1.5) then {
   _girasol = {"stv_semilla_girasol" == _x} count ((backpackItems player) + (uniformItems player) + (vestItems player));
   if (_girasol <= 0) exitWith {};
   if (count attachedObjects _maceta >= 1) exitWith {};
   if (planta != "stv_Girasol" ) exitWith {};
   player removeItem "stv_semilla_girasol";
   _girasol = planta createVehicle _pos;
   _girasol attachTo [_maceta, [0, 0, 0] ];
   sleep 4;
   _girasol attachTo [_maceta, [0, 0, 0.5] ];
   sleep 4;
   _girasol attachTo [_maceta, [0, 0, 0.7] ];
   _girasol setvariable ["listo", 1];
  };
  // BAMBU
  if (player distance _pos <= 1.5) then {
    _bambu = {"stv_semilla_bamboo" == _x} count ((backpackItems player) + (uniformItems player) + (vestItems player));
    if (_bambu <= 0) exitWith {};
    if (count attachedObjects _maceta >= 1) exitWith {};
    if (planta != "stv_Bambu" ) exitWith {};
    player removeItem "stv_semilla_bamboo";
    _bambu = planta createVehicle _pos;
    _bambu attachTo [_maceta, [0, 0, 0.1] ];
    sleep 4;
    _bambu attachTo [_maceta, [0, 0, 0.3] ];
    sleep 4;
    _bambu attachTo [_maceta, [0, 0, 0.4] ];
    _bambu setvariable ["listo", 1];
  };
  // CALABAZA
  if (player distance _pos <= 1.5) then {
    _calabaza = {"stv_semilla_calabaza" == _x} count ((backpackItems player) + (uniformItems player) + (vestItems player));
    if (_calabaza <= 0) exitWith {};
    if (count attachedObjects _maceta >= 1) exitWith {};
    if (planta != "stv_Calabaza" ) exitWith {};
    player removeItem "stv_semilla_calabaza";
    _calabaza = planta createVehicle _pos;
    _calabaza attachTo [_maceta, [0, 0, 0.1] ];
    sleep 4;
    _calabaza attachTo [_maceta, [0, 0, 0.3] ];
    sleep 4;
    _calabaza attachTo [_maceta, [0, 0, 0.4] ];
    _calabaza setvariable ["listos", 1];
  };
  // FRIJOL
  if (player distance _pos <= 1.5) then {
   _frijol = {"stv_semilla_frijoles" == _x} count ((backpackItems player) + (uniformItems player) + (vestItems player));
   if (_frijol <= 0) exitWith {};
   if (count attachedObjects _maceta >= 1) exitWith {};
   if (planta != "stv_Frijoles" ) exitWith {};
   player removeItem "stv_semilla_frijoles";
   _frijol = planta createVehicle _pos;
   _frijol attachTo [_maceta, [0, 0, 0] ];
   sleep 4;
   _frijol attachTo [_maceta, [0, 0, 0.5] ];
   sleep 4;
   _frijol attachTo [_maceta, [0, 0, 0.7] ];
   _frijol setvariable ["listo", 1];
  };
};


if (_param isEqualTo "abrir") then {
  if (dialog) exitWith {closedialog 0};
    disableSerialization;
    createdialog "plantas";
};
