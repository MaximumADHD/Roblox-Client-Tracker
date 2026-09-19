PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 RETURN                           R3 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Error"]
        9 RETURN                           R3 1
       10 MOVE                             R3 R2
       11 JUMPIF                           R3 ; [+3]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["None"]
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"isHovered", "StyleModifier"}]
        2 SETTABLEKS                       R0 R3 K0 ["isHovered"]
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+2]
        6 LOADNIL                          R4
        7 JUMP                             ; [+12]
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["props"]
       13 GETTABLEKS                       R7 R7 K4 ["ErrorText"]
       15 JUMPIFNOTEQKNIL                  R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["StyleModifier"]
       22 NAMECALL                         R1 R1 K5 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["StyleModifier"]}]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADNIL                          R3
        5 JUMP                             ; [+12]
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["props"]
       11 GETTABLEKS                       R6 R6 K5 ["ErrorText"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["StyleModifier"]}]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADNIL                          R3
        5 JUMP                             ; [+12]
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 0
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["props"]
       11 GETTABLEKS                       R6 R6 K5 ["ErrorText"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["Enabled"]
        9 JUMPIFNOTEQKB                    R3 TRUE ; [+6]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K4 [{["isOpen"] = True}]
       13 NAMECALL                         R3 R3 K5 ["setState"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 2
       17 JUMPIFNOT                        R3 ; [+80]
       18 GETTABLEKS                       R3 R1 K6 ["UserInputType"]
       20 GETIMPORT                        R4 K9 [Enum.UserInputType.Keyboard]
       22 JUMPIFNOTEQ                      R3 R4 ; [+75]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K10 ["state"]
       27 GETTABLEKS                       R3 R3 K2 ["isOpen"]
       29 JUMPIFNOT                        R3 ; [+68]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K0 ["props"]
       33 GETTABLEKS                       R3 R3 K1 ["Enabled"]
       35 JUMPIFNOT                        R3 ; [+62]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K0 ["props"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["state"]
       42 GETTABLEKS                       R4 R4 K11 ["hoveredItemIndex"]
       44 GETTABLEKS                       R5 R1 K12 ["KeyCode"]
       46 GETIMPORT                        R6 K14 [Enum.KeyCode.Down]
       48 JUMPIFNOTEQ                      R5 R6 ; [+15]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K15 ["onHoveredItemChanged"]
       53 GETTABLEKS                       R8 R3 K16 ["Items"]
       55 LENGTH                           R7 R8
       56 ADDK                             R8 R4 K17 [1]
       57 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       59 GETIMPORT                        R6 K20 [math.min]
       61 CALL                             R6 2 1
       62 CALL                             R5 1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R5 R1 K12 ["KeyCode"]
       66 GETIMPORT                        R6 K22 [Enum.KeyCode.Up]
       68 JUMPIFNOTEQ                      R5 R6 ; [+13]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K15 ["onHoveredItemChanged"]
       73 LOADN                            R7 1
       74 SUBK                             R8 R4 K17 [1]
       75 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       77 GETIMPORT                        R6 K24 [math.max]
       79 CALL                             R6 2 1
       80 CALL                             R5 1 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R5 R1 K12 ["KeyCode"]
       84 GETIMPORT                        R6 K26 [Enum.KeyCode.Return]
       86 JUMPIFNOTEQ                      R5 R6 ; [+11]
       88 GETTABLEKS                       R5 R3 K27 ["OnItemActivated"]
       90 GETTABLEKS                       R7 R3 K16 ["Items"]
       92 GETTABLE                         R6 R7 R4
       93 CALL                             R5 1 0
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R5 R5 K28 ["focusLost"]
       97 CALL                             R5 0 0
       98 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredItemIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredItemIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+6]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["isOpen"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["hoveredItemIndex"], ["isHovered"] = False}]
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 1
        4 JUMP                             ; [+1]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K2 ["hoveredItemIndex"]
        8 SETTABLEKS                       R1 R0 K5 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 GETUPVAL                         R2 1
       15 JUMPIF                           R2 ; [+12]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R2 R0 K6 ["mouseEnter"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R2 R0 K7 ["mouseLeave"]
       28 NEWCLOSURE                       R2 P3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R2 R0 K8 ["onInputBegan"]
       34 GETUPVAL                         R2 0
       35 JUMPIFNOT                        R2 ; [+4]
       36 NEWCLOSURE                       R2 P4
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K9 ["onHoveredItemChanged"]
       40 NEWCLOSURE                       R2 P5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R0 K10 ["focusLost"]
       44 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["isHovered"]
        3 GETTABLEKS                       R5 R0 K1 ["ErrorText"]
        5 JUMPIFNOTEQKNIL                  R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETTABLEKS                       R5 R0 K2 ["StyleModifier"]
       11 CALL                             R2 3 1
       12 GETTABLEKS                       R4 R1 K3 ["styleModifier"]
       14 JUMPIFNOTEQ                      R2 R4 ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 DUPTABLE                         R3 K4 [{"StyleModifier"}]
       19 SETTABLEKS                       R2 R3 K2 ["StyleModifier"]
       21 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+6]
        6 GETTABLEKS                       R3 R1 K2 ["Style"]
        8 JUMPIF                           R3 ; [+5]
        9 NEWTABLE                         R3 0 0
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       14 GETTABLEKS                       R4 R1 K4 ["Items"]
       16 GETTABLEKS                       R5 R1 K5 ["Icons"]
       18 GETTABLEKS                       R6 R1 K6 ["TextWrapped"]
       20 GETTABLEKS                       R7 R1 K7 ["TextTruncate"]
       22 GETTABLEKS                       R9 R1 K8 ["Variant"]
       24 JUMPIFEQKS                       R9 K9 ["modern"] ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 GETTABLEKS                       R9 R2 K10 ["isOpen"]
       30 GETUPVAL                         R11 0
       31 JUMPIFNOT                        R11 ; [+13]
       32 LOADB                            R10 1
       33 GETTABLEKS                       R11 R1 K11 ["ErrorText"]
       35 JUMPIFNOTEQKNIL                  R11 ; [+15]
       37 GETUPVAL                         R10 1
       38 GETUPVAL                         R12 2
       39 GETTABLEKS                       R12 R12 K12 ["Tag"]
       41 GETTABLE                         R11 R1 R12
       42 LOADK                            R12 K13 ["Error"]
       43 CALL                             R10 2 1
       44 JUMP                             ; [+6]
       45 GETTABLEKS                       R11 R1 K11 ["ErrorText"]
       47 JUMPIFNOTEQKNIL                  R11 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 GETUPVAL                         R12 0
       52 JUMPIFNOT                        R12 ; [+3]
       53 GETTABLEKS                       R11 R1 K14 ["Size"]
       55 JUMP                             ; [+13]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R12 R1 K14 ["Size"]
       59 GETTABLEKS                       R13 R3 K14 ["Size"]
       61 GETIMPORT                        R14 K17 [UDim2.new]
       63 LOADN                            R15 1
       64 LOADN                            R16 0
       65 LOADN                            R17 1
       66 LOADN                            R18 0
       67 CALL                             R14 4 -1
       68 CALL                             R11 -1 1
       69 GETTABLEKS                       R12 R1 K18 ["Width"]
       71 JUMPIFNOT                        R12 ; [+46]
       72 GETUPVAL                         R12 0
       73 JUMPIFNOT                        R12 ; [+29]
       74 JUMPIFNOT                        R11 ; [+16]
       75 GETIMPORT                        R12 K17 [UDim2.new]
       77 LOADN                            R13 0
       78 GETTABLEKS                       R14 R1 K18 ["Width"]
       80 GETTABLEKS                       R15 R11 K19 ["Y"]
       82 GETTABLEKS                       R15 R15 K20 ["Scale"]
       84 GETTABLEKS                       R16 R11 K19 ["Y"]
       86 GETTABLEKS                       R16 R16 K21 ["Offset"]
       88 CALL                             R12 4 1
       89 MOVE                             R11 R12
       90 JUMP                             ; [+27]
       91 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       93 GETTABLEKS                       R13 R1 K18 ["Width"]
       95 GETUPVAL                         R14 4
       96 LOADK                            R16 K24 ["Height"]
       97 NAMECALL                         R14 R14 K25 ["GetAttribute"]
       99 CALL                             R14 2 -1
      100 CALL                             R12 -1 1
      101 MOVE                             R11 R12
      102 JUMP                             ; [+15]
      103 GETIMPORT                        R12 K17 [UDim2.new]
      105 LOADN                            R13 0
      106 GETTABLEKS                       R14 R1 K18 ["Width"]
      108 GETTABLEKS                       R15 R11 K19 ["Y"]
      110 GETTABLEKS                       R15 R15 K20 ["Scale"]
      112 GETTABLEKS                       R16 R11 K19 ["Y"]
      114 GETTABLEKS                       R16 R16 K21 ["Offset"]
      116 CALL                             R12 4 1
      117 MOVE                             R11 R12
      118 GETTABLEKS                       R12 R1 K26 ["SelectedIndex"]
      120 GETTABLEKS                       R13 R1 K27 ["SelectedId"]
      122 JUMPIFEQKNIL                     R13 ; [+23]
      124 GETIMPORT                        R13 K29 [ipairs]
      126 MOVE                             R14 R4
      127 CALL                             R13 1 3
      128 FORGPREP_INEXT                   R13
      129 FASTCALL1                        TYPEOF R17 ; [+3]
      130 MOVE                             R19 R17
      131 GETIMPORT                        R18 K31 [typeof]
      133 CALL                             R18 1 1
      134 JUMPIFNOTEQKS                    R18 K32 ["table"] ; [+9]
      136 GETTABLEKS                       R18 R17 K33 ["Id"]
      138 GETTABLEKS                       R19 R1 K27 ["SelectedId"]
      140 JUMPIFNOTEQ                      R18 R19 ; [+3]
      142 MOVE                             R12 R16
      143 JUMP                             ; [+2]
      144 FORGLOOP                         R13 2 [inext] ; [-16]
      146 GETTABLEKS                       R13 R1 K34 ["HideIcon"]
      148 LOADNIL                          R14
      149 JUMPIF                           R13 ; [+8]
      150 JUMPIFNOT                        R5 ; [+7]
      151 JUMPIFNOT                        R12 ; [+5]
      152 GETTABLE                         R15 R5 R12
      153 JUMPIFEQKS                       R15 K35 [""] ; [+3]
      155 GETTABLE                         R14 R5 R12
      156 JUMP                             ; [+1]
      157 LOADNIL                          R14
      158 JUMPIF                           R14 ; [+10]
      159 GETUPVAL                         R16 0
      160 JUMPIFNOT                        R16 ; [+58]
      161 GETUPVAL                         R16 1
      162 GETUPVAL                         R18 2
      163 GETTABLEKS                       R18 R18 K12 ["Tag"]
      165 GETTABLE                         R17 R1 R18
      166 LOADK                            R18 K36 ["HasIcon"]
      167 CALL                             R16 2 1
      168 JUMPIFNOT                        R16 ; [+50]
      169 GETUPVAL                         R15 5
      170 GETTABLEKS                       R15 R15 K37 ["createElement"]
      172 GETUPVAL                         R17 0
      173 JUMPIFNOT                        R17 ; [+2]
      174 GETUPVAL                         R16 6
      175 JUMP                             ; [+1]
      176 LOADK                            R16 K38 ["ImageLabel"]
      177 GETUPVAL                         R18 0
      178 JUMPIFNOT                        R18 ; [+10]
      179 NEWTABLE                         R17 2 0
      181 SETTABLEKS                       R14 R17 K39 ["Image"]
      183 GETUPVAL                         R18 2
      184 GETTABLEKS                       R18 R18 K12 ["Tag"]
      186 LOADK                            R19 K40 ["Icon16 Primary"]
      187 SETTABLE                         R19 R17 R18
      188 JUMP                             ; [+28]
      189 DUPTABLE                         R17 K46 [{["AnchorPoint"], ["Position"], ["Size"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      190 GETIMPORT                        R18 K48 [Vector2.new]
      192 LOADN                            R19 0
      193 LOADK                            R20 K49 [0.5]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      197 GETIMPORT                        R18 K17 [UDim2.new]
      199 LOADN                            R19 0
      200 GETTABLEKS                       R20 R3 K50 ["IconOffset"]
      202 LOADK                            R21 K49 [0.5]
      203 LOADN                            R22 0
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K42 ["Position"]
      207 GETTABLEKS                       R18 R3 K51 ["IconSize"]
      209 SETTABLEKS                       R18 R17 K14 ["Size"]
      211 SETTABLEKS                       R14 R17 K39 ["Image"]
      213 GETTABLEKS                       R18 R3 K52 ["ArrowColor"]
      215 SETTABLEKS                       R18 R17 K43 ["ImageColor3"]
      217 CALL                             R15 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R15
      220 GETTABLEKS                       R16 R1 K53 ["HideText"]
      222 GETTABLEKS                       R17 R3 K54 ["BackgroundStyle"]
      224 LOADNIL                          R18
      225 JUMPIF                           R16 ; [+19]
      226 JUMPIFNOT                        R12 ; [+2]
      227 GETTABLE                         R19 R4 R12
      228 JUMP                             ; [+1]
      229 LOADNIL                          R19
      230 JUMPIFNOT                        R19 ; [+12]
      231 FASTCALL1                        TYPE R19 ; [+3]
      232 MOVE                             R21 R19
      233 GETIMPORT                        R20 K56 [type]
      235 CALL                             R20 1 1
      236 JUMPIFNOTEQKS                    R20 K32 ["table"] ; [+4]
      238 GETTABLEKS                       R18 R19 K57 ["Label"]
      240 JUMP                             ; [+4]
      241 MOVE                             R18 R19
      242 JUMP                             ; [+2]
      243 GETTABLEKS                       R18 R1 K58 ["PlaceholderText"]
      245 GETUPVAL                         R20 0
      246 JUMPIFNOT                        R20 ; [+6]
      247 GETUPVAL                         R19 4
      248 LOADK                            R21 K59 ["ArrowOffset"]
      249 NAMECALL                         R19 R19 K25 ["GetAttribute"]
      251 CALL                             R19 2 1
      252 JUMP                             ; [+9]
      253 GETTABLEKS                       R20 R3 K59 ["ArrowOffset"]
      255 GETTABLEKS                       R21 R3 K60 ["ArrowSize"]
      257 GETTABLEKS                       R21 R21 K61 ["X"]
      259 GETTABLEKS                       R21 R21 K21 ["Offset"]
      261 ADD                              R19 R20 R21
      262 JUMPIFNOT                        R14 ; [+18]
      263 GETUPVAL                         R21 0
      264 JUMPIFNOT                        R21 ; [+6]
      265 GETUPVAL                         R20 4
      266 LOADK                            R22 K50 ["IconOffset"]
      267 NAMECALL                         R20 R20 K25 ["GetAttribute"]
      269 CALL                             R20 2 1
      270 JUMP                             ; [+11]
      271 GETTABLEKS                       R21 R3 K50 ["IconOffset"]
      273 GETTABLEKS                       R22 R3 K51 ["IconSize"]
      275 GETTABLEKS                       R22 R22 K61 ["X"]
      277 GETTABLEKS                       R22 R22 K21 ["Offset"]
      279 ADD                              R20 R21 R22
      280 JUMP                             ; [+1]
      281 LOADN                            R20 0
      282 GETUPVAL                         R22 0
      283 JUMPIFNOT                        R22 ; [+7]
      284 GETUPVAL                         R22 4
      285 LOADK                            R24 K63 ["Padding"]
      286 NAMECALL                         R22 R22 K25 ["GetAttribute"]
      288 CALL                             R22 2 1
      289 ORK                              R21 R22 K62 [0]
      290 JUMP                             ; [+2]
      291 GETTABLEKS                       R21 R3 K63 ["Padding"]
      293 GETIMPORT                        R22 K17 [UDim2.new]
      295 LOADN                            R23 1
      296 ADD                              R26 R20 R19
      297 ADD                              R25 R26 R21
      298 MINUS                            R24 R25
      299 LOADN                            R25 1
      300 LOADN                            R26 -2
      301 CALL                             R22 4 1
      302 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      304 ADD                              R24 R21 R20
      305 LOADN                            R25 0
      306 CALL                             R23 2 1
      307 JUMPIFNOT                        R18 ; [+50]
      308 GETUPVAL                         R24 5
      309 GETTABLEKS                       R24 R24 K37 ["createElement"]
      311 GETUPVAL                         R25 7
      312 GETUPVAL                         R27 0
      313 JUMPIFNOT                        R27 ; [+20]
      314 NEWTABLE                         R26 4 0
      316 SETTABLEKS                       R18 R26 K64 ["Text"]
      318 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      320 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      322 GETUPVAL                         R27 2
      323 GETTABLEKS                       R27 R27 K12 ["Tag"]
      325 GETUPVAL                         R28 8
      326 LOADK                            R29 K65 ["Left"]
      327 JUMPIFNOT                        R8 ; [+2]
      328 LOADK                            R30 K66 ["Muted"]
      329 JUMP                             ; [+1]
      330 LOADK                            R30 K35 [""]
      331 CALL                             R28 2 1
      332 SETTABLE                         R28 R26 R27
      333 JUMP                             ; [+22]
      334 DUPTABLE                         R26 K69 [{"Position", "Size", "Text", "TextColor", "TextTruncate", "TextWrapped", "TextXAlignment"}]
      335 SETTABLEKS                       R23 R26 K42 ["Position"]
      337 SETTABLEKS                       R22 R26 K14 ["Size"]
      339 SETTABLEKS                       R18 R26 K64 ["Text"]
      341 JUMPIF                           R12 ; [+3]
      342 GETTABLEKS                       R27 R3 K70 ["PlaceholderTextColor"]
      344 JUMPIF                           R27 ; [+1]
      345 LOADNIL                          R27
      346 SETTABLEKS                       R27 R26 K67 ["TextColor"]
      348 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      350 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      352 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R27 R26 K68 ["TextXAlignment"]
      356 CALL                             R24 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R24
      359 GETUPVAL                         R25 5
      360 GETTABLEKS                       R25 R25 K37 ["createElement"]
      362 GETUPVAL                         R27 0
      363 JUMPIFNOT                        R27 ; [+2]
      364 GETUPVAL                         R26 6
      365 JUMP                             ; [+1]
      366 LOADK                            R26 K38 ["ImageLabel"]
      367 GETUPVAL                         R28 0
      368 JUMPIFNOT                        R28 ; [+12]
      369 NEWTABLE                         R27 2 0
      371 GETTABLEKS                       R28 R1 K73 ["ExpandIcon"]
      373 SETTABLEKS                       R28 R27 K39 ["Image"]
      375 GETUPVAL                         R28 2
      376 GETTABLEKS                       R28 R28 K12 ["Tag"]
      378 LOADK                            R29 K74 ["ArrowIcon Primary"]
      379 SETTABLE                         R29 R27 R28
      380 JUMP                             ; [+34]
      381 DUPTABLE                         R27 K75 [{["AnchorPoint"], ["Size"], ["Position"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      382 GETIMPORT                        R28 K48 [Vector2.new]
      384 LOADN                            R29 1
      385 LOADK                            R30 K49 [0.5]
      386 CALL                             R28 2 1
      387 SETTABLEKS                       R28 R27 K41 ["AnchorPoint"]
      389 GETTABLEKS                       R28 R3 K60 ["ArrowSize"]
      391 SETTABLEKS                       R28 R27 K14 ["Size"]
      393 GETIMPORT                        R28 K17 [UDim2.new]
      395 LOADN                            R29 1
      396 GETTABLEKS                       R31 R3 K59 ["ArrowOffset"]
      398 MINUS                            R30 R31
      399 LOADK                            R31 K49 [0.5]
      400 LOADN                            R32 0
      401 CALL                             R28 4 1
      402 SETTABLEKS                       R28 R27 K42 ["Position"]
      404 GETTABLEKS                       R28 R1 K73 ["ExpandIcon"]
      406 JUMPIF                           R28 ; [+2]
      407 GETTABLEKS                       R28 R3 K76 ["ArrowImage"]
      409 SETTABLEKS                       R28 R27 K39 ["Image"]
      411 GETTABLEKS                       R28 R3 K52 ["ArrowColor"]
      413 SETTABLEKS                       R28 R27 K43 ["ImageColor3"]
      415 CALL                             R25 2 1
      416 GETUPVAL                         R26 5
      417 GETTABLEKS                       R26 R26 K37 ["createElement"]
      419 GETUPVAL                         R27 9
      420 DUPTABLE                         R28 K88 [{"Width", "UseAutoWidth", "Hide", "HoveredItemIndex", "Icons", "ItemHeight", "Items", "MaxHeight", "OnHoveredItemChanged", "OnFocusLost", "OnItemActivated", "OnRenderItem", "OnMouseEnter", "OnMouseLeave", "Style", "TextWrapped", "Variant"}]
      421 GETTABLEKS                       R29 R1 K18 ["Width"]
      423 SETTABLEKS                       R29 R28 K18 ["Width"]
      425 GETTABLEKS                       R29 R1 K77 ["UseAutoWidth"]
      427 SETTABLEKS                       R29 R28 K77 ["UseAutoWidth"]
      429 NOT                              R29 R9
      430 SETTABLEKS                       R29 R28 K78 ["Hide"]
      432 GETUPVAL                         R30 10
      433 JUMPIFNOT                        R30 ; [+3]
      434 GETTABLEKS                       R29 R2 K89 ["hoveredItemIndex"]
      436 JUMP                             ; [+1]
      437 LOADNIL                          R29
      438 SETTABLEKS                       R29 R28 K79 ["HoveredItemIndex"]
      440 SETTABLEKS                       R5 R28 K5 ["Icons"]
      442 GETTABLEKS                       R29 R1 K80 ["ItemHeight"]
      444 SETTABLEKS                       R29 R28 K80 ["ItemHeight"]
      446 SETTABLEKS                       R4 R28 K4 ["Items"]
      448 GETUPVAL                         R30 10
      449 JUMPIFNOT                        R30 ; [+3]
      450 GETTABLEKS                       R29 R1 K90 ["MenuHeight"]
      452 JUMP                             ; [+1]
      453 LOADNIL                          R29
      454 SETTABLEKS                       R29 R28 K81 ["MaxHeight"]
      456 GETUPVAL                         R30 10
      457 JUMPIFNOT                        R30 ; [+3]
      458 GETTABLEKS                       R29 R0 K91 ["onHoveredItemChanged"]
      460 JUMP                             ; [+1]
      461 LOADNIL                          R29
      462 SETTABLEKS                       R29 R28 K82 ["OnHoveredItemChanged"]
      464 GETTABLEKS                       R29 R0 K92 ["focusLost"]
      466 SETTABLEKS                       R29 R28 K83 ["OnFocusLost"]
      468 GETTABLEKS                       R29 R1 K84 ["OnItemActivated"]
      470 SETTABLEKS                       R29 R28 K84 ["OnItemActivated"]
      472 GETTABLEKS                       R29 R1 K85 ["OnRenderItem"]
      474 SETTABLEKS                       R29 R28 K85 ["OnRenderItem"]
      476 GETTABLEKS                       R29 R1 K86 ["OnMouseEnter"]
      478 SETTABLEKS                       R29 R28 K86 ["OnMouseEnter"]
      480 GETTABLEKS                       R29 R1 K87 ["OnMouseLeave"]
      482 SETTABLEKS                       R29 R28 K87 ["OnMouseLeave"]
      484 JUMPIFNOT                        R8 ; [+2]
      485 LOADK                            R29 K93 ["Modern"]
      486 JUMP                             ; [+2]
      487 GETTABLEKS                       R29 R3 K94 ["DropdownMenu"]
      489 SETTABLEKS                       R29 R28 K2 ["Style"]
      491 SETTABLEKS                       R6 R28 K6 ["TextWrapped"]
      493 JUMPIFNOT                        R8 ; [+2]
      494 LOADK                            R29 K9 ["modern"]
      495 JUMP                             ; [+1]
      496 LOADNIL                          R29
      497 SETTABLEKS                       R29 R28 K8 ["Variant"]
      499 CALL                             R26 2 1
      500 NEWTABLE                         R27 8 0
      502 GETUPVAL                         R29 0
      503 JUMPIFNOT                        R29 ; [+2]
      504 LOADNIL                          R28
      505 JUMP                             ; [+1]
      506 LOADN                            R28 1
      507 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      509 GETUPVAL                         R29 0
      510 JUMPIFNOT                        R29 ; [+3]
      511 GETTABLEKS                       R28 R1 K14 ["Size"]
      513 JUMP                             ; [+5]
      514 GETIMPORT                        R28 K96 [UDim2.fromScale]
      516 LOADN                            R29 1
      517 LOADN                            R30 1
      518 CALL                             R28 2 1
      519 SETTABLEKS                       R28 R27 K14 ["Size"]
      521 GETUPVAL                         R28 5
      522 GETTABLEKS                       R28 R28 K97 ["Event"]
      524 GETTABLEKS                       R28 R28 K98 ["InputBegan"]
      526 GETTABLEKS                       R29 R0 K99 ["onInputBegan"]
      528 SETTABLE                         R29 R27 R28
      529 GETUPVAL                         R28 5
      530 GETTABLEKS                       R28 R28 K97 ["Event"]
      532 GETTABLEKS                       R28 R28 K100 ["MouseEnter"]
      534 GETTABLEKS                       R29 R0 K101 ["mouseEnter"]
      536 SETTABLE                         R29 R27 R28
      537 GETUPVAL                         R28 5
      538 GETTABLEKS                       R28 R28 K97 ["Event"]
      540 GETTABLEKS                       R28 R28 K102 ["MouseLeave"]
      542 GETTABLEKS                       R29 R0 K103 ["mouseLeave"]
      544 SETTABLE                         R29 R27 R28
      545 LOADNIL                          R28
      546 GETTABLEKS                       R29 R1 K104 ["ShowSelection"]
      548 JUMPIFNOT                        R29 ; [+76]
      549 LOADK                            R29 K35 [""]
      550 SETTABLEKS                       R29 R27 K64 ["Text"]
      552 LOADB                            R29 0
      553 SETTABLEKS                       R29 R27 K105 ["AutoButtonColor"]
      555 GETUPVAL                         R29 0
      556 JUMPIFNOT                        R29 ; [+37]
      557 GETUPVAL                         R29 2
      558 GETTABLEKS                       R29 R29 K12 ["Tag"]
      560 GETUPVAL                         R30 8
      561 JUMPIFNOT                        R14 ; [+2]
      562 LOADK                            R31 K36 ["HasIcon"]
      563 JUMP                             ; [+1]
      564 LOADNIL                          R31
      565 JUMPIF                           R12 ; [+2]
      566 LOADK                            R32 K106 ["Placeholder"]
      567 JUMP                             ; [+1]
      568 LOADNIL                          R32
      569 JUMPIFNOT                        R8 ; [+2]
      570 LOADK                            R33 K107 ["Component-SelectInput-Selection Row"]
      571 JUMP                             ; [+1]
      572 LOADK                            R33 K108 ["X-Input Row"]
      573 GETUPVAL                         R35 2
      574 GETTABLEKS                       R35 R35 K12 ["Tag"]
      576 GETTABLE                         R34 R1 R35
      577 JUMPIFNOT                        R9 ; [+2]
      578 LOADK                            R35 K109 ["X-Focus"]
      579 JUMP                             ; [+1]
      580 LOADNIL                          R35
      581 CALL                             R30 5 1
      582 SETTABLE                         R30 R27 R29
      583 DUPTABLE                         R29 K114 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow", "Menu"}]
      584 SETTABLEKS                       R15 R29 K110 ["SelectedItemIcon"]
      586 SETTABLEKS                       R24 R29 K111 ["SelectedItemText"]
      588 SETTABLEKS                       R25 R29 K112 ["SelectArrow"]
      590 SETTABLEKS                       R26 R29 K113 ["Menu"]
      592 MOVE                             R28 R29
      593 JUMP                             ; [+47]
      594 DUPTABLE                         R29 K116 [{"Input", "Menu"}]
      595 GETUPVAL                         R30 5
      596 GETTABLEKS                       R30 R30 K37 ["createElement"]
      598 GETUPVAL                         R31 11
      599 DUPTABLE                         R32 K119 [{"Background", "BackgroundStyle", "BackgroundStyleModifier"}]
      600 GETUPVAL                         R33 12
      601 SETTABLEKS                       R33 R32 K117 ["Background"]
      603 SETTABLEKS                       R17 R32 K54 ["BackgroundStyle"]
      605 GETTABLEKS                       R33 R0 K1 ["state"]
      607 GETTABLEKS                       R33 R33 K120 ["StyleModifier"]
      609 SETTABLEKS                       R33 R32 K118 ["BackgroundStyleModifier"]
      611 DUPTABLE                         R33 K121 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow"}]
      612 SETTABLEKS                       R15 R33 K110 ["SelectedItemIcon"]
      614 SETTABLEKS                       R24 R33 K111 ["SelectedItemText"]
      616 SETTABLEKS                       R25 R33 K112 ["SelectArrow"]
      618 CALL                             R30 3 1
      619 SETTABLEKS                       R30 R29 K115 ["Input"]
      621 SETTABLEKS                       R26 R29 K113 ["Menu"]
      623 MOVE                             R28 R29
      624 JUMP                             ; [+16]
      625 DUPTABLE                         R29 K122 [{"Menu"}]
      626 SETTABLEKS                       R26 R29 K113 ["Menu"]
      628 MOVE                             R28 R29
      629 GETUPVAL                         R30 0
      630 JUMPIFNOT                        R30 ; [+3]
      631 GETTABLEKS                       R29 R1 K73 ["ExpandIcon"]
      633 JUMP                             ; [+5]
      634 GETTABLEKS                       R29 R1 K73 ["ExpandIcon"]
      636 JUMPIF                           R29 ; [+2]
      637 GETTABLEKS                       R29 R3 K76 ["ArrowImage"]
      639 SETTABLEKS                       R29 R27 K39 ["Image"]
      641 GETTABLEKS                       R30 R1 K123 ["Tooltip"]
      643 JUMPIFNOT                        R30 ; [+11]
      644 GETUPVAL                         R29 5
      645 GETTABLEKS                       R29 R29 K37 ["createElement"]
      647 GETUPVAL                         R30 13
      648 DUPTABLE                         R31 K124 [{"Text"}]
      649 GETTABLEKS                       R32 R1 K123 ["Tooltip"]
      651 SETTABLEKS                       R32 R31 K64 ["Text"]
      653 CALL                             R29 2 1
      654 JUMP                             ; [+1]
      655 LOADNIL                          R29
      656 SETTABLEKS                       R29 R28 K123 ["Tooltip"]
      658 GETTABLEKS                       R30 R1 K104 ["ShowSelection"]
      660 JUMPIFNOT                        R30 ; [+2]
      661 LOADK                            R29 K125 ["TextButton"]
      662 JUMP                             ; [+1]
      663 LOADK                            R29 K126 ["ImageButton"]
      664 DUPTABLE                         R30 K128 [{"SelectInput"}]
      665 GETUPVAL                         R31 5
      666 GETTABLEKS                       R31 R31 K37 ["createElement"]
      668 MOVE                             R32 R29
      669 MOVE                             R33 R27
      670 MOVE                             R34 R28
      671 CALL                             R31 3 1
      672 SETTABLEKS                       R31 R30 K127 ["SelectInput"]
      674 GETUPVAL                         R32 0
      675 JUMPIFNOT                        R32 ; [+6]
      676 GETUPVAL                         R31 4
      677 LOADK                            R33 K129 ["ErrorHeight"]
      678 NAMECALL                         R31 R31 K25 ["GetAttribute"]
      680 CALL                             R31 2 1
      681 JUMP                             ; [+4]
      682 GETTABLEKS                       R31 R3 K130 ["ErrorTextStyle"]
      684 GETTABLEKS                       R31 R31 K131 ["TextSize"]
      686 GETTABLEKS                       R32 R1 K11 ["ErrorText"]
      688 JUMPIFEQKNIL                     R32 ; [+95]
      690 GETUPVAL                         R32 0
      691 JUMPIFNOT                        R32 ; [+22]
      692 GETUPVAL                         R32 5
      693 GETTABLEKS                       R32 R32 K37 ["createElement"]
      695 GETUPVAL                         R33 7
      696 NEWTABLE                         R34 4 0
      698 LOADN                            R35 2
      699 SETTABLEKS                       R35 R34 K132 ["LayoutOrder"]
      701 GETTABLEKS                       R35 R1 K11 ["ErrorText"]
      703 SETTABLEKS                       R35 R34 K64 ["Text"]
      705 GETUPVAL                         R35 2
      706 GETTABLEKS                       R35 R35 K12 ["Tag"]
      708 LOADK                            R36 K133 ["Wrap Error X-Fit"]
      709 SETTABLE                         R36 R34 R35
      710 CALL                             R32 2 1
      711 SETTABLEKS                       R32 R30 K11 ["ErrorText"]
      713 JUMP                             ; [+70]
      714 DUPTABLE                         R32 K136 [{"UIListLayout", "Contents", "ErrorText"}]
      715 GETUPVAL                         R33 5
      716 GETTABLEKS                       R33 R33 K37 ["createElement"]
      718 LOADK                            R34 K134 ["UIListLayout"]
      719 DUPTABLE                         R35 K141 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      720 GETIMPORT                        R36 K143 [Enum.FillDirection.Vertical]
      722 SETTABLEKS                       R36 R35 K137 ["FillDirection"]
      724 GETIMPORT                        R36 K144 [Enum.HorizontalAlignment.Left]
      726 SETTABLEKS                       R36 R35 K138 ["HorizontalAlignment"]
      728 GETIMPORT                        R36 K146 [Enum.VerticalAlignment.Top]
      730 SETTABLEKS                       R36 R35 K139 ["VerticalAlignment"]
      732 GETIMPORT                        R36 K147 [Enum.SortOrder.LayoutOrder]
      734 SETTABLEKS                       R36 R35 K140 ["SortOrder"]
      736 CALL                             R33 2 1
      737 SETTABLEKS                       R33 R32 K134 ["UIListLayout"]
      739 GETUPVAL                         R33 5
      740 GETTABLEKS                       R33 R33 K37 ["createElement"]
      742 LOADK                            R34 K148 ["Frame"]
      743 DUPTABLE                         R35 K149 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
      744 GETIMPORT                        R36 K17 [UDim2.new]
      746 LOADN                            R37 1
      747 LOADN                            R38 0
      748 LOADN                            R39 1
      749 MINUS                            R40 R31
      750 CALL                             R36 4 1
      751 SETTABLEKS                       R36 R35 K14 ["Size"]
      753 MOVE                             R36 R30
      754 CALL                             R33 3 1
      755 SETTABLEKS                       R33 R32 K135 ["Contents"]
      757 GETUPVAL                         R33 5
      758 GETTABLEKS                       R33 R33 K37 ["createElement"]
      760 GETUPVAL                         R34 7
      761 DUPTABLE                         R35 K153 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"], ["Text"], ["TextWrapped"] = True}]
      762 GETIMPORT                        R36 K155 [Enum.AutomaticSize.XY]
      764 SETTABLEKS                       R36 R35 K150 ["AutomaticSize"]
      766 GETTABLEKS                       R36 R3 K130 ["ErrorTextStyle"]
      768 SETTABLEKS                       R36 R35 K2 ["Style"]
      770 GETTABLEKS                       R36 R1 K11 ["ErrorText"]
      772 SETTABLEKS                       R36 R35 K64 ["Text"]
      774 CALL                             R33 2 1
      775 SETTABLEKS                       R33 R32 K11 ["ErrorText"]
      777 MOVE                             R30 R32
      778 GETIMPORT                        R32 K23 [UDim2.fromOffset]
      780 LOADN                            R33 0
      781 MOVE                             R34 R31
      782 CALL                             R32 2 1
      783 ADD                              R11 R11 R32
      784 GETUPVAL                         R32 5
      785 GETTABLEKS                       R32 R32 K37 ["createElement"]
      787 GETUPVAL                         R34 0
      788 JUMPIFNOT                        R34 ; [+2]
      789 GETUPVAL                         R33 14
      790 JUMP                             ; [+1]
      791 LOADK                            R33 K148 ["Frame"]
      792 GETUPVAL                         R34 15
      793 DUPTABLE                         R35 K156 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Position"], ["Size"]}]
      794 GETTABLEKS                       R36 R1 K41 ["AnchorPoint"]
      796 SETTABLEKS                       R36 R35 K41 ["AnchorPoint"]
      798 GETTABLEKS                       R36 R1 K132 ["LayoutOrder"]
      800 SETTABLEKS                       R36 R35 K132 ["LayoutOrder"]
      802 GETTABLEKS                       R36 R1 K42 ["Position"]
      804 SETTABLEKS                       R36 R35 K42 ["Position"]
      806 SETTABLEKS                       R11 R35 K14 ["Size"]
      808 GETUPVAL                         R37 0
      809 JUMPIFNOT                        R37 ; [+18]
      810 NEWTABLE                         R36 1 0
      812 GETUPVAL                         R37 2
      813 GETTABLEKS                       R37 R37 K12 ["Tag"]
      815 GETUPVAL                         R38 8
      816 LOADK                            R39 K157 ["Component-SelectInput X-ColumnM"]
      817 JUMPIFNOT                        R10 ; [+2]
      818 LOADK                            R40 K158 ["HasError"]
      819 JUMP                             ; [+1]
      820 LOADNIL                          R40
      821 JUMPIFNOT                        R8 ; [+2]
      822 LOADK                            R41 K9 ["modern"]
      823 JUMP                             ; [+1]
      824 LOADNIL                          R41
      825 CALL                             R38 3 1
      826 SETTABLE                         R38 R36 R37
      827 JUMP                             ; [+1]
      828 LOADNIL                          R36
      829 CALL                             R34 2 1
      830 MOVE                             R35 R30
      831 CALL                             R32 3 -1
      832 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["join"]
       34 GETTABLEKS                       R7 R0 K4 ["Parent"]
       36 LOADK                            R9 K12 ["React"]
       37 NAMECALL                         R7 R7 K13 ["FindFirstChild"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K12 ["React"]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K14 ["Styling"]
       54 GETTABLEKS                       R8 R8 K15 ["supportsStyleSheets"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K16 ["SharedFlags"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K17 ["getFFlagDevFrameworkDropdownMenuHeight"]
       64 CALL                             R9 0 1
       65 GETTABLEKS                       R10 R0 K2 ["UI"]
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R10 K18 ["Components"]
       71 GETTABLEKS                       R12 R12 K19 ["Container"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R10 K18 ["Components"]
       78 GETTABLEKS                       R13 R13 K20 ["DropdownMenu"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R10 K18 ["Components"]
       85 GETTABLEKS                       R14 R14 K21 ["Image"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R15 R10 K18 ["Components"]
       92 GETTABLEKS                       R15 R15 K22 ["Pane"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K6 [require]
       97 GETTABLEKS                       R16 R10 K18 ["Components"]
       99 GETTABLEKS                       R16 R16 K23 ["RoundBox"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R17 R10 K18 ["Components"]
      106 GETTABLEKS                       R17 R17 K24 ["TextLabel"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R18 R10 K18 ["Components"]
      113 GETTABLEKS                       R18 R18 K25 ["Tooltip"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K6 [require]
      118 GETTABLEKS                       R19 R0 K14 ["Styling"]
      120 GETTABLEKS                       R19 R19 K26 ["hasTag"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K14 ["Styling"]
      127 GETTABLEKS                       R20 R20 K27 ["joinTags"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R21 R0 K28 ["Util"]
      134 CALL                             R20 1 1
      135 GETTABLEKS                       R21 R20 K29 ["prioritize"]
      137 GETIMPORT                        R22 K6 [require]
      139 GETTABLEKS                       R23 R0 K28 ["Util"]
      141 GETTABLEKS                       R23 R23 K30 ["StyleModifier"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K6 [require]
      146 GETTABLEKS                       R24 R0 K28 ["Util"]
      148 GETTABLEKS                       R24 R24 K31 ["Typecheck"]
      150 CALL                             R23 1 1
      151 GETIMPORT                        R24 K6 [require]
      153 GETIMPORT                        R25 K1 [script]
      155 GETTABLEKS                       R25 R25 K32 ["styles"]
      157 CALL                             R24 1 1
      158 GETTABLEKS                       R25 R1 K33 ["PureComponent"]
      160 LOADK                            R27 K34 ["SelectInput"]
      161 NAMECALL                         R25 R25 K35 ["extend"]
      163 CALL                             R25 2 1
      164 GETTABLEKS                       R26 R23 K36 ["wrap"]
      166 MOVE                             R27 R25
      167 GETIMPORT                        R28 K1 [script]
      169 CALL                             R26 2 0
      170 GETTABLEKS                       R26 R20 K37 ["isInputMainPress"]
      172 DUPTABLE                         R27 K41 [{["Enabled"] = True, ["ShowSelection"] = True}]
      173 SETTABLEKS                       R27 R25 K42 ["defaultProps"]
      175 LOADNIL                          R27
      176 JUMPIF                           R7 ; [+3]
      177 DUPCLOSURE                       R27 K43 [PROTO_0]
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R1
      180 NEWCLOSURE                       R28 P1
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R7
      183 CAPTURE                          REF R27
      184 CAPTURE                          VAL R26
      185 SETTABLEKS                       R28 R25 K44 ["init"]
      187 JUMPIF                           R7 ; [+4]
      188 NEWCLOSURE                       R28 P2
      189 CAPTURE                          REF R27
      190 SETTABLEKS                       R28 R25 K45 ["getDerivedStateFromProps"]
      192 DUPCLOSURE                       R28 K46 [PROTO_9]
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R5
      209 SETTABLEKS                       R28 R25 K47 ["render"]
      211 MOVE                             R28 R3
      212 DUPTABLE                         R29 K50 [{"Focus", "Stylizer"}]
      213 GETTABLEKS                       R30 R2 K48 ["Focus"]
      215 SETTABLEKS                       R30 R29 K48 ["Focus"]
      217 JUMPIFNOT                        R7 ; [+2]
      218 LOADNIL                          R30
      219 JUMP                             ; [+2]
      220 GETTABLEKS                       R30 R2 K49 ["Stylizer"]
      222 SETTABLEKS                       R30 R29 K49 ["Stylizer"]
      224 CALL                             R28 1 1
      225 MOVE                             R29 R25
      226 CALL                             R28 1 1
      227 MOVE                             R25 R28
      228 CLOSEUPVALS                      R27
      229 RETURN                           R25 1
