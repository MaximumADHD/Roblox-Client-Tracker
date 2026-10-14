PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 GETUPVAL                         R1 0
        2 JUMP                             ; [+1]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R3 4
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADN                            R1 1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R1 1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 5
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K1 [pcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 2
        8 JUMPIF                           R0 ; [+6]
        9 GETIMPORT                        R2 K4 [task.defer]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 3
       16 JUMPIF                           R2 ; [+2]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R1
       19 MOVE                             R3 R2
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 GETUPVAL                         R4 4
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 6
       26 JUMPIFNOT                        R5 ; [+4]
       27 GETUPVAL                         R5 6
       28 MOVE                             R6 R4
       29 CALL                             R5 1 0
       30 JUMP                             ; [+4]
       31 GETUPVAL                         R5 7
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R4
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R3 R1 K5 ["PlaceDocPanelShown"]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R3 R3 K6 ["Connect"]
       44 CALL                             R3 2 1
       45 SETUPVAL                         R3 8
       46 GETTABLEKS                       R3 R1 K7 ["PlaceDocPanelClosed"]
       48 NEWCLOSURE                       R5 P4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U1
       53 NAMECALL                         R3 R3 K6 ["Connect"]
       55 CALL                             R3 2 1
       56 SETUPVAL                         R3 9
       57 GETUPVAL                         R3 11
       58 LOADK                            R5 K8 ["StudioLocaleId"]
       59 NAMECALL                         R3 R3 K9 ["GetPropertyChangedSignal"]
       61 CALL                             R3 2 1
       62 NEWCLOSURE                       R5 P5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U1
       69 NAMECALL                         R3 R3 K6 ["Connect"]
       71 CALL                             R3 2 1
       72 SETUPVAL                         R3 10
       73 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 LOADB                            R4 0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 NEWCLOSURE                       R8 P1
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R8
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          REF R5
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R7
       22 CAPTURE                          UPVAL U3
       23 MOVE                             R9 R8
       24 CALL                             R9 0 0
       25 NEWCLOSURE                       R9 P2
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R5
       28 CAPTURE                          REF R6
       29 CAPTURE                          REF R7
       30 CLOSEUPVALS                      R4
       31 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SystemMenu"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["applySystemMenuDefinitions"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Src"]
       24 GETTABLEKS                       R4 R4 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R0 K10 ["Src"]
       29 GETTABLEKS                       R4 R4 K13 ["Resources"]
       31 GETTABLEKS                       R4 R4 K14 ["ControlDefinitions"]
       33 GETTABLEKS                       R4 R4 K15 ["SystemMenuControls"]
       35 GETTABLEKS                       R5 R4 K16 ["StartPage"]
       37 NEWTABLE                         R6 0 8
       39 DUPTABLE                         R7 K22 [{["Id"] = "AppMenu", ["TitleKey"] = "Studio.SystemMenu.Title.AppMenu", ["Items"]}]
       40 GETIMPORT                        R8 K9 [require]
       42 GETTABLEKS                       R9 R4 K18 ["AppMenu"]
       44 CALL                             R8 1 1
       45 SETTABLEKS                       R8 R7 K21 ["Items"]
       47 DUPTABLE                         R8 K25 [{["Id"] = "File", ["TitleKey"] = "Studio.Common.Action.File", ["Items"]}]
       48 GETIMPORT                        R9 K9 [require]
       50 GETTABLEKS                       R10 R4 K26 ["FileMenu"]
       52 CALL                             R9 1 1
       53 SETTABLEKS                       R9 R8 K21 ["Items"]
       55 DUPTABLE                         R9 K29 [{["Id"] = "Edit", ["TitleKey"] = "Studio.SystemMenu.Title.Edit", ["Items"]}]
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R4 K30 ["EditMenu"]
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K21 ["Items"]
       63 DUPTABLE                         R10 K33 [{["Id"] = "View", ["TitleKey"] = "Studio.SystemMenu.Title.View", ["Items"]}]
       64 GETIMPORT                        R11 K9 [require]
       66 GETTABLEKS                       R12 R4 K34 ["ViewMenu"]
       68 CALL                             R11 1 1
       69 SETTABLEKS                       R11 R10 K21 ["Items"]
       71 DUPTABLE                         R11 K37 [{["Id"] = "Plugins", ["TitleKey"] = "Studio.SystemMenu.Title.Plugins", ["Items"]}]
       72 GETIMPORT                        R12 K9 [require]
       74 GETTABLEKS                       R13 R4 K38 ["PluginsMenu"]
       76 CALL                             R12 1 1
       77 SETTABLEKS                       R12 R11 K21 ["Items"]
       79 DUPTABLE                         R12 K41 [{["Id"] = "Test", ["TitleKey"] = "Studio.SystemMenu.Title.Test", ["Items"]}]
       80 GETIMPORT                        R13 K9 [require]
       82 GETTABLEKS                       R14 R4 K42 ["TestMenu"]
       84 CALL                             R13 1 1
       85 SETTABLEKS                       R13 R12 K21 ["Items"]
       87 DUPTABLE                         R13 K45 [{["Id"] = "Window", ["TitleKey"] = "Studio.SystemMenu.Title.Window", ["Items"]}]
       88 GETIMPORT                        R14 K9 [require]
       90 GETTABLEKS                       R15 R4 K46 ["WindowMenu"]
       92 CALL                             R14 1 1
       93 SETTABLEKS                       R14 R13 K21 ["Items"]
       95 DUPTABLE                         R14 K49 [{["Id"] = "Help", ["TitleKey"] = "Studio.Common.Action.Help", ["Items"]}]
       96 GETIMPORT                        R15 K9 [require]
       98 GETTABLEKS                       R16 R4 K50 ["HelpMenu"]
      100 CALL                             R15 1 1
      101 SETTABLEKS                       R15 R14 K21 ["Items"]
      103 SETLIST                          R6 R7 8 [1]
      105 NEWTABLE                         R7 0 4
      107 DUPTABLE                         R8 K22 [{["Id"] = "AppMenu", ["TitleKey"] = "Studio.SystemMenu.Title.AppMenu", ["Items"]}]
      108 GETIMPORT                        R9 K9 [require]
      110 GETTABLEKS                       R10 R4 K18 ["AppMenu"]
      112 CALL                             R9 1 1
      113 SETTABLEKS                       R9 R8 K21 ["Items"]
      115 DUPTABLE                         R9 K25 [{["Id"] = "File", ["TitleKey"] = "Studio.Common.Action.File", ["Items"]}]
      116 GETIMPORT                        R10 K9 [require]
      118 GETTABLEKS                       R11 R5 K26 ["FileMenu"]
      120 CALL                             R10 1 1
      121 SETTABLEKS                       R10 R9 K21 ["Items"]
      123 DUPTABLE                         R10 K37 [{["Id"] = "Plugins", ["TitleKey"] = "Studio.SystemMenu.Title.Plugins", ["Items"]}]
      124 GETIMPORT                        R11 K9 [require]
      126 GETTABLEKS                       R12 R5 K38 ["PluginsMenu"]
      128 CALL                             R11 1 1
      129 SETTABLEKS                       R11 R10 K21 ["Items"]
      131 DUPTABLE                         R11 K49 [{["Id"] = "Help", ["TitleKey"] = "Studio.Common.Action.Help", ["Items"]}]
      132 GETIMPORT                        R12 K9 [require]
      134 GETTABLEKS                       R13 R5 K50 ["HelpMenu"]
      136 CALL                             R12 1 1
      137 SETTABLEKS                       R12 R11 K21 ["Items"]
      139 SETLIST                          R7 R8 4 [1]
      141 DUPCLOSURE                       R8 K51 [PROTO_9]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R1
      146 RETURN                           R8 1
