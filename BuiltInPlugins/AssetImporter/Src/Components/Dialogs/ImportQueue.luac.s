PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetShowQueue"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["ImportQueue"]
        6 GETTABLEKS                       R3 R2 K3 ["ControlsHeight"]
        8 GETTABLEKS                       R5 R1 K4 ["Parsing"]
       10 JUMPIF                           R5 ; [+3]
       11 GETTABLEKS                       R5 R1 K5 ["Uploading"]
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETTABLEKS                       R4 R2 K6 ["ProgressBarHeight"]
       16 JUMP                             ; [+1]
       17 LOADN                            R4 0
       18 ADD                              R5 R3 R4
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["createElement"]
       22 GETUPVAL                         R7 1
       23 DUPTABLE                         R8 K14 [{"Title", "Enabled", "Size", "InitialDockState", "MinSize", "OnClose"}]
       24 GETTABLEKS                       R9 R1 K8 ["Title"]
       26 SETTABLEKS                       R9 R8 K8 ["Title"]
       28 GETTABLEKS                       R9 R1 K15 ["ShowQueue"]
       30 SETTABLEKS                       R9 R8 K9 ["Enabled"]
       32 GETTABLEKS                       R9 R2 K16 ["WindowSize"]
       34 SETTABLEKS                       R9 R8 K10 ["Size"]
       36 GETIMPORT                        R9 K19 [Enum.InitialDockState.Bottom]
       38 SETTABLEKS                       R9 R8 K11 ["InitialDockState"]
       40 GETTABLEKS                       R9 R2 K16 ["WindowSize"]
       42 SETTABLEKS                       R9 R8 K12 ["MinSize"]
       44 GETTABLEKS                       R9 R0 K20 ["onClose"]
       46 SETTABLEKS                       R9 R8 K13 ["OnClose"]
       48 DUPTABLE                         R9 K22 [{"QueueWrapper"}]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R10 R11 K7 ["createElement"]
       52 GETUPVAL                         R11 2
       53 LOADNIL                          R12
       54 DUPTABLE                         R13 K26 [{"Queue", "ErrorDialog", "WarningDialog"}]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R14 R15 K7 ["createElement"]
       58 GETUPVAL                         R15 3
       59 DUPTABLE                         R16 K29 [{"Layout", "VerticalAlignment"}]
       60 GETIMPORT                        R17 K32 [Enum.FillDirection.Vertical]
       62 SETTABLEKS                       R17 R16 K27 ["Layout"]
       64 GETIMPORT                        R17 K34 [Enum.VerticalAlignment.Top]
       66 SETTABLEKS                       R17 R16 K28 ["VerticalAlignment"]
       68 DUPTABLE                         R17 K38 [{"Controls", "AssetList", "ImportProgressBar"}]
       69 GETUPVAL                         R19 0
       70 GETTABLEKS                       R18 R19 K7 ["createElement"]
       72 GETUPVAL                         R19 4
       73 DUPTABLE                         R20 K40 [{"LayoutOrder", "Size"}]
       74 LOADN                            R21 1
       75 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
       77 GETIMPORT                        R21 K43 [UDim2.new]
       79 LOADN                            R22 1
       80 LOADN                            R23 0
       81 LOADN                            R24 0
       82 MOVE                             R25 R3
       83 CALL                             R21 4 1
       84 SETTABLEKS                       R21 R20 K10 ["Size"]
       86 CALL                             R18 2 1
       87 SETTABLEKS                       R18 R17 K35 ["Controls"]
       89 GETUPVAL                         R19 0
       90 GETTABLEKS                       R18 R19 K7 ["createElement"]
       92 GETUPVAL                         R19 5
       93 DUPTABLE                         R20 K40 [{"LayoutOrder", "Size"}]
       94 LOADN                            R21 2
       95 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
       97 GETIMPORT                        R21 K43 [UDim2.new]
       99 LOADN                            R22 1
      100 LOADN                            R23 0
      101 LOADN                            R24 1
      102 MINUS                            R25 R5
      103 CALL                             R21 4 1
      104 SETTABLEKS                       R21 R20 K10 ["Size"]
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K36 ["AssetList"]
      109 GETUPVAL                         R19 0
      110 GETTABLEKS                       R18 R19 K7 ["createElement"]
      112 GETUPVAL                         R19 6
      113 DUPTABLE                         R20 K40 [{"LayoutOrder", "Size"}]
      114 LOADN                            R21 3
      115 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
      117 GETIMPORT                        R21 K43 [UDim2.new]
      119 LOADN                            R22 1
      120 LOADN                            R23 0
      121 LOADN                            R24 0
      122 MOVE                             R25 R4
      123 CALL                             R21 4 1
      124 SETTABLEKS                       R21 R20 K10 ["Size"]
      126 CALL                             R18 2 1
      127 SETTABLEKS                       R18 R17 K37 ["ImportProgressBar"]
      129 CALL                             R14 3 1
      130 SETTABLEKS                       R14 R13 K23 ["Queue"]
      132 GETUPVAL                         R15 7
      133 CALL                             R15 0 1
      134 JUMPIFNOT                        R15 ; [+9]
      135 GETUPVAL                         R15 8
      136 GETTABLEKS                       R14 R15 K7 ["createElement"]
      138 GETUPVAL                         R15 9
      139 LOADNIL                          R16
      140 NEWTABLE                         R17 0 0
      142 CALL                             R14 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R14
      145 SETTABLEKS                       R14 R13 K24 ["ErrorDialog"]
      147 GETUPVAL                         R15 7
      148 CALL                             R15 0 1
      149 JUMPIFNOT                        R15 ; [+9]
      150 GETUPVAL                         R15 8
      151 GETTABLEKS                       R14 R15 K7 ["createElement"]
      153 GETUPVAL                         R15 10
      154 LOADNIL                          R16
      155 NEWTABLE                         R17 0 0
      157 CALL                             R14 3 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R14
      160 SETTABLEKS                       R14 R13 K25 ["WarningDialog"]
      162 CALL                             R10 3 1
      163 SETTABLEKS                       R10 R9 K21 ["QueueWrapper"]
      165 CALL                             R6 3 -1
      166 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"SetShowQueue"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetShowQueue"]
        6 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"ShowQueue", "Uploading", "Parsing"}]
        1 GETTABLEKS                       R3 R0 K4 ["Dialogs"]
        3 GETTABLEKS                       R2 R3 K5 ["showQueue"]
        5 SETTABLEKS                       R2 R1 K0 ["ShowQueue"]
        7 GETTABLEKS                       R3 R0 K6 ["Sessions"]
        9 GETTABLEKS                       R2 R3 K7 ["uploading"]
       11 SETTABLEKS                       R2 R1 K1 ["Uploading"]
       13 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       15 GETTABLEKS                       R2 R3 K8 ["parsing"]
       17 SETTABLEKS                       R2 R1 K2 ["Parsing"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R9 R4 K14 ["Style"]
       43 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       45 GETTABLEKS                       R9 R4 K16 ["UI"]
       47 GETTABLEKS                       R10 R9 K17 ["DockWidget"]
       49 GETTABLEKS                       R11 R9 K18 ["Pane"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R14 R0 K19 ["Src"]
       55 GETTABLEKS                       R13 R14 K20 ["Types"]
       57 CALL                             R12 1 1
       58 GETTABLEKS                       R14 R0 K19 ["Src"]
       60 GETTABLEKS                       R13 R14 K21 ["Components"]
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R16 R13 K22 ["Dialogs"]
       66 GETTABLEKS                       R15 R16 K23 ["UploadErrorDialog"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K5 [require]
       71 GETTABLEKS                       R17 R13 K22 ["Dialogs"]
       73 GETTABLEKS                       R16 R17 K24 ["UploadConfirmationDialog"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K5 [require]
       78 GETTABLEKS                       R18 R13 K25 ["ImportQueue"]
       80 GETTABLEKS                       R17 R18 K26 ["AssetList"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K5 [require]
       85 GETTABLEKS                       R19 R13 K25 ["ImportQueue"]
       87 GETTABLEKS                       R18 R19 K27 ["QueueControls"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K5 [require]
       92 GETTABLEKS                       R20 R13 K25 ["ImportQueue"]
       94 GETTABLEKS                       R19 R20 K28 ["ImportProgressBar"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K5 [require]
       99 GETTABLEKS                       R22 R0 K19 ["Src"]
      101 GETTABLEKS                       R21 R22 K29 ["Actions"]
      103 GETTABLEKS                       R20 R21 K30 ["SetShowQueue"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K5 [require]
      108 GETTABLEKS                       R23 R0 K19 ["Src"]
      110 GETTABLEKS                       R22 R23 K31 ["Controllers"]
      112 GETTABLEKS                       R21 R22 K32 ["FileController"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K5 [require]
      117 GETTABLEKS                       R24 R0 K19 ["Src"]
      119 GETTABLEKS                       R23 R24 K31 ["Controllers"]
      121 GETTABLEKS                       R22 R23 K33 ["QueueController"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K5 [require]
      126 GETTABLEKS                       R24 R0 K6 ["Packages"]
      128 GETTABLEKS                       R23 R24 K34 ["StudioFoundation"]
      130 CALL                             R22 1 1
      131 JUMPIFNOT                        R22 ; [+5]
      132 GETTABLEKS                       R24 R22 K21 ["Components"]
      134 GETTABLEKS                       R23 R24 K35 ["FoundationProviderAdapter"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R23
      138 GETIMPORT                        R24 K5 [require]
      140 GETTABLEKS                       R27 R0 K19 ["Src"]
      142 GETTABLEKS                       R26 R27 K36 ["Flags"]
      144 GETTABLEKS                       R25 R26 K37 ["getEFCinUnifiedImportQueue"]
      146 CALL                             R24 1 1
      147 GETTABLEKS                       R25 R2 K38 ["PureComponent"]
      149 LOADK                            R27 K25 ["ImportQueue"]
      150 NAMECALL                         R25 R25 K39 ["extend"]
      152 CALL                             R25 2 1
      153 DUPCLOSURE                       R26 K40 [PROTO_1]
      154 SETTABLEKS                       R26 R25 K41 ["init"]
      156 DUPCLOSURE                       R26 K42 [PROTO_2]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R15
      168 SETTABLEKS                       R26 R25 K43 ["render"]
      170 MOVE                             R26 R6
      171 DUPTABLE                         R27 K44 [{"Localization", "Stylizer", "FileController", "QueueController"}]
      172 SETTABLEKS                       R7 R27 K13 ["Localization"]
      174 SETTABLEKS                       R8 R27 K15 ["Stylizer"]
      176 SETTABLEKS                       R20 R27 K32 ["FileController"]
      178 SETTABLEKS                       R21 R27 K33 ["QueueController"]
      180 CALL                             R26 1 1
      181 MOVE                             R27 R25
      182 CALL                             R26 1 1
      183 MOVE                             R25 R26
      184 DUPCLOSURE                       R26 K45 [PROTO_4]
      185 CAPTURE                          VAL R19
      186 DUPCLOSURE                       R27 K46 [PROTO_5]
      187 GETTABLEKS                       R28 R3 K47 ["connect"]
      189 MOVE                             R29 R27
      190 MOVE                             R30 R26
      191 CALL                             R28 2 1
      192 MOVE                             R29 R25
      193 CALL                             R28 1 -1
      194 RETURN                           R28 -1
