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
       85 DUPTABLE                         R15 K29 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Padding"] = 10}]
       86 GETIMPORT                        R16 K32 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R16 R15 K24 ["AutomaticSize"]
       90 GETIMPORT                        R16 K35 [Enum.FillDirection.Vertical]
       92 SETTABLEKS                       R16 R15 K25 ["Layout"]
       94 GETTABLEKS                       R16 R1 K26 ["LayoutOrder"]
       96 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
       98 DUPTABLE                         R16 K39 [{"Title", "MaterialType", "Category"}]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K5 ["createElement"]
      102 GETUPVAL                         R18 1
      103 DUPTABLE                         R19 K42 [{["Layout"], ["LayoutOrder"] = 1, ["Size"]}]
      104 GETIMPORT                        R20 K44 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R20 R19 K25 ["Layout"]
      108 GETTABLEKS                       R20 R2 K45 ["LabelRowSize"]
      110 SETTABLEKS                       R20 R19 K41 ["Size"]
      112 DUPTABLE                         R20 K49 [{"Name", "ApplyToSelection", "CreateVariant", "Delete"}]
      113 GETUPVAL                         R21 0
      114 GETTABLEKS                       R21 R21 K5 ["createElement"]
      116 GETUPVAL                         R22 5
      117 DUPTABLE                         R23 K54 [{["LayoutOrder"] = 1, ["Font"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"]}]
      118 GETTABLEKS                       R24 R2 K55 ["HeaderFont"]
      120 SETTABLEKS                       R24 R23 K50 ["Font"]
      122 SETTABLEKS                       R12 R23 K41 ["Size"]
      124 SETTABLEKS                       R6 R23 K51 ["Text"]
      126 GETTABLEKS                       R24 R2 K56 ["TitleTextSize"]
      128 SETTABLEKS                       R24 R23 K52 ["TextSize"]
      130 GETIMPORT                        R24 K58 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R24 R23 K53 ["TextXAlignment"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K9 ["Name"]
      137 GETUPVAL                         R21 0
      138 GETTABLEKS                       R21 R21 K5 ["createElement"]
      140 GETUPVAL                         R22 6
      141 DUPTABLE                         R23 K62 [{["LayoutOrder"] = 2, ["OnClick"], ["Size"], ["Style"]}]
      142 GETTABLEKS                       R24 R0 K63 ["applyToSelection"]
      144 SETTABLEKS                       R24 R23 K60 ["OnClick"]
      146 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      148 SETTABLEKS                       R24 R23 K41 ["Size"]
      150 GETTABLEKS                       R24 R2 K64 ["ButtonStyle"]
      152 SETTABLEKS                       R24 R23 K61 ["Style"]
      154 DUPTABLE                         R24 K67 [{"Image", "Tooltip"}]
      155 GETUPVAL                         R25 0
      156 GETTABLEKS                       R25 R25 K5 ["createElement"]
      158 GETUPVAL                         R26 7
      159 DUPTABLE                         R27 K69 [{"Style", "Size", "Position"}]
      160 GETTABLEKS                       R28 R2 K46 ["ApplyToSelection"]
      162 SETTABLEKS                       R28 R27 K61 ["Style"]
      164 GETTABLEKS                       R28 R2 K70 ["ImageSize"]
      166 SETTABLEKS                       R28 R27 K41 ["Size"]
      168 GETTABLEKS                       R28 R2 K71 ["ImagePosition"]
      170 SETTABLEKS                       R28 R27 K68 ["Position"]
      172 CALL                             R25 2 1
      173 SETTABLEKS                       R25 R24 K65 ["Image"]
      175 GETUPVAL                         R25 0
      176 GETTABLEKS                       R25 R25 K5 ["createElement"]
      178 GETUPVAL                         R26 8
      179 DUPTABLE                         R27 K72 [{"Text"}]
      180 LOADK                            R30 K73 ["TopBar"]
      181 LOADK                            R31 K74 ["Apply"]
      182 NAMECALL                         R28 R3 K8 ["getText"]
      184 CALL                             R28 3 1
      185 SETTABLEKS                       R28 R27 K51 ["Text"]
      187 CALL                             R25 2 1
      188 SETTABLEKS                       R25 R24 K66 ["Tooltip"]
      190 CALL                             R21 3 1
      191 SETTABLEKS                       R21 R20 K46 ["ApplyToSelection"]
      193 JUMPIFNOT                        R5 ; [+60]
      194 GETUPVAL                         R23 4
      195 GETTABLEKS                       R24 R4 K4 ["Material"]
      197 GETTABLE                         R22 R23 R24
      198 JUMPIFNOT                        R22 ; [+55]
      199 GETUPVAL                         R21 0
      200 GETTABLEKS                       R21 R21 K5 ["createElement"]
      202 GETUPVAL                         R22 6
      203 DUPTABLE                         R23 K76 [{["LayoutOrder"] = 3, ["OnClick"], ["Size"], ["Style"]}]
      204 GETTABLEKS                       R24 R0 K77 ["createVariant"]
      206 SETTABLEKS                       R24 R23 K60 ["OnClick"]
      208 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      210 SETTABLEKS                       R24 R23 K41 ["Size"]
      212 GETTABLEKS                       R24 R2 K64 ["ButtonStyle"]
      214 SETTABLEKS                       R24 R23 K61 ["Style"]
      216 DUPTABLE                         R24 K67 [{"Image", "Tooltip"}]
      217 GETUPVAL                         R25 0
      218 GETTABLEKS                       R25 R25 K5 ["createElement"]
      220 GETUPVAL                         R26 7
      221 DUPTABLE                         R27 K69 [{"Style", "Size", "Position"}]
      222 GETTABLEKS                       R28 R2 K47 ["CreateVariant"]
      224 SETTABLEKS                       R28 R27 K61 ["Style"]
      226 GETTABLEKS                       R28 R2 K70 ["ImageSize"]
      228 SETTABLEKS                       R28 R27 K41 ["Size"]
      230 GETTABLEKS                       R28 R2 K71 ["ImagePosition"]
      232 SETTABLEKS                       R28 R27 K68 ["Position"]
      234 CALL                             R25 2 1
      235 SETTABLEKS                       R25 R24 K65 ["Image"]
      237 GETUPVAL                         R25 0
      238 GETTABLEKS                       R25 R25 K5 ["createElement"]
      240 GETUPVAL                         R26 8
      241 DUPTABLE                         R27 K72 [{"Text"}]
      242 LOADK                            R30 K2 ["MaterialInformation"]
      243 LOADK                            R31 K47 ["CreateVariant"]
      244 NAMECALL                         R28 R3 K8 ["getText"]
      246 CALL                             R28 3 1
      247 SETTABLEKS                       R28 R27 K51 ["Text"]
      249 CALL                             R25 2 1
      250 SETTABLEKS                       R25 R24 K66 ["Tooltip"]
      252 CALL                             R21 3 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R21
      255 SETTABLEKS                       R21 R20 K47 ["CreateVariant"]
      257 JUMPIF                           R5 ; [+55]
      258 GETUPVAL                         R21 0
      259 GETTABLEKS                       R21 R21 K5 ["createElement"]
      261 GETUPVAL                         R22 6
      262 DUPTABLE                         R23 K76 [{["LayoutOrder"] = 3, ["OnClick"], ["Size"], ["Style"]}]
      263 GETTABLEKS                       R24 R0 K78 ["delete"]
      265 SETTABLEKS                       R24 R23 K60 ["OnClick"]
      267 GETTABLEKS                       R24 R2 K21 ["ButtonSize"]
      269 SETTABLEKS                       R24 R23 K41 ["Size"]
      271 GETTABLEKS                       R24 R2 K64 ["ButtonStyle"]
      273 SETTABLEKS                       R24 R23 K61 ["Style"]
      275 DUPTABLE                         R24 K67 [{"Image", "Tooltip"}]
      276 GETUPVAL                         R25 0
      277 GETTABLEKS                       R25 R25 K5 ["createElement"]
      279 GETUPVAL                         R26 7
      280 DUPTABLE                         R27 K69 [{"Style", "Size", "Position"}]
      281 GETTABLEKS                       R28 R2 K48 ["Delete"]
      283 SETTABLEKS                       R28 R27 K61 ["Style"]
      285 GETTABLEKS                       R28 R2 K70 ["ImageSize"]
      287 SETTABLEKS                       R28 R27 K41 ["Size"]
      289 GETTABLEKS                       R28 R2 K71 ["ImagePosition"]
      291 SETTABLEKS                       R28 R27 K68 ["Position"]
      293 CALL                             R25 2 1
      294 SETTABLEKS                       R25 R24 K65 ["Image"]
      296 GETUPVAL                         R25 0
      297 GETTABLEKS                       R25 R25 K5 ["createElement"]
      299 GETUPVAL                         R26 8
      300 DUPTABLE                         R27 K72 [{"Text"}]
      301 LOADK                            R30 K2 ["MaterialInformation"]
      302 LOADK                            R31 K48 ["Delete"]
      303 NAMECALL                         R28 R3 K8 ["getText"]
      305 CALL                             R28 3 1
      306 SETTABLEKS                       R28 R27 K51 ["Text"]
      308 CALL                             R25 2 1
      309 SETTABLEKS                       R25 R24 K66 ["Tooltip"]
      311 CALL                             R21 3 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R21
      314 SETTABLEKS                       R21 R20 K48 ["Delete"]
      316 CALL                             R17 3 1
      317 SETTABLEKS                       R17 R16 K36 ["Title"]
      319 GETUPVAL                         R17 0
      320 GETTABLEKS                       R17 R17 K5 ["createElement"]
      322 GETUPVAL                         R18 5
      323 DUPTABLE                         R19 K79 [{["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextXAlignment"]}]
      324 GETTABLEKS                       R20 R2 K45 ["LabelRowSize"]
      326 SETTABLEKS                       R20 R19 K41 ["Size"]
      328 SETTABLEKS                       R7 R19 K51 ["Text"]
      330 GETIMPORT                        R20 K58 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R20 R19 K53 ["TextXAlignment"]
      334 CALL                             R17 2 1
      335 SETTABLEKS                       R17 R16 K37 ["MaterialType"]
      337 GETUPVAL                         R17 0
      338 GETTABLEKS                       R17 R17 K5 ["createElement"]
      340 GETUPVAL                         R18 5
      341 DUPTABLE                         R19 K80 [{["LayoutOrder"] = 3, ["Size"], ["Text"], ["TextXAlignment"]}]
      342 GETTABLEKS                       R20 R2 K45 ["LabelRowSize"]
      344 SETTABLEKS                       R20 R19 K41 ["Size"]
      346 SETTABLEKS                       R10 R19 K51 ["Text"]
      348 GETIMPORT                        R20 K58 [Enum.TextXAlignment.Left]
      350 SETTABLEKS                       R20 R19 K53 ["TextXAlignment"]
      352 CALL                             R17 2 1
      353 SETTABLEKS                       R17 R16 K38 ["Category"]
      355 CALL                             R13 3 -1
      356 RETURN                           R13 -1

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
