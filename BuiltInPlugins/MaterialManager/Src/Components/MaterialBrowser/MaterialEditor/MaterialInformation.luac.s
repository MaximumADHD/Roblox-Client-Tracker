PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Material"]
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R2 R1 K2 ["MaterialVariant"]
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETTABLEKS                       R2 R0 K3 ["GeneralServiceController"]
       11 GETTABLEKS                       R4 R1 K2 ["MaterialVariant"]
       13 NAMECALL                         R2 R2 K4 ["destroyWithUndo"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       18 LOADK                            R4 K6 ["deleteMaterialVariant"]
       19 NAMECALL                         R2 R2 K7 ["report"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Material"]
        5 JUMPIFNOT                        R1 ; [+36]
        6 GETTABLEKS                       R2 R1 K2 ["MaterialVariant"]
        8 JUMPIF                           R2 ; [+33]
        9 GETTABLEKS                       R2 R0 K3 ["GeneralServiceController"]
       11 GETTABLEKS                       R4 R1 K1 ["Material"]
       13 NAMECALL                         R2 R2 K4 ["createMaterialVariant"]
       15 CALL                             R2 2 1
       16 NEWTABLE                         R3 1 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R5 R1 K1 ["Material"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K5 ["BaseMaterial"]
       24 GETTABLEKS                       R4 R0 K6 ["Analytics"]
       26 LOADK                            R6 K7 ["newMaterialVariant"]
       27 MOVE                             R7 R3
       28 GETUPVAL                         R8 2
       29 NAMECALL                         R4 R4 K8 ["report"]
       31 CALL                             R4 4 0
       32 GETTABLEKS                       R4 R0 K6 ["Analytics"]
       34 LOADK                            R6 K9 ["newMaterialVariantCounter"]
       35 NAMECALL                         R4 R4 K8 ["report"]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R0 K10 ["dispatchSetMaterialVariant"]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Material"]
        5 JUMPIFNOT                        R1 ; [+28]
        6 GETTABLEKS                       R1 R0 K2 ["GeneralServiceController"]
        8 GETTABLEKS                       R3 R0 K1 ["Material"]
       10 GETTABLEKS                       R3 R3 K1 ["Material"]
       12 GETTABLEKS                       R5 R0 K1 ["Material"]
       14 GETTABLEKS                       R5 R5 K3 ["MaterialVariant"]
       16 JUMPIFNOT                        R5 ; [+7]
       17 GETTABLEKS                       R4 R0 K1 ["Material"]
       19 GETTABLEKS                       R4 R4 K3 ["MaterialVariant"]
       21 GETTABLEKS                       R4 R4 K4 ["Name"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 NAMECALL                         R1 R1 K5 ["ApplyToSelection"]
       27 CALL                             R1 3 0
       28 GETTABLEKS                       R1 R0 K6 ["Analytics"]
       30 LOADK                            R3 K7 ["applyToSelectionButton"]
       31 NAMECALL                         R1 R1 K8 ["report"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["delete"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["createVariant"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K2 ["applyToSelection"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialInformation"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["Material"]
       10 JUMPIF                           R4 ; [+6]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["createElement"]
       14 GETUPVAL                         R6 1
       15 CALL                             R5 1 -1
       16 RETURN                           R5 -1
       17 GETTABLEKS                       R6 R4 K6 ["MaterialVariant"]
       19 NOT                              R5 R6
       20 JUMPIFNOT                        R5 ; [+9]
       21 LOADK                            R8 K7 ["Materials"]
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R10 R4 K4 ["Material"]
       25 CALL                             R9 1 -1
       26 NAMECALL                         R6 R3 K8 ["getText"]
       28 CALL                             R6 -1 1
       29 JUMP                             ; [+4]
       30 GETTABLEKS                       R6 R4 K6 ["MaterialVariant"]
       32 GETTABLEKS                       R6 R6 K9 ["Name"]
       34 GETUPVAL                         R7 3
       35 MOVE                             R8 R4
       36 MOVE                             R9 R3
       37 CALL                             R7 2 1
       38 GETTABLEKS                       R8 R4 K10 ["MaterialPath"]
       40 NEWTABLE                         R9 0 0
       42 GETIMPORT                        R10 K12 [ipairs]
       44 MOVE                             R11 R8
       45 CALL                             R10 1 3
       46 FORGPREP_INEXT                   R10
       47 LOADK                            R17 K13 ["Categories"]
       48 MOVE                             R18 R14
       49 NAMECALL                         R15 R3 K8 ["getText"]
       51 CALL                             R15 3 1
       52 SETTABLE                         R15 R9 R13
       53 FORGLOOP                         R10 2 [inext] ; [-7]
       55 GETIMPORT                        R10 K16 [table.concat]
       57 MOVE                             R11 R9
       58 LOADK                            R12 K17 [" > "]
       59 CALL                             R10 2 1
       60 LOADN                            R11 1
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R14 R4 K4 ["Material"]
       64 GETTABLE                         R12 R13 R14
       65 JUMPIFNOT                        R12 ; [+1]
       66 LOADN                            R11 2
       67 GETIMPORT                        R12 K20 [UDim2.new]
       69 LOADN                            R13 1
       70 GETTABLEKS                       R16 R2 K21 ["ButtonSize"]
       72 GETTABLEKS                       R16 R16 K22 ["X"]
       74 GETTABLEKS                       R16 R16 K23 ["Offset"]
       76 MUL                              R15 R11 R16
       77 MINUS                            R14 R15
       78 LOADN                            R15 1
       79 LOADN                            R16 0
       80 CALL                             R12 4 1
       81 GETUPVAL                         R13 0
       82 GETTABLEKS                       R13 R13 K5 ["createElement"]
       84 GETUPVAL                         R14 1
       85 DUPTABLE                         R15 K28 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
       86 GETIMPORT                        R16 K31 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R16 R15 K24 ["AutomaticSize"]
       90 GETIMPORT                        R16 K34 [Enum.FillDirection.Vertical]
       92 SETTABLEKS                       R16 R15 K25 ["Layout"]
       94 GETTABLEKS                       R16 R1 K26 ["LayoutOrder"]
       96 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
       98 LOADN                            R16 10
       99 SETTABLEKS                       R16 R15 K27 ["Padding"]
      101 DUPTABLE                         R16 K38 [{"Title", "MaterialType", "Category"}]
      102 GETUPVAL                         R17 0
      103 GETTABLEKS                       R17 R17 K5 ["createElement"]
      105 GETUPVAL                         R18 1
      106 DUPTABLE                         R19 K40 [{"Layout", "LayoutOrder", "Size"}]
      107 GETIMPORT                        R20 K42 [Enum.FillDirection.Horizontal]
      109 SETTABLEKS                       R20 R19 K25 ["Layout"]
      111 LOADN                            R20 1
      112 SETTABLEKS                       R20 R19 K26 ["LayoutOrder"]
      114 GETTABLEKS                       R20 R2 K43 ["LabelRowSize"]
      116 SETTABLEKS                       R20 R19 K39 ["Size"]
      118 DUPTABLE                         R20 K47 [{"Name", "ApplyToSelection", "CreateVariant", "Delete"}]
      119 GETUPVAL                         R21 0
      120 GETTABLEKS                       R21 R21 K5 ["createElement"]
      122 GETUPVAL                         R22 5
      123 DUPTABLE                         R23 K52 [{"LayoutOrder", "Font", "Size", "Text", "TextSize", "TextXAlignment"}]
      124 LOADN                            R24 1
      125 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      127 GETTABLEKS                       R24 R2 K53 ["HeaderFont"]
      129 SETTABLEKS                       R24 R23 K48 ["Font"]
      131 SETTABLEKS                       R12 R23 K39 ["Size"]
      133 SETTABLEKS                       R6 R23 K49 ["Text"]
      135 GETTABLEKS                       R24 R2 K54 ["TitleTextSize"]
      137 SETTABLEKS                       R24 R23 K50 ["TextSize"]
      139 GETIMPORT                        R24 K56 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R24 R23 K51 ["TextXAlignment"]
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K9 ["Name"]
      146 GETUPVAL                         R21 0
      147 GETTABLEKS                       R21 R21 K5 ["createElement"]
      149 GETUPVAL                         R22 6
      150 DUPTABLE                         R23 K59 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      151 LOADN                            R24 2
      152 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      154 GETTABLEKS                       R24 R0 K60 ["applyToSelection"]
      156 SETTABLEKS                       R24 R23 K57 ["OnClick"]
      158 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      160 SETTABLEKS                       R24 R23 K39 ["Size"]
      162 GETTABLEKS                       R24 R2 K61 ["ButtonStyle"]
      164 SETTABLEKS                       R24 R23 K58 ["Style"]
      166 DUPTABLE                         R24 K64 [{"Image", "Tooltip"}]
      167 GETUPVAL                         R25 0
      168 GETTABLEKS                       R25 R25 K5 ["createElement"]
      170 GETUPVAL                         R26 7
      171 DUPTABLE                         R27 K66 [{"Style", "Size", "Position"}]
      172 GETTABLEKS                       R28 R2 K44 ["ApplyToSelection"]
      174 SETTABLEKS                       R28 R27 K58 ["Style"]
      176 GETTABLEKS                       R28 R2 K67 ["ImageSize"]
      178 SETTABLEKS                       R28 R27 K39 ["Size"]
      180 GETTABLEKS                       R28 R2 K68 ["ImagePosition"]
      182 SETTABLEKS                       R28 R27 K65 ["Position"]
      184 CALL                             R25 2 1
      185 SETTABLEKS                       R25 R24 K62 ["Image"]
      187 GETUPVAL                         R25 0
      188 GETTABLEKS                       R25 R25 K5 ["createElement"]
      190 GETUPVAL                         R26 8
      191 DUPTABLE                         R27 K69 [{"Text"}]
      192 LOADK                            R30 K70 ["TopBar"]
      193 LOADK                            R31 K71 ["Apply"]
      194 NAMECALL                         R28 R3 K8 ["getText"]
      196 CALL                             R28 3 1
      197 SETTABLEKS                       R28 R27 K49 ["Text"]
      199 CALL                             R25 2 1
      200 SETTABLEKS                       R25 R24 K63 ["Tooltip"]
      202 CALL                             R21 3 1
      203 SETTABLEKS                       R21 R20 K44 ["ApplyToSelection"]
      205 JUMPIFNOT                        R5 ; [+63]
      206 GETUPVAL                         R23 4
      207 GETTABLEKS                       R24 R4 K4 ["Material"]
      209 GETTABLE                         R22 R23 R24
      210 JUMPIFNOT                        R22 ; [+58]
      211 GETUPVAL                         R21 0
      212 GETTABLEKS                       R21 R21 K5 ["createElement"]
      214 GETUPVAL                         R22 6
      215 DUPTABLE                         R23 K59 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      216 LOADN                            R24 3
      217 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      219 GETTABLEKS                       R24 R0 K72 ["createVariant"]
      221 SETTABLEKS                       R24 R23 K57 ["OnClick"]
      223 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      225 SETTABLEKS                       R24 R23 K39 ["Size"]
      227 GETTABLEKS                       R24 R2 K61 ["ButtonStyle"]
      229 SETTABLEKS                       R24 R23 K58 ["Style"]
      231 DUPTABLE                         R24 K64 [{"Image", "Tooltip"}]
      232 GETUPVAL                         R25 0
      233 GETTABLEKS                       R25 R25 K5 ["createElement"]
      235 GETUPVAL                         R26 7
      236 DUPTABLE                         R27 K66 [{"Style", "Size", "Position"}]
      237 GETTABLEKS                       R28 R2 K45 ["CreateVariant"]
      239 SETTABLEKS                       R28 R27 K58 ["Style"]
      241 GETTABLEKS                       R28 R2 K67 ["ImageSize"]
      243 SETTABLEKS                       R28 R27 K39 ["Size"]
      245 GETTABLEKS                       R28 R2 K68 ["ImagePosition"]
      247 SETTABLEKS                       R28 R27 K65 ["Position"]
      249 CALL                             R25 2 1
      250 SETTABLEKS                       R25 R24 K62 ["Image"]
      252 GETUPVAL                         R25 0
      253 GETTABLEKS                       R25 R25 K5 ["createElement"]
      255 GETUPVAL                         R26 8
      256 DUPTABLE                         R27 K69 [{"Text"}]
      257 LOADK                            R30 K2 ["MaterialInformation"]
      258 LOADK                            R31 K45 ["CreateVariant"]
      259 NAMECALL                         R28 R3 K8 ["getText"]
      261 CALL                             R28 3 1
      262 SETTABLEKS                       R28 R27 K49 ["Text"]
      264 CALL                             R25 2 1
      265 SETTABLEKS                       R25 R24 K63 ["Tooltip"]
      267 CALL                             R21 3 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R21
      270 SETTABLEKS                       R21 R20 K45 ["CreateVariant"]
      272 JUMPIF                           R5 ; [+58]
      273 GETUPVAL                         R21 0
      274 GETTABLEKS                       R21 R21 K5 ["createElement"]
      276 GETUPVAL                         R22 6
      277 DUPTABLE                         R23 K59 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      278 LOADN                            R24 3
      279 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      281 GETTABLEKS                       R24 R0 K73 ["delete"]
      283 SETTABLEKS                       R24 R23 K57 ["OnClick"]
      285 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      287 SETTABLEKS                       R24 R23 K39 ["Size"]
      289 GETTABLEKS                       R24 R2 K61 ["ButtonStyle"]
      291 SETTABLEKS                       R24 R23 K58 ["Style"]
      293 DUPTABLE                         R24 K64 [{"Image", "Tooltip"}]
      294 GETUPVAL                         R25 0
      295 GETTABLEKS                       R25 R25 K5 ["createElement"]
      297 GETUPVAL                         R26 7
      298 DUPTABLE                         R27 K66 [{"Style", "Size", "Position"}]
      299 GETTABLEKS                       R28 R2 K46 ["Delete"]
      301 SETTABLEKS                       R28 R27 K58 ["Style"]
      303 GETTABLEKS                       R28 R2 K67 ["ImageSize"]
      305 SETTABLEKS                       R28 R27 K39 ["Size"]
      307 GETTABLEKS                       R28 R2 K68 ["ImagePosition"]
      309 SETTABLEKS                       R28 R27 K65 ["Position"]
      311 CALL                             R25 2 1
      312 SETTABLEKS                       R25 R24 K62 ["Image"]
      314 GETUPVAL                         R25 0
      315 GETTABLEKS                       R25 R25 K5 ["createElement"]
      317 GETUPVAL                         R26 8
      318 DUPTABLE                         R27 K69 [{"Text"}]
      319 LOADK                            R30 K2 ["MaterialInformation"]
      320 LOADK                            R31 K46 ["Delete"]
      321 NAMECALL                         R28 R3 K8 ["getText"]
      323 CALL                             R28 3 1
      324 SETTABLEKS                       R28 R27 K49 ["Text"]
      326 CALL                             R25 2 1
      327 SETTABLEKS                       R25 R24 K63 ["Tooltip"]
      329 CALL                             R21 3 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R21
      332 SETTABLEKS                       R21 R20 K46 ["Delete"]
      334 CALL                             R17 3 1
      335 SETTABLEKS                       R17 R16 K35 ["Title"]
      337 GETUPVAL                         R17 0
      338 GETTABLEKS                       R17 R17 K5 ["createElement"]
      340 GETUPVAL                         R18 5
      341 DUPTABLE                         R19 K74 [{"LayoutOrder", "Size", "Text", "TextXAlignment"}]
      342 LOADN                            R20 2
      343 SETTABLEKS                       R20 R19 K26 ["LayoutOrder"]
      345 GETTABLEKS                       R20 R2 K43 ["LabelRowSize"]
      347 SETTABLEKS                       R20 R19 K39 ["Size"]
      349 SETTABLEKS                       R7 R19 K49 ["Text"]
      351 GETIMPORT                        R20 K56 [Enum.TextXAlignment.Left]
      353 SETTABLEKS                       R20 R19 K51 ["TextXAlignment"]
      355 CALL                             R17 2 1
      356 SETTABLEKS                       R17 R16 K36 ["MaterialType"]
      358 GETUPVAL                         R17 0
      359 GETTABLEKS                       R17 R17 K5 ["createElement"]
      361 GETUPVAL                         R18 5
      362 DUPTABLE                         R19 K74 [{"LayoutOrder", "Size", "Text", "TextXAlignment"}]
      363 LOADN                            R20 3
      364 SETTABLEKS                       R20 R19 K26 ["LayoutOrder"]
      366 GETTABLEKS                       R20 R2 K43 ["LabelRowSize"]
      368 SETTABLEKS                       R20 R19 K39 ["Size"]
      370 SETTABLEKS                       R10 R19 K49 ["Text"]
      372 GETIMPORT                        R20 K56 [Enum.TextXAlignment.Left]
      374 SETTABLEKS                       R20 R19 K51 ["TextXAlignment"]
      376 CALL                             R17 2 1
      377 SETTABLEKS                       R17 R16 K37 ["Category"]
      379 CALL                             R13 3 -1
      380 RETURN                           R13 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"Material"}]
        1 GETTABLEKS                       R3 R1 K2 ["MaterialMock"]
        3 JUMPIF                           R3 ; [+4]
        4 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R3 R3 K0 ["Material"]
        8 SETTABLEKS                       R3 R2 K0 ["Material"]
       10 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMaterialVariant"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMaterialVariant"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["withContext"]
       45 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       47 GETTABLEKS                       R8 R5 K14 ["Localization"]
       49 GETTABLEKS                       R9 R4 K15 ["Style"]
       51 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       53 GETTABLEKS                       R10 R4 K17 ["UI"]
       55 GETTABLEKS                       R11 R10 K18 ["Button"]
       57 GETTABLEKS                       R12 R10 K19 ["Image"]
       59 GETTABLEKS                       R13 R10 K20 ["Pane"]
       61 GETTABLEKS                       R14 R10 K21 ["Tooltip"]
       63 GETTABLEKS                       R15 R10 K22 ["TruncatedTextLabel"]
       65 GETIMPORT                        R16 K4 [require]
       67 GETTABLEKS                       R17 R0 K5 ["Src"]
       69 GETTABLEKS                       R17 R17 K23 ["Controllers"]
       71 GETTABLEKS                       R17 R17 K24 ["GeneralServiceController"]
       73 CALL                             R16 1 1
       74 GETIMPORT                        R17 K4 [require]
       76 GETTABLEKS                       R18 R0 K5 ["Src"]
       78 GETTABLEKS                       R18 R18 K25 ["Reducers"]
       80 GETTABLEKS                       R18 R18 K26 ["MainReducer"]
       82 CALL                             R17 1 1
       83 GETTABLEKS                       R18 R0 K5 ["Src"]
       85 GETTABLEKS                       R18 R18 K27 ["Actions"]
       87 GETIMPORT                        R19 K4 [require]
       89 GETTABLEKS                       R20 R18 K28 ["SetMaterialVariant"]
       91 CALL                             R19 1 1
       92 GETTABLEKS                       R20 R0 K5 ["Src"]
       94 GETTABLEKS                       R20 R20 K29 ["Resources"]
       96 GETTABLEKS                       R20 R20 K30 ["Constants"]
       98 GETIMPORT                        R21 K4 [require]
      100 GETTABLEKS                       R22 R20 K31 ["getFullMaterialType"]
      102 CALL                             R21 1 1
      103 GETIMPORT                        R22 K4 [require]
      105 GETTABLEKS                       R23 R20 K32 ["getMaterialName"]
      107 CALL                             R22 1 1
      108 GETIMPORT                        R23 K4 [require]
      110 GETTABLEKS                       R24 R20 K33 ["getSupportedMaterials"]
      112 CALL                             R23 1 1
      113 GETIMPORT                        R24 K35 [game]
      115 LOADK                            R26 K36 ["InfluxReportMaterialManagerHundrethPercent2"]
      116 NAMECALL                         R24 R24 K37 ["GetFastInt"]
      118 CALL                             R24 2 1
      119 MOVE                             R25 R23
      120 CALL                             R25 0 1
      121 GETTABLEKS                       R26 R2 K38 ["PureComponent"]
      123 LOADK                            R28 K39 ["MaterialInformation"]
      124 NAMECALL                         R26 R26 K40 ["extend"]
      126 CALL                             R26 2 1
      127 DUPCLOSURE                       R27 K41 [PROTO_3]
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R24
      130 SETTABLEKS                       R27 R26 K42 ["init"]
      132 DUPCLOSURE                       R27 K43 [PROTO_4]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R25
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R14
      142 SETTABLEKS                       R27 R26 K44 ["render"]
      144 MOVE                             R27 R6
      145 DUPTABLE                         R28 K45 [{"Analytics", "GeneralServiceController", "Localization", "Stylizer"}]
      146 SETTABLEKS                       R7 R28 K13 ["Analytics"]
      148 SETTABLEKS                       R16 R28 K24 ["GeneralServiceController"]
      150 SETTABLEKS                       R8 R28 K14 ["Localization"]
      152 SETTABLEKS                       R9 R28 K16 ["Stylizer"]
      154 CALL                             R27 1 1
      155 MOVE                             R28 R26
      156 CALL                             R27 1 1
      157 MOVE                             R26 R27
      158 GETTABLEKS                       R27 R3 K46 ["connect"]
      160 DUPCLOSURE                       R28 K47 [PROTO_5]
      161 DUPCLOSURE                       R29 K48 [PROTO_7]
      162 CAPTURE                          VAL R19
      163 CALL                             R27 2 1
      164 MOVE                             R28 R26
      165 CALL                             R27 1 -1
      166 RETURN                           R27 -1
