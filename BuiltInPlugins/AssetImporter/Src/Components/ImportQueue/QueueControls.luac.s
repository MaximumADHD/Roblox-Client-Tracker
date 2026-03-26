PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FileController"]
        5 NAMECALL                         R0 R0 K2 ["onPluginButtonClicked"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["QueueController"]
        5 NAMECALL                         R0 R0 K2 ["removeAllQueuedFiles"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Uploading"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K2 ["UploadController"]
        8 NAMECALL                         R1 R1 K3 ["cancelUpload"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K4 ["Parsing"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETTABLEKS                       R1 R0 K5 ["QueueController"]
       17 NAMECALL                         R1 R1 K6 ["stopImportQueueParse"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R1 R0 K2 ["UploadController"]
       23 NAMECALL                         R1 R1 K7 ["uploadQueue"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SetSearchTerm"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["openFile"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["cleanUp"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["startImport"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["onSearchRequested"]
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Stylizer"]
        4 GETTABLEKS                       R7 R5 K2 ["ImportQueue"]
        6 GETTABLEKS                       R6 R7 K3 ["IconButtonSize"]
        8 GETTABLEKS                       R8 R5 K4 ["Icons"]
       10 GETTABLEKS                       R7 R8 K5 ["SmallLength"]
       12 GETTABLEKS                       R9 R5 K2 ["ImportQueue"]
       14 GETTABLEKS                       R8 R9 K6 ["DisabledTransparancy"]
       16 GETTABLEKS                       R9 R4 K7 ["Uploading"]
       18 JUMPIF                           R9 ; [+2]
       19 GETTABLEKS                       R9 R4 K8 ["Parsing"]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K9 ["createElement"]
       24 GETUPVAL                         R11 1
       25 DUPTABLE                         R12 K17 [{"OnClick", "LeftIcon", "Size", "LayoutOrder", "Disabled", "TooltipText", "Style"}]
       26 SETTABLEKS                       R2 R12 K10 ["OnClick"]
       28 DUPTABLE                         R13 K20 [{"Image", "ImageTransparency", "Size"}]
       29 SETTABLEKS                       R1 R13 K18 ["Image"]
       31 JUMPIFNOT                        R9 ; [+2]
       32 MOVE                             R14 R8
       33 JUMP                             ; [+1]
       34 LOADN                            R14 0
       35 SETTABLEKS                       R14 R13 K19 ["ImageTransparency"]
       37 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       39 MOVE                             R15 R7
       40 MOVE                             R16 R7
       41 CALL                             R14 2 1
       42 SETTABLEKS                       R14 R13 K12 ["Size"]
       44 SETTABLEKS                       R13 R12 K11 ["LeftIcon"]
       46 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       48 MOVE                             R14 R6
       49 MOVE                             R15 R6
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K12 ["Size"]
       53 LOADN                            R13 2
       54 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       56 SETTABLEKS                       R9 R12 K14 ["Disabled"]
       58 ORK                              R13 R3 K24 []
       59 SETTABLEKS                       R13 R12 K15 ["TooltipText"]
       61 LOADK                            R13 K25 ["IconOnly"]
       62 SETTABLEKS                       R13 R12 K16 ["Style"]
       64 CALL                             R10 2 -1
       65 RETURN                           R10 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ActiveSessionCount"]
        4 GETTABLEKS                       R3 R1 K2 ["SessionCount"]
        6 GETTABLEKS                       R5 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R4 R5 K4 ["ImportQueue"]
       10 GETTABLEKS                       R5 R4 K5 ["Padding"]
       12 GETTABLEKS                       R6 R4 K6 ["ImportButtonWidth"]
       14 GETTABLEKS                       R7 R4 K7 ["IconButtonSize"]
       16 GETIMPORT                        R8 K10 [UDim2.new]
       18 LOADN                            R9 0
       19 MOVE                             R10 R6
       20 LOADN                            R11 1
       21 LOADN                            R12 0
       22 CALL                             R8 4 1
       23 MULK                             R11 R5 K11 [4]
       24 MULK                             R12 R7 K12 [2]
       25 ADD                              R10 R11 R12
       26 ADD                              R9 R10 R6
       27 GETTABLEKS                       R10 R1 K13 ["Uploading"]
       29 NOT                              R11 R10
       30 JUMPIFNOT                        R11 ; [+4]
       31 JUMPIFEQKN                       R2 K14 [0] ; [+2]
       33 LOADB                            R11 0 +1
       34 LOADB                            R11 1
       35 GETTABLEKS                       R12 R1 K15 ["Localization"]
       37 LOADK                            R15 K4 ["ImportQueue"]
       38 LOADK                            R16 K16 ["AddFile"]
       39 NAMECALL                         R13 R12 K17 ["getText"]
       41 CALL                             R13 3 1
       42 LOADK                            R16 K4 ["ImportQueue"]
       43 LOADK                            R17 K18 ["ClearQueue"]
       44 NAMECALL                         R14 R12 K17 ["getText"]
       46 CALL                             R14 3 1
       47 LOADK                            R17 K4 ["ImportQueue"]
       48 LOADK                            R18 K19 ["StartQueue2"]
       49 DUPTABLE                         R19 K22 [{"filesImporting", "totalFiles"}]
       50 FASTCALL1                        TOSTRING R2 ; [+3]
       51 MOVE                             R21 R2
       52 GETIMPORT                        R20 K24 [tostring]
       54 CALL                             R20 1 1
       55 SETTABLEKS                       R20 R19 K20 ["filesImporting"]
       57 FASTCALL1                        TOSTRING R3 ; [+3]
       58 MOVE                             R21 R3
       59 GETIMPORT                        R20 K24 [tostring]
       61 CALL                             R20 1 1
       62 SETTABLEKS                       R20 R19 K21 ["totalFiles"]
       64 NAMECALL                         R15 R12 K17 ["getText"]
       66 CALL                             R15 4 1
       67 LOADK                            R18 K25 ["Plugin"]
       68 LOADK                            R19 K26 ["Import"]
       69 NAMECALL                         R16 R12 K17 ["getText"]
       71 CALL                             R16 3 1
       72 JUMPIFNOT                        R10 ; [+6]
       73 LOADK                            R19 K4 ["ImportQueue"]
       74 LOADK                            R20 K27 ["StopQueue"]
       75 NAMECALL                         R17 R12 K17 ["getText"]
       77 CALL                             R17 3 1
       78 JUMP                             ; [+10]
       79 GETTABLEKS                       R18 R1 K28 ["Parsing"]
       81 JUMPIFNOT                        R18 ; [+6]
       82 LOADK                            R19 K4 ["ImportQueue"]
       83 LOADK                            R20 K29 ["StopParsing"]
       84 NAMECALL                         R17 R12 K17 ["getText"]
       86 CALL                             R17 3 1
       87 JUMP                             ; [+1]
       88 MOVE                             R17 R16
       89 GETTABLEKS                       R18 R1 K30 ["LayoutOrder"]
       91 GETUPVAL                         R20 0
       92 GETTABLEKS                       R19 R20 K31 ["createElement"]
       94 GETUPVAL                         R20 1
       95 DUPTABLE                         R21 K36 [{"Size", "LayoutOrder", "Layout", "Spacing", "Padding", "Style"}]
       96 GETTABLEKS                       R22 R1 K32 ["Size"]
       98 SETTABLEKS                       R22 R21 K32 ["Size"]
      100 SETTABLEKS                       R18 R21 K30 ["LayoutOrder"]
      102 GETIMPORT                        R22 K40 [Enum.FillDirection.Horizontal]
      104 SETTABLEKS                       R22 R21 K33 ["Layout"]
      106 SETTABLEKS                       R5 R21 K34 ["Spacing"]
      108 SETTABLEKS                       R5 R21 K5 ["Padding"]
      110 LOADK                            R22 K41 ["SubtleBox"]
      111 SETTABLEKS                       R22 R21 K35 ["Style"]
      113 DUPTABLE                         R22 K46 [{"OpenFileButton", "CleanupButton", "SearchBar", "StartImportButton"}]
      114 GETTABLEKS                       R25 R4 K47 ["OpenImage"]
      116 GETTABLEKS                       R26 R0 K48 ["openFile"]
      118 MOVE                             R27 R13
      119 NAMECALL                         R23 R0 K49 ["_createIconButton"]
      121 CALL                             R23 4 1
      122 SETTABLEKS                       R23 R22 K42 ["OpenFileButton"]
      124 GETTABLEKS                       R25 R4 K50 ["CleanupImage"]
      126 GETTABLEKS                       R26 R0 K51 ["cleanUp"]
      128 MOVE                             R27 R14
      129 NAMECALL                         R23 R0 K49 ["_createIconButton"]
      131 CALL                             R23 4 1
      132 SETTABLEKS                       R23 R22 K43 ["CleanupButton"]
      134 GETUPVAL                         R24 0
      135 GETTABLEKS                       R23 R24 K31 ["createElement"]
      137 GETUPVAL                         R24 2
      138 DUPTABLE                         R25 K56 [{"Size", "OnSearchRequested", "LayoutOrder", "ShowSearchIcon", "ShowSearchButton", "IncrementalTextSearch"}]
      139 GETIMPORT                        R26 K10 [UDim2.new]
      141 LOADN                            R27 1
      142 MINUS                            R28 R9
      143 LOADN                            R29 1
      144 LOADN                            R30 0
      145 CALL                             R26 4 1
      146 SETTABLEKS                       R26 R25 K32 ["Size"]
      148 GETTABLEKS                       R26 R0 K57 ["onSearchRequested"]
      150 SETTABLEKS                       R26 R25 K52 ["OnSearchRequested"]
      152 LOADN                            R26 3
      153 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      155 LOADB                            R26 1
      156 SETTABLEKS                       R26 R25 K53 ["ShowSearchIcon"]
      158 LOADB                            R26 0
      159 SETTABLEKS                       R26 R25 K54 ["ShowSearchButton"]
      161 LOADB                            R26 1
      162 SETTABLEKS                       R26 R25 K55 ["IncrementalTextSearch"]
      164 CALL                             R23 2 1
      165 SETTABLEKS                       R23 R22 K44 ["SearchBar"]
      167 GETUPVAL                         R24 0
      168 GETTABLEKS                       R23 R24 K31 ["createElement"]
      170 GETUPVAL                         R24 3
      171 DUPTABLE                         R25 K61 [{"OnClick", "Style", "Text", "Size", "StyleModifier", "LayoutOrder"}]
      172 GETTABLEKS                       R26 R0 K62 ["startImport"]
      174 SETTABLEKS                       R26 R25 K58 ["OnClick"]
      176 LOADK                            R26 K63 ["RoundPrimary"]
      177 SETTABLEKS                       R26 R25 K35 ["Style"]
      179 SETTABLEKS                       R17 R25 K59 ["Text"]
      181 SETTABLEKS                       R8 R25 K32 ["Size"]
      183 JUMPIFNOT                        R11 ; [+4]
      184 GETUPVAL                         R27 4
      185 GETTABLEKS                       R26 R27 K64 ["Disabled"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R26
      189 SETTABLEKS                       R26 R25 K60 ["StyleModifier"]
      191 LOADN                            R26 4
      192 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      194 DUPTABLE                         R26 K66 [{"Tooltip"}]
      195 JUMPIF                           R10 ; [+12]
      196 GETTABLEKS                       R28 R1 K28 ["Parsing"]
      198 JUMPIF                           R28 ; [+9]
      199 GETUPVAL                         R28 0
      200 GETTABLEKS                       R27 R28 K31 ["createElement"]
      202 GETUPVAL                         R28 5
      203 DUPTABLE                         R29 K67 [{"Text"}]
      204 SETTABLEKS                       R15 R29 K59 ["Text"]
      206 CALL                             R27 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R27
      209 SETTABLEKS                       R27 R26 K65 ["Tooltip"]
      211 CALL                             R23 3 1
      212 SETTABLEKS                       R23 R22 K45 ["StartImportButton"]
      214 CALL                             R19 3 -1
      215 RETURN                           R19 -1

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"ActiveSessionCount", "Parsing", "SessionCount", "SessionQueue", "Uploading"}]
        1 GETTABLEKS                       R3 R0 K6 ["Sessions"]
        3 GETTABLEKS                       R2 R3 K7 ["activeSessionCount"]
        5 SETTABLEKS                       R2 R1 K0 ["ActiveSessionCount"]
        7 GETTABLEKS                       R3 R0 K6 ["Sessions"]
        9 GETTABLEKS                       R2 R3 K8 ["parsing"]
       11 SETTABLEKS                       R2 R1 K1 ["Parsing"]
       13 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       15 GETTABLEKS                       R2 R3 K9 ["sessionCount"]
       17 SETTABLEKS                       R2 R1 K2 ["SessionCount"]
       19 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       21 GETTABLEKS                       R2 R3 K10 ["sessionQueue"]
       23 SETTABLEKS                       R2 R1 K3 ["SessionQueue"]
       25 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       27 GETTABLEKS                       R2 R3 K11 ["uploading"]
       29 SETTABLEKS                       R2 R1 K4 ["Uploading"]
       31 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"SetSearchTerm", "SetShowWarning"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSearchTerm"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetShowWarning"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R8 R3 K13 ["Style"]
       36 GETTABLEKS                       R7 R8 K14 ["Stylizer"]
       38 GETTABLEKS                       R8 R3 K15 ["Util"]
       40 GETTABLEKS                       R9 R8 K16 ["StyleModifier"]
       42 GETTABLEKS                       R10 R3 K17 ["UI"]
       44 GETTABLEKS                       R11 R10 K18 ["Pane"]
       46 GETTABLEKS                       R12 R10 K19 ["SearchBar"]
       48 GETTABLEKS                       R13 R10 K20 ["Button"]
       50 GETTABLEKS                       R14 R10 K21 ["IconButton"]
       52 GETTABLEKS                       R15 R10 K22 ["Tooltip"]
       54 GETIMPORT                        R16 K5 [require]
       56 GETTABLEKS                       R19 R0 K23 ["Src"]
       58 GETTABLEKS                       R18 R19 K24 ["Controllers"]
       60 GETTABLEKS                       R17 R18 K25 ["FileController"]
       62 CALL                             R16 1 1
       63 GETIMPORT                        R17 K5 [require]
       65 GETTABLEKS                       R20 R0 K23 ["Src"]
       67 GETTABLEKS                       R19 R20 K24 ["Controllers"]
       69 GETTABLEKS                       R18 R19 K26 ["QueueController"]
       71 CALL                             R17 1 1
       72 GETIMPORT                        R18 K5 [require]
       74 GETTABLEKS                       R21 R0 K23 ["Src"]
       76 GETTABLEKS                       R20 R21 K24 ["Controllers"]
       78 GETTABLEKS                       R19 R20 K27 ["UploadController"]
       80 CALL                             R18 1 1
       81 GETIMPORT                        R19 K5 [require]
       83 GETTABLEKS                       R22 R0 K23 ["Src"]
       85 GETTABLEKS                       R21 R22 K28 ["Actions"]
       87 GETTABLEKS                       R20 R21 K29 ["SetSearchTerm"]
       89 CALL                             R19 1 1
       90 GETIMPORT                        R20 K5 [require]
       92 GETTABLEKS                       R23 R0 K23 ["Src"]
       94 GETTABLEKS                       R22 R23 K28 ["Actions"]
       96 GETTABLEKS                       R21 R22 K30 ["SetShowWarning"]
       98 CALL                             R20 1 1
       99 GETTABLEKS                       R21 R1 K31 ["PureComponent"]
      101 LOADK                            R23 K32 ["QueueControls"]
      102 NAMECALL                         R21 R21 K33 ["extend"]
      104 CALL                             R21 2 1
      105 DUPCLOSURE                       R22 K34 [PROTO_4]
      106 SETTABLEKS                       R22 R21 K35 ["init"]
      108 DUPCLOSURE                       R22 K36 [PROTO_5]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 SETTABLEKS                       R22 R21 K37 ["_createIconButton"]
      113 DUPCLOSURE                       R22 K38 [PROTO_6]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R15
      120 SETTABLEKS                       R22 R21 K39 ["render"]
      122 MOVE                             R22 R5
      123 DUPTABLE                         R23 K40 [{"FileController", "QueueController", "UploadController", "Localization", "Stylizer"}]
      124 SETTABLEKS                       R16 R23 K25 ["FileController"]
      126 SETTABLEKS                       R17 R23 K26 ["QueueController"]
      128 SETTABLEKS                       R18 R23 K27 ["UploadController"]
      130 SETTABLEKS                       R6 R23 K12 ["Localization"]
      132 SETTABLEKS                       R7 R23 K14 ["Stylizer"]
      134 CALL                             R22 1 1
      135 MOVE                             R23 R21
      136 CALL                             R22 1 1
      137 MOVE                             R21 R22
      138 DUPCLOSURE                       R22 K41 [PROTO_7]
      139 DUPCLOSURE                       R23 K42 [PROTO_10]
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R20
      142 GETTABLEKS                       R24 R2 K43 ["connect"]
      144 MOVE                             R25 R22
      145 MOVE                             R26 R23
      146 CALL                             R24 2 1
      147 MOVE                             R25 R21
      148 CALL                             R24 1 -1
      149 RETURN                           R24 -1
