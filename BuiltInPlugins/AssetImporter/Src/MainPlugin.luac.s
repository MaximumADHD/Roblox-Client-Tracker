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
       12 GETTABLEKS                       R7 R1 K5 ["Focus"]
       14 GETTABLEKS                       R8 R1 K6 ["Store"]
       16 GETTABLEKS                       R9 R1 K7 ["Theme"]
       18 MOVE                             R10 R2
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
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+14]
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R7 R8 K19 ["createElement"]
       49 GETUPVAL                         R8 4
       50 DUPTABLE                         R9 K21 [{"Title"}]
       51 LOADK                            R12 K15 ["ImportQueue"]
       52 LOADK                            R13 K22 ["WindowTitle"]
       53 NAMECALL                         R10 R2 K23 ["getText"]
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K20 ["Title"]
       58 CALL                             R7 2 1
       59 JUMP                             ; [+13]
       60 GETUPVAL                         R8 5
       61 GETTABLEKS                       R7 R8 K19 ["createElement"]
       63 GETUPVAL                         R8 6
       64 DUPTABLE                         R9 K21 [{"Title"}]
       65 LOADK                            R12 K15 ["ImportQueue"]
       66 LOADK                            R13 K22 ["WindowTitle"]
       67 NAMECALL                         R10 R2 K23 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K20 ["Title"]
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K15 ["ImportQueue"]
       75 GETUPVAL                         R8 5
       76 GETTABLEKS                       R7 R8 K19 ["createElement"]
       78 GETUPVAL                         R8 7
       79 DUPTABLE                         R9 K21 [{"Title"}]
       80 LOADK                            R12 K2 ["Plugin"]
       81 LOADK                            R13 K22 ["WindowTitle"]
       82 NAMECALL                         R10 R2 K23 ["getText"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K20 ["Title"]
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K16 ["Preview"]
       90 GETUPVAL                         R8 8
       91 CALL                             R8 0 1
       92 JUMPIF                           R8 ; [+14]
       93 GETUPVAL                         R8 5
       94 GETTABLEKS                       R7 R8 K19 ["createElement"]
       96 GETUPVAL                         R8 9
       97 DUPTABLE                         R9 K21 [{"Title"}]
       98 LOADK                            R12 K24 ["Upload"]
       99 LOADK                            R13 K22 ["WindowTitle"]
      100 NAMECALL                         R10 R2 K23 ["getText"]
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K20 ["Title"]
      105 CALL                             R7 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R7
      108 SETTABLEKS                       R7 R6 K17 ["UploadWidget"]
      110 CALL                             R4 2 -1
      111 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R5 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Components"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R8 R5 K12 ["Dialogs"]
       38 GETTABLEKS                       R7 R8 K13 ["MeshImportDialog"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R9 R5 K12 ["Dialogs"]
       45 GETTABLEKS                       R8 R9 K14 ["UploadWidget"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R10 R5 K12 ["Dialogs"]
       52 GETTABLEKS                       R9 R10 K15 ["ImportQueue"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K4 [require]
       57 GETTABLEKS                       R10 R5 K15 ["ImportQueue"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R13 R0 K10 ["Src"]
       64 GETTABLEKS                       R12 R13 K16 ["Resources"]
       66 GETTABLEKS                       R11 R12 K17 ["CalloutList"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R14 R0 K10 ["Src"]
       73 GETTABLEKS                       R13 R14 K18 ["Utility"]
       75 GETTABLEKS                       R12 R13 K19 ["GetLocalizedString"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R15 R0 K10 ["Src"]
       82 GETTABLEKS                       R14 R15 K20 ["Flags"]
       84 GETTABLEKS                       R13 R14 K21 ["getEFCinUnifiedImportQueue"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K4 [require]
       89 GETTABLEKS                       R16 R0 K10 ["Src"]
       91 GETTABLEKS                       R15 R16 K20 ["Flags"]
       93 GETTABLEKS                       R14 R15 K22 ["getFFlagImportQueueRibbonDropdown"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R17 R0 K10 ["Src"]
      100 GETTABLEKS                       R16 R17 K20 ["Flags"]
      102 GETTABLEKS                       R15 R16 K23 ["getFFlagCinBulkImportPostBeta"]
      104 CALL                             R14 1 1
      105 DUPTABLE                         R15 K28 [{"DataModel", "PluginId", "Category", "ItemId"}]
      106 LOADK                            R16 K29 ["Standalone"]
      107 SETTABLEKS                       R16 R15 K24 ["DataModel"]
      109 LOADK                            R16 K30 ["MeshImporter"]
      110 SETTABLEKS                       R16 R15 K25 ["PluginId"]
      112 LOADK                            R16 K31 ["Actions"]
      113 SETTABLEKS                       R16 R15 K26 ["Category"]
      115 LOADK                            R16 K32 ["ToggleQueue"]
      116 SETTABLEKS                       R16 R15 K27 ["ItemId"]
      118 GETTABLEKS                       R16 R2 K33 ["PureComponent"]
      120 LOADK                            R18 K34 ["MainPlugin"]
      121 NAMECALL                         R16 R16 K35 ["extend"]
      123 CALL                             R16 2 1
      124 DUPCLOSURE                       R17 K36 [PROTO_0]
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R11
      127 DUPCLOSURE                       R18 K37 [PROTO_3]
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R15
      131 SETTABLEKS                       R18 R16 K38 ["init"]
      133 DUPCLOSURE                       R18 K39 [PROTO_4]
      134 SETTABLEKS                       R18 R16 K40 ["didUpdate"]
      136 DUPCLOSURE                       R18 K41 [PROTO_5]
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R18 R16 K42 ["render"]
      149 RETURN                           R16 1
