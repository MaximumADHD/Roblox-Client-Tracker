PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K4 ["Size"]
        7 GETTABLEKS                       R1 R2 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R2 K7 ["Thicker"]
       16 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       18 RETURN                           R0 1

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K2 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R5 R1 K3 ["Radius"]
        7 GETTABLEKS                       R4 R5 K4 ["Medium"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K5 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R1
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K6 ["createElement"]
       25 GETUPVAL                         R5 2
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R0
       28 DUPTABLE                         R8 K14 [{"onActivated", "isDisabled", "selection", "cursor", "padding", "cornerRadius", "tag"}]
       29 GETTABLEKS                       R9 R0 K7 ["onActivated"]
       31 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K15 ["FoundationNumberInputBindableValue"]
       36 JUMPIFNOT                        R10 ; [+9]
       37 GETUPVAL                         R11 5
       38 GETTABLEKS                       R10 R11 K16 ["isBinding"]
       40 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       42 CALL                             R10 1 1
       43 JUMPIFNOT                        R10 ; [+2]
       44 LOADB                            R9 0
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R9 R0 K8 ["isDisabled"]
       48 SETTABLEKS                       R9 R8 K8 ["isDisabled"]
       50 DUPTABLE                         R9 K18 [{"Selectable"}]
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R11 R12 K15 ["FoundationNumberInputBindableValue"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       58 DUPCLOSURE                       R12 K19 [PROTO_1]
       59 CALL                             R10 2 1
       60 JUMP                             ; [+3]
       61 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       63 NOT                              R10 R11
       64 SETTABLEKS                       R10 R9 K17 ["Selectable"]
       66 SETTABLEKS                       R9 R8 K9 ["selection"]
       68 SETTABLEKS                       R3 R8 K10 ["cursor"]
       70 GETTABLEKS                       R9 R0 K11 ["padding"]
       72 SETTABLEKS                       R9 R8 K11 ["padding"]
       74 SETTABLEKS                       R2 R8 K12 ["cornerRadius"]
       76 GETTABLEKS                       R9 R0 K13 ["tag"]
       78 SETTABLEKS                       R9 R8 K13 ["tag"]
       80 CALL                             R6 2 1
       81 GETTABLEKS                       R7 R0 K20 ["children"]
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bgStyle"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["bgStyle"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["strokeStyle"]
        5 GETTABLEKS                       R2 R3 K1 ["Transparency"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["DISABLED_TRANSPARENCY"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K0 ["strokeStyle"]
       15 GETTABLEKS                       R1 R2 K1 ["Transparency"]
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["strokeStyle"]
        3 JUMPIFNOT                        R2 ; [+53]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["strokeThickness"]
        7 JUMPIFNOT                        R2 ; [+49]
        8 DUPTABLE                         R1 K6 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["strokeStyle"]
       12 GETTABLEKS                       R2 R3 K7 ["Color3"]
       14 SETTABLEKS                       R2 R1 K2 ["Color"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K8 ["FoundationNumberInputBindableValue"]
       19 JUMPIFNOT                        R3 ; [+8]
       20 GETUPVAL                         R2 2
       21 MOVE                             R3 R0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U4
       26 CALL                             R2 2 1
       27 JUMP                             ; [+17]
       28 JUMPIFNOT                        R0 ; [+11]
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K0 ["strokeStyle"]
       33 GETTABLEKS                       R3 R4 K3 ["Transparency"]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R4 R5 K9 ["DISABLED_TRANSPARENCY"]
       38 CALL                             R2 2 1
       39 JUMP                             ; [+5]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["strokeStyle"]
       43 GETTABLEKS                       R2 R3 K3 ["Transparency"]
       45 SETTABLEKS                       R2 R1 K3 ["Transparency"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R2 R3 K1 ["strokeThickness"]
       50 SETTABLEKS                       R2 R1 K4 ["Thickness"]
       52 GETIMPORT                        R2 K12 [Enum.BorderStrokePosition.Inner]
       54 SETTABLEKS                       R2 R1 K5 ["BorderStrokePosition"]
       56 RETURN                           R1 1
       57 LOADNIL                          R1
       58 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["None"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Background"]
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputVariant"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K1 ["Color"]
       12 GETTABLEKS                       R3 R4 K2 ["Shift"]
       14 GETTABLEKS                       R2 R3 K3 ["Shift_100"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Color"]
        3 GETTABLEKS                       R4 R5 K1 ["Stroke"]
        5 GETTABLEKS                       R3 R4 K2 ["Emphasis"]
        7 GETTABLEKS                       R2 R3 K3 ["Transparency"]
        9 LOADN                            R3 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["DISABLED_TRANSPARENCY"]
       14 JUMP                             ; [+1]
       15 LOADN                            R4 0
       16 FASTCALL                         MATH_LERP ; [+2]
       17 GETIMPORT                        R1 K7 [math.lerp]
       19 CALL                             R1 3 1
       20 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["Color3"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["DISABLED_TRANSPARENCY"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["None"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Background"]
        8 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputVariant"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K1 ["Color"]
       12 GETTABLEKS                       R3 R4 K2 ["Shift"]
       14 GETTABLEKS                       R2 R3 K3 ["Shift_100"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Color"]
        3 GETTABLEKS                       R4 R5 K1 ["Stroke"]
        5 GETTABLEKS                       R3 R4 K2 ["Emphasis"]
        7 GETTABLEKS                       R2 R3 K3 ["Transparency"]
        9 LOADN                            R3 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["DISABLED_TRANSPARENCY"]
       14 JUMP                             ; [+1]
       15 LOADN                            R4 0
       16 FASTCALL                         MATH_LERP ; [+2]
       17 GETIMPORT                        R1 K7 [math.lerp]
       19 CALL                             R1 3 1
       20 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["Color3"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["DISABLED_TRANSPARENCY"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 GETTABLEKS                       R5 R0 K1 ["controlsVariant"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R5 R0 K0 ["size"]
       13 GETUPVAL                         R8 3
       14 GETTABLEKS                       R7 R8 K2 ["FoundationNumberInputVariant"]
       16 JUMPIFNOT                        R7 ; [+3]
       17 GETTABLEKS                       R6 R0 K3 ["variant"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 CALL                             R3 3 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R5 R6 K4 ["FoundationInputVariantsConsolidateContainer"]
       25 JUMPIFNOT                        R5 ; [+3]
       26 GETTABLEKS                       R4 R3 K5 ["container"]
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R4 R3 K6 ["outerView"]
       31 GETTABLEKS                       R6 R1 K7 ["Stroke"]
       33 GETTABLEKS                       R5 R6 K8 ["Standard"]
       35 FASTCALL1                        MATH_CEIL R5 ; [+3]
       36 MOVE                             R8 R5
       37 GETIMPORT                        R7 K12 [math.ceil]
       39 CALL                             R7 1 1
       40 MULK                             R6 R7 K9 [2]
       41 GETIMPORT                        R7 K15 [UDim2.fromOffset]
       43 GETTABLEKS                       R10 R2 K16 ["splitButton"]
       45 GETTABLEKS                       R9 R10 K0 ["size"]
       47 SUB                              R8 R9 R6
       48 GETTABLEKS                       R11 R2 K16 ["splitButton"]
       50 GETTABLEKS                       R10 R11 K0 ["size"]
       52 SUB                              R9 R10 R6
       53 CALL                             R7 2 1
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R9 R10 K2 ["FoundationNumberInputVariant"]
       57 JUMPIFNOT                        R9 ; [+14]
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R8 R9 K17 ["useCallback"]
       61 NEWCLOSURE                       R9 P0
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U5
       64 NEWTABLE                         R10 0 1
       66 GETTABLEKS                       R11 R4 K18 ["bgStyle"]
       68 SETLIST                          R10 R11 1 [1]
       70 CALL                             R8 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R8
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R10 R11 K2 ["FoundationNumberInputVariant"]
       76 JUMPIFNOT                        R10 ; [+19]
       77 GETUPVAL                         R10 4
       78 GETTABLEKS                       R9 R10 K17 ["useCallback"]
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 NEWTABLE                         R11 0 2
       88 GETTABLEKS                       R12 R4 K19 ["strokeStyle"]
       90 GETTABLEKS                       R13 R4 K20 ["strokeThickness"]
       92 SETLIST                          R11 R12 2 [1]
       94 CALL                             R9 2 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 GETUPVAL                         R11 4
       98 GETTABLEKS                       R10 R11 K21 ["createElement"]
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R11 R12 K22 ["Fragment"]
      103 NEWTABLE                         R12 0 0
      105 DUPTABLE                         R13 K25 [{"ControlIncrement", "ControlDecrement"}]
      106 GETUPVAL                         R15 4
      107 GETTABLEKS                       R14 R15 K21 ["createElement"]
      109 GETUPVAL                         R15 9
      110 DUPTABLE                         R16 K37 [{"onActivated", "isDisabled", "stateLayer", "padding", "Size", "backgroundStyle", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
      111 GETTABLEKS                       R18 R0 K38 ["increment"]
      113 GETTABLEKS                       R17 R18 K39 ["onClick"]
      115 SETTABLEKS                       R17 R16 K26 ["onActivated"]
      117 GETUPVAL                         R19 3
      118 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      120 JUMPIFNOT                        R18 ; [+11]
      121 GETUPVAL                         R19 10
      122 GETTABLEKS                       R18 R19 K41 ["isBinding"]
      124 GETTABLEKS                       R20 R0 K38 ["increment"]
      126 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      128 CALL                             R18 1 1
      129 JUMPIFNOT                        R18 ; [+2]
      130 LOADB                            R17 0
      131 JUMP                             ; [+4]
      132 GETTABLEKS                       R18 R0 K38 ["increment"]
      134 GETTABLEKS                       R17 R18 K27 ["isDisabled"]
      136 SETTABLEKS                       R17 R16 K27 ["isDisabled"]
      138 GETUPVAL                         R19 3
      139 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      141 JUMPIFNOT                        R18 ; [+12]
      142 DUPTABLE                         R17 K43 [{"affordance"}]
      143 GETUPVAL                         R18 6
      144 GETTABLEKS                       R20 R0 K38 ["increment"]
      146 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      148 DUPCLOSURE                       R20 K44 [PROTO_6]
      149 CAPTURE                          UPVAL U11
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K42 ["affordance"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R17
      155 SETTABLEKS                       R17 R16 K28 ["stateLayer"]
      157 GETTABLEKS                       R18 R2 K45 ["button"]
      159 GETTABLEKS                       R17 R18 K29 ["padding"]
      161 SETTABLEKS                       R17 R16 K29 ["padding"]
      163 SETTABLEKS                       R7 R16 K30 ["Size"]
      165 GETUPVAL                         R19 3
      166 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      168 JUMPIFNOT                        R18 ; [+12]
      169 GETUPVAL                         R17 6
      170 GETTABLEKS                       R19 R0 K38 ["increment"]
      172 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      174 NEWCLOSURE                       R19 P3
      175 CAPTURE                          UPVAL U3
      176 CAPTURE                          VAL R8
      177 CAPTURE                          UPVAL U5
      178 CAPTURE                          VAL R1
      179 CALL                             R17 2 1
      180 JUMP                             ; [+23]
      181 GETUPVAL                         R19 3
      182 GETTABLEKS                       R18 R19 K2 ["FoundationNumberInputVariant"]
      184 JUMPIFNOT                        R18 ; [+7]
      185 MOVE                             R17 R8
      186 GETTABLEKS                       R19 R0 K38 ["increment"]
      188 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      190 CALL                             R17 1 1
      191 JUMP                             ; [+12]
      192 GETUPVAL                         R17 5
      193 GETTABLEKS                       R20 R1 K46 ["Color"]
      195 GETTABLEKS                       R19 R20 K47 ["Shift"]
      197 GETTABLEKS                       R18 R19 K48 ["Shift_100"]
      199 GETTABLEKS                       R20 R0 K38 ["increment"]
      201 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      203 CALL                             R17 2 1
      204 SETTABLEKS                       R17 R16 K31 ["backgroundStyle"]
      206 GETUPVAL                         R19 3
      207 GETTABLEKS                       R18 R19 K2 ["FoundationNumberInputVariant"]
      209 JUMPIFNOT                        R18 ; [+7]
      210 MOVE                             R17 R9
      211 GETTABLEKS                       R19 R0 K38 ["increment"]
      213 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      215 CALL                             R17 1 1
      216 JUMP                             ; [+56]
      217 DUPTABLE                         R17 K51 [{"Color", "Transparency", "Thickness"}]
      218 GETTABLEKS                       R21 R1 K46 ["Color"]
      220 GETTABLEKS                       R20 R21 K7 ["Stroke"]
      222 GETTABLEKS                       R19 R20 K52 ["Emphasis"]
      224 GETTABLEKS                       R18 R19 K53 ["Color3"]
      226 SETTABLEKS                       R18 R17 K46 ["Color"]
      228 GETUPVAL                         R20 3
      229 GETTABLEKS                       R19 R20 K40 ["FoundationNumberInputBindableValue"]
      231 JUMPIFNOT                        R19 ; [+10]
      232 GETUPVAL                         R18 6
      233 GETTABLEKS                       R20 R0 K38 ["increment"]
      235 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      237 NEWCLOSURE                       R20 P4
      238 CAPTURE                          VAL R1
      239 CAPTURE                          UPVAL U8
      240 CALL                             R18 2 1
      241 JUMP                             ; [+23]
      242 GETTABLEKS                       R22 R1 K46 ["Color"]
      244 GETTABLEKS                       R21 R22 K7 ["Stroke"]
      246 GETTABLEKS                       R20 R21 K52 ["Emphasis"]
      248 GETTABLEKS                       R19 R20 K49 ["Transparency"]
      250 LOADN                            R20 1
      251 GETTABLEKS                       R23 R0 K38 ["increment"]
      253 GETTABLEKS                       R22 R23 K27 ["isDisabled"]
      255 JUMPIFNOT                        R22 ; [+4]
      256 GETUPVAL                         R22 8
      257 GETTABLEKS                       R21 R22 K54 ["DISABLED_TRANSPARENCY"]
      259 JUMP                             ; [+1]
      260 LOADN                            R21 0
      261 FASTCALL                         MATH_LERP ; [+2]
      262 GETIMPORT                        R18 K56 [math.lerp]
      264 CALL                             R18 3 1
      265 SETTABLEKS                       R18 R17 K49 ["Transparency"]
      267 GETTABLEKS                       R19 R1 K7 ["Stroke"]
      269 GETTABLEKS                       R18 R19 K8 ["Standard"]
      271 SETTABLEKS                       R18 R17 K50 ["Thickness"]
      273 SETTABLEKS                       R17 R16 K32 ["stroke"]
      275 GETTABLEKS                       R18 R2 K16 ["splitButton"]
      277 GETTABLEKS                       R17 R18 K33 ["tag"]
      279 SETTABLEKS                       R17 R16 K33 ["tag"]
      281 LOADN                            R17 1
      282 SETTABLEKS                       R17 R16 K34 ["LayoutOrder"]
      284 GETUPVAL                         R19 3
      285 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      287 JUMPIF                           R18 ; [+9]
      288 GETTABLEKS                       R19 R0 K38 ["increment"]
      290 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      292 JUMPIFNOT                        R18 ; [+4]
      293 GETUPVAL                         R18 8
      294 GETTABLEKS                       R17 R18 K54 ["DISABLED_TRANSPARENCY"]
      296 JUMP                             ; [+1]
      297 LOADNIL                          R17
      298 SETTABLEKS                       R17 R16 K35 ["GroupTransparency"]
      300 LOADK                            R18 K57 ["%*--increment"]
      301 GETTABLEKS                       R20 R0 K36 ["testId"]
      303 NAMECALL                         R18 R18 K58 ["format"]
      305 CALL                             R18 2 1
      306 MOVE                             R17 R18
      307 SETTABLEKS                       R17 R16 K36 ["testId"]
      309 DUPTABLE                         R17 K60 [{"Icon"}]
      310 GETUPVAL                         R19 4
      311 GETTABLEKS                       R18 R19 K21 ["createElement"]
      313 GETUPVAL                         R19 12
      314 DUPTABLE                         R20 K65 [{"name", "size", "style", "AnchorPoint", "Position", "testId"}]
      315 GETUPVAL                         R23 13
      316 GETTABLEKS                       R22 R23 K59 ["Icon"]
      318 GETTABLEKS                       R21 R22 K66 ["PlusSmall"]
      320 SETTABLEKS                       R21 R20 K61 ["name"]
      322 GETTABLEKS                       R21 R0 K0 ["size"]
      324 SETTABLEKS                       R21 R20 K0 ["size"]
      326 GETUPVAL                         R23 3
      327 GETTABLEKS                       R22 R23 K40 ["FoundationNumberInputBindableValue"]
      329 JUMPIFNOT                        R22 ; [+9]
      330 GETUPVAL                         R21 6
      331 GETTABLEKS                       R23 R0 K38 ["increment"]
      333 GETTABLEKS                       R22 R23 K27 ["isDisabled"]
      335 DUPCLOSURE                       R23 K67 [PROTO_9]
      336 CAPTURE                          UPVAL U8
      337 CALL                             R21 2 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R21
      340 SETTABLEKS                       R21 R20 K62 ["style"]
      342 GETIMPORT                        R21 K70 [Vector2.new]
      344 LOADK                            R22 K71 [0.5]
      345 LOADK                            R23 K71 [0.5]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K63 ["AnchorPoint"]
      349 GETIMPORT                        R21 K73 [UDim2.fromScale]
      351 LOADK                            R22 K71 [0.5]
      352 LOADK                            R23 K71 [0.5]
      353 CALL                             R21 2 1
      354 SETTABLEKS                       R21 R20 K64 ["Position"]
      356 LOADK                            R22 K74 ["%*--increment-icon"]
      357 GETTABLEKS                       R24 R0 K36 ["testId"]
      359 NAMECALL                         R22 R22 K58 ["format"]
      361 CALL                             R22 2 1
      362 MOVE                             R21 R22
      363 SETTABLEKS                       R21 R20 K36 ["testId"]
      365 CALL                             R18 2 1
      366 SETTABLEKS                       R18 R17 K59 ["Icon"]
      368 CALL                             R14 3 1
      369 SETTABLEKS                       R14 R13 K23 ["ControlIncrement"]
      371 GETUPVAL                         R15 4
      372 GETTABLEKS                       R14 R15 K21 ["createElement"]
      374 GETUPVAL                         R15 9
      375 DUPTABLE                         R16 K37 [{"onActivated", "isDisabled", "stateLayer", "padding", "Size", "backgroundStyle", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
      376 GETTABLEKS                       R18 R0 K75 ["decrement"]
      378 GETTABLEKS                       R17 R18 K39 ["onClick"]
      380 SETTABLEKS                       R17 R16 K26 ["onActivated"]
      382 GETUPVAL                         R19 3
      383 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      385 JUMPIFNOT                        R18 ; [+11]
      386 GETUPVAL                         R19 10
      387 GETTABLEKS                       R18 R19 K41 ["isBinding"]
      389 GETTABLEKS                       R20 R0 K75 ["decrement"]
      391 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      393 CALL                             R18 1 1
      394 JUMPIFNOT                        R18 ; [+2]
      395 LOADB                            R17 0
      396 JUMP                             ; [+4]
      397 GETTABLEKS                       R18 R0 K75 ["decrement"]
      399 GETTABLEKS                       R17 R18 K27 ["isDisabled"]
      401 SETTABLEKS                       R17 R16 K27 ["isDisabled"]
      403 GETUPVAL                         R19 3
      404 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      406 JUMPIFNOT                        R18 ; [+12]
      407 DUPTABLE                         R17 K43 [{"affordance"}]
      408 GETUPVAL                         R18 6
      409 GETTABLEKS                       R20 R0 K75 ["decrement"]
      411 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      413 DUPCLOSURE                       R20 K76 [PROTO_10]
      414 CAPTURE                          UPVAL U11
      415 CALL                             R18 2 1
      416 SETTABLEKS                       R18 R17 K42 ["affordance"]
      418 JUMP                             ; [+1]
      419 LOADNIL                          R17
      420 SETTABLEKS                       R17 R16 K28 ["stateLayer"]
      422 GETTABLEKS                       R18 R2 K45 ["button"]
      424 GETTABLEKS                       R17 R18 K29 ["padding"]
      426 SETTABLEKS                       R17 R16 K29 ["padding"]
      428 SETTABLEKS                       R7 R16 K30 ["Size"]
      430 GETUPVAL                         R19 3
      431 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      433 JUMPIFNOT                        R18 ; [+12]
      434 GETUPVAL                         R17 6
      435 GETTABLEKS                       R19 R0 K75 ["decrement"]
      437 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      439 NEWCLOSURE                       R19 P7
      440 CAPTURE                          UPVAL U3
      441 CAPTURE                          VAL R8
      442 CAPTURE                          UPVAL U5
      443 CAPTURE                          VAL R1
      444 CALL                             R17 2 1
      445 JUMP                             ; [+23]
      446 GETUPVAL                         R19 3
      447 GETTABLEKS                       R18 R19 K2 ["FoundationNumberInputVariant"]
      449 JUMPIFNOT                        R18 ; [+7]
      450 MOVE                             R17 R8
      451 GETTABLEKS                       R19 R0 K75 ["decrement"]
      453 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      455 CALL                             R17 1 1
      456 JUMP                             ; [+12]
      457 GETUPVAL                         R17 5
      458 GETTABLEKS                       R20 R1 K46 ["Color"]
      460 GETTABLEKS                       R19 R20 K47 ["Shift"]
      462 GETTABLEKS                       R18 R19 K48 ["Shift_100"]
      464 GETTABLEKS                       R20 R0 K75 ["decrement"]
      466 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      468 CALL                             R17 2 1
      469 SETTABLEKS                       R17 R16 K31 ["backgroundStyle"]
      471 GETUPVAL                         R19 3
      472 GETTABLEKS                       R18 R19 K2 ["FoundationNumberInputVariant"]
      474 JUMPIFNOT                        R18 ; [+7]
      475 MOVE                             R17 R9
      476 GETTABLEKS                       R19 R0 K75 ["decrement"]
      478 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      480 CALL                             R17 1 1
      481 JUMP                             ; [+56]
      482 DUPTABLE                         R17 K51 [{"Color", "Transparency", "Thickness"}]
      483 GETTABLEKS                       R21 R1 K46 ["Color"]
      485 GETTABLEKS                       R20 R21 K7 ["Stroke"]
      487 GETTABLEKS                       R19 R20 K52 ["Emphasis"]
      489 GETTABLEKS                       R18 R19 K53 ["Color3"]
      491 SETTABLEKS                       R18 R17 K46 ["Color"]
      493 GETUPVAL                         R20 3
      494 GETTABLEKS                       R19 R20 K40 ["FoundationNumberInputBindableValue"]
      496 JUMPIFNOT                        R19 ; [+10]
      497 GETUPVAL                         R18 6
      498 GETTABLEKS                       R20 R0 K75 ["decrement"]
      500 GETTABLEKS                       R19 R20 K27 ["isDisabled"]
      502 NEWCLOSURE                       R20 P8
      503 CAPTURE                          VAL R1
      504 CAPTURE                          UPVAL U8
      505 CALL                             R18 2 1
      506 JUMP                             ; [+23]
      507 GETTABLEKS                       R22 R1 K46 ["Color"]
      509 GETTABLEKS                       R21 R22 K7 ["Stroke"]
      511 GETTABLEKS                       R20 R21 K52 ["Emphasis"]
      513 GETTABLEKS                       R19 R20 K49 ["Transparency"]
      515 LOADN                            R20 1
      516 GETTABLEKS                       R23 R0 K75 ["decrement"]
      518 GETTABLEKS                       R22 R23 K27 ["isDisabled"]
      520 JUMPIFNOT                        R22 ; [+4]
      521 GETUPVAL                         R22 8
      522 GETTABLEKS                       R21 R22 K54 ["DISABLED_TRANSPARENCY"]
      524 JUMP                             ; [+1]
      525 LOADN                            R21 0
      526 FASTCALL                         MATH_LERP ; [+2]
      527 GETIMPORT                        R18 K56 [math.lerp]
      529 CALL                             R18 3 1
      530 SETTABLEKS                       R18 R17 K49 ["Transparency"]
      532 GETTABLEKS                       R19 R1 K7 ["Stroke"]
      534 GETTABLEKS                       R18 R19 K8 ["Standard"]
      536 SETTABLEKS                       R18 R17 K50 ["Thickness"]
      538 SETTABLEKS                       R17 R16 K32 ["stroke"]
      540 GETTABLEKS                       R18 R2 K16 ["splitButton"]
      542 GETTABLEKS                       R17 R18 K33 ["tag"]
      544 SETTABLEKS                       R17 R16 K33 ["tag"]
      546 LOADN                            R17 255
      547 SETTABLEKS                       R17 R16 K34 ["LayoutOrder"]
      549 GETUPVAL                         R19 3
      550 GETTABLEKS                       R18 R19 K40 ["FoundationNumberInputBindableValue"]
      552 JUMPIF                           R18 ; [+9]
      553 GETTABLEKS                       R19 R0 K75 ["decrement"]
      555 GETTABLEKS                       R18 R19 K27 ["isDisabled"]
      557 JUMPIFNOT                        R18 ; [+4]
      558 GETUPVAL                         R18 8
      559 GETTABLEKS                       R17 R18 K54 ["DISABLED_TRANSPARENCY"]
      561 JUMP                             ; [+1]
      562 LOADNIL                          R17
      563 SETTABLEKS                       R17 R16 K35 ["GroupTransparency"]
      565 LOADK                            R18 K77 ["%*--decrement"]
      566 GETTABLEKS                       R20 R0 K36 ["testId"]
      568 NAMECALL                         R18 R18 K58 ["format"]
      570 CALL                             R18 2 1
      571 MOVE                             R17 R18
      572 SETTABLEKS                       R17 R16 K36 ["testId"]
      574 DUPTABLE                         R17 K60 [{"Icon"}]
      575 GETUPVAL                         R19 4
      576 GETTABLEKS                       R18 R19 K21 ["createElement"]
      578 GETUPVAL                         R19 12
      579 DUPTABLE                         R20 K65 [{"name", "size", "style", "AnchorPoint", "Position", "testId"}]
      580 GETUPVAL                         R23 13
      581 GETTABLEKS                       R22 R23 K59 ["Icon"]
      583 GETTABLEKS                       R21 R22 K78 ["MinusSmall"]
      585 SETTABLEKS                       R21 R20 K61 ["name"]
      587 GETTABLEKS                       R21 R0 K0 ["size"]
      589 SETTABLEKS                       R21 R20 K0 ["size"]
      591 GETUPVAL                         R23 3
      592 GETTABLEKS                       R22 R23 K40 ["FoundationNumberInputBindableValue"]
      594 JUMPIFNOT                        R22 ; [+9]
      595 GETUPVAL                         R21 6
      596 GETTABLEKS                       R23 R0 K75 ["decrement"]
      598 GETTABLEKS                       R22 R23 K27 ["isDisabled"]
      600 DUPCLOSURE                       R23 K79 [PROTO_13]
      601 CAPTURE                          UPVAL U8
      602 CALL                             R21 2 1
      603 JUMP                             ; [+1]
      604 LOADNIL                          R21
      605 SETTABLEKS                       R21 R20 K62 ["style"]
      607 GETIMPORT                        R21 K70 [Vector2.new]
      609 LOADK                            R22 K71 [0.5]
      610 LOADK                            R23 K71 [0.5]
      611 CALL                             R21 2 1
      612 SETTABLEKS                       R21 R20 K63 ["AnchorPoint"]
      614 GETIMPORT                        R21 K73 [UDim2.fromScale]
      616 LOADK                            R22 K71 [0.5]
      617 LOADK                            R23 K71 [0.5]
      618 CALL                             R21 2 1
      619 SETTABLEKS                       R21 R20 K64 ["Position"]
      621 LOADK                            R22 K80 ["%*--decrement-icon"]
      622 GETTABLEKS                       R24 R0 K36 ["testId"]
      624 NAMECALL                         R22 R22 K58 ["format"]
      626 CALL                             R22 2 1
      627 MOVE                             R21 R22
      628 SETTABLEKS                       R21 R20 K36 ["testId"]
      630 CALL                             R18 2 1
      631 SETTABLEKS                       R18 R17 K59 ["Icon"]
      633 CALL                             R14 3 1
      634 SETTABLEKS                       R14 R13 K24 ["ControlDecrement"]
      636 CALL                             R10 3 -1
      637 RETURN                           R10 -1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K5 ["Emphasis"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K6 ["DISABLED_TRANSPARENCY"]
       16 JUMP                             ; [+1]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       20 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["increment"]
        8 GETTABLEKS                       R1 R2 K2 ["isDisabled"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R0 2 1
       14 RETURN                           R0 1
       15 DUPTABLE                         R0 K5 [{"Color3", "Transparency"}]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K6 ["Color"]
       19 GETTABLEKS                       R3 R4 K7 ["Stroke"]
       21 GETTABLEKS                       R2 R3 K8 ["Emphasis"]
       23 GETTABLEKS                       R1 R2 K3 ["Color3"]
       25 SETTABLEKS                       R1 R0 K3 ["Color3"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K1 ["increment"]
       30 GETTABLEKS                       R2 R3 K2 ["isDisabled"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R1 R2 K9 ["DISABLED_TRANSPARENCY"]
       36 JUMP                             ; [+1]
       37 LOADN                            R1 0
       38 SETTABLEKS                       R1 R0 K4 ["Transparency"]
       40 RETURN                           R0 1

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K5 ["Emphasis"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K6 ["DISABLED_TRANSPARENCY"]
       16 JUMP                             ; [+1]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       20 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["decrement"]
        8 GETTABLEKS                       R1 R2 K2 ["isDisabled"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R0 2 1
       14 RETURN                           R0 1
       15 DUPTABLE                         R0 K5 [{"Color3", "Transparency"}]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K6 ["Color"]
       19 GETTABLEKS                       R3 R4 K7 ["Stroke"]
       21 GETTABLEKS                       R2 R3 K8 ["Emphasis"]
       23 GETTABLEKS                       R1 R2 K3 ["Color3"]
       25 SETTABLEKS                       R1 R0 K3 ["Color3"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K1 ["decrement"]
       30 GETTABLEKS                       R2 R3 K2 ["isDisabled"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R1 R2 K9 ["DISABLED_TRANSPARENCY"]
       36 JUMP                             ; [+1]
       37 LOADN                            R1 0
       38 SETTABLEKS                       R1 R0 K4 ["Transparency"]
       40 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 GETTABLEKS                       R5 R0 K1 ["controlsVariant"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R5 0 2
       20 MOVE                             R6 R1
       21 GETTABLEKS                       R8 R0 K3 ["increment"]
       23 GETTABLEKS                       R7 R8 K4 ["isDisabled"]
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U5
       37 NEWTABLE                         R6 0 2
       39 MOVE                             R7 R1
       40 GETTABLEKS                       R9 R0 K5 ["decrement"]
       42 GETTABLEKS                       R8 R9 K4 ["isDisabled"]
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R5 R6 K6 ["createElement"]
       50 GETUPVAL                         R6 6
       51 DUPTABLE                         R7 K10 [{"tag", "Size", "LayoutOrder"}]
       52 LOADK                            R8 K11 ["col"]
       53 SETTABLEKS                       R8 R7 K7 ["tag"]
       55 GETIMPORT                        R8 K14 [UDim2.new]
       57 LOADN                            R9 0
       58 GETTABLEKS                       R11 R2 K15 ["button"]
       60 GETTABLEKS                       R10 R11 K16 ["width"]
       62 LOADN                            R11 1
       63 LOADN                            R12 0
       64 CALL                             R8 4 1
       65 SETTABLEKS                       R8 R7 K8 ["Size"]
       67 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       69 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       71 DUPTABLE                         R8 K19 [{"ControlIncrement", "ControlDecrement"}]
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R9 R10 K6 ["createElement"]
       75 GETUPVAL                         R10 7
       76 DUPTABLE                         R11 K23 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       77 GETTABLEKS                       R13 R0 K3 ["increment"]
       79 GETTABLEKS                       R12 R13 K24 ["onClick"]
       81 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       83 GETUPVAL                         R14 3
       84 GETTABLEKS                       R13 R14 K25 ["FoundationNumberInputBindableValue"]
       86 JUMPIFNOT                        R13 ; [+11]
       87 GETUPVAL                         R14 8
       88 GETTABLEKS                       R13 R14 K26 ["isBinding"]
       90 GETTABLEKS                       R15 R0 K3 ["increment"]
       92 GETTABLEKS                       R14 R15 K4 ["isDisabled"]
       94 CALL                             R13 1 1
       95 JUMPIFNOT                        R13 ; [+2]
       96 LOADB                            R12 0
       97 JUMP                             ; [+4]
       98 GETTABLEKS                       R13 R0 K3 ["increment"]
      100 GETTABLEKS                       R12 R13 K4 ["isDisabled"]
      102 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
      104 GETTABLEKS                       R13 R2 K15 ["button"]
      106 GETTABLEKS                       R12 R13 K21 ["padding"]
      108 SETTABLEKS                       R12 R11 K21 ["padding"]
      110 GETTABLEKS                       R13 R2 K27 ["upButton"]
      112 GETTABLEKS                       R12 R13 K7 ["tag"]
      114 SETTABLEKS                       R12 R11 K7 ["tag"]
      116 LOADK                            R13 K28 ["%*--increment"]
      117 GETTABLEKS                       R15 R0 K22 ["testId"]
      119 NAMECALL                         R13 R13 K29 ["format"]
      121 CALL                             R13 2 1
      122 MOVE                             R12 R13
      123 SETTABLEKS                       R12 R11 K22 ["testId"]
      125 DUPTABLE                         R12 K31 [{"Icon"}]
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R13 R14 K6 ["createElement"]
      129 GETUPVAL                         R14 9
      130 DUPTABLE                         R15 K34 [{"Image", "imageStyle", "tag", "testId"}]
      131 LOADK                            R16 K35 ["component_assets/triangleUp_16"]
      132 SETTABLEKS                       R16 R15 K32 ["Image"]
      134 SETTABLEKS                       R3 R15 K33 ["imageStyle"]
      136 GETTABLEKS                       R17 R2 K36 ["icon"]
      138 GETTABLEKS                       R16 R17 K7 ["tag"]
      140 SETTABLEKS                       R16 R15 K7 ["tag"]
      142 LOADK                            R17 K37 ["%*--increment-icon"]
      143 GETTABLEKS                       R19 R0 K22 ["testId"]
      145 NAMECALL                         R17 R17 K29 ["format"]
      147 CALL                             R17 2 1
      148 MOVE                             R16 R17
      149 SETTABLEKS                       R16 R15 K22 ["testId"]
      151 CALL                             R13 2 1
      152 SETTABLEKS                       R13 R12 K30 ["Icon"]
      154 CALL                             R9 3 1
      155 SETTABLEKS                       R9 R8 K17 ["ControlIncrement"]
      157 GETUPVAL                         R10 2
      158 GETTABLEKS                       R9 R10 K6 ["createElement"]
      160 GETUPVAL                         R10 7
      161 DUPTABLE                         R11 K38 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      162 GETTABLEKS                       R13 R2 K39 ["downButton"]
      164 GETTABLEKS                       R12 R13 K7 ["tag"]
      166 SETTABLEKS                       R12 R11 K7 ["tag"]
      168 GETTABLEKS                       R13 R0 K5 ["decrement"]
      170 GETTABLEKS                       R12 R13 K24 ["onClick"]
      172 SETTABLEKS                       R12 R11 K20 ["onActivated"]
      174 GETUPVAL                         R14 3
      175 GETTABLEKS                       R13 R14 K25 ["FoundationNumberInputBindableValue"]
      177 JUMPIFNOT                        R13 ; [+11]
      178 GETUPVAL                         R14 8
      179 GETTABLEKS                       R13 R14 K26 ["isBinding"]
      181 GETTABLEKS                       R15 R0 K5 ["decrement"]
      183 GETTABLEKS                       R14 R15 K4 ["isDisabled"]
      185 CALL                             R13 1 1
      186 JUMPIFNOT                        R13 ; [+2]
      187 LOADB                            R12 0
      188 JUMP                             ; [+4]
      189 GETTABLEKS                       R13 R0 K5 ["decrement"]
      191 GETTABLEKS                       R12 R13 K4 ["isDisabled"]
      193 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
      195 GETTABLEKS                       R13 R2 K15 ["button"]
      197 GETTABLEKS                       R12 R13 K21 ["padding"]
      199 SETTABLEKS                       R12 R11 K21 ["padding"]
      201 LOADK                            R13 K40 ["%*--decrement"]
      202 GETTABLEKS                       R15 R0 K22 ["testId"]
      204 NAMECALL                         R13 R13 K29 ["format"]
      206 CALL                             R13 2 1
      207 MOVE                             R12 R13
      208 SETTABLEKS                       R12 R11 K22 ["testId"]
      210 DUPTABLE                         R12 K31 [{"Icon"}]
      211 GETUPVAL                         R14 2
      212 GETTABLEKS                       R13 R14 K6 ["createElement"]
      214 GETUPVAL                         R14 9
      215 DUPTABLE                         R15 K34 [{"Image", "imageStyle", "tag", "testId"}]
      216 LOADK                            R16 K41 ["component_assets/triangleDown_16"]
      217 SETTABLEKS                       R16 R15 K32 ["Image"]
      219 SETTABLEKS                       R4 R15 K33 ["imageStyle"]
      221 GETTABLEKS                       R17 R2 K36 ["icon"]
      223 GETTABLEKS                       R16 R17 K7 ["tag"]
      225 SETTABLEKS                       R16 R15 K7 ["tag"]
      227 LOADK                            R17 K42 ["%*--decrement-icon"]
      228 GETTABLEKS                       R19 R0 K22 ["testId"]
      230 NAMECALL                         R17 R17 K29 ["format"]
      232 CALL                             R17 2 1
      233 MOVE                             R16 R17
      234 SETTABLEKS                       R16 R15 K22 ["testId"]
      236 CALL                             R13 2 1
      237 SETTABLEKS                       R13 R12 K30 ["Icon"]
      239 CALL                             R9 3 1
      240 SETTABLEKS                       R9 R8 K18 ["ControlDecrement"]
      242 CALL                             R5 3 -1
      243 RETURN                           R5 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["controlsVariant"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Stacked"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["createElement"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["createElement"]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R8 R0 K10 ["Providers"]
       28 GETTABLEKS                       R7 R8 K11 ["Style"]
       30 GETTABLEKS                       R6 R7 K12 ["useTokens"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K13 ["Components"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R9 R0 K14 ["Utility"]
       39 GETTABLEKS                       R8 R9 K15 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Constants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R6 K17 ["Icon"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R6 K18 ["Image"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R13 R0 K13 ["Components"]
       61 GETTABLEKS                       R12 R13 K19 ["Types"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R6 K20 ["View"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R15 R0 K14 ["Utility"]
       73 GETTABLEKS                       R14 R15 K21 ["blendTransparencies"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R16 R0 K14 ["Utility"]
       80 GETTABLEKS                       R15 R16 K22 ["getDisabledStyle"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R17 R0 K14 ["Utility"]
       87 GETTABLEKS                       R16 R17 K23 ["mapBindable"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R18 R0 K14 ["Utility"]
       94 GETTABLEKS                       R17 R18 K24 ["withCommonProps"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R19 R6 K25 ["NumberInput"]
      101 GETTABLEKS                       R18 R19 K26 ["useNumberInputVariants"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R20 R6 K27 ["TextInput"]
      108 GETTABLEKS                       R19 R20 K28 ["useTextInputVariants"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETTABLEKS                       R21 R0 K29 ["Enums"]
      115 GETTABLEKS                       R20 R21 K30 ["InputSize"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETTABLEKS                       R22 R0 K29 ["Enums"]
      122 GETTABLEKS                       R21 R22 K31 ["InputVariant"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K6 [require]
      127 GETTABLEKS                       R23 R0 K29 ["Enums"]
      129 GETTABLEKS                       R22 R23 K32 ["NumberInputControlsVariant"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R24 R0 K29 ["Enums"]
      136 GETTABLEKS                       R23 R24 K33 ["StateLayerAffordance"]
      138 CALL                             R22 1 1
      139 DUPCLOSURE                       R23 K34 [PROTO_2]
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R15
      147 DUPCLOSURE                       R24 K35 [PROTO_14]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R2
      162 DUPCLOSURE                       R25 K36 [PROTO_19]
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R10
      173 DUPCLOSURE                       R26 K37 [PROTO_20]
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R24
      178 RETURN                           R26 1
