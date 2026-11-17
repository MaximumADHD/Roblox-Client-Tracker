PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["ChooseThumbnail"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K4 [{["hovered"] = True}]
        8 NAMECALL                         R3 R3 K5 ["setState"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{[1] = False}]
        2 NAMECALL                         R3 R3 K3 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["IconFile"]
        6 GETTABLEKS                       R4 R2 K3 ["ThumbnailStatus"]
        8 GETTABLEKS                       R5 R1 K4 ["hovered"]
       10 LOADNIL                          R6
       11 LOADB                            R7 1
       12 JUMPIFEQKS                       R4 K5 ["Completed"] ; [+5]
       14 JUMPIFEQKNIL                     R4 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 MOVE                             R9 R5
       19 JUMPIF                           R9 ; [+6]
       20 MOVE                             R9 R7
       21 JUMPIFNOT                        R9 ; [+4]
       22 JUMPIFEQKNIL                     R3 ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 NOT                              R8 R9
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETTABLEKS                       R9 R2 K6 ["Localization"]
       30 LOADK                            R11 K7 ["AssetConfigPreview"]
       31 LOADK                            R12 K8 ["Preview"]
       32 NAMECALL                         R9 R9 K9 ["getText"]
       34 CALL                             R9 3 1
       35 MOVE                             R6 R9
       36 JUMP                             ; [+11]
       37 JUMPIFNOT                        R4 ; [+9]
       38 GETTABLEKS                       R9 R2 K6 ["Localization"]
       40 LOADK                            R11 K3 ["ThumbnailStatus"]
       41 MOVE                             R12 R4
       42 NAMECALL                         R9 R9 K9 ["getText"]
       44 CALL                             R9 3 1
       45 MOVE                             R6 R9
       46 JUMP                             ; [+1]
       47 LOADK                            R6 K10 [""]
       48 MOVE                             R9 R6
       49 MOVE                             R10 R8
       50 RETURN                           R9 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["IconFile"]
       12 GETTABLEKS                       R7 R1 K6 ["AssetId"]
       14 GETTABLEKS                       R8 R1 K7 ["ChooseThumbnail"]
       16 GETTABLEKS                       R9 R2 K8 ["hovered"]
       18 GETTABLEKS                       R12 R1 K9 ["Localization"]
       20 NAMECALL                         R10 R0 K10 ["getStatus"]
       22 CALL                             R10 2 2
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R12 R12 K11 ["PLUGIN_TEMP"]
       26 JUMPIFNOT                        R6 ; [+5]
       27 NAMECALL                         R13 R6 K12 ["GetTemporaryId"]
       29 CALL                             R13 1 1
       30 MOVE                             R12 R13
       31 JUMP                             ; [+13]
       32 JUMPIFNOT                        R7 ; [+12]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R13 R13 K13 ["constructAssetThumbnailUrl"]
       36 MOVE                             R14 R7
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R15 R15 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       40 GETUPVAL                         R16 2
       41 GETTABLEKS                       R16 R16 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       43 CALL                             R13 3 1
       44 MOVE                             R12 R13
       45 GETUPVAL                         R13 3
       46 GETTABLEKS                       R13 R13 K15 ["createElement"]
       48 LOADK                            R14 K16 ["ImageButton"]
       49 NEWTABLE                         R15 16 0
       51 SETTABLEKS                       R4 R15 K3 ["Position"]
       53 SETTABLEKS                       R3 R15 K2 ["Size"]
       55 LOADN                            R16 1
       56 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
       58 LOADN                            R16 0
       59 SETTABLEKS                       R16 R15 K18 ["BorderSizePixel"]
       61 LOADB                            R16 1
       62 SETTABLEKS                       R16 R15 K19 ["ClipsDescendants"]
       64 SETTABLEKS                       R12 R15 K20 ["Image"]
       66 GETUPVAL                         R16 3
       67 GETTABLEKS                       R16 R16 K21 ["Event"]
       69 GETTABLEKS                       R16 R16 K22 ["Activated"]
       71 SETTABLE                         R8 R15 R16
       72 GETUPVAL                         R16 3
       73 GETTABLEKS                       R16 R16 K21 ["Event"]
       75 GETTABLEKS                       R16 R16 K23 ["MouseEnter"]
       77 GETTABLEKS                       R17 R0 K24 ["onMouseEnter"]
       79 SETTABLE                         R17 R15 R16
       80 GETUPVAL                         R16 3
       81 GETTABLEKS                       R16 R16 K21 ["Event"]
       83 GETTABLEKS                       R16 R16 K25 ["mouseLeave"]
       85 GETTABLEKS                       R17 R0 K26 ["onMouseLeave"]
       87 SETTABLE                         R17 R15 R16
       88 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
       90 DUPTABLE                         R16 K30 [{"ChangeIndication", "StatusFrame", "ChangeLabel"}]
       91 GETUPVAL                         R17 3
       92 GETTABLEKS                       R17 R17 K15 ["createElement"]
       94 LOADK                            R18 K31 ["ImageLabel"]
       95 DUPTABLE                         R19 K37 [{["Visible"], ["AnchorPoint"], ["Position"], ["Size"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ImageRectSize"]}]
       96 SETTABLEKS                       R9 R19 K32 ["Visible"]
       98 GETIMPORT                        R20 K40 [Vector2.new]
      100 LOADN                            R21 0
      101 LOADN                            R22 1
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      105 GETIMPORT                        R20 K42 [UDim2.new]
      107 LOADN                            R21 0
      108 LOADN                            R22 0
      109 LOADN                            R23 1
      110 LOADN                            R24 0
      111 CALL                             R20 4 1
      112 SETTABLEKS                       R20 R19 K3 ["Position"]
      114 GETIMPORT                        R20 K42 [UDim2.new]
      116 LOADN                            R21 1
      117 LOADN                            R22 0
      118 LOADK                            R23 K43 [1.5]
      119 LOADN                            R24 0
      120 CALL                             R20 4 1
      121 SETTABLEKS                       R20 R19 K2 ["Size"]
      123 GETUPVAL                         R20 0
      124 GETTABLEKS                       R20 R20 K44 ["GRADIENT"]
      126 SETTABLEKS                       R20 R19 K20 ["Image"]
      128 GETIMPORT                        R20 K46 [Color3.new]
      130 LOADN                            R21 0
      131 LOADN                            R22 0
      132 LOADN                            R23 0
      133 CALL                             R20 3 1
      134 SETTABLEKS                       R20 R19 K34 ["ImageColor3"]
      136 GETUPVAL                         R20 4
      137 SETTABLEKS                       R20 R19 K36 ["ImageRectSize"]
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K27 ["ChangeIndication"]
      142 MOVE                             R17 R11
      143 JUMPIFNOT                        R17 ; [+81]
      144 GETUPVAL                         R17 3
      145 GETTABLEKS                       R17 R17 K15 ["createElement"]
      147 LOADK                            R18 K47 ["Frame"]
      148 DUPTABLE                         R19 K50 [{["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.5}]
      149 GETIMPORT                        R20 K42 [UDim2.new]
      151 LOADN                            R21 0
      152 LOADN                            R22 0
      153 LOADN                            R23 1
      154 LOADN                            R24 -40
      155 CALL                             R20 4 1
      156 SETTABLEKS                       R20 R19 K3 ["Position"]
      158 GETIMPORT                        R20 K42 [UDim2.new]
      160 LOADN                            R21 1
      161 LOADN                            R22 0
      162 LOADN                            R23 0
      163 LOADN                            R24 40
      164 CALL                             R20 4 1
      165 SETTABLEKS                       R20 R19 K2 ["Size"]
      167 GETIMPORT                        R20 K46 [Color3.new]
      169 LOADN                            R21 0
      170 LOADN                            R22 0
      171 LOADN                            R23 0
      172 CALL                             R20 3 1
      173 SETTABLEKS                       R20 R19 K48 ["BackgroundColor3"]
      175 DUPTABLE                         R20 K52 [{"Status"}]
      176 GETUPVAL                         R21 3
      177 GETTABLEKS                       R21 R21 K15 ["createElement"]
      179 LOADK                            R22 K53 ["TextLabel"]
      180 DUPTABLE                         R23 K58 [{["AnchorPoint"], ["Size"], ["Position"], ["Text"], ["TextColor3"], ["TextSize"], ["Font"], ["BackgroundTransparency"] = 1}]
      181 GETIMPORT                        R24 K40 [Vector2.new]
      183 LOADK                            R25 K49 [0.5]
      184 LOADK                            R26 K49 [0.5]
      185 CALL                             R24 2 1
      186 SETTABLEKS                       R24 R23 K33 ["AnchorPoint"]
      188 GETIMPORT                        R24 K42 [UDim2.new]
      190 LOADN                            R25 1
      191 LOADN                            R26 0
      192 LOADN                            R27 1
      193 LOADN                            R28 0
      194 CALL                             R24 4 1
      195 SETTABLEKS                       R24 R23 K2 ["Size"]
      197 GETIMPORT                        R24 K42 [UDim2.new]
      199 LOADK                            R25 K49 [0.5]
      200 LOADN                            R26 0
      201 LOADK                            R27 K49 [0.5]
      202 LOADN                            R28 0
      203 CALL                             R24 4 1
      204 SETTABLEKS                       R24 R23 K3 ["Position"]
      206 SETTABLEKS                       R10 R23 K54 ["Text"]
      208 GETUPVAL                         R24 5
      209 GETTABLEKS                       R24 R24 K59 ["WHITE"]
      211 SETTABLEKS                       R24 R23 K55 ["TextColor3"]
      213 GETUPVAL                         R24 6
      214 SETTABLEKS                       R24 R23 K56 ["TextSize"]
      216 GETUPVAL                         R24 2
      217 GETTABLEKS                       R24 R24 K60 ["FONT"]
      219 SETTABLEKS                       R24 R23 K57 ["Font"]
      221 CALL                             R21 2 1
      222 SETTABLEKS                       R21 R20 K51 ["Status"]
      224 CALL                             R17 3 1
      225 SETTABLEKS                       R17 R16 K28 ["StatusFrame"]
      227 MOVE                             R17 R9
      228 JUMPIFNOT                        R17 ; [+53]
      229 GETUPVAL                         R17 3
      230 GETTABLEKS                       R17 R17 K15 ["createElement"]
      232 LOADK                            R18 K53 ["TextLabel"]
      233 DUPTABLE                         R19 K63 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["TextSize"], ["Font"], ["ZIndex"] = 2}]
      234 GETIMPORT                        R20 K40 [Vector2.new]
      236 LOADN                            R21 0
      237 LOADN                            R22 1
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      241 GETIMPORT                        R20 K42 [UDim2.new]
      243 LOADN                            R21 0
      244 LOADN                            R22 0
      245 LOADN                            R23 1
      246 LOADN                            R24 -15
      247 CALL                             R20 4 1
      248 SETTABLEKS                       R20 R19 K3 ["Position"]
      250 GETIMPORT                        R20 K42 [UDim2.new]
      252 LOADN                            R21 1
      253 LOADN                            R22 0
      254 LOADN                            R23 0
      255 LOADN                            R24 30
      256 CALL                             R20 4 1
      257 SETTABLEKS                       R20 R19 K2 ["Size"]
      259 GETTABLEKS                       R20 R1 K9 ["Localization"]
      261 LOADK                            R22 K64 ["AssetConfigPreview"]
      262 LOADK                            R23 K65 ["Change"]
      263 NAMECALL                         R20 R20 K66 ["getText"]
      265 CALL                             R20 3 1
      266 SETTABLEKS                       R20 R19 K54 ["Text"]
      268 GETUPVAL                         R20 5
      269 GETTABLEKS                       R20 R20 K59 ["WHITE"]
      271 SETTABLEKS                       R20 R19 K55 ["TextColor3"]
      273 GETUPVAL                         R20 6
      274 SETTABLEKS                       R20 R19 K56 ["TextSize"]
      276 GETUPVAL                         R20 2
      277 GETTABLEKS                       R20 R20 K60 ["FONT"]
      279 SETTABLEKS                       R20 R19 K57 ["Font"]
      281 CALL                             R17 2 1
      282 SETTABLEKS                       R17 R16 K29 ["ChangeLabel"]
      284 CALL                             R13 3 -1
      285 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Images"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K12 ["Urls"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K13 ["Colors"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R3 K14 ["ContextServices"]
       49 GETTABLEKS                       R10 R9 K15 ["withContext"]
       51 GETTABLEKS                       R11 R2 K16 ["PureComponent"]
       53 LOADK                            R13 K17 ["ImagePicker"]
       54 NAMECALL                         R11 R11 K18 ["extend"]
       56 CALL                             R11 2 1
       57 GETTABLEKS                       R12 R6 K19 ["FONT_SIZE_MEDIUM"]
       59 GETIMPORT                        R13 K22 [Vector2.new]
       61 LOADN                            R14 512
       62 LOADN                            R15 256
       63 CALL                             R13 2 1
       64 DUPCLOSURE                       R14 K23 [PROTO_2]
       65 SETTABLEKS                       R14 R11 K24 ["init"]
       67 DUPCLOSURE                       R14 K25 [PROTO_3]
       68 SETTABLEKS                       R14 R11 K26 ["getStatus"]
       70 DUPCLOSURE                       R14 K27 [PROTO_4]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R14 R11 K28 ["render"]
       80 MOVE                             R14 R10
       81 DUPTABLE                         R15 K31 [{"Stylizer", "Localization"}]
       82 GETTABLEKS                       R16 R9 K29 ["Stylizer"]
       84 SETTABLEKS                       R16 R15 K29 ["Stylizer"]
       86 GETTABLEKS                       R16 R9 K30 ["Localization"]
       88 SETTABLEKS                       R16 R15 K30 ["Localization"]
       90 CALL                             R14 1 1
       91 MOVE                             R15 R11
       92 CALL                             R14 1 1
       93 MOVE                             R11 R14
       94 RETURN                           R11 1
