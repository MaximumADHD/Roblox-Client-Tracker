PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["X: %.2f, Y: %.2f"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETTABLEKS                       R4 R0 K4 ["controls"]
       11 GETTABLEKS                       R3 R4 K5 ["minX"]
       13 GETTABLEKS                       R6 R0 K4 ["controls"]
       15 GETTABLEKS                       R5 R6 K6 ["maxX"]
       17 ADDK                             R6 R3 K7 [0.1]
       18 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       20 GETIMPORT                        R4 K10 [math.max]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R6 R0 K4 ["controls"]
       25 GETTABLEKS                       R5 R6 K11 ["minY"]
       27 GETTABLEKS                       R8 R0 K4 ["controls"]
       29 GETTABLEKS                       R7 R8 K12 ["maxY"]
       31 ADDK                             R8 R5 K7 [0.1]
       32 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       34 GETIMPORT                        R6 K10 [math.max]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K13 ["createElement"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K14 ["FoundationProvider"]
       43 DUPTABLE                         R9 K16 [{"theme"}]
       44 GETTABLEKS                       R11 R0 K4 ["controls"]
       46 GETTABLEKS                       R10 R11 K15 ["theme"]
       48 JUMPIF                           R10 ; [+7]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R12 R13 K17 ["Enums"]
       52 GETTABLEKS                       R11 R12 K18 ["Theme"]
       54 GETTABLEKS                       R10 R11 K19 ["Dark"]
       56 SETTABLEKS                       R10 R9 K15 ["theme"]
       58 DUPTABLE                         R10 K21 [{"Container"}]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K13 ["createElement"]
       62 GETUPVAL                         R12 2
       63 DUPTABLE                         R13 K24 [{"Size", "BackgroundTransparency"}]
       64 GETIMPORT                        R14 K26 [UDim2.new]
       66 LOADN                            R15 1
       67 LOADN                            R16 0
       68 LOADN                            R17 0
       69 LOADN                            R18 44
       70 CALL                             R14 4 1
       71 SETTABLEKS                       R14 R13 K22 ["Size"]
       73 LOADN                            R14 1
       74 SETTABLEKS                       R14 R13 K23 ["BackgroundTransparency"]
       76 DUPTABLE                         R14 K30 [{"Layout", "ValueDisplay", "Dragbox"}]
       77 GETUPVAL                         R16 0
       78 GETTABLEKS                       R15 R16 K13 ["createElement"]
       80 LOADK                            R16 K31 ["UIListLayout"]
       81 DUPTABLE                         R17 K36 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       82 GETIMPORT                        R18 K39 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R18 R17 K32 ["FillDirection"]
       86 GETIMPORT                        R18 K41 [Enum.HorizontalAlignment.Center]
       88 SETTABLEKS                       R18 R17 K33 ["HorizontalAlignment"]
       90 GETIMPORT                        R18 K42 [Enum.VerticalAlignment.Center]
       92 SETTABLEKS                       R18 R17 K34 ["VerticalAlignment"]
       94 GETIMPORT                        R18 K44 [UDim.new]
       96 LOADN                            R19 0
       97 LOADN                            R20 10
       98 CALL                             R18 2 1
       99 SETTABLEKS                       R18 R17 K35 ["Padding"]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K27 ["Layout"]
      104 GETUPVAL                         R16 0
      105 GETTABLEKS                       R15 R16 K13 ["createElement"]
      107 GETUPVAL                         R16 3
      108 DUPTABLE                         R17 K48 [{"Size", "Text", "TextSize", "LayoutOrder"}]
      109 GETIMPORT                        R18 K26 [UDim2.new]
      111 LOADN                            R19 1
      112 LOADN                            R20 0
      113 LOADN                            R21 0
      114 LOADN                            R22 30
      115 CALL                             R18 4 1
      116 SETTABLEKS                       R18 R17 K22 ["Size"]
      118 DUPCLOSURE                       R20 K49 [PROTO_0]
      119 NAMECALL                         R18 R1 K50 ["map"]
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K45 ["Text"]
      124 LOADN                            R18 16
      125 SETTABLEKS                       R18 R17 K46 ["TextSize"]
      127 LOADN                            R18 1
      128 SETTABLEKS                       R18 R17 K47 ["LayoutOrder"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K28 ["ValueDisplay"]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R15 R16 K13 ["createElement"]
      136 GETUPVAL                         R16 4
      137 DUPTABLE                         R17 K58 [{"value", "knobSize", "knobVisibility", "variant", "minX", "maxX", "minY", "maxY", "length", "onValueChanged", "knob", "LayoutOrder"}]
      138 SETTABLEKS                       R1 R17 K51 ["value"]
      140 GETTABLEKS                       R19 R0 K4 ["controls"]
      142 GETTABLEKS                       R18 R19 K52 ["knobSize"]
      144 SETTABLEKS                       R18 R17 K52 ["knobSize"]
      146 GETTABLEKS                       R19 R0 K4 ["controls"]
      148 GETTABLEKS                       R18 R19 K53 ["knobVisibility"]
      150 SETTABLEKS                       R18 R17 K53 ["knobVisibility"]
      152 GETTABLEKS                       R19 R0 K4 ["controls"]
      154 GETTABLEKS                       R18 R19 K54 ["variant"]
      156 SETTABLEKS                       R18 R17 K54 ["variant"]
      158 SETTABLEKS                       R3 R17 K5 ["minX"]
      160 SETTABLEKS                       R4 R17 K6 ["maxX"]
      162 SETTABLEKS                       R5 R17 K11 ["minY"]
      164 SETTABLEKS                       R6 R17 K12 ["maxY"]
      166 GETIMPORT                        R18 K44 [UDim.new]
      168 LOADN                            R19 0
      169 LOADN                            R20 200
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K55 ["length"]
      173 SETTABLEKS                       R2 R17 K56 ["onValueChanged"]
      175 GETTABLEKS                       R20 R0 K4 ["controls"]
      177 GETTABLEKS                       R19 R20 K59 ["hasCustomKnob"]
      179 JUMPIFNOT                        R19 ; [+22]
      180 GETUPVAL                         R19 0
      181 GETTABLEKS                       R18 R19 K13 ["createElement"]
      183 GETUPVAL                         R19 5
      184 DUPTABLE                         R20 K63 [{"name", "size", "AnchorPoint"}]
      185 LOADK                            R21 K64 ["icons/graphic/logomark-gradient_xlarge"]
      186 SETTABLEKS                       R21 R20 K60 ["name"]
      188 GETUPVAL                         R22 6
      189 GETTABLEKS                       R21 R22 K65 ["Medium"]
      191 SETTABLEKS                       R21 R20 K61 ["size"]
      193 GETIMPORT                        R21 K3 [Vector2.new]
      195 LOADK                            R22 K66 [0.5]
      196 LOADK                            R23 K66 [0.5]
      197 CALL                             R21 2 1
      198 SETTABLEKS                       R21 R20 K62 ["AnchorPoint"]
      200 CALL                             R18 2 1
      201 JUMP                             ; [+1]
      202 LOADNIL                          R18
      203 SETTABLEKS                       R18 R17 K57 ["knob"]
      205 LOADN                            R18 3
      206 SETTABLEKS                       R18 R17 K47 ["LayoutOrder"]
      208 CALL                             R15 2 1
      209 SETTABLEKS                       R15 R14 K29 ["Dragbox"]
      211 CALL                             R11 3 1
      212 SETTABLEKS                       R11 R10 K20 ["Container"]
      214 CALL                             R7 3 -1
      215 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+53]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["current"]
        6 ADDK                             R1 R2 K0 [0.0166666666666667]
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 SUB                              R1 R2 R3
       12 MULK                             R0 R1 K2 [0.5]
       13 GETUPVAL                         R3 4
       14 GETUPVAL                         R4 5
       15 SUB                              R2 R3 R4
       16 MULK                             R1 R2 K2 [0.5]
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R5 3
       19 ADD                              R3 R4 R5
       20 MULK                             R2 R3 K2 [0.5]
       21 GETUPVAL                         R5 4
       22 GETUPVAL                         R6 5
       23 ADD                              R4 R5 R6
       24 MULK                             R3 R4 K2 [0.5]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K1 ["current"]
       28 FASTCALL1                        MATH_COS R7 ; [+2]
       29 GETIMPORT                        R6 K5 [math.cos]
       31 CALL                             R6 1 1
       32 MUL                              R5 R6 R0
       33 ADD                              R4 R2 R5
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K1 ["current"]
       37 FASTCALL1                        MATH_SIN R8 ; [+2]
       38 GETIMPORT                        R7 K7 [math.sin]
       40 CALL                             R7 1 1
       41 MUL                              R6 R7 R1
       42 ADD                              R5 R3 R6
       43 GETUPVAL                         R6 6
       44 GETIMPORT                        R7 K10 [Vector2.new]
       46 MOVE                             R8 R4
       47 MOVE                             R9 R5
       48 CALL                             R7 2 -1
       49 CALL                             R6 -1 0
       50 GETIMPORT                        R6 K13 [task.wait]
       52 LOADK                            R7 K0 [0.0166666666666667]
       53 CALL                             R6 1 0
       54 JUMPBACK                         ; [-55]
       55 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+17]
        2 LOADB                            R0 1
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CALL                             R1 1 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          REF R0
       16 CLOSEUPVALS                      R0
       17 RETURN                           R1 1
       18 CLOSEUPVALS                      R0
       19 LOADNIL                          R0
       20 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["X: %.2f, Y: %.2f"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["useRef"]
       17 LOADN                            R6 0
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R7 R0 K6 ["controls"]
       21 GETTABLEKS                       R6 R7 K7 ["minX"]
       23 GETTABLEKS                       R9 R0 K6 ["controls"]
       25 GETTABLEKS                       R8 R9 K8 ["maxX"]
       27 ADDK                             R9 R6 K9 [0.1]
       28 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       30 GETIMPORT                        R7 K12 [math.max]
       32 CALL                             R7 2 1
       33 GETTABLEKS                       R9 R0 K6 ["controls"]
       35 GETTABLEKS                       R8 R9 K13 ["minY"]
       37 GETTABLEKS                       R11 R0 K6 ["controls"]
       39 GETTABLEKS                       R10 R11 K14 ["maxY"]
       41 ADDK                             R11 R8 K9 [0.1]
       42 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       44 GETIMPORT                        R9 K12 [math.max]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K15 ["useEffect"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R12 0 5
       60 MOVE                             R13 R3
       61 MOVE                             R14 R6
       62 MOVE                             R15 R7
       63 MOVE                             R16 R8
       64 MOVE                             R17 R9
       65 SETLIST                          R12 R13 5 [1]
       67 CALL                             R10 2 0
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K16 ["createElement"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R11 R12 K17 ["FoundationProvider"]
       74 DUPTABLE                         R12 K19 [{"theme"}]
       75 GETTABLEKS                       R14 R0 K6 ["controls"]
       77 GETTABLEKS                       R13 R14 K18 ["theme"]
       79 JUMPIF                           R13 ; [+7]
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R15 R16 K20 ["Enums"]
       83 GETTABLEKS                       R14 R15 K21 ["Theme"]
       85 GETTABLEKS                       R13 R14 K22 ["Dark"]
       87 SETTABLEKS                       R13 R12 K18 ["theme"]
       89 NEWTABLE                         R13 0 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K16 ["createElement"]
       94 GETUPVAL                         R15 2
       95 DUPTABLE                         R16 K25 [{"Size", "BackgroundTransparency"}]
       96 GETIMPORT                        R17 K27 [UDim2.new]
       98 LOADN                            R18 1
       99 LOADN                            R19 0
      100 LOADN                            R20 0
      101 LOADN                            R21 94
      102 CALL                             R17 4 1
      103 SETTABLEKS                       R17 R16 K23 ["Size"]
      105 LOADN                            R17 1
      106 SETTABLEKS                       R17 R16 K24 ["BackgroundTransparency"]
      108 DUPTABLE                         R17 K32 [{"Layout", "ValueDisplay", "Dragbox", "PlayButton"}]
      109 GETUPVAL                         R19 0
      110 GETTABLEKS                       R18 R19 K16 ["createElement"]
      112 LOADK                            R19 K33 ["UIListLayout"]
      113 DUPTABLE                         R20 K38 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      114 GETIMPORT                        R21 K41 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R21 R20 K34 ["FillDirection"]
      118 GETIMPORT                        R21 K43 [Enum.HorizontalAlignment.Center]
      120 SETTABLEKS                       R21 R20 K35 ["HorizontalAlignment"]
      122 GETIMPORT                        R21 K44 [Enum.VerticalAlignment.Center]
      124 SETTABLEKS                       R21 R20 K36 ["VerticalAlignment"]
      126 GETIMPORT                        R21 K46 [UDim.new]
      128 LOADN                            R22 0
      129 LOADN                            R23 10
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K37 ["Padding"]
      133 CALL                             R18 2 1
      134 SETTABLEKS                       R18 R17 K28 ["Layout"]
      136 GETUPVAL                         R19 0
      137 GETTABLEKS                       R18 R19 K16 ["createElement"]
      139 GETUPVAL                         R19 3
      140 DUPTABLE                         R20 K50 [{"Size", "Text", "TextSize", "LayoutOrder"}]
      141 GETIMPORT                        R21 K27 [UDim2.new]
      143 LOADN                            R22 1
      144 LOADN                            R23 0
      145 LOADN                            R24 0
      146 LOADN                            R25 30
      147 CALL                             R21 4 1
      148 SETTABLEKS                       R21 R20 K23 ["Size"]
      150 DUPCLOSURE                       R23 K51 [PROTO_5]
      151 NAMECALL                         R21 R1 K52 ["map"]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K47 ["Text"]
      156 LOADN                            R21 16
      157 SETTABLEKS                       R21 R20 K48 ["TextSize"]
      159 LOADN                            R21 1
      160 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K29 ["ValueDisplay"]
      165 GETUPVAL                         R19 0
      166 GETTABLEKS                       R18 R19 K16 ["createElement"]
      168 GETUPVAL                         R19 4
      169 DUPTABLE                         R20 K61 [{"value", "minX", "maxX", "minY", "maxY", "length", "isDisabled", "knobVisibility", "knobSize", "variant", "onValueChanged", "knob", "LayoutOrder"}]
      170 SETTABLEKS                       R1 R20 K53 ["value"]
      172 SETTABLEKS                       R6 R20 K7 ["minX"]
      174 SETTABLEKS                       R7 R20 K8 ["maxX"]
      176 SETTABLEKS                       R8 R20 K13 ["minY"]
      178 SETTABLEKS                       R9 R20 K14 ["maxY"]
      180 GETIMPORT                        R21 K46 [UDim.new]
      182 LOADN                            R22 0
      183 LOADN                            R23 200
      184 CALL                             R21 2 1
      185 SETTABLEKS                       R21 R20 K54 ["length"]
      187 GETTABLEKS                       R22 R0 K6 ["controls"]
      189 GETTABLEKS                       R21 R22 K55 ["isDisabled"]
      191 SETTABLEKS                       R21 R20 K55 ["isDisabled"]
      193 GETUPVAL                         R23 5
      194 GETTABLEKS                       R22 R23 K62 ["VisibilityEnum"]
      196 GETTABLEKS                       R21 R22 K63 ["Always"]
      198 SETTABLEKS                       R21 R20 K56 ["knobVisibility"]
      200 GETTABLEKS                       R22 R0 K6 ["controls"]
      202 GETTABLEKS                       R21 R22 K57 ["knobSize"]
      204 SETTABLEKS                       R21 R20 K57 ["knobSize"]
      206 GETUPVAL                         R23 5
      207 GETTABLEKS                       R22 R23 K64 ["VariantEnum"]
      209 GETTABLEKS                       R21 R22 K65 ["Standard"]
      211 SETTABLEKS                       R21 R20 K58 ["variant"]
      213 SETTABLEKS                       R2 R20 K59 ["onValueChanged"]
      215 GETTABLEKS                       R23 R0 K6 ["controls"]
      217 GETTABLEKS                       R22 R23 K66 ["hasCustomKnob"]
      219 JUMPIFNOT                        R22 ; [+22]
      220 GETUPVAL                         R22 0
      221 GETTABLEKS                       R21 R22 K16 ["createElement"]
      223 GETUPVAL                         R22 6
      224 DUPTABLE                         R23 K70 [{"name", "size", "AnchorPoint"}]
      225 LOADK                            R24 K71 ["icons/graphic/logomark-gradient_xlarge"]
      226 SETTABLEKS                       R24 R23 K67 ["name"]
      228 GETUPVAL                         R25 7
      229 GETTABLEKS                       R24 R25 K72 ["Medium"]
      231 SETTABLEKS                       R24 R23 K68 ["size"]
      233 GETIMPORT                        R24 K3 [Vector2.new]
      235 LOADK                            R25 K73 [0.5]
      236 LOADK                            R26 K73 [0.5]
      237 CALL                             R24 2 1
      238 SETTABLEKS                       R24 R23 K69 ["AnchorPoint"]
      240 CALL                             R21 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R21
      243 SETTABLEKS                       R21 R20 K60 ["knob"]
      245 LOADN                            R21 3
      246 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K30 ["Dragbox"]
      251 GETUPVAL                         R19 0
      252 GETTABLEKS                       R18 R19 K16 ["createElement"]
      254 GETUPVAL                         R19 8
      255 DUPTABLE                         R20 K76 [{"text", "onActivated", "LayoutOrder"}]
      256 JUMPIFNOT                        R3 ; [+2]
      257 LOADK                            R21 K77 ["Pause"]
      258 JUMP                             ; [+1]
      259 LOADK                            R21 K78 ["Play"]
      260 SETTABLEKS                       R21 R20 K74 ["text"]
      262 NEWCLOSURE                       R21 P2
      263 CAPTURE                          VAL R4
      264 SETTABLEKS                       R21 R20 K75 ["onActivated"]
      266 LOADN                            R21 4
      267 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      269 CALL                             R18 2 1
      270 SETTABLEKS                       R18 R17 K31 ["PlayButton"]
      272 CALL                             R14 3 -1
      273 SETLIST                          R13 R14 -1 [1]
      275 CALL                             R10 3 -1
      276 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Icon"]
       26 GETTABLEKS                       R6 R4 K11 ["View"]
       28 GETTABLEKS                       R7 R4 K12 ["Button"]
       30 GETTABLEKS                       R8 R4 K13 ["Text"]
       32 GETTABLEKS                       R10 R4 K14 ["Enums"]
       34 GETTABLEKS                       R9 R10 K15 ["IconSize"]
       36 GETIMPORT                        R10 K6 [require]
       38 GETTABLEKS                       R12 R0 K16 ["Components"]
       40 GETTABLEKS                       R11 R12 K17 ["DragboxComponent"]
       42 CALL                             R10 1 1
       43 GETIMPORT                        R11 K6 [require]
       45 GETTABLEKS                       R14 R0 K16 ["Components"]
       47 GETTABLEKS                       R13 R14 K17 ["DragboxComponent"]
       49 GETTABLEKS                       R12 R13 K18 ["DragboxTypes"]
       51 CALL                             R11 1 1
       52 DUPTABLE                         R12 K22 [{"summary", "stories", "controls"}]
       53 LOADK                            R13 K23 ["If dragging does not work make sure to deselect any tools in Studio! By default the \"Select\" tool is selected and will interfere with dragging behavior"]
       54 SETTABLEKS                       R13 R12 K19 ["summary"]
       56 NEWTABLE                         R13 0 2
       58 DUPTABLE                         R14 K26 [{"name", "summary", "story"}]
       59 LOADK                            R15 K27 ["Configurable"]
       60 SETTABLEKS                       R15 R14 K24 ["name"]
       62 LOADK                            R15 K28 ["Basic configurable dragbox"]
       63 SETTABLEKS                       R15 R14 K19 ["summary"]
       65 DUPCLOSURE                       R15 K29 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R15 R14 K25 ["story"]
       75 DUPTABLE                         R15 K26 [{"name", "summary", "story"}]
       76 LOADK                            R16 K30 ["Animated position"]
       77 SETTABLEKS                       R16 R15 K24 ["name"]
       79 LOADK                            R16 K31 ["Press the Play button to animate the dragbox position in a circular motion"]
       80 SETTABLEKS                       R16 R15 K19 ["summary"]
       82 DUPCLOSURE                       R16 K32 [PROTO_8]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R16 R15 K25 ["story"]
       94 SETLIST                          R13 R14 2 [1]
       96 SETTABLEKS                       R13 R12 K20 ["stories"]
       98 DUPTABLE                         R13 K42 [{"knobSize", "knobVisibility", "variant", "hasCustomKnob", "minX", "maxX", "minY", "maxY", "theme"}]
       99 GETTABLEKS                       R14 R2 K43 ["values"]
      101 GETTABLEKS                       R15 R11 K44 ["InputSizeEnum"]
      103 CALL                             R14 1 1
      104 SETTABLEKS                       R14 R13 K33 ["knobSize"]
      106 GETTABLEKS                       R14 R2 K43 ["values"]
      108 GETTABLEKS                       R15 R11 K45 ["VisibilityEnum"]
      110 CALL                             R14 1 1
      111 SETTABLEKS                       R14 R13 K34 ["knobVisibility"]
      113 GETTABLEKS                       R14 R2 K43 ["values"]
      115 GETTABLEKS                       R15 R11 K46 ["VariantEnum"]
      117 CALL                             R14 1 1
      118 SETTABLEKS                       R14 R13 K35 ["variant"]
      120 LOADB                            R14 0
      121 SETTABLEKS                       R14 R13 K36 ["hasCustomKnob"]
      123 LOADN                            R14 255
      124 SETTABLEKS                       R14 R13 K37 ["minX"]
      126 LOADN                            R14 1
      127 SETTABLEKS                       R14 R13 K38 ["maxX"]
      129 LOADN                            R14 255
      130 SETTABLEKS                       R14 R13 K39 ["minY"]
      132 LOADN                            R14 1
      133 SETTABLEKS                       R14 R13 K40 ["maxY"]
      135 GETTABLEKS                       R14 R2 K43 ["values"]
      137 GETTABLEKS                       R16 R4 K14 ["Enums"]
      139 GETTABLEKS                       R15 R16 K47 ["Theme"]
      141 CALL                             R14 1 1
      142 SETTABLEKS                       R14 R13 K41 ["theme"]
      144 SETTABLEKS                       R13 R12 K21 ["controls"]
      146 RETURN                           R12 1
