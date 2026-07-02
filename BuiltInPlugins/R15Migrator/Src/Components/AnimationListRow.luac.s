PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hovered"}]
        2 SETTABLEKS                       R0 R3 K0 ["hovered"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["hover"]
        7 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+3]
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 RETURN                           R4 2
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["Uploading"]
        7 JUMPIFNOTEQ                      R0 R4 ; [+5]
        9 GETTABLEKS                       R4 R1 K1 ["LoadingIcon"]
       11 LOADNIL                          R5
       12 RETURN                           R4 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["FailedSerialization"]
       16 JUMPIFNOTEQ                      R0 R4 ; [+9]
       18 GETTABLEKS                       R4 R1 K3 ["FailedIcon"]
       20 LOADK                            R7 K4 ["AnimationStatus"]
       21 MOVE                             R8 R0
       22 NAMECALL                         R5 R2 K5 ["getText"]
       24 CALL                             R5 3 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K6 ["FailedWithError"]
       29 JUMPIFNOTEQ                      R0 R4 ; [+15]
       31 GETTABLEKS                       R4 R1 K3 ["FailedIcon"]
       33 GETIMPORT                        R5 K9 [string.format]
       35 LOADK                            R8 K4 ["AnimationStatus"]
       36 MOVE                             R9 R0
       37 DUPTABLE                         R10 K11 [{"error"}]
       38 SETTABLEKS                       R3 R10 K10 ["error"]
       40 NAMECALL                         R6 R2 K5 ["getText"]
       42 CALL                             R6 4 -1
       43 CALL                             R5 -1 -1
       44 RETURN                           R4 -1
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K12 ["FailedToGetProductInfo"]
       48 JUMPIFNOTEQ                      R0 R4 ; [+9]
       50 GETTABLEKS                       R4 R1 K3 ["FailedIcon"]
       52 LOADK                            R7 K4 ["AnimationStatus"]
       53 MOVE                             R8 R0
       54 NAMECALL                         R5 R2 K5 ["getText"]
       56 CALL                             R5 3 -1
       57 RETURN                           R4 -1
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K13 ["Done"]
       61 JUMPIFNOTEQ                      R0 R4 ; [+9]
       63 GETTABLEKS                       R4 R1 K14 ["DoneIcon"]
       65 LOADK                            R7 K4 ["AnimationStatus"]
       66 MOVE                             R8 R0
       67 NAMECALL                         R5 R2 K5 ["getText"]
       69 CALL                             R5 3 -1
       70 RETURN                           R4 -1
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R2 K2 ["selected"]
        6 GETTABLEKS                       R4 R2 K3 ["previewSelected"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R2 K4 ["name"]
       11 CALL                             R5 1 1
       12 GETTABLEKS                       R6 R2 K5 ["status"]
       14 GETTABLEKS                       R7 R2 K6 ["OnCheckboxClick"]
       16 GETTABLEKS                       R8 R2 K7 ["OnRowClick"]
       18 GETTABLEKS                       R9 R2 K8 ["tag"]
       20 GETTABLEKS                       R10 R2 K9 ["errCode"]
       22 GETTABLEKS                       R11 R1 K10 ["Stylizer"]
       24 GETTABLEKS                       R12 R1 K11 ["Localization"]
       26 GETTABLEKS                       R13 R0 K12 ["state"]
       28 GETTABLEKS                       R13 R13 K13 ["hovered"]
       30 GETUPVAL                         R14 1
       31 MOVE                             R15 R6
       32 MOVE                             R16 R11
       33 MOVE                             R17 R12
       34 MOVE                             R18 R10
       35 CALL                             R14 4 2
       36 GETUPVAL                         R16 2
       37 GETTABLEKS                       R16 R16 K14 ["new"]
       39 CALL                             R16 0 1
       40 GETUPVAL                         R17 3
       41 GETTABLEKS                       R17 R17 K15 ["createElement"]
       43 GETUPVAL                         R18 4
       44 NEWTABLE                         R19 16 0
       46 LOADK                            R20 K16 ["Box"]
       47 SETTABLEKS                       R20 R19 K17 ["Style"]
       49 GETTABLEKS                       R20 R1 K18 ["Position"]
       51 SETTABLEKS                       R20 R19 K18 ["Position"]
       53 GETTABLEKS                       R21 R1 K19 ["Size"]
       55 GETTABLEKS                       R22 R11 K20 ["Offset"]
       57 ADD                              R20 R21 R22
       58 SETTABLEKS                       R20 R19 K19 ["Size"]
       60 GETTABLEKS                       R20 R11 K21 ["Padding"]
       62 SETTABLEKS                       R20 R19 K21 ["Padding"]
       64 SETTABLEKS                       R8 R19 K22 ["OnClick"]
       66 JUMPIFNOT                        R4 ; [+4]
       67 GETUPVAL                         R20 5
       68 GETTABLEKS                       R20 R20 K23 ["Selected"]
       70 JUMP                             ; [+6]
       71 JUMPIFNOT                        R13 ; [+4]
       72 GETUPVAL                         R20 5
       73 GETTABLEKS                       R20 R20 K24 ["Hover"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R20
       77 SETTABLEKS                       R20 R19 K25 ["StyleModifier"]
       79 JUMPIF                           R4 ; [+3]
       80 JUMPIF                           R13 ; [+2]
       81 LOADN                            R20 1
       82 JUMP                             ; [+1]
       83 LOADN                            R20 0
       84 SETTABLEKS                       R20 R19 K26 ["BackgroundTransparency"]
       86 GETUPVAL                         R20 3
       87 GETTABLEKS                       R20 R20 K27 ["Event"]
       89 GETTABLEKS                       R20 R20 K28 ["MouseEnter"]
       91 NEWCLOSURE                       R21 P0
       92 CAPTURE                          VAL R0
       93 SETTABLE                         R21 R19 R20
       94 GETUPVAL                         R20 3
       95 GETTABLEKS                       R20 R20 K27 ["Event"]
       97 GETTABLEKS                       R20 R20 K29 ["MouseLeave"]
       99 NEWCLOSURE                       R21 P1
      100 CAPTURE                          VAL R0
      101 SETTABLE                         R21 R19 R20
      102 DUPTABLE                         R20 K33 [{"Checkbox", "Content", "HoverArea"}]
      103 GETUPVAL                         R21 3
      104 GETTABLEKS                       R21 R21 K15 ["createElement"]
      106 GETUPVAL                         R22 6
      107 DUPTABLE                         R23 K36 [{"LayoutOrder", "Checked", "OnClick"}]
      108 NAMECALL                         R24 R16 K37 ["getNextOrder"]
      110 CALL                             R24 1 1
      111 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      113 SETTABLEKS                       R3 R23 K35 ["Checked"]
      115 SETTABLEKS                       R7 R23 K22 ["OnClick"]
      117 CALL                             R21 2 1
      118 SETTABLEKS                       R21 R20 K30 ["Checkbox"]
      120 GETUPVAL                         R21 3
      121 GETTABLEKS                       R21 R21 K15 ["createElement"]
      123 GETUPVAL                         R22 4
      124 DUPTABLE                         R23 K39 [{"LayoutOrder", "Size", "Spacing", "Padding"}]
      125 NAMECALL                         R24 R16 K37 ["getNextOrder"]
      127 CALL                             R24 1 1
      128 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      130 GETIMPORT                        R24 K42 [UDim2.fromScale]
      132 LOADN                            R25 1
      133 LOADN                            R26 1
      134 CALL                             R24 2 1
      135 SETTABLEKS                       R24 R23 K19 ["Size"]
      137 GETTABLEKS                       R24 R11 K38 ["Spacing"]
      139 SETTABLEKS                       R24 R23 K38 ["Spacing"]
      141 GETTABLEKS                       R24 R11 K43 ["ContentPadding"]
      143 SETTABLEKS                       R24 R23 K21 ["Padding"]
      145 DUPTABLE                         R24 K48 [{"Label1", "Arrow", "Label2", "Icon"}]
      146 GETUPVAL                         R25 3
      147 GETTABLEKS                       R25 R25 K15 ["createElement"]
      149 GETUPVAL                         R26 7
      150 DUPTABLE                         R27 K53 [{"Text", "TextXAlignment", "AnchorPoint", "Position", "Size", "TextSize"}]
      151 MOVE                             R29 R5
      152 GETTABLEKS                       R30 R9 K54 ["id"]
      154 CONCAT                           R28 R29 R30
      155 SETTABLEKS                       R28 R27 K49 ["Text"]
      157 GETIMPORT                        R28 K57 [Enum.TextXAlignment.Left]
      159 SETTABLEKS                       R28 R27 K50 ["TextXAlignment"]
      161 GETTABLEKS                       R28 R11 K58 ["Anchor"]
      163 SETTABLEKS                       R28 R27 K51 ["AnchorPoint"]
      165 GETTABLEKS                       R28 R11 K59 ["Label1Position"]
      167 SETTABLEKS                       R28 R27 K18 ["Position"]
      169 GETTABLEKS                       R28 R11 K60 ["LabelSize"]
      171 SETTABLEKS                       R28 R27 K19 ["Size"]
      173 GETTABLEKS                       R28 R11 K52 ["TextSize"]
      175 SETTABLEKS                       R28 R27 K52 ["TextSize"]
      177 CALL                             R25 2 1
      178 SETTABLEKS                       R25 R24 K44 ["Label1"]
      180 GETUPVAL                         R25 3
      181 GETTABLEKS                       R25 R25 K15 ["createElement"]
      183 GETUPVAL                         R26 7
      184 DUPTABLE                         R27 K53 [{"Text", "TextXAlignment", "AnchorPoint", "Position", "Size", "TextSize"}]
      185 GETTABLEKS                       R29 R9 K61 ["converted"]
      187 JUMPIFNOT                        R29 ; [+3]
      188 GETTABLEKS                       R28 R11 K45 ["Arrow"]
      190 JUMP                             ; [+1]
      191 LOADK                            R28 K62 [""]
      192 SETTABLEKS                       R28 R27 K49 ["Text"]
      194 GETIMPORT                        R28 K64 [Enum.TextXAlignment.Center]
      196 SETTABLEKS                       R28 R27 K50 ["TextXAlignment"]
      198 GETTABLEKS                       R28 R11 K58 ["Anchor"]
      200 SETTABLEKS                       R28 R27 K51 ["AnchorPoint"]
      202 GETTABLEKS                       R28 R11 K65 ["ArrowPosition"]
      204 SETTABLEKS                       R28 R27 K18 ["Position"]
      206 GETTABLEKS                       R28 R11 K66 ["IconSize"]
      208 SETTABLEKS                       R28 R27 K19 ["Size"]
      210 GETTABLEKS                       R28 R11 K52 ["TextSize"]
      212 SETTABLEKS                       R28 R27 K52 ["TextSize"]
      214 CALL                             R25 2 1
      215 SETTABLEKS                       R25 R24 K45 ["Arrow"]
      217 GETUPVAL                         R25 3
      218 GETTABLEKS                       R25 R25 K15 ["createElement"]
      220 GETUPVAL                         R26 7
      221 DUPTABLE                         R27 K53 [{"Text", "TextXAlignment", "AnchorPoint", "Position", "Size", "TextSize"}]
      222 GETTABLEKS                       R29 R9 K61 ["converted"]
      224 JUMPIFNOT                        R29 ; [+6]
      225 MOVE                             R29 R5
      226 LOADK                            R30 K67 [" R15"]
      227 GETTABLEKS                       R31 R9 K61 ["converted"]
      229 CONCAT                           R28 R29 R31
      230 JUMP                             ; [+1]
      231 LOADK                            R28 K62 [""]
      232 SETTABLEKS                       R28 R27 K49 ["Text"]
      234 GETIMPORT                        R28 K57 [Enum.TextXAlignment.Left]
      236 SETTABLEKS                       R28 R27 K50 ["TextXAlignment"]
      238 GETTABLEKS                       R28 R11 K58 ["Anchor"]
      240 SETTABLEKS                       R28 R27 K51 ["AnchorPoint"]
      242 GETTABLEKS                       R28 R11 K68 ["Label2Position"]
      244 SETTABLEKS                       R28 R27 K18 ["Position"]
      246 GETTABLEKS                       R28 R11 K60 ["LabelSize"]
      248 SETTABLEKS                       R28 R27 K19 ["Size"]
      250 GETTABLEKS                       R28 R11 K52 ["TextSize"]
      252 SETTABLEKS                       R28 R27 K52 ["TextSize"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K46 ["Label2"]
      257 GETUPVAL                         R25 3
      258 GETTABLEKS                       R25 R25 K15 ["createElement"]
      260 GETUPVAL                         R26 8
      261 DUPTABLE                         R27 K70 [{"Size", "AnchorPoint", "Position", "Image"}]
      262 GETTABLEKS                       R28 R11 K66 ["IconSize"]
      264 SETTABLEKS                       R28 R27 K19 ["Size"]
      266 GETTABLEKS                       R28 R11 K58 ["Anchor"]
      268 SETTABLEKS                       R28 R27 K51 ["AnchorPoint"]
      270 GETTABLEKS                       R28 R11 K71 ["IconPosition"]
      272 SETTABLEKS                       R28 R27 K18 ["Position"]
      274 SETTABLEKS                       R14 R27 K69 ["Image"]
      276 DUPTABLE                         R28 K73 [{"Tooltip"}]
      277 JUMPIFNOT                        R15 ; [+9]
      278 GETUPVAL                         R29 3
      279 GETTABLEKS                       R29 R29 K15 ["createElement"]
      281 GETUPVAL                         R30 9
      282 DUPTABLE                         R31 K74 [{"Text"}]
      283 SETTABLEKS                       R15 R31 K49 ["Text"]
      285 CALL                             R29 2 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R29
      288 SETTABLEKS                       R29 R28 K72 ["Tooltip"]
      290 CALL                             R25 3 1
      291 SETTABLEKS                       R25 R24 K47 ["Icon"]
      293 CALL                             R21 3 1
      294 SETTABLEKS                       R21 R20 K31 ["Content"]
      296 GETUPVAL                         R21 3
      297 GETTABLEKS                       R21 R21 K15 ["createElement"]
      299 GETUPVAL                         R22 10
      300 DUPTABLE                         R23 K77 [{["Cursor"] = "PointingHand"}]
      301 CALL                             R21 2 1
      302 SETTABLEKS                       R21 R20 K32 ["HoverArea"]
      304 CALL                             R17 3 -1
      305 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["HoverArea"]
       29 GETTABLEKS                       R7 R4 K13 ["TextLabel"]
       31 GETTABLEKS                       R8 R4 K14 ["Image"]
       33 GETTABLEKS                       R9 R4 K15 ["Tooltip"]
       35 GETTABLEKS                       R10 R4 K16 ["Checkbox"]
       37 GETTABLEKS                       R11 R1 K17 ["Util"]
       39 GETTABLEKS                       R11 R11 K18 ["StyleModifier"]
       41 GETTABLEKS                       R12 R1 K17 ["Util"]
       43 GETTABLEKS                       R13 R12 K19 ["LayoutOrderIterator"]
       45 GETIMPORT                        R14 K5 [require]
       47 GETTABLEKS                       R15 R0 K20 ["Src"]
       49 GETTABLEKS                       R15 R15 K17 ["Util"]
       51 GETTABLEKS                       R15 R15 K21 ["AnimationConversion"]
       53 GETTABLEKS                       R15 R15 K22 ["constants"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R14 R14 K23 ["AnimationStatus"]
       58 GETIMPORT                        R15 K5 [require]
       60 GETTABLEKS                       R16 R0 K20 ["Src"]
       62 GETTABLEKS                       R16 R16 K17 ["Util"]
       64 GETTABLEKS                       R16 R16 K24 ["sanitizeString"]
       66 CALL                             R15 1 1
       67 GETTABLEKS                       R16 R2 K25 ["PureComponent"]
       69 LOADK                            R18 K26 ["AnimationListRow"]
       70 NAMECALL                         R16 R16 K27 ["extend"]
       72 CALL                             R16 2 1
       73 DUPCLOSURE                       R17 K28 [PROTO_1]
       74 SETTABLEKS                       R17 R16 K29 ["init"]
       76 DUPCLOSURE                       R17 K30 [PROTO_2]
       77 CAPTURE                          VAL R14
       78 DUPCLOSURE                       R18 K31 [PROTO_5]
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R18 R16 K32 ["render"]
       92 GETTABLEKS                       R18 R3 K33 ["withContext"]
       94 DUPTABLE                         R19 K36 [{"Stylizer", "Localization"}]
       95 GETTABLEKS                       R20 R3 K34 ["Stylizer"]
       97 SETTABLEKS                       R20 R19 K34 ["Stylizer"]
       99 GETTABLEKS                       R20 R3 K35 ["Localization"]
      101 SETTABLEKS                       R20 R19 K35 ["Localization"]
      103 CALL                             R18 1 1
      104 MOVE                             R19 R16
      105 CALL                             R18 1 1
      106 MOVE                             R16 R18
      107 RETURN                           R16 1
