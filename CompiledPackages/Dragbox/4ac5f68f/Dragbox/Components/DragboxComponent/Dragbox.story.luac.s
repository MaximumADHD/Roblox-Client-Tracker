PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["X: %.2f, Y: %.2f"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETTABLEKS                       R3 R0 K4 ["controls"]
       11 GETTABLEKS                       R3 R3 K5 ["minX"]
       13 GETTABLEKS                       R5 R0 K4 ["controls"]
       15 GETTABLEKS                       R5 R5 K6 ["maxX"]
       17 ADDK                             R6 R3 K7 [0.1]
       18 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       20 GETIMPORT                        R4 K10 [math.max]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R5 R0 K4 ["controls"]
       25 GETTABLEKS                       R5 R5 K11 ["minY"]
       27 GETTABLEKS                       R7 R0 K4 ["controls"]
       29 GETTABLEKS                       R7 R7 K12 ["maxY"]
       31 ADDK                             R8 R5 K7 [0.1]
       32 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       34 GETIMPORT                        R6 K10 [math.max]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K13 ["createElement"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K14 ["FoundationProvider"]
       43 DUPTABLE                         R9 K16 [{"theme"}]
       44 GETTABLEKS                       R10 R0 K4 ["controls"]
       46 GETTABLEKS                       R10 R10 K15 ["theme"]
       48 JUMPIF                           R10 ; [+7]
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K17 ["Enums"]
       52 GETTABLEKS                       R10 R10 K18 ["Theme"]
       54 GETTABLEKS                       R10 R10 K19 ["Dark"]
       56 SETTABLEKS                       R10 R9 K15 ["theme"]
       58 DUPTABLE                         R10 K21 [{"Container"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K13 ["createElement"]
       62 GETUPVAL                         R12 2
       63 DUPTABLE                         R13 K25 [{["Size"], ["BackgroundTransparency"] = 1}]
       64 GETIMPORT                        R14 K27 [UDim2.new]
       66 LOADN                            R15 1
       67 LOADN                            R16 0
       68 LOADN                            R17 0
       69 LOADN                            R18 300
       70 CALL                             R14 4 1
       71 SETTABLEKS                       R14 R13 K22 ["Size"]
       73 DUPTABLE                         R14 K31 [{"Layout", "ValueDisplay", "Dragbox"}]
       74 GETUPVAL                         R15 0
       75 GETTABLEKS                       R15 R15 K13 ["createElement"]
       77 LOADK                            R16 K32 ["UIListLayout"]
       78 DUPTABLE                         R17 K37 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       79 GETIMPORT                        R18 K40 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R18 R17 K33 ["FillDirection"]
       83 GETIMPORT                        R18 K42 [Enum.HorizontalAlignment.Center]
       85 SETTABLEKS                       R18 R17 K34 ["HorizontalAlignment"]
       87 GETIMPORT                        R18 K43 [Enum.VerticalAlignment.Center]
       89 SETTABLEKS                       R18 R17 K35 ["VerticalAlignment"]
       91 GETIMPORT                        R18 K45 [UDim.new]
       93 LOADN                            R19 0
       94 LOADN                            R20 10
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K36 ["Padding"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K28 ["Layout"]
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K13 ["createElement"]
      104 GETUPVAL                         R16 3
      105 DUPTABLE                         R17 K50 [{["Size"], ["Text"], ["TextSize"] = 16, ["LayoutOrder"] = 1}]
      106 GETIMPORT                        R18 K27 [UDim2.new]
      108 LOADN                            R19 1
      109 LOADN                            R20 0
      110 LOADN                            R21 0
      111 LOADN                            R22 30
      112 CALL                             R18 4 1
      113 SETTABLEKS                       R18 R17 K22 ["Size"]
      115 DUPCLOSURE                       R20 K51 [PROTO_0]
      116 NAMECALL                         R18 R1 K52 ["map"]
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R17 K46 ["Text"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K29 ["ValueDisplay"]
      124 GETUPVAL                         R15 0
      125 GETTABLEKS                       R15 R15 K13 ["createElement"]
      127 GETUPVAL                         R16 4
      128 DUPTABLE                         R17 K61 [{["value"], ["knobSize"], ["knobVisibility"], ["variant"], ["minX"], ["maxX"], ["minY"], ["maxY"], ["length"], ["onValueChanged"], ["knob"], ["LayoutOrder"] = 3}]
      129 SETTABLEKS                       R1 R17 K53 ["value"]
      131 GETTABLEKS                       R18 R0 K4 ["controls"]
      133 GETTABLEKS                       R18 R18 K54 ["knobSize"]
      135 SETTABLEKS                       R18 R17 K54 ["knobSize"]
      137 GETTABLEKS                       R18 R0 K4 ["controls"]
      139 GETTABLEKS                       R18 R18 K55 ["knobVisibility"]
      141 SETTABLEKS                       R18 R17 K55 ["knobVisibility"]
      143 GETTABLEKS                       R18 R0 K4 ["controls"]
      145 GETTABLEKS                       R18 R18 K56 ["variant"]
      147 SETTABLEKS                       R18 R17 K56 ["variant"]
      149 SETTABLEKS                       R3 R17 K5 ["minX"]
      151 SETTABLEKS                       R4 R17 K6 ["maxX"]
      153 SETTABLEKS                       R5 R17 K11 ["minY"]
      155 SETTABLEKS                       R6 R17 K12 ["maxY"]
      157 GETIMPORT                        R18 K45 [UDim.new]
      159 LOADN                            R19 0
      160 LOADN                            R20 200
      161 CALL                             R18 2 1
      162 SETTABLEKS                       R18 R17 K57 ["length"]
      164 SETTABLEKS                       R2 R17 K58 ["onValueChanged"]
      166 GETTABLEKS                       R19 R0 K4 ["controls"]
      168 GETTABLEKS                       R19 R19 K62 ["hasCustomKnob"]
      170 JUMPIFNOT                        R19 ; [+19]
      171 GETUPVAL                         R18 0
      172 GETTABLEKS                       R18 R18 K13 ["createElement"]
      174 GETUPVAL                         R19 5
      175 DUPTABLE                         R20 K67 [{["name"] = "icons/graphic/logomark-gradient_xlarge", ["size"], ["AnchorPoint"]}]
      176 GETUPVAL                         R21 6
      177 GETTABLEKS                       R21 R21 K68 ["Medium"]
      179 SETTABLEKS                       R21 R20 K65 ["size"]
      181 GETIMPORT                        R21 K3 [Vector2.new]
      183 LOADK                            R22 K69 [0.5]
      184 LOADK                            R23 K69 [0.5]
      185 CALL                             R21 2 1
      186 SETTABLEKS                       R21 R20 K66 ["AnchorPoint"]
      188 CALL                             R18 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R18
      191 SETTABLEKS                       R18 R17 K59 ["knob"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K30 ["Dragbox"]
      196 CALL                             R11 3 1
      197 SETTABLEKS                       R11 R10 K20 ["Container"]
      199 CALL                             R7 3 -1
      200 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+53]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["current"]
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
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K1 ["current"]
       28 FASTCALL1                        MATH_COS R7 ; [+2]
       29 GETIMPORT                        R6 K5 [math.cos]
       31 CALL                             R6 1 1
       32 MUL                              R5 R6 R0
       33 ADD                              R4 R2 R5
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K1 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["useRef"]
       17 LOADN                            R6 0
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R0 K6 ["controls"]
       21 GETTABLEKS                       R6 R6 K7 ["minX"]
       23 GETTABLEKS                       R8 R0 K6 ["controls"]
       25 GETTABLEKS                       R8 R8 K8 ["maxX"]
       27 ADDK                             R9 R6 K9 [0.1]
       28 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       30 GETIMPORT                        R7 K12 [math.max]
       32 CALL                             R7 2 1
       33 GETTABLEKS                       R8 R0 K6 ["controls"]
       35 GETTABLEKS                       R8 R8 K13 ["minY"]
       37 GETTABLEKS                       R10 R0 K6 ["controls"]
       39 GETTABLEKS                       R10 R10 K14 ["maxY"]
       41 ADDK                             R11 R8 K9 [0.1]
       42 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       44 GETIMPORT                        R9 K12 [math.max]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K15 ["useEffect"]
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
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K16 ["createElement"]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K17 ["FoundationProvider"]
       74 DUPTABLE                         R12 K19 [{"theme"}]
       75 GETTABLEKS                       R13 R0 K6 ["controls"]
       77 GETTABLEKS                       R13 R13 K18 ["theme"]
       79 JUMPIF                           R13 ; [+7]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R13 R13 K20 ["Enums"]
       83 GETTABLEKS                       R13 R13 K21 ["Theme"]
       85 GETTABLEKS                       R13 R13 K22 ["Dark"]
       87 SETTABLEKS                       R13 R12 K18 ["theme"]
       89 NEWTABLE                         R13 0 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K16 ["createElement"]
       94 GETUPVAL                         R15 2
       95 DUPTABLE                         R16 K26 [{["Size"], ["BackgroundTransparency"] = 1}]
       96 GETIMPORT                        R17 K28 [UDim2.new]
       98 LOADN                            R18 1
       99 LOADN                            R19 0
      100 LOADN                            R20 0
      101 LOADN                            R21 350
      102 CALL                             R17 4 1
      103 SETTABLEKS                       R17 R16 K23 ["Size"]
      105 DUPTABLE                         R17 K33 [{"Layout", "ValueDisplay", "Dragbox", "PlayButton"}]
      106 GETUPVAL                         R18 0
      107 GETTABLEKS                       R18 R18 K16 ["createElement"]
      109 LOADK                            R19 K34 ["UIListLayout"]
      110 DUPTABLE                         R20 K39 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      111 GETIMPORT                        R21 K42 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R21 R20 K35 ["FillDirection"]
      115 GETIMPORT                        R21 K44 [Enum.HorizontalAlignment.Center]
      117 SETTABLEKS                       R21 R20 K36 ["HorizontalAlignment"]
      119 GETIMPORT                        R21 K45 [Enum.VerticalAlignment.Center]
      121 SETTABLEKS                       R21 R20 K37 ["VerticalAlignment"]
      123 GETIMPORT                        R21 K47 [UDim.new]
      125 LOADN                            R22 0
      126 LOADN                            R23 10
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K38 ["Padding"]
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K29 ["Layout"]
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K16 ["createElement"]
      136 GETUPVAL                         R19 3
      137 DUPTABLE                         R20 K52 [{["Size"], ["Text"], ["TextSize"] = 16, ["LayoutOrder"] = 1}]
      138 GETIMPORT                        R21 K28 [UDim2.new]
      140 LOADN                            R22 1
      141 LOADN                            R23 0
      142 LOADN                            R24 0
      143 LOADN                            R25 30
      144 CALL                             R21 4 1
      145 SETTABLEKS                       R21 R20 K23 ["Size"]
      147 DUPCLOSURE                       R23 K53 [PROTO_5]
      148 NAMECALL                         R21 R1 K54 ["map"]
      150 CALL                             R21 2 1
      151 SETTABLEKS                       R21 R20 K48 ["Text"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K30 ["ValueDisplay"]
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R18 R18 K16 ["createElement"]
      159 GETUPVAL                         R19 4
      160 DUPTABLE                         R20 K64 [{["value"], ["minX"], ["maxX"], ["minY"], ["maxY"], ["length"], ["isDisabled"], ["knobVisibility"], ["knobSize"], ["variant"], ["onValueChanged"], ["knob"], ["LayoutOrder"] = 3}]
      161 SETTABLEKS                       R1 R20 K55 ["value"]
      163 SETTABLEKS                       R6 R20 K7 ["minX"]
      165 SETTABLEKS                       R7 R20 K8 ["maxX"]
      167 SETTABLEKS                       R8 R20 K13 ["minY"]
      169 SETTABLEKS                       R9 R20 K14 ["maxY"]
      171 GETIMPORT                        R21 K47 [UDim.new]
      173 LOADN                            R22 0
      174 LOADN                            R23 200
      175 CALL                             R21 2 1
      176 SETTABLEKS                       R21 R20 K56 ["length"]
      178 GETTABLEKS                       R21 R0 K6 ["controls"]
      180 GETTABLEKS                       R21 R21 K57 ["isDisabled"]
      182 SETTABLEKS                       R21 R20 K57 ["isDisabled"]
      184 GETUPVAL                         R21 5
      185 GETTABLEKS                       R21 R21 K65 ["VisibilityEnum"]
      187 GETTABLEKS                       R21 R21 K66 ["Always"]
      189 SETTABLEKS                       R21 R20 K58 ["knobVisibility"]
      191 GETTABLEKS                       R21 R0 K6 ["controls"]
      193 GETTABLEKS                       R21 R21 K59 ["knobSize"]
      195 SETTABLEKS                       R21 R20 K59 ["knobSize"]
      197 GETUPVAL                         R21 5
      198 GETTABLEKS                       R21 R21 K67 ["VariantEnum"]
      200 GETTABLEKS                       R21 R21 K68 ["Standard"]
      202 SETTABLEKS                       R21 R20 K60 ["variant"]
      204 SETTABLEKS                       R2 R20 K61 ["onValueChanged"]
      206 GETTABLEKS                       R22 R0 K6 ["controls"]
      208 GETTABLEKS                       R22 R22 K69 ["hasCustomKnob"]
      210 JUMPIFNOT                        R22 ; [+19]
      211 GETUPVAL                         R21 0
      212 GETTABLEKS                       R21 R21 K16 ["createElement"]
      214 GETUPVAL                         R22 6
      215 DUPTABLE                         R23 K74 [{["name"] = "icons/graphic/logomark-gradient_xlarge", ["size"], ["AnchorPoint"]}]
      216 GETUPVAL                         R24 7
      217 GETTABLEKS                       R24 R24 K75 ["Medium"]
      219 SETTABLEKS                       R24 R23 K72 ["size"]
      221 GETIMPORT                        R24 K3 [Vector2.new]
      223 LOADK                            R25 K76 [0.5]
      224 LOADK                            R26 K76 [0.5]
      225 CALL                             R24 2 1
      226 SETTABLEKS                       R24 R23 K73 ["AnchorPoint"]
      228 CALL                             R21 2 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R21
      231 SETTABLEKS                       R21 R20 K62 ["knob"]
      233 CALL                             R18 2 1
      234 SETTABLEKS                       R18 R17 K31 ["Dragbox"]
      236 GETUPVAL                         R18 0
      237 GETTABLEKS                       R18 R18 K16 ["createElement"]
      239 GETUPVAL                         R19 8
      240 DUPTABLE                         R20 K80 [{["text"], ["onActivated"], ["LayoutOrder"] = 4}]
      241 JUMPIFNOT                        R3 ; [+2]
      242 LOADK                            R21 K81 ["Pause"]
      243 JUMP                             ; [+1]
      244 LOADK                            R21 K82 ["Play"]
      245 SETTABLEKS                       R21 R20 K77 ["text"]
      247 NEWCLOSURE                       R21 P2
      248 CAPTURE                          VAL R4
      249 SETTABLEKS                       R21 R20 K78 ["onActivated"]
      251 CALL                             R18 2 1
      252 SETTABLEKS                       R18 R17 K32 ["PlayButton"]
      254 CALL                             R14 3 -1
      255 SETLIST                          R13 R14 -1 [1]
      257 CALL                             R10 3 -1
      258 RETURN                           R10 -1

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
       32 GETTABLEKS                       R9 R4 K14 ["Enums"]
       34 GETTABLEKS                       R9 R9 K15 ["IconSize"]
       36 GETIMPORT                        R10 K6 [require]
       38 GETTABLEKS                       R11 R0 K16 ["Components"]
       40 GETTABLEKS                       R11 R11 K17 ["DragboxComponent"]
       42 CALL                             R10 1 1
       43 GETIMPORT                        R11 K6 [require]
       45 GETTABLEKS                       R12 R0 K16 ["Components"]
       47 GETTABLEKS                       R12 R12 K17 ["DragboxComponent"]
       49 GETTABLEKS                       R12 R12 K18 ["DragboxTypes"]
       51 CALL                             R11 1 1
       52 DUPTABLE                         R12 K23 [{["summary"] = "If dragging does not work make sure to deselect any tools in Studio! By default the \"Select\" tool is selected and will interfere with dragging behavior", ["stories"], ["controls"]}]
       53 NEWTABLE                         R13 0 2
       55 DUPTABLE                         R14 K28 [{["name"] = "Configurable", ["summary"] = "Basic configurable dragbox", ["story"]}]
       56 DUPCLOSURE                       R15 K29 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R15 R14 K27 ["story"]
       66 DUPTABLE                         R15 K32 [{["name"] = "Animated position", ["summary"] = "Press the Play button to animate the dragbox position in a circular motion", ["story"]}]
       67 DUPCLOSURE                       R16 K33 [PROTO_8]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R16 R15 K27 ["story"]
       79 SETLIST                          R13 R14 2 [1]
       81 SETTABLEKS                       R13 R12 K21 ["stories"]
       83 DUPTABLE                         R13 K46 [{["knobSize"], ["knobVisibility"], ["variant"], ["hasCustomKnob"] = False, ["minX"] = -1, ["maxX"] = 1, ["minY"] = -1, ["maxY"] = 1, ["theme"]}]
       84 GETTABLEKS                       R14 R2 K47 ["values"]
       86 GETTABLEKS                       R15 R11 K48 ["InputSizeEnum"]
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K34 ["knobSize"]
       91 GETTABLEKS                       R14 R2 K47 ["values"]
       93 GETTABLEKS                       R15 R11 K49 ["VisibilityEnum"]
       95 CALL                             R14 1 1
       96 SETTABLEKS                       R14 R13 K35 ["knobVisibility"]
       98 GETTABLEKS                       R14 R2 K47 ["values"]
      100 GETTABLEKS                       R15 R11 K50 ["VariantEnum"]
      102 CALL                             R14 1 1
      103 SETTABLEKS                       R14 R13 K36 ["variant"]
      105 GETTABLEKS                       R14 R2 K47 ["values"]
      107 GETTABLEKS                       R15 R4 K14 ["Enums"]
      109 GETTABLEKS                       R15 R15 K51 ["Theme"]
      111 CALL                             R14 1 1
      112 SETTABLEKS                       R14 R13 K45 ["theme"]
      114 SETTABLEKS                       R13 R12 K22 ["controls"]
      116 RETURN                           R12 1
