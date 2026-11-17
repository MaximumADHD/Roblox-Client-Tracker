PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["FileController"]
        5 NAMECALL                         R0 R0 K2 ["onQueueButtonClicked"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["FileController"]
        5 NAMECALL                         R0 R0 K2 ["onPluginButtonClicked"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+18]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Parent"]
        6 LOADK                            R4 K1 ["Actions"]
        7 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R5 2
       11 NAMECALL                         R3 R2 K3 ["BindToActivatedAsync"]
       13 CALL                             R3 2 1
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R3 R3 K4 ["Connect"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R0 K5 ["toggleQueueAction"]
       21 GETTABLEKS                       R2 R1 K6 ["PluginLoaderContextItem"]
       23 GETTABLEKS                       R2 R2 K7 ["mainButtonClickedSignal"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R2 K4 ["Connect"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Store"]
        4 NAMECALL                         R2 R2 K2 ["getState"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K3 ["showPreview"]
        9 GETTABLEKS                       R3 R1 K4 ["PluginLoaderContextItem"]
       11 GETTABLEKS                       R3 R3 K5 ["mainButton"]
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K6 ["SetActive"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 12
        6 GETTABLEKS                       R4 R1 K2 ["Plugin"]
        8 GETTABLEKS                       R5 R1 K3 ["Design"]
       10 GETTABLEKS                       R6 R1 K4 ["Mouse"]
       12 GETTABLEKS                       R7 R1 K5 ["Focus"]
       14 GETTABLEKS                       R8 R1 K6 ["Store"]
       16 GETTABLEKS                       R9 R1 K7 ["Theme"]
       18 MOVE                             R10 R2
       19 GETTABLEKS                       R11 R1 K8 ["PresetController"]
       21 GETTABLEKS                       R12 R1 K9 ["FileController"]
       23 GETTABLEKS                       R13 R1 K10 ["Networking"]
       25 GETTABLEKS                       R14 R1 K11 ["QueueController"]
       27 GETTABLEKS                       R15 R1 K12 ["UploadController"]
       29 SETLIST                          R3 R4 12 [1]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K13 ["provide"]
       34 MOVE                             R5 R3
       35 DUPTABLE                         R6 K16 [{"ImportQueue", "Preview"}]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K17 ["createElement"]
       39 GETUPVAL                         R8 2
       40 DUPTABLE                         R9 K19 [{"Title"}]
       41 LOADK                            R12 K14 ["ImportQueue"]
       42 LOADK                            R13 K20 ["WindowTitle"]
       43 NAMECALL                         R10 R2 K21 ["getText"]
       45 CALL                             R10 3 1
       46 SETTABLEKS                       R10 R9 K18 ["Title"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K14 ["ImportQueue"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K17 ["createElement"]
       54 GETUPVAL                         R8 4
       55 DUPTABLE                         R9 K19 [{"Title"}]
       56 LOADK                            R12 K2 ["Plugin"]
       57 LOADK                            R13 K20 ["WindowTitle"]
       58 NAMECALL                         R10 R2 K21 ["getText"]
       60 CALL                             R10 3 1
       61 SETTABLEKS                       R10 R9 K18 ["Title"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K15 ["Preview"]
       66 CALL                             R4 2 -1
       67 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R5 K12 ["Dialogs"]
       38 GETTABLEKS                       R7 R7 K13 ["MeshImportDialog"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R5 K14 ["ImportQueue"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Flags"]
       52 GETTABLEKS                       R9 R9 K16 ["getFFlagImportQueueRibbonDropdown"]
       54 CALL                             R8 1 1
       55 DUPTABLE                         R9 K25 [{["DataModel"] = "Standalone", ["PluginId"] = "MeshImporter", ["Category"] = "Actions", ["ItemId"] = "ToggleQueue"}]
       56 GETTABLEKS                       R10 R2 K26 ["PureComponent"]
       58 LOADK                            R12 K27 ["MainPlugin"]
       59 NAMECALL                         R10 R10 K28 ["extend"]
       61 CALL                             R10 2 1
       62 DUPCLOSURE                       R11 K29 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R9
       66 SETTABLEKS                       R11 R10 K30 ["init"]
       68 DUPCLOSURE                       R11 K31 [PROTO_3]
       69 SETTABLEKS                       R11 R10 K32 ["didUpdate"]
       71 DUPCLOSURE                       R11 K33 [PROTO_4]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R11 R10 K34 ["render"]
       79 RETURN                           R10 1
