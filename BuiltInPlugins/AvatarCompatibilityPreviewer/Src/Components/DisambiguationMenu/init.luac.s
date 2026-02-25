PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["meshPart"]
        8 GETUPVAL                         R2 0
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K3 [{"createdInstance", "palette", "worldModel"}]
        1 GETTABLEKS                       R4 R0 K4 ["instances"]
        3 GETTABLE                         R3 R4 R1
        4 SETTABLEKS                       R3 R2 K0 ["createdInstance"]
        6 SETTABLEKS                       R1 R2 K1 ["palette"]
        8 GETTABLEKS                       R3 R0 K2 ["worldModel"]
       10 SETTABLEKS                       R3 R2 K2 ["worldModel"]
       12 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["cancel"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["close"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["collectArray"]
       10 GETUPVAL                         R2 2
       11 DUPCLOSURE                       R3 K3 [PROTO_2]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K4 ["assign"]
       16 MOVE                             R3 R1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["values"]
       20 GETUPVAL                         R5 3
       21 CALL                             R4 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"key", "AmbiguousAsset", "LayoutOrder", "AssignedPalette", "SetAssignedPalette"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R6 R0 K7 ["worldModel"]
        8 GETTABLEKS                       R5 R6 K8 ["Name"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["key"]
       13 SETTABLEKS                       R0 R3 K2 ["AmbiguousAsset"]
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R4 R4 K9 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 GETUPVAL                         R5 4
       22 GETTABLE                         R4 R5 R0
       23 SETTABLEKS                       R4 R3 K4 ["AssignedPalette"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R3 K5 ["SetAssignedPalette"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"key", "Assignment", "LayoutOrder", "MeshPart", "SetAssignment"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R5 R0 K7 ["Name"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["key"]
       11 GETUPVAL                         R5 3
       12 GETTABLE                         R4 R5 R0
       13 SETTABLEKS                       R4 R3 K2 ["Assignment"]
       15 GETUPVAL                         R4 4
       16 NAMECALL                         R4 R4 K8 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 SETTABLEKS                       R0 R3 K4 ["MeshPart"]
       23 GETUPVAL                         R4 5
       24 SETTABLEKS                       R4 R3 K5 ["SetAssignment"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["useState"]
       16 LOADN                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K3 ["useState"]
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R8 R9 K3 ["useState"]
       27 NEWTABLE                         R9 0 0
       29 CALL                             R8 1 2
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R9
       35 NEWTABLE                         R12 0 0
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 4
       39 CALL                             R11 0 1
       40 JUMPIFNOT                        R11 ; [+9]
       41 GETUPVAL                         R11 5
       42 DUPTABLE                         R12 K7 [{"loneMeshParts", "addLoneMeshPartAssignment"}]
       43 GETTABLEKS                       R13 R0 K5 ["loneMeshParts"]
       45 SETTABLEKS                       R13 R12 K5 ["loneMeshParts"]
       47 SETTABLEKS                       R10 R12 K6 ["addLoneMeshPartAssignment"]
       49 CALL                             R11 1 0
       50 LOADB                            R11 1
       51 GETTABLEKS                       R12 R0 K8 ["ambiguousAssets"]
       53 LOADNIL                          R13
       54 LOADNIL                          R14
       55 FORGPREP                         R12
       56 GETTABLE                         R17 R6 R16
       57 JUMPIFNOTEQKNIL                  R17 ; [+3]
       59 LOADB                            R11 0
       60 JUMP                             ; [+2]
       61 FORGLOOP                         R12 2 ; [-6]
       63 JUMPIFNOT                        R11 ; [+12]
       64 GETTABLEKS                       R12 R0 K5 ["loneMeshParts"]
       66 LOADNIL                          R13
       67 LOADNIL                          R14
       68 FORGPREP                         R12
       69 GETTABLE                         R17 R8 R16
       70 JUMPIFNOTEQKNIL                  R17 ; [+3]
       72 LOADB                            R11 0
       73 JUMP                             ; [+2]
       74 FORGLOOP                         R12 2 ; [-6]
       76 GETUPVAL                         R12 6
       77 CALL                             R12 0 1
       78 GETUPVAL                         R14 3
       79 GETTABLEKS                       R13 R14 K9 ["createElement"]
       81 GETUPVAL                         R14 7
       82 DUPTABLE                         R15 K17 [{"Style", "Title", "MinContentSize", "Modal", "Buttons", "OnButtonPressed", "OnClose"}]
       83 LOADK                            R16 K18 ["CancelAccept"]
       84 SETTABLEKS                       R16 R15 K10 ["Style"]
       86 LOADK                            R18 K1 ["DisambiguationMenu"]
       87 LOADK                            R19 K11 ["Title"]
       88 NAMECALL                         R16 R1 K19 ["getText"]
       90 CALL                             R16 3 1
       91 SETTABLEKS                       R16 R15 K11 ["Title"]
       93 GETTABLEKS                       R16 R2 K12 ["MinContentSize"]
       95 SETTABLEKS                       R16 R15 K12 ["MinContentSize"]
       97 GETUPVAL                         R16 8
       98 SETTABLEKS                       R16 R15 K13 ["Modal"]
      100 NEWTABLE                         R16 0 2
      102 DUPTABLE                         R17 K22 [{"Key", "Text"}]
      103 LOADK                            R18 K23 ["cancel"]
      104 SETTABLEKS                       R18 R17 K20 ["Key"]
      106 LOADK                            R20 K1 ["DisambiguationMenu"]
      107 LOADK                            R21 K24 ["Cancel"]
      108 NAMECALL                         R18 R1 K19 ["getText"]
      110 CALL                             R18 3 1
      111 SETTABLEKS                       R18 R17 K21 ["Text"]
      113 DUPTABLE                         R18 K26 [{"Key", "Text", "StyleModifier"}]
      114 LOADK                            R19 K27 ["ok"]
      115 SETTABLEKS                       R19 R18 K20 ["Key"]
      117 LOADK                            R21 K1 ["DisambiguationMenu"]
      118 LOADK                            R22 K28 ["OK"]
      119 NAMECALL                         R19 R1 K19 ["getText"]
      121 CALL                             R19 3 1
      122 SETTABLEKS                       R19 R18 K21 ["Text"]
      124 JUMPIFNOT                        R11 ; [+2]
      125 LOADNIL                          R19
      126 JUMP                             ; [+3]
      127 GETUPVAL                         R20 9
      128 GETTABLEKS                       R19 R20 K29 ["Disabled"]
      130 SETTABLEKS                       R19 R18 K25 ["StyleModifier"]
      132 SETLIST                          R16 R17 2 [1]
      134 SETTABLEKS                       R16 R15 K14 ["Buttons"]
      136 NEWCLOSURE                       R16 P1
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U10
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R16 R15 K15 ["OnButtonPressed"]
      143 GETTABLEKS                       R16 R0 K30 ["close"]
      145 SETTABLEKS                       R16 R15 K16 ["OnClose"]
      147 GETUPVAL                         R17 3
      148 GETTABLEKS                       R16 R17 K9 ["createElement"]
      150 GETUPVAL                         R17 11
      151 DUPTABLE                         R18 K33 [{"Layout", "Spacing"}]
      152 GETIMPORT                        R19 K37 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R19 R18 K31 ["Layout"]
      156 GETTABLEKS                       R19 R2 K38 ["TitleContentsSpacing"]
      158 SETTABLEKS                       R19 R18 K32 ["Spacing"]
      160 DUPTABLE                         R19 K41 [{"CallToAction", "Contents"}]
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R20 R21 K9 ["createElement"]
      164 GETUPVAL                         R21 12
      165 NEWTABLE                         R22 16 0
      167 GETIMPORT                        R23 K44 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R23 R22 K42 ["AutomaticSize"]
      171 LOADK                            R25 K1 ["DisambiguationMenu"]
      172 LOADK                            R26 K39 ["CallToAction"]
      173 NAMECALL                         R23 R1 K19 ["getText"]
      175 CALL                             R23 3 1
      176 SETTABLEKS                       R23 R22 K21 ["Text"]
      178 GETIMPORT                        R23 K47 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R23 R22 K45 ["TextXAlignment"]
      182 GETIMPORT                        R23 K50 [Enum.TextYAlignment.Top]
      184 SETTABLEKS                       R23 R22 K48 ["TextYAlignment"]
      186 LOADB                            R23 1
      187 SETTABLEKS                       R23 R22 K51 ["TextWrapped"]
      189 GETIMPORT                        R23 K54 [UDim2.fromScale]
      191 LOADN                            R24 1
      192 LOADN                            R25 0
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K55 ["Size"]
      196 LOADK                            R23 K11 ["Title"]
      197 SETTABLEKS                       R23 R22 K10 ["Style"]
      199 NAMECALL                         R23 R3 K56 ["getNextOrder"]
      201 CALL                             R23 1 1
      202 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      204 GETUPVAL                         R25 3
      205 GETTABLEKS                       R24 R25 K58 ["Change"]
      207 GETTABLEKS                       R23 R24 K59 ["AbsoluteSize"]
      209 NEWCLOSURE                       R24 P2
      210 CAPTURE                          VAL R5
      211 SETTABLE                         R24 R22 R23
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K39 ["CallToAction"]
      215 GETUPVAL                         R21 3
      216 GETTABLEKS                       R20 R21 K9 ["createElement"]
      218 GETUPVAL                         R21 13
      219 DUPTABLE                         R22 K61 [{"AutomaticCanvasSize", "Size", "LayoutOrder", "Layout", "Spacing"}]
      220 GETIMPORT                        R23 K44 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R23 R22 K60 ["AutomaticCanvasSize"]
      224 GETIMPORT                        R23 K62 [UDim2.new]
      226 LOADN                            R24 1
      227 LOADN                            R25 0
      228 LOADN                            R26 1
      229 GETTABLEKS                       R29 R2 K38 ["TitleContentsSpacing"]
      231 ADD                              R28 R4 R29
      232 MINUS                            R27 R28
      233 CALL                             R23 4 1
      234 SETTABLEKS                       R23 R22 K55 ["Size"]
      236 NAMECALL                         R23 R3 K56 ["getNextOrder"]
      238 CALL                             R23 1 1
      239 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      241 GETIMPORT                        R23 K37 [Enum.FillDirection.Vertical]
      243 SETTABLEKS                       R23 R22 K31 ["Layout"]
      245 GETIMPORT                        R23 K64 [UDim.new]
      247 LOADN                            R24 0
      248 GETTABLEKS                       R25 R2 K65 ["VerticalSpacing"]
      250 CALL                             R23 2 1
      251 SETTABLEKS                       R23 R22 K32 ["Spacing"]
      253 GETUPVAL                         R24 10
      254 GETTABLEKS                       R23 R24 K66 ["map"]
      256 GETTABLEKS                       R24 R0 K8 ["ambiguousAssets"]
      258 NEWCLOSURE                       R25 P3
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          UPVAL U14
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R7
      265 CALL                             R23 2 1
      266 GETTABLEKS                       R26 R0 K5 ["loneMeshParts"]
      268 LENGTH                           R25 R26
      269 LOADN                            R26 0
      270 JUMPIFNOTLT                      R26 R25 ; [+19]
      272 GETTABLEKS                       R26 R0 K8 ["ambiguousAssets"]
      274 LENGTH                           R25 R26
      275 LOADN                            R26 0
      276 JUMPIFNOTLT                      R26 R25 ; [+13]
      278 GETUPVAL                         R25 3
      279 GETTABLEKS                       R24 R25 K9 ["createElement"]
      281 GETUPVAL                         R25 15
      282 DUPTABLE                         R26 K67 [{"LayoutOrder"}]
      283 NAMECALL                         R27 R3 K56 ["getNextOrder"]
      285 CALL                             R27 1 1
      286 SETTABLEKS                       R27 R26 K57 ["LayoutOrder"]
      288 CALL                             R24 2 1
      289 JUMP                             ; [+1]
      290 LOADNIL                          R24
      291 GETUPVAL                         R26 10
      292 GETTABLEKS                       R25 R26 K66 ["map"]
      294 GETTABLEKS                       R26 R0 K5 ["loneMeshParts"]
      296 NEWCLOSURE                       R27 P4
      297 CAPTURE                          UPVAL U3
      298 CAPTURE                          UPVAL U16
      299 CAPTURE                          VAL R12
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R10
      303 CALL                             R25 2 -1
      304 CALL                             R20 -1 1
      305 SETTABLEKS                       R20 R19 K40 ["Contents"]
      307 CALL                             R16 3 -1
      308 CALL                             R13 -1 -1
      309 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["AmbiguousAssetEntry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["LoneMeshPartEntry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R8 R9 K13 ["Resources"]
       48 GETTABLEKS                       R7 R8 K14 ["Theme"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Src"]
       55 GETTABLEKS                       R8 R9 K15 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K12 ["Src"]
       62 GETTABLEKS                       R10 R11 K16 ["Util"]
       64 GETTABLEKS                       R9 R10 K17 ["createUniqueKey"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K12 ["Src"]
       71 GETTABLEKS                       R11 R12 K18 ["Flags"]
       73 GETTABLEKS                       R10 R11 K19 ["getFFlagFixLayeredClothingAssignment"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R14 R0 K12 ["Src"]
       80 GETTABLEKS                       R13 R14 K20 ["Components"]
       82 GETTABLEKS                       R12 R13 K21 ["DisambiguationMenu"]
       84 GETTABLEKS                       R11 R12 K22 ["useInferLoneMeshPartAssignment"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K24 [game]
       89 LOADK                            R13 K25 ["FFlagAvatarPreviewerDisambiguationMenuModal"]
       90 LOADB                            R14 0
       91 NAMECALL                         R11 R11 K26 ["DefineFastFlag"]
       93 CALL                             R11 3 1
       94 GETTABLEKS                       R12 R3 K27 ["UI"]
       96 GETTABLEKS                       R13 R12 K28 ["Pane"]
       98 GETTABLEKS                       R14 R12 K29 ["ScrollingFrame"]
      100 GETTABLEKS                       R15 R12 K30 ["Separator"]
      102 GETTABLEKS                       R16 R12 K31 ["StyledDialog"]
      104 GETTABLEKS                       R17 R12 K32 ["TextLabel"]
      106 GETTABLEKS                       R19 R3 K33 ["ContextServices"]
      108 GETTABLEKS                       R18 R19 K34 ["Localization"]
      110 GETTABLEKS                       R20 R3 K33 ["ContextServices"]
      112 GETTABLEKS                       R19 R20 K35 ["Stylizer"]
      114 GETTABLEKS                       R21 R3 K16 ["Util"]
      116 GETTABLEKS                       R20 R21 K36 ["LayoutOrderIterator"]
      118 GETTABLEKS                       R22 R3 K16 ["Util"]
      120 GETTABLEKS                       R21 R22 K37 ["StyleModifier"]
      122 DUPCLOSURE                       R22 K38 [PROTO_9]
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R4
      140 RETURN                           R22 1
