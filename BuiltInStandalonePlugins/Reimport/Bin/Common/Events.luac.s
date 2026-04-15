PROTO_0:
        0 DUPTABLE                         R1 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R2 K5 ["Standalone"]
        2 SETTABLEKS                       R2 R1 K0 ["DataModel"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K6 ["REIMPORT"]
        7 GETTABLEKS                       R2 R3 K7 ["ACTION_ID"]
        9 SETTABLEKS                       R2 R1 K1 ["PluginId"]
       11 LOADK                            R2 K8 ["Actions"]
       12 SETTABLEKS                       R2 R1 K2 ["Category"]
       14 SETTABLEKS                       R0 R1 K3 ["ItemId"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R4 0 1
        3 MOVE                             R5 R0
        4 SETLIST                          R4 R5 1 [1]
        6 NAMECALL                         R2 R2 K0 ["GetAsync"]
        8 CALL                             R2 2 1
        9 LENGTH                           R3 R2
       10 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEN                        R3 R2 1
       14 GETTABLEKS                       R4 R3 K2 ["Shortcuts"]
       16 JUMPIFEQKNIL                     R4 ; [+6]
       18 GETTABLEKS                       R5 R3 K2 ["Shortcuts"]
       20 LENGTH                           R4 R5
       21 JUMPIFNOTEQKN                    R4 K1 [0] ; [+9]
       23 SETTABLEKS                       R1 R3 K2 ["Shortcuts"]
       25 GETUPVAL                         R4 0
       26 MOVE                             R6 R3
       27 LOADB                            R7 1
       28 NAMECALL                         R4 R4 K3 ["CreateAsync"]
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R5 R4 K0 ["Connected"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 NAMECALL                         R5 R4 K1 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["REIMPORT"]
        5 DUPTABLE                         R1 K5 [{"DataModel", "PluginId", "Category", "ItemId"}]
        6 LOADK                            R3 K6 ["Standalone"]
        7 SETTABLEKS                       R3 R1 K1 ["DataModel"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K0 ["REIMPORT"]
       12 GETTABLEKS                       R3 R4 K7 ["ACTION_ID"]
       14 SETTABLEKS                       R3 R1 K2 ["PluginId"]
       16 LOADK                            R3 K8 ["Actions"]
       17 SETTABLEKS                       R3 R1 K3 ["Category"]
       19 SETTABLEKS                       R2 R1 K4 ["ItemId"]
       21 GETUPVAL                         R2 2
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K9 ["BindToActivatedAsync"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K10 ["reimport"]
       29 NAMECALL                         R2 R2 K11 ["Connect"]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R0 K10 ["reimport"]
       34 GETUPVAL                         R2 4
       35 MOVE                             R3 R1
       36 NEWTABLE                         R4 0 1
       38 LOADK                            R5 K12 ["Shift+Alt+R"]
       39 SETLIST                          R4 R5 1 [1]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K13 ["REIMPORT_RELATIVE_TO_THIS"]
       45 DUPTABLE                         R2 K5 [{"DataModel", "PluginId", "Category", "ItemId"}]
       46 LOADK                            R4 K6 ["Standalone"]
       47 SETTABLEKS                       R4 R2 K1 ["DataModel"]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K0 ["REIMPORT"]
       52 GETTABLEKS                       R4 R5 K7 ["ACTION_ID"]
       54 SETTABLEKS                       R4 R2 K2 ["PluginId"]
       56 LOADK                            R4 K8 ["Actions"]
       57 SETTABLEKS                       R4 R2 K3 ["Category"]
       59 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       61 GETUPVAL                         R3 2
       62 MOVE                             R5 R2
       63 NAMECALL                         R3 R3 K9 ["BindToActivatedAsync"]
       65 CALL                             R3 2 1
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R5 R6 K14 ["reimportRelative"]
       69 NAMECALL                         R3 R3 K11 ["Connect"]
       71 CALL                             R3 2 1
       72 SETTABLEKS                       R3 R0 K15 ["reimport_rel"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R4 R5 K16 ["CONFIGURE"]
       77 DUPTABLE                         R3 K5 [{"DataModel", "PluginId", "Category", "ItemId"}]
       78 LOADK                            R5 K6 ["Standalone"]
       79 SETTABLEKS                       R5 R3 K1 ["DataModel"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R6 R7 K0 ["REIMPORT"]
       84 GETTABLEKS                       R5 R6 K7 ["ACTION_ID"]
       86 SETTABLEKS                       R5 R3 K2 ["PluginId"]
       88 LOADK                            R5 K8 ["Actions"]
       89 SETTABLEKS                       R5 R3 K3 ["Category"]
       91 SETTABLEKS                       R4 R3 K4 ["ItemId"]
       93 GETUPVAL                         R4 2
       94 MOVE                             R6 R3
       95 NAMECALL                         R4 R4 K9 ["BindToActivatedAsync"]
       97 CALL                             R4 2 1
       98 GETUPVAL                         R7 3
       99 GETTABLEKS                       R6 R7 K17 ["configure"]
      101 NAMECALL                         R4 R4 K11 ["Connect"]
      103 CALL                             R4 2 1
      104 SETTABLEKS                       R4 R0 K17 ["configure"]
      106 GETUPVAL                         R5 5
      107 GETTABLEKS                       R4 R5 K18 ["Unloading"]
      109 NEWCLOSURE                       R6 P0
      110 CAPTURE                          VAL R0
      111 NAMECALL                         R4 R4 K11 ["Connect"]
      113 CALL                             R4 2 0
      114 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["newConfig"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K1 ["REIMPORT"]
        8 GETTABLEKS                       R5 R6 K2 ["ATTRIBUTE_KEY"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R1 K3 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R5 R4 K0 ["Connected"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 NAMECALL                         R5 R4 K1 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K0 ["REIMPORT"]
        9 GETTABLEKS                       R4 R5 K1 ["CPC_EVENTS"]
       11 GETTABLEKS                       R3 R4 K2 ["IMPORT_SUCCEEDED"]
       13 GETGLOBAL                        R4 K3 ["_configureId"]
       15 NAMECALL                         R1 R1 K4 ["Connect"]
       17 CALL                             R1 3 1
       18 SETTABLEKS                       R1 R0 K5 ["cpc_import_succeeded"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R1 R2 K6 ["Unloading"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R1 R1 K4 ["Connect"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R4 R0 K8 ["Packages"]
       17 GETTABLEKS                       R3 R4 K9 ["SharedPluginConstants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Lib"]
       24 GETTABLEKS                       R4 R5 K11 ["ActionRouter"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 LOADK                            R6 K13 ["Actions"]
       30 NAMECALL                         R4 R4 K14 ["GetPluginComponent"]
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R6 R2 K15 ["REIMPORT"]
       35 GETTABLEKS                       R5 R6 K16 ["ACTION_EVENTS"]
       37 GETIMPORT                        R6 K7 [require]
       39 GETTABLEKS                       R9 R0 K10 ["Lib"]
       41 GETTABLEKS                       R8 R9 K17 ["External"]
       43 GETTABLEKS                       R7 R8 K18 ["CrossPluginCommunication"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K19 ["new"]
       48 GETTABLEKS                       R9 R2 K15 ["REIMPORT"]
       50 GETTABLEKS                       R8 R9 K20 ["CPC_ID"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K7 [require]
       55 GETTABLEKS                       R11 R0 K10 ["Lib"]
       57 GETTABLEKS                       R10 R11 K21 ["Reimport"]
       59 GETTABLEKS                       R9 R10 K22 ["ReimportConfigs"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K7 [require]
       64 GETTABLEKS                       R11 R0 K23 ["Flags"]
       66 GETTABLEKS                       R10 R11 K24 ["GetFFlagReimportSendReimportConfigOnUpload"]
       68 CALL                             R9 1 1
       69 NEWTABLE                         R10 2 0
       71 DUPCLOSURE                       R11 K25 [PROTO_0]
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R12 K26 [PROTO_1]
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R13 K27 [PROTO_3]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R13 R10 K28 ["registerActions"]
       84 DUPCLOSURE                       R13 K29 [PROTO_4]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R2
       87 SETGLOBAL                        R13 K30 ["_configureId"]
       89 DUPCLOSURE                       R13 K31 [PROTO_6]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R13 R10 K32 ["registerCrossPluginListeners"]
       96 RETURN                           R10 1
