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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport selection error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["reimportInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport selection error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 LOADK                            R4 K5 ["MeshPart"]
       15 NAMECALL                         R2 R0 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+10]
       19 GETIMPORT                        R2 K2 [error]
       21 LOADK                            R4 K7 ["Reimport relative to this requires a MeshPart to be selected, got %*"]
       22 GETTABLEKS                       R6 R0 K8 ["ClassName"]
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 CALL                             R2 1 0
       29 MOVE                             R2 R0
       30 LOADK                            R5 K9 ["Model"]
       31 NAMECALL                         R3 R2 K6 ["IsA"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K10 ["ATTRIBUTE_KEY"]
       38 NAMECALL                         R3 R2 K11 ["GetAttribute"]
       40 CALL                             R3 2 1
       41 JUMPIFNOTEQKNIL                  R3 ; [+10]
       43 GETTABLEKS                       R2 R2 K12 ["Parent"]
       45 JUMPIFNOTEQKNIL                  R2 ; [+5]
       47 GETIMPORT                        R3 K2 [error]
       49 LOADK                            R4 K13 ["No valid reimport root found in target instance ancestry"]
       50 CALL                             R3 1 0
       51 JUMPBACK                         ; [-22]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R3 R4 K14 ["reimportModel"]
       55 MOVE                             R4 R2
       56 DUPTABLE                         R5 K16 [{"anchor"}]
       57 SETTABLEKS                       R0 R5 K15 ["anchor"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Reimport configure error: %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["fromInstance"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

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
       26 DUPCLOSURE                       R4 K10 [PROTO_2]
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 NAMECALL                         R2 R2 K11 ["Connect"]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R0 K12 ["reimport"]
       34 GETUPVAL                         R2 5
       35 MOVE                             R3 R1
       36 NEWTABLE                         R4 0 1
       38 LOADK                            R5 K13 ["Shift+Alt+R"]
       39 SETLIST                          R4 R5 1 [1]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K14 ["REIMPORT_RELATIVE_TO_THIS"]
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
       66 DUPCLOSURE                       R5 K15 [PROTO_3]
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U4
       70 NAMECALL                         R3 R3 K11 ["Connect"]
       72 CALL                             R3 2 1
       73 SETTABLEKS                       R3 R0 K16 ["reimport_rel"]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R4 R5 K17 ["CONFIGURE"]
       78 DUPTABLE                         R3 K5 [{"DataModel", "PluginId", "Category", "ItemId"}]
       79 LOADK                            R5 K6 ["Standalone"]
       80 SETTABLEKS                       R5 R3 K1 ["DataModel"]
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R6 R7 K0 ["REIMPORT"]
       85 GETTABLEKS                       R5 R6 K7 ["ACTION_ID"]
       87 SETTABLEKS                       R5 R3 K2 ["PluginId"]
       89 LOADK                            R5 K8 ["Actions"]
       90 SETTABLEKS                       R5 R3 K3 ["Category"]
       92 SETTABLEKS                       R4 R3 K4 ["ItemId"]
       94 GETUPVAL                         R4 2
       95 MOVE                             R6 R3
       96 NAMECALL                         R4 R4 K9 ["BindToActivatedAsync"]
       98 CALL                             R4 2 1
       99 DUPCLOSURE                       R6 K18 [PROTO_4]
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U7
      102 NAMECALL                         R4 R4 K11 ["Connect"]
      104 CALL                             R4 2 1
      105 SETTABLEKS                       R4 R0 K19 ["configure"]
      107 GETUPVAL                         R5 8
      108 GETTABLEKS                       R4 R5 K20 ["Unloading"]
      110 NEWCLOSURE                       R6 P3
      111 CAPTURE                          VAL R0
      112 NAMECALL                         R4 R4 K11 ["Connect"]
      114 CALL                             R4 2 0
      115 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R0 K8 ["Lib"]
       17 GETTABLEKS                       R3 R4 K9 ["Reimport"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R6 R0 K8 ["Lib"]
       24 GETTABLEKS                       R5 R6 K9 ["Reimport"]
       26 GETTABLEKS                       R4 R5 K10 ["ReimportConfigs"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R7 R0 K8 ["Lib"]
       33 GETTABLEKS                       R6 R7 K9 ["Reimport"]
       35 GETTABLEKS                       R5 R6 K11 ["SelectionHelper"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K7 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Packages"]
       42 GETTABLEKS                       R6 R7 K13 ["SharedPluginConstants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K7 [require]
       47 GETTABLEKS                       R10 R0 K14 ["Bin"]
       49 GETTABLEKS                       R9 R10 K15 ["Common"]
       51 GETTABLEKS                       R8 R9 K16 ["Dialogs"]
       53 GETTABLEKS                       R7 R8 K17 ["ShowConfigureDialog"]
       55 CALL                             R6 1 1
       56 GETTABLEKS                       R7 R0 K18 ["Parent"]
       58 LOADK                            R9 K19 ["Actions"]
       59 NAMECALL                         R7 R7 K20 ["GetPluginComponent"]
       61 CALL                             R7 2 1
       62 GETTABLEKS                       R9 R5 K21 ["REIMPORT"]
       64 GETTABLEKS                       R8 R9 K22 ["ACTION_EVENTS"]
       66 NEWTABLE                         R9 1 0
       68 DUPCLOSURE                       R10 K23 [PROTO_0]
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R11 K24 [PROTO_1]
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R12 K25 [PROTO_6]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R12 R9 K26 ["registerActions"]
       84 RETURN                           R9 1
