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
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETTABLEKS                       R1 R0 K2 ["Analytics"]
        8 LOADK                            R3 K3 ["ImportQueueHalted"]
        9 NAMECALL                         R1 R1 K4 ["report"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K5 ["UploadController"]
       14 NAMECALL                         R1 R1 K6 ["cancelUpload"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K7 ["Parsing"]
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETTABLEKS                       R1 R0 K2 ["Analytics"]
       23 LOADK                            R3 K8 ["ImportQueueParseHalted"]
       24 NAMECALL                         R1 R1 K4 ["report"]
       26 CALL                             R1 2 0
       27 GETTABLEKS                       R1 R0 K9 ["QueueController"]
       29 NAMECALL                         R1 R1 K10 ["stopImportQueueParse"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K2 ["Analytics"]
       35 LOADK                            R3 K11 ["ImportQueueStarted"]
       36 GETTABLEKS                       R4 R0 K12 ["ActiveSessionCount"]
       38 NAMECALL                         R1 R1 K4 ["report"]
       40 CALL                             R1 3 0
       41 GETTABLEKS                       R1 R0 K5 ["UploadController"]
       43 NAMECALL                         R1 R1 K13 ["uploadQueue"]
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

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
       34 GETTABLEKS                       R7 R4 K13 ["Analytics"]
       36 GETTABLEKS                       R9 R3 K14 ["Style"]
       38 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       40 GETTABLEKS                       R9 R3 K16 ["Util"]
       42 GETTABLEKS                       R10 R9 K17 ["StyleModifier"]
       44 GETTABLEKS                       R11 R3 K18 ["UI"]
       46 GETTABLEKS                       R12 R11 K19 ["Pane"]
       48 GETTABLEKS                       R13 R11 K20 ["SearchBar"]
       50 GETTABLEKS                       R14 R11 K21 ["Button"]
       52 GETTABLEKS                       R15 R11 K22 ["IconButton"]
       54 GETTABLEKS                       R16 R11 K23 ["Tooltip"]
       56 GETIMPORT                        R17 K5 [require]
       58 GETTABLEKS                       R20 R0 K24 ["Src"]
       60 GETTABLEKS                       R19 R20 K25 ["Controllers"]
       62 GETTABLEKS                       R18 R19 K26 ["FileController"]
       64 CALL                             R17 1 1
       65 GETIMPORT                        R18 K5 [require]
       67 GETTABLEKS                       R21 R0 K24 ["Src"]
       69 GETTABLEKS                       R20 R21 K25 ["Controllers"]
       71 GETTABLEKS                       R19 R20 K27 ["QueueController"]
       73 CALL                             R18 1 1
       74 GETIMPORT                        R19 K5 [require]
       76 GETTABLEKS                       R22 R0 K24 ["Src"]
       78 GETTABLEKS                       R21 R22 K25 ["Controllers"]
       80 GETTABLEKS                       R20 R21 K28 ["UploadController"]
       82 CALL                             R19 1 1
       83 GETIMPORT                        R20 K5 [require]
       85 GETTABLEKS                       R23 R0 K24 ["Src"]
       87 GETTABLEKS                       R22 R23 K29 ["Actions"]
       89 GETTABLEKS                       R21 R22 K30 ["SetSearchTerm"]
       91 CALL                             R20 1 1
       92 GETIMPORT                        R21 K5 [require]
       94 GETTABLEKS                       R24 R0 K24 ["Src"]
       96 GETTABLEKS                       R23 R24 K29 ["Actions"]
       98 GETTABLEKS                       R22 R23 K31 ["SetShowWarning"]
      100 CALL                             R21 1 1
      101 GETTABLEKS                       R22 R1 K32 ["PureComponent"]
      103 LOADK                            R24 K33 ["QueueControls"]
      104 NAMECALL                         R22 R22 K34 ["extend"]
      106 CALL                             R22 2 1
      107 DUPCLOSURE                       R23 K35 [PROTO_4]
      108 SETTABLEKS                       R23 R22 K36 ["init"]
      110 DUPCLOSURE                       R23 K37 [PROTO_5]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R23 R22 K38 ["_createIconButton"]
      115 DUPCLOSURE                       R23 K39 [PROTO_6]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R16
      122 SETTABLEKS                       R23 R22 K40 ["render"]
      124 MOVE                             R23 R5
      125 DUPTABLE                         R24 K41 [{"FileController", "QueueController", "UploadController", "Analytics", "Localization", "Stylizer"}]
      126 SETTABLEKS                       R17 R24 K26 ["FileController"]
      128 SETTABLEKS                       R18 R24 K27 ["QueueController"]
      130 SETTABLEKS                       R19 R24 K28 ["UploadController"]
      132 SETTABLEKS                       R7 R24 K13 ["Analytics"]
      134 SETTABLEKS                       R6 R24 K12 ["Localization"]
      136 SETTABLEKS                       R8 R24 K15 ["Stylizer"]
      138 CALL                             R23 1 1
      139 MOVE                             R24 R22
      140 CALL                             R23 1 1
      141 MOVE                             R22 R23
      142 DUPCLOSURE                       R23 K42 [PROTO_7]
      143 DUPCLOSURE                       R24 K43 [PROTO_10]
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R21
      146 GETTABLEKS                       R25 R2 K44 ["connect"]
      148 MOVE                             R26 R23
      149 MOVE                             R27 R24
      150 CALL                             R25 2 1
      151 MOVE                             R26 R22
      152 CALL                             R25 1 -1
      153 RETURN                           R25 -1
