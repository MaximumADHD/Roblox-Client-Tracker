PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R1
        6 LOADK                            R9 K0 ["Callouts"]
        7 GETTABLEKS                       R10 R6 K1 ["Title"]
        9 CALL                             R7 3 1
       10 GETUPVAL                         R8 1
       11 MOVE                             R9 R1
       12 LOADK                            R10 K0 ["Callouts"]
       13 GETTABLEKS                       R11 R6 K2 ["Description"]
       15 CALL                             R8 3 1
       16 JUMPIFNOT                        R7 ; [+9]
       17 JUMPIFNOT                        R8 ; [+8]
       18 MOVE                             R11 R5
       19 MOVE                             R12 R7
       20 MOVE                             R13 R8
       21 GETTABLEKS                       R14 R6 K3 ["Link"]
       23 NAMECALL                         R9 R0 K4 ["defineCallout"]
       25 CALL                             R9 5 0
       26 FORGLOOP                         R2 2 ; [-23]
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FileController"]
        5 NAMECALL                         R0 R0 K2 ["onQueueButtonClicked"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FileController"]
        5 NAMECALL                         R0 R0 K2 ["onPluginButtonClicked"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+18]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["Parent"]
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
       21 GETTABLEKS                       R3 R1 K6 ["PluginLoaderContextItem"]
       23 GETTABLEKS                       R2 R3 K7 ["mainButtonClickedSignal"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R2 K4 ["Connect"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Store"]
        4 NAMECALL                         R3 R3 K2 ["getState"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K3 ["showPreview"]
        9 GETTABLEKS                       R4 R1 K4 ["PluginLoaderContextItem"]
       11 GETTABLEKS                       R3 R4 K5 ["mainButton"]
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K6 ["SetActive"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 13
        6 GETTABLEKS                       R4 R1 K2 ["Plugin"]
        8 GETTABLEKS                       R5 R1 K3 ["Design"]
       10 GETTABLEKS                       R6 R1 K4 ["Mouse"]
       12 GETTABLEKS                       R7 R1 K5 ["Store"]
       14 GETTABLEKS                       R8 R1 K6 ["Theme"]
       16 MOVE                             R9 R2
       17 GETTABLEKS                       R10 R1 K7 ["Analytics"]
       19 GETTABLEKS                       R11 R1 K8 ["CalloutController"]
       21 GETTABLEKS                       R12 R1 K9 ["PresetController"]
       23 GETTABLEKS                       R13 R1 K10 ["FileController"]
       25 GETTABLEKS                       R14 R1 K11 ["Networking"]
       27 GETTABLEKS                       R15 R1 K12 ["QueueController"]
       29 GETTABLEKS                       R16 R1 K13 ["UploadController"]
       31 SETLIST                          R3 R4 13 [1]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R5 R1 K8 ["CalloutController"]
       36 MOVE                             R6 R2
       37 CALL                             R4 2 0
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K14 ["provide"]
       41 MOVE                             R5 R3
       42 DUPTABLE                         R6 K18 [{"ImportQueue", "Preview", "UploadWidget"}]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K19 ["createElement"]
       46 GETUPVAL                         R8 3
       47 DUPTABLE                         R9 K21 [{"Title"}]
       48 LOADK                            R12 K15 ["ImportQueue"]
       49 LOADK                            R13 K22 ["WindowTitle"]
       50 NAMECALL                         R10 R2 K23 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K20 ["Title"]
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K15 ["ImportQueue"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K19 ["createElement"]
       61 GETUPVAL                         R8 4
       62 DUPTABLE                         R9 K21 [{"Title"}]
       63 LOADK                            R12 K2 ["Plugin"]
       64 LOADK                            R13 K22 ["WindowTitle"]
       65 NAMECALL                         R10 R2 K23 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K20 ["Title"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K16 ["Preview"]
       73 GETUPVAL                         R8 5
       74 CALL                             R8 0 1
       75 JUMPIF                           R8 ; [+14]
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R7 R8 K19 ["createElement"]
       79 GETUPVAL                         R8 6
       80 DUPTABLE                         R9 K21 [{"Title"}]
       81 LOADK                            R12 K24 ["Upload"]
       82 LOADK                            R13 K22 ["WindowTitle"]
       83 NAMECALL                         R10 R2 K23 ["getText"]
       85 CALL                             R10 3 1
       86 SETTABLEKS                       R10 R9 K20 ["Title"]
       88 CALL                             R7 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R7
       91 SETTABLEKS                       R7 R6 K17 ["UploadWidget"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Components"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R7 R4 K11 ["Dialogs"]
       31 GETTABLEKS                       R6 R7 K12 ["MeshImportDialog"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R8 R4 K11 ["Dialogs"]
       38 GETTABLEKS                       R7 R8 K13 ["UploadWidget"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R9 R4 K11 ["Dialogs"]
       45 GETTABLEKS                       R8 R9 K14 ["ImportQueue"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R11 R0 K9 ["Src"]
       52 GETTABLEKS                       R10 R11 K15 ["Resources"]
       54 GETTABLEKS                       R9 R10 K16 ["CalloutList"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R12 R0 K9 ["Src"]
       61 GETTABLEKS                       R11 R12 K17 ["Utility"]
       63 GETTABLEKS                       R10 R11 K18 ["GetLocalizedString"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R13 R0 K9 ["Src"]
       70 GETTABLEKS                       R12 R13 K19 ["Flags"]
       72 GETTABLEKS                       R11 R12 K20 ["getEFCinUnifiedImportQueue"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R14 R0 K9 ["Src"]
       79 GETTABLEKS                       R13 R14 K19 ["Flags"]
       81 GETTABLEKS                       R12 R13 K21 ["getFFlagImportQueueRibbonDropdown"]
       83 CALL                             R11 1 1
       84 DUPTABLE                         R12 K26 [{"DataModel", "PluginId", "Category", "ItemId"}]
       85 LOADK                            R13 K27 ["Standalone"]
       86 SETTABLEKS                       R13 R12 K22 ["DataModel"]
       88 LOADK                            R13 K28 ["MeshImporter"]
       89 SETTABLEKS                       R13 R12 K23 ["PluginId"]
       91 LOADK                            R13 K29 ["Actions"]
       92 SETTABLEKS                       R13 R12 K24 ["Category"]
       94 LOADK                            R13 K30 ["ToggleQueue"]
       95 SETTABLEKS                       R13 R12 K25 ["ItemId"]
       97 GETTABLEKS                       R13 R1 K31 ["PureComponent"]
       99 LOADK                            R15 K32 ["MainPlugin"]
      100 NAMECALL                         R13 R13 K33 ["extend"]
      102 CALL                             R13 2 1
      103 DUPCLOSURE                       R14 K34 [PROTO_0]
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 DUPCLOSURE                       R15 K35 [PROTO_3]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R12
      110 SETTABLEKS                       R15 R13 K36 ["init"]
      112 DUPCLOSURE                       R15 K37 [PROTO_4]
      113 SETTABLEKS                       R15 R13 K38 ["didUpdate"]
      115 DUPCLOSURE                       R15 K39 [PROTO_5]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R15 R13 K40 ["render"]
      125 RETURN                           R13 1
