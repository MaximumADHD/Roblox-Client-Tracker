PROTO_0:
        0 DUPTABLE                         R0 K7 [{[1] = "", ["Tooltip"] = "", ["Icon"] = "", ["Enabled"] = False, ["Click"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["new"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K6 ["Click"]
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K10 [setmetatable]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Title", "Buttons"}]
        1 SETTABLEKS                       R0 R1 K0 ["Title"]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K1 ["Buttons"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [setmetatable]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 -1
        4 RETURN                           R4 -1

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["_signals"] ; [+2]
        2 RETURN                           R0 0
        3 SETTABLE                         R2 R0 R1
        4 GETTABLEKS                       R4 R0 K0 ["_signals"]
        6 GETTABLE                         R3 R4 R1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["fire"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["DockWidgetPluginGui's title must be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["DockWidgetPluginGui's widgetInfo must be an array"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 LENGTH                           R4 R1
       31 JUMPIFEQKN                       R4 K8 [7] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       37 LOADK                            R4 K9 ["Unexpected table provided for widgetInfo, expected an array"]
       38 GETIMPORT                        R2 K5 [assert]
       40 CALL                             R2 2 0
       41 DUPTABLE                         R2 K16 [{["Name"] = "", ["Title"], ["ZIndexBehavior"], ["Enabled"] = True}]
       42 SETTABLEKS                       R0 R2 K12 ["Title"]
       44 GETIMPORT                        R3 K19 [Enum.ZIndexBehavior.Global]
       46 SETTABLEKS                       R3 R2 K13 ["ZIndexBehavior"]
       48 NEWTABLE                         R3 0 0
       50 GETIMPORT                        R4 K21 [pairs]
       52 MOVE                             R5 R2
       53 CALL                             R4 1 3
       54 FORGPREP_NEXT                    R4
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K22 ["new"]
       58 CALL                             R9 0 1
       59 SETTABLE                         R9 R3 R7
       60 FORGLOOP                         R4 2 ; [-6]
       62 SETTABLEKS                       R3 R2 K23 ["_signals"]
       64 GETUPVAL                         R6 1
       65 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
       67 MOVE                             R5 R2
       68 GETIMPORT                        R4 K25 [setmetatable]
       70 CALL                             R4 2 0
       71 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Need a property to observe changes"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETTABLE                         R4 R0 R1
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 LOADK                            R5 K3 ["Could not find the key,"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K5 [tostring]
       20 CALL                             R8 1 1
       21 MOVE                             R6 R8
       22 LOADK                            R7 K6 [" please add it to the constructor"]
       23 CONCAT                           R4 R5 R7
       24 FASTCALL2                        ASSERT R3 R4 ; [+3]
       26 GETIMPORT                        R2 K2 [assert]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R3 R0 K7 ["_signals"]
       31 GETTABLE                         R2 R3 R1
       32 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R1 K8 [{[1] = "", ["Deactivation"], ["Unloading"], ["_activated"] = False, ["_activatedWithExclusiveMouse"] = False, ["_mouse"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K9 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K2 ["Deactivation"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K9 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K3 ["Unloading"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K9 ["new"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K7 ["_mouse"]
       19 GETUPVAL                         R2 2
       20 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       22 GETIMPORT                        R0 K11 [setmetatable]
       24 CALL                             R0 2 1
       25 GETUPVAL                         R1 3
       26 LOADB                            R2 1
       27 SETTABLE                         R2 R1 R0
       28 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_activated"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_activatedWithExclusiveMouse"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_activated"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R5 K0 ["_activated"]
       11 JUMPIFNOT                        R7 ; [+3]
       12 NAMECALL                         R7 R5 K3 ["Deactivate"]
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-7]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R0 K0 ["_activated"]
       20 SETTABLEKS                       R1 R0 K4 ["_activatedWithExclusiveMouse"]
       22 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_activated"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_activated"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["_activatedWithExclusiveMouse"]
       10 GETTABLEKS                       R1 R0 K2 ["Deactivation"]
       12 NAMECALL                         R1 R1 K3 ["fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["Signal"]
       20 GETIMPORT                        R2 K4 [require]
       22 GETIMPORT                        R3 K1 [script]
       24 GETTABLEKS                       R3 R3 K2 ["Parent"]
       26 GETTABLEKS                       R3 R3 K9 ["MockMouse"]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 4 0
       31 SETTABLEKS                       R3 R3 K10 ["__index"]
       33 DUPCLOSURE                       R4 K11 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K12 ["new"]
       38 DUPCLOSURE                       R4 K13 [PROTO_1]
       39 SETTABLEKS                       R4 R3 K14 ["SetActive"]
       41 NEWTABLE                         R4 4 0
       43 SETTABLEKS                       R4 R4 K10 ["__index"]
       45 DUPCLOSURE                       R5 K15 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R5 R4 K12 ["new"]
       49 DUPCLOSURE                       R5 K16 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R5 R4 K17 ["CreateButton"]
       53 NEWTABLE                         R5 4 0
       55 SETTABLEKS                       R5 R5 K10 ["__index"]
       57 DUPCLOSURE                       R6 K18 [PROTO_4]
       58 SETTABLEKS                       R6 R5 K19 ["__newindex"]
       60 DUPCLOSURE                       R6 K20 [PROTO_5]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R6 R5 K12 ["new"]
       65 DUPCLOSURE                       R6 K21 [PROTO_6]
       66 SETTABLEKS                       R6 R5 K22 ["GetPropertyChangedSignal"]
       68 NEWTABLE                         R6 0 0
       70 NEWTABLE                         R7 16 0
       72 SETTABLEKS                       R7 R7 K10 ["__index"]
       74 DUPCLOSURE                       R8 K23 [PROTO_7]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R8 R7 K12 ["new"]
       81 DUPCLOSURE                       R8 K24 [PROTO_8]
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R8 R7 K25 ["Destroy"]
       85 DUPCLOSURE                       R8 K26 [PROTO_9]
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R8 R7 K27 ["CreateToolbar"]
       89 DUPCLOSURE                       R8 K28 [PROTO_10]
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R8 R7 K29 ["CreateDockWidgetPluginGui"]
       93 DUPCLOSURE                       R8 K30 [PROTO_11]
       94 SETTABLEKS                       R8 R7 K31 ["GetMouse"]
       96 DUPCLOSURE                       R8 K32 [PROTO_12]
       97 SETTABLEKS                       R8 R7 K33 ["IsActivated"]
       99 DUPCLOSURE                       R8 K34 [PROTO_13]
      100 SETTABLEKS                       R8 R7 K35 ["IsActivatedWithExclusiveMouse"]
      102 DUPCLOSURE                       R8 K36 [PROTO_14]
      103 CAPTURE                          VAL R6
      104 SETTABLEKS                       R8 R7 K37 ["Activate"]
      106 DUPCLOSURE                       R8 K38 [PROTO_15]
      107 SETTABLEKS                       R8 R7 K39 ["Deactivate"]
      109 RETURN                           R7 1
