PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["LuaSourceContainer"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+3]
       12 NAMECALL                         R6 R5 K5 ["Destroy"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-9]
       17 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["Sound"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+3]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K5 ["Playing"]
       15 FORGLOOP                         R1 2 ; [-9]
       17 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K3 [pairs]
        9 NAMECALL                         R2 R0 K4 ["GetDescendants"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 3
       13 FORGPREP_NEXT                    R1
       14 LOADK                            R8 K0 ["PVInstance"]
       15 NAMECALL                         R6 R5 K1 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+7]
       19 LOADK                            R8 K5 ["LuaSourceContainer"]
       20 NAMECALL                         R6 R5 K6 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+2]
       24 LOADB                            R6 1
       25 RETURN                           R6 1
       26 FORGLOOP                         R1 2 ; [-13]
       28 LOADB                            R1 0
       29 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["viewportRef"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K1 ["Parent"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["instances"]
        4 JUMPIFNOT                        R1 ; [+104]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K1 ["instances"]
       10 GETTABLEN                        R2 R3 1
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+96]
       13 GETTABLEKS                       R1 R0 K2 ["viewportRef"]
       15 GETTABLEKS                       R1 R1 K3 ["current"]
       17 NAMECALL                         R2 R1 K4 ["ClearAllChildren"]
       19 CALL                             R2 1 0
       20 GETIMPORT                        R2 K7 [Instance.new]
       22 LOADK                            R3 K8 ["Camera"]
       23 CALL                             R2 1 1
       24 LOADK                            R3 K8 ["Camera"]
       25 SETTABLEKS                       R3 R2 K9 ["Name"]
       27 SETTABLEKS                       R1 R2 K10 ["Parent"]
       29 SETTABLEKS                       R2 R1 K11 ["CurrentCamera"]
       31 GETIMPORT                        R3 K7 [Instance.new]
       33 LOADK                            R4 K12 ["Model"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R1 R3 K10 ["Parent"]
       37 GETIMPORT                        R4 K14 [pairs]
       39 GETTABLEKS                       R5 R0 K0 ["props"]
       41 GETTABLEKS                       R5 R5 K1 ["instances"]
       43 CALL                             R4 1 3
       44 FORGPREP_NEXT                    R4
       45 LOADK                            R11 K15 ["LuaSourceContainer"]
       46 NAMECALL                         R9 R8 K16 ["IsA"]
       48 CALL                             R9 2 1
       49 JUMPIF                           R9 ; [+8]
       50 GETIMPORT                        R9 K18 [pcall]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          VAL R8
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R3
       57 CALL                             R9 1 0
       58 FORGLOOP                         R4 2 ; [-14]
       60 NAMECALL                         R4 R3 K19 ["GetModelCFrame"]
       62 CALL                             R4 1 1
       63 MOVE                             R7 R4
       64 NAMECALL                         R5 R2 K20 ["SetImageServerView"]
       66 CALL                             R5 2 0
       67 NAMECALL                         R6 R3 K22 ["GetExtentsSize"]
       69 CALL                             R6 1 1
       70 GETTABLEKS                       R6 R6 K23 ["magnitude"]
       72 DIVK                             R5 R6 K21 [2]
       73 GETTABLEKS                       R8 R2 K24 ["FieldOfView"]
       75 FASTCALL1                        MATH_RAD R8 ; [+2]
       76 GETIMPORT                        R7 K27 [math.rad]
       78 CALL                             R7 1 1
       79 DIVK                             R6 R7 K21 [2]
       80 FASTCALL1                        MATH_TAN R6 ; [+3]
       81 MOVE                             R9 R6
       82 GETIMPORT                        R8 K29 [math.tan]
       84 CALL                             R8 1 1
       85 DIV                              R7 R5 R8
       86 GETTABLEKS                       R11 R2 K30 ["CFrame"]
       88 GETTABLEKS                       R12 R2 K30 ["CFrame"]
       90 GETTABLEKS                       R12 R12 K31 ["p"]
       92 SUB                              R10 R11 R12
       93 GETTABLEKS                       R11 R4 K31 ["p"]
       95 ADD                              R9 R10 R11
       96 GETTABLEKS                       R12 R2 K30 ["CFrame"]
       98 GETTABLEKS                       R12 R12 K31 ["p"]
      100 GETTABLEKS                       R13 R4 K31 ["p"]
      102 SUB                              R11 R12 R13
      103 GETTABLEKS                       R11 R11 K32 ["unit"]
      105 MUL                              R10 R11 R7
      106 ADD                              R8 R9 R10
      107 SETTABLEKS                       R8 R2 K30 ["CFrame"]
      109 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["instances"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["instances"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+9]
       13 GETTABLEKS                       R2 R0 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K1 ["instances"]
       17 GETTABLEN                        R1 R2 1
       18 GETTABLEKS                       R1 R1 K2 ["Name"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K3 [""]
       22 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["title"]
        6 JUMPIF                           R3 ; [+3]
        7 NAMECALL                         R3 R0 K3 ["getName"]
        9 CALL                             R3 1 1
       10 LOADB                            R4 1
       11 GETTABLEKS                       R5 R1 K4 ["ShowTitle"]
       13 JUMPIFEQKNIL                     R5 ; [+3]
       15 GETTABLEKS                       R4 R1 K5 ["showTitle"]
       17 GETTABLEKS                       R5 R1 K6 ["Position"]
       19 JUMPIF                           R5 ; [+7]
       20 GETIMPORT                        R5 K9 [UDim2.new]
       22 LOADN                            R6 1
       23 LOADN                            R7 0
       24 LOADN                            R8 1
       25 LOADN                            R9 0
       26 CALL                             R5 4 1
       27 GETTABLEKS                       R7 R1 K11 ["titleHeight"]
       29 ORK                              R6 R7 K10 [24]
       30 GETTABLEKS                       R8 R1 K13 ["titlePadding"]
       32 ORK                              R7 R8 K12 [12]
       33 GETTABLEKS                       R9 R1 K15 ["LayoutOrder"]
       35 ORK                              R8 R9 K14 [1]
       36 GETTABLEKS                       R9 R0 K0 ["props"]
       38 GETTABLEKS                       R9 R9 K16 ["instances"]
       40 JUMPIFNOT                        R9 ; [+8]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R12 R0 K0 ["props"]
       44 GETTABLEKS                       R12 R12 K16 ["instances"]
       46 GETTABLEN                        R11 R12 1
       47 CALL                             R10 1 1
       48 NOT                              R9 R10
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K17 ["createElement"]
       52 LOADK                            R11 K18 ["Frame"]
       53 DUPTABLE                         R12 K23 [{["Name"] = "AssetThumbnailPreview", ["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["LayoutOrder"]}]
       54 GETTABLEKS                       R13 R1 K22 ["Size"]
       56 SETTABLEKS                       R13 R12 K22 ["Size"]
       58 SETTABLEKS                       R5 R12 K6 ["Position"]
       60 SETTABLEKS                       R8 R12 K15 ["LayoutOrder"]
       62 DUPTABLE                         R13 K26 [{"PreviewFrame", "Title"}]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K17 ["createElement"]
       66 GETUPVAL                         R15 2
       67 DUPTABLE                         R16 K29 [{["Style"] = "BorderBox", ["Size"]}]
       68 JUMPIFNOT                        R4 ; [+9]
       69 GETIMPORT                        R17 K9 [UDim2.new]
       71 LOADN                            R18 1
       72 LOADN                            R19 0
       73 LOADN                            R20 1
       74 ADD                              R22 R6 R7
       75 MINUS                            R21 R22
       76 CALL                             R17 4 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R17
       79 SETTABLEKS                       R17 R16 K22 ["Size"]
       81 DUPTABLE                         R17 K32 [{"Viewport", "PreviewPlaceholder"}]
       82 NOT                              R18 R9
       83 JUMPIFNOT                        R18 ; [+31]
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R18 R18 K17 ["createElement"]
       87 LOADK                            R19 K33 ["ViewportFrame"]
       88 NEWTABLE                         R20 4 0
       90 GETUPVAL                         R21 1
       91 GETTABLEKS                       R21 R21 K34 ["Ref"]
       93 GETTABLEKS                       R22 R0 K35 ["viewportRef"]
       95 SETTABLE                         R22 R20 R21
       96 GETIMPORT                        R21 K9 [UDim2.new]
       98 LOADN                            R22 1
       99 LOADN                            R23 0
      100 LOADN                            R24 1
      101 LOADN                            R25 0
      102 CALL                             R21 4 1
      103 SETTABLEKS                       R21 R20 K22 ["Size"]
      105 GETTABLEKS                       R21 R2 K36 ["thumbnailPreview"]
      107 GETTABLEKS                       R21 R21 K37 ["background"]
      109 SETTABLEKS                       R21 R20 K38 ["BackgroundColor3"]
      111 LOADN                            R21 1
      112 SETTABLEKS                       R21 R20 K21 ["BackgroundTransparency"]
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K30 ["Viewport"]
      117 MOVE                             R18 R9
      118 JUMPIFNOT                        R18 ; [+34]
      119 GETUPVAL                         R18 1
      120 GETTABLEKS                       R18 R18 K17 ["createElement"]
      122 LOADK                            R19 K39 ["ImageLabel"]
      123 DUPTABLE                         R20 K43 [{["Size"], ["BackgroundTransparency"] = 0, ["Image"], ["BackgroundColor3"], ["ImageColor3"]}]
      124 GETIMPORT                        R21 K9 [UDim2.new]
      126 LOADN                            R22 1
      127 LOADN                            R23 0
      128 LOADN                            R24 1
      129 LOADN                            R25 0
      130 CALL                             R21 4 1
      131 SETTABLEKS                       R21 R20 K22 ["Size"]
      133 GETUPVAL                         R21 3
      134 GETTABLEKS                       R21 R21 K44 ["Images"]
      136 GETTABLEKS                       R21 R21 K45 ["IMAGE_PLACEHOLDER"]
      138 SETTABLEKS                       R21 R20 K41 ["Image"]
      140 GETTABLEKS                       R21 R2 K36 ["thumbnailPreview"]
      142 GETTABLEKS                       R21 R21 K37 ["background"]
      144 SETTABLEKS                       R21 R20 K38 ["BackgroundColor3"]
      146 GETTABLEKS                       R21 R2 K36 ["thumbnailPreview"]
      148 GETTABLEKS                       R21 R21 K46 ["placeholderColor"]
      150 SETTABLEKS                       R21 R20 K42 ["ImageColor3"]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K31 ["PreviewPlaceholder"]
      155 CALL                             R14 3 1
      156 SETTABLEKS                       R14 R13 K24 ["PreviewFrame"]
      158 MOVE                             R14 R4
      159 JUMPIFNOT                        R14 ; [+42]
      160 GETUPVAL                         R14 1
      161 GETTABLEKS                       R14 R14 K17 ["createElement"]
      163 LOADK                            R15 K47 ["TextLabel"]
      164 DUPTABLE                         R16 K52 [{["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      165 SETTABLEKS                       R3 R16 K48 ["Text"]
      167 GETUPVAL                         R17 3
      168 GETTABLEKS                       R17 R17 K53 ["FONT"]
      170 SETTABLEKS                       R17 R16 K49 ["Font"]
      172 GETUPVAL                         R17 3
      173 GETTABLEKS                       R17 R17 K54 ["FONT_SIZE_MEDIUM"]
      175 SETTABLEKS                       R17 R16 K50 ["TextSize"]
      177 GETTABLEKS                       R17 R2 K36 ["thumbnailPreview"]
      179 GETTABLEKS                       R17 R17 K55 ["text"]
      181 SETTABLEKS                       R17 R16 K51 ["TextColor3"]
      183 GETIMPORT                        R17 K9 [UDim2.new]
      185 LOADN                            R18 0
      186 LOADN                            R19 0
      187 LOADN                            R20 1
      188 MINUS                            R21 R6
      189 CALL                             R17 4 1
      190 SETTABLEKS                       R17 R16 K6 ["Position"]
      192 GETIMPORT                        R17 K9 [UDim2.new]
      194 LOADN                            R18 1
      195 LOADN                            R19 0
      196 LOADN                            R20 0
      197 MOVE                             R21 R6
      198 CALL                             R17 4 1
      199 SETTABLEKS                       R17 R16 K22 ["Size"]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R13 K25 ["Title"]
      204 CALL                             R10 3 -1
      205 RETURN                           R10 -1

PROTO_8:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"instances"}]
        6 GETTABLEKS                       R3 R0 K2 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R3 K0 ["instances"]
       10 SETTABLEKS                       R3 R2 K0 ["instances"]
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETTABLEKS                       R2 R0 K4 ["Src"]
       15 GETTABLEKS                       R2 R2 K5 ["Util"]
       17 GETIMPORT                        R3 K7 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Bin"]
       21 GETTABLEKS                       R4 R4 K9 ["defineLuaFlags"]
       23 CALL                             R3 1 0
       24 GETIMPORT                        R3 K7 [require]
       26 GETTABLEKS                       R4 R1 K10 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R5 R1 K11 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K7 [require]
       36 GETTABLEKS                       R6 R1 K12 ["RoactRodux"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["withContext"]
       43 GETIMPORT                        R8 K7 [require]
       45 GETTABLEKS                       R9 R2 K15 ["Constants"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R3 K16 ["UI"]
       50 GETTABLEKS                       R10 R9 K17 ["Pane"]
       52 DUPCLOSURE                       R11 K18 [PROTO_0]
       53 DUPCLOSURE                       R12 K19 [PROTO_1]
       54 DUPCLOSURE                       R13 K20 [PROTO_2]
       55 GETTABLEKS                       R14 R4 K21 ["PureComponent"]
       57 LOADK                            R16 K22 ["AssetThumbnailPreview"]
       58 NAMECALL                         R14 R14 K23 ["extend"]
       60 CALL                             R14 2 1
       61 DUPCLOSURE                       R15 K24 [PROTO_3]
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R15 R14 K25 ["init"]
       65 DUPCLOSURE                       R15 K26 [PROTO_5]
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R12
       69 SETTABLEKS                       R15 R14 K27 ["didMount"]
       71 DUPCLOSURE                       R15 K28 [PROTO_6]
       72 SETTABLEKS                       R15 R14 K29 ["getName"]
       74 DUPCLOSURE                       R15 K30 [PROTO_7]
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R15 R14 K31 ["render"]
       81 MOVE                             R15 R7
       82 DUPTABLE                         R16 K33 [{"Stylizer"}]
       83 GETTABLEKS                       R17 R6 K32 ["Stylizer"]
       85 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
       87 CALL                             R15 1 1
       88 MOVE                             R16 R14
       89 CALL                             R15 1 1
       90 MOVE                             R14 R15
       91 DUPCLOSURE                       R15 K34 [PROTO_8]
       92 GETTABLEKS                       R16 R5 K35 ["connect"]
       94 MOVE                             R17 R15
       95 CALL                             R16 1 1
       96 MOVE                             R17 R14
       97 CALL                             R16 1 -1
       98 RETURN                           R16 -1
