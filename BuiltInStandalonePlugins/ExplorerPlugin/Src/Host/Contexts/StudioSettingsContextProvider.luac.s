PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["value"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 NAMECALL                         R2 R2 K2 ["GetSetting"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["current"]
       17 DUPTABLE                         R4 K3 [{"value"}]
       18 SETTABLEKS                       R2 R4 K1 ["value"]
       20 SETTABLE                         R4 R3 R0
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+13]
        5 GETTABLEKS                       R3 R2 K1 ["value"]
        7 JUMPIFEQ                         R3 R1 ; [+23]
        9 GETUPVAL                         R3 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 NAMECALL                         R3 R3 K2 ["SetSetting"]
       14 CALL                             R3 3 0
       15 SETTABLEKS                       R1 R2 K1 ["value"]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R5 R0
       20 MOVE                             R6 R1
       21 NAMECALL                         R3 R3 K2 ["SetSetting"]
       23 CALL                             R3 3 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K0 ["current"]
       27 DUPTABLE                         R4 K3 [{"value"}]
       28 SETTABLEKS                       R1 R4 K1 ["value"]
       30 SETTABLE                         R4 R3 R0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetShowPlusButtonOnHoverAsync"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K3 ["ShowPlusButtonOnHoverChanged"]
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["ExplorerPluginSearchHistory"]
        1 MOVE                             R4 R0
        2 CONCAT                           R2 R3 R4
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["current"]
        6 GETTABLE                         R3 R4 R2
        7 JUMPIFEQKNIL                     R3 ; [+4]
        9 GETTABLEKS                       R1 R3 K2 ["value"]
       11 JUMP                             ; [+13]
       12 GETUPVAL                         R4 1
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K3 ["GetSetting"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["current"]
       20 DUPTABLE                         R6 K4 [{"value"}]
       21 SETTABLEKS                       R4 R6 K2 ["value"]
       23 SETTABLE                         R6 R5 R2
       24 MOVE                             R1 R4
       25 JUMPIF                           R1 ; [+2]
       26 NEWTABLE                         R1 0 0
       28 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["ExplorerPluginSearchHistory"]
        2 MOVE                             R5 R0
        3 CONCAT                           R3 R4 R5
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetIncrementNamesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R1 1
        7 LOADB                            R2 0
        8 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetIncrementNamesAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["current"]
        3 GETTABLEKS                       R1 R2 K0 ["ExplorerPluginExpandHierarchy"]
        5 JUMPIFEQKNIL                     R1 ; [+4]
        7 GETTABLEKS                       R0 R1 K2 ["value"]
        9 JUMP                             ; [+14]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K0 ["ExplorerPluginExpandHierarchy"]
       12 NAMECALL                         R2 R2 K3 ["GetSetting"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K1 ["current"]
       18 DUPTABLE                         R4 K4 [{"value"}]
       19 SETTABLEKS                       R2 R4 K2 ["value"]
       21 SETTABLEKS                       R4 R3 K0 ["ExplorerPluginExpandHierarchy"]
       23 MOVE                             R0 R2
       24 LOADB                            R1 1
       25 JUMPIFEQKNIL                     R0 ; [+2]
       27 MOVE                             R1 R0
       28 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["ExplorerPluginExpandHierarchy"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 LOADK                            R4 K4 ["InsertObjectSettings"]
       12 NAMECALL                         R2 R1 K5 ["GetPluginComponent"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K6 ["useRef"]
       18 NEWTABLE                         R4 0 0
       20 CALL                             R3 1 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K7 ["Observable"]
       24 GETTABLEKS                       R4 R5 K8 ["useState"]
       26 LOADB                            R5 0
       27 CALL                             R4 1 2
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K9 ["useEffect"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 0
       43 GETUPVAL                         R8 3
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R11 R12 K10 ["Components"]
       47 GETTABLEKS                       R10 R11 K11 ["Contexts"]
       49 GETTABLEKS                       R9 R10 K12 ["SettingsContextProvider"]
       51 DUPTABLE                         R10 K23 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy", "showPlusButtonOnHoverObservable"}]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K13 ["rememberedFields"]
       56 DUPCLOSURE                       R11 K24 [PROTO_5]
       57 SETTABLEKS                       R11 R10 K14 ["addField"]
       59 DUPCLOSURE                       R11 K25 [PROTO_6]
       60 SETTABLEKS                       R11 R10 K15 ["removeField"]
       62 NEWCLOSURE                       R11 P5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R11 R10 K16 ["getSearchHistory"]
       67 NEWCLOSURE                       R11 P6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R10 K17 ["saveSearchHistory"]
       71 NEWCLOSURE                       R11 P7
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R11 R10 K18 ["getIncrementNamesAsync"]
       75 NEWCLOSURE                       R11 P8
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R11 R10 K19 ["setIncrementNames"]
       79 NEWCLOSURE                       R11 P9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R11 R10 K20 ["getExpandHierarchy"]
       84 NEWCLOSURE                       R11 P10
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R11 R10 K21 ["setExpandHierarchy"]
       88 SETTABLEKS                       R4 R10 K22 ["showPlusButtonOnHoverObservable"]
       90 GETTABLEKS                       R11 R0 K26 ["children"]
       92 CALL                             R8 3 -1
       93 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 DUPCLOSURE                       R5 K11 [PROTO_15]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
