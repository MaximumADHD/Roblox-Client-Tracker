PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 RETURN                           R3 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["Error"]
        9 RETURN                           R3 1
       10 MOVE                             R3 R2
       11 JUMPIF                           R3 ; [+3]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["None"]
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
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K3 ["props"]
       13 GETTABLEKS                       R7 R8 K4 ["ErrorText"]
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
        1 DUPTABLE                         R2 K2 [{"isHovered", "StyleModifier"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADNIL                          R3
        8 JUMP                             ; [+12]
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 1
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["props"]
       14 GETTABLEKS                       R6 R7 K4 ["ErrorText"]
       16 JUMPIFNOTEQKNIL                  R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       23 NAMECALL                         R0 R0 K5 ["setState"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isHovered", "StyleModifier"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADNIL                          R3
        8 JUMP                             ; [+12]
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 0
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["props"]
       14 GETTABLEKS                       R6 R7 K4 ["ErrorText"]
       16 JUMPIFNOTEQKNIL                  R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       23 NAMECALL                         R0 R0 K5 ["setState"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["props"]
        7 GETTABLEKS                       R3 R4 K1 ["Enabled"]
        9 JUMPIFNOTEQKB                    R3 TRUE ; [+9]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K3 [{"isOpen"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["isOpen"]
       16 NAMECALL                         R3 R3 K4 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 2
       20 JUMPIFNOT                        R3 ; [+80]
       21 GETTABLEKS                       R3 R1 K5 ["UserInputType"]
       23 GETIMPORT                        R4 K8 [Enum.UserInputType.Keyboard]
       25 JUMPIFNOTEQ                      R3 R4 ; [+75]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K9 ["state"]
       30 GETTABLEKS                       R3 R4 K2 ["isOpen"]
       32 JUMPIFNOT                        R3 ; [+68]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K0 ["props"]
       36 GETTABLEKS                       R3 R4 K1 ["Enabled"]
       38 JUMPIFNOT                        R3 ; [+62]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K0 ["props"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K9 ["state"]
       45 GETTABLEKS                       R4 R5 K10 ["hoveredItemIndex"]
       47 GETTABLEKS                       R5 R1 K11 ["KeyCode"]
       49 GETIMPORT                        R6 K13 [Enum.KeyCode.Down]
       51 JUMPIFNOTEQ                      R5 R6 ; [+15]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R5 R6 K14 ["onHoveredItemChanged"]
       56 GETTABLEKS                       R8 R3 K15 ["Items"]
       58 LENGTH                           R7 R8
       59 ADDK                             R8 R4 K16 [1]
       60 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       62 GETIMPORT                        R6 K19 [math.min]
       64 CALL                             R6 2 1
       65 CALL                             R5 1 0
       66 RETURN                           R0 0
       67 GETTABLEKS                       R5 R1 K11 ["KeyCode"]
       69 GETIMPORT                        R6 K21 [Enum.KeyCode.Up]
       71 JUMPIFNOTEQ                      R5 R6 ; [+13]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R5 R6 K14 ["onHoveredItemChanged"]
       76 LOADN                            R7 1
       77 SUBK                             R8 R4 K16 [1]
       78 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       80 GETIMPORT                        R6 K23 [math.max]
       82 CALL                             R6 2 1
       83 CALL                             R5 1 0
       84 RETURN                           R0 0
       85 GETTABLEKS                       R5 R1 K11 ["KeyCode"]
       87 GETIMPORT                        R6 K25 [Enum.KeyCode.Return]
       89 JUMPIFNOTEQ                      R5 R6 ; [+11]
       91 GETTABLEKS                       R5 R3 K26 ["OnItemActivated"]
       93 GETTABLEKS                       R7 R3 K15 ["Items"]
       95 GETTABLE                         R6 R7 R4
       96 CALL                             R5 1 0
       97 GETUPVAL                         R6 1
       98 GETTABLEKS                       R5 R6 K27 ["focusLost"]
      100 CALL                             R5 0 0
      101 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredItemIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredItemIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+9]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"isOpen"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["isOpen"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"isOpen", "hoveredItemIndex", "isHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADN                            R2 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K1 ["hoveredItemIndex"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K2 ["isHovered"]
       14 SETTABLEKS                       R1 R0 K4 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 GETUPVAL                         R2 1
       21 JUMPIF                           R2 ; [+12]
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R2 R0 K5 ["mouseEnter"]
       28 NEWCLOSURE                       R2 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R2 R0 K6 ["mouseLeave"]
       34 NEWCLOSURE                       R2 P3
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R2 R0 K7 ["onInputBegan"]
       40 GETUPVAL                         R2 0
       41 JUMPIFNOT                        R2 ; [+4]
       42 NEWCLOSURE                       R2 P4
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K8 ["onHoveredItemChanged"]
       46 NEWCLOSURE                       R2 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K9 ["focusLost"]
       50 RETURN                           R0 0

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
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R12 R13 K12 ["Tag"]
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
       80 GETTABLEKS                       R16 R11 K19 ["Y"]
       82 GETTABLEKS                       R15 R16 K20 ["Scale"]
       84 GETTABLEKS                       R17 R11 K19 ["Y"]
       86 GETTABLEKS                       R16 R17 K21 ["Offset"]
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
      108 GETTABLEKS                       R16 R11 K19 ["Y"]
      110 GETTABLEKS                       R15 R16 K20 ["Scale"]
      112 GETTABLEKS                       R17 R11 K19 ["Y"]
      114 GETTABLEKS                       R16 R17 K21 ["Offset"]
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
      160 JUMPIFNOT                        R16 ; [+61]
      161 GETUPVAL                         R16 1
      162 GETUPVAL                         R19 2
      163 GETTABLEKS                       R18 R19 K12 ["Tag"]
      165 GETTABLE                         R17 R1 R18
      166 LOADK                            R18 K36 ["HasIcon"]
      167 CALL                             R16 2 1
      168 JUMPIFNOT                        R16 ; [+53]
      169 GETUPVAL                         R16 5
      170 GETTABLEKS                       R15 R16 K37 ["createElement"]
      172 GETUPVAL                         R17 0
      173 JUMPIFNOT                        R17 ; [+2]
      174 GETUPVAL                         R16 6
      175 JUMP                             ; [+1]
      176 LOADK                            R16 K38 ["ImageLabel"]
      177 GETUPVAL                         R18 0
      178 JUMPIFNOT                        R18 ; [+10]
      179 NEWTABLE                         R17 2 0
      181 SETTABLEKS                       R14 R17 K39 ["Image"]
      183 GETUPVAL                         R19 2
      184 GETTABLEKS                       R18 R19 K12 ["Tag"]
      186 LOADK                            R19 K40 ["Icon16 Primary"]
      187 SETTABLE                         R19 R17 R18
      188 JUMP                             ; [+31]
      189 DUPTABLE                         R17 K45 [{"AnchorPoint", "Position", "Size", "Image", "ImageColor3", "BackgroundTransparency"}]
      190 GETIMPORT                        R18 K47 [Vector2.new]
      192 LOADN                            R19 0
      193 LOADK                            R20 K48 [0.5]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      197 GETIMPORT                        R18 K17 [UDim2.new]
      199 LOADN                            R19 0
      200 GETTABLEKS                       R20 R3 K49 ["IconOffset"]
      202 LOADK                            R21 K48 [0.5]
      203 LOADN                            R22 0
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K42 ["Position"]
      207 GETTABLEKS                       R18 R3 K50 ["IconSize"]
      209 SETTABLEKS                       R18 R17 K14 ["Size"]
      211 SETTABLEKS                       R14 R17 K39 ["Image"]
      213 GETTABLEKS                       R18 R3 K51 ["ArrowColor"]
      215 SETTABLEKS                       R18 R17 K43 ["ImageColor3"]
      217 LOADN                            R18 1
      218 SETTABLEKS                       R18 R17 K44 ["BackgroundTransparency"]
      220 CALL                             R15 2 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R15
      223 GETTABLEKS                       R16 R1 K52 ["HideText"]
      225 GETTABLEKS                       R17 R3 K53 ["BackgroundStyle"]
      227 LOADNIL                          R18
      228 JUMPIF                           R16 ; [+19]
      229 JUMPIFNOT                        R12 ; [+2]
      230 GETTABLE                         R19 R4 R12
      231 JUMP                             ; [+1]
      232 LOADNIL                          R19
      233 JUMPIFNOT                        R19 ; [+12]
      234 FASTCALL1                        TYPE R19 ; [+3]
      235 MOVE                             R21 R19
      236 GETIMPORT                        R20 K55 [type]
      238 CALL                             R20 1 1
      239 JUMPIFNOTEQKS                    R20 K32 ["table"] ; [+4]
      241 GETTABLEKS                       R18 R19 K56 ["Label"]
      243 JUMP                             ; [+4]
      244 MOVE                             R18 R19
      245 JUMP                             ; [+2]
      246 GETTABLEKS                       R18 R1 K57 ["PlaceholderText"]
      248 GETUPVAL                         R20 0
      249 JUMPIFNOT                        R20 ; [+6]
      250 GETUPVAL                         R19 4
      251 LOADK                            R21 K58 ["ArrowOffset"]
      252 NAMECALL                         R19 R19 K25 ["GetAttribute"]
      254 CALL                             R19 2 1
      255 JUMP                             ; [+9]
      256 GETTABLEKS                       R20 R3 K58 ["ArrowOffset"]
      258 GETTABLEKS                       R23 R3 K59 ["ArrowSize"]
      260 GETTABLEKS                       R22 R23 K60 ["X"]
      262 GETTABLEKS                       R21 R22 K21 ["Offset"]
      264 ADD                              R19 R20 R21
      265 JUMPIFNOT                        R14 ; [+18]
      266 GETUPVAL                         R21 0
      267 JUMPIFNOT                        R21 ; [+6]
      268 GETUPVAL                         R20 4
      269 LOADK                            R22 K49 ["IconOffset"]
      270 NAMECALL                         R20 R20 K25 ["GetAttribute"]
      272 CALL                             R20 2 1
      273 JUMP                             ; [+11]
      274 GETTABLEKS                       R21 R3 K49 ["IconOffset"]
      276 GETTABLEKS                       R24 R3 K50 ["IconSize"]
      278 GETTABLEKS                       R23 R24 K60 ["X"]
      280 GETTABLEKS                       R22 R23 K21 ["Offset"]
      282 ADD                              R20 R21 R22
      283 JUMP                             ; [+1]
      284 LOADN                            R20 0
      285 GETUPVAL                         R22 0
      286 JUMPIFNOT                        R22 ; [+7]
      287 GETUPVAL                         R22 4
      288 LOADK                            R24 K62 ["Padding"]
      289 NAMECALL                         R22 R22 K25 ["GetAttribute"]
      291 CALL                             R22 2 1
      292 ORK                              R21 R22 K61 [0]
      293 JUMP                             ; [+2]
      294 GETTABLEKS                       R21 R3 K62 ["Padding"]
      296 GETIMPORT                        R22 K17 [UDim2.new]
      298 LOADN                            R23 1
      299 ADD                              R26 R20 R19
      300 ADD                              R25 R26 R21
      301 MINUS                            R24 R25
      302 LOADN                            R25 1
      303 LOADN                            R26 254
      304 CALL                             R22 4 1
      305 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      307 ADD                              R24 R21 R20
      308 LOADN                            R25 0
      309 CALL                             R23 2 1
      310 JUMPIFNOT                        R18 ; [+50]
      311 GETUPVAL                         R25 5
      312 GETTABLEKS                       R24 R25 K37 ["createElement"]
      314 GETUPVAL                         R25 7
      315 GETUPVAL                         R27 0
      316 JUMPIFNOT                        R27 ; [+20]
      317 NEWTABLE                         R26 4 0
      319 SETTABLEKS                       R18 R26 K63 ["Text"]
      321 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      323 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      325 GETUPVAL                         R28 2
      326 GETTABLEKS                       R27 R28 K12 ["Tag"]
      328 GETUPVAL                         R28 8
      329 LOADK                            R29 K64 ["Left"]
      330 JUMPIFNOT                        R8 ; [+2]
      331 LOADK                            R30 K65 ["Muted"]
      332 JUMP                             ; [+1]
      333 LOADK                            R30 K35 [""]
      334 CALL                             R28 2 1
      335 SETTABLE                         R28 R26 R27
      336 JUMP                             ; [+22]
      337 DUPTABLE                         R26 K68 [{"Position", "Size", "Text", "TextColor", "TextTruncate", "TextWrapped", "TextXAlignment"}]
      338 SETTABLEKS                       R23 R26 K42 ["Position"]
      340 SETTABLEKS                       R22 R26 K14 ["Size"]
      342 SETTABLEKS                       R18 R26 K63 ["Text"]
      344 JUMPIF                           R12 ; [+3]
      345 GETTABLEKS                       R27 R3 K69 ["PlaceholderTextColor"]
      347 JUMPIF                           R27 ; [+1]
      348 LOADNIL                          R27
      349 SETTABLEKS                       R27 R26 K66 ["TextColor"]
      351 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      353 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      355 GETIMPORT                        R27 K71 [Enum.TextXAlignment.Left]
      357 SETTABLEKS                       R27 R26 K67 ["TextXAlignment"]
      359 CALL                             R24 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R24
      362 GETUPVAL                         R26 5
      363 GETTABLEKS                       R25 R26 K37 ["createElement"]
      365 GETUPVAL                         R27 0
      366 JUMPIFNOT                        R27 ; [+2]
      367 GETUPVAL                         R26 6
      368 JUMP                             ; [+1]
      369 LOADK                            R26 K38 ["ImageLabel"]
      370 GETUPVAL                         R28 0
      371 JUMPIFNOT                        R28 ; [+12]
      372 NEWTABLE                         R27 2 0
      374 GETTABLEKS                       R28 R1 K72 ["ExpandIcon"]
      376 SETTABLEKS                       R28 R27 K39 ["Image"]
      378 GETUPVAL                         R29 2
      379 GETTABLEKS                       R28 R29 K12 ["Tag"]
      381 LOADK                            R29 K73 ["ArrowIcon Primary"]
      382 SETTABLE                         R29 R27 R28
      383 JUMP                             ; [+37]
      384 DUPTABLE                         R27 K74 [{"AnchorPoint", "Size", "Position", "Image", "ImageColor3", "BackgroundTransparency"}]
      385 GETIMPORT                        R28 K47 [Vector2.new]
      387 LOADN                            R29 1
      388 LOADK                            R30 K48 [0.5]
      389 CALL                             R28 2 1
      390 SETTABLEKS                       R28 R27 K41 ["AnchorPoint"]
      392 GETTABLEKS                       R28 R3 K59 ["ArrowSize"]
      394 SETTABLEKS                       R28 R27 K14 ["Size"]
      396 GETIMPORT                        R28 K17 [UDim2.new]
      398 LOADN                            R29 1
      399 GETTABLEKS                       R31 R3 K58 ["ArrowOffset"]
      401 MINUS                            R30 R31
      402 LOADK                            R31 K48 [0.5]
      403 LOADN                            R32 0
      404 CALL                             R28 4 1
      405 SETTABLEKS                       R28 R27 K42 ["Position"]
      407 GETTABLEKS                       R28 R1 K72 ["ExpandIcon"]
      409 JUMPIF                           R28 ; [+2]
      410 GETTABLEKS                       R28 R3 K75 ["ArrowImage"]
      412 SETTABLEKS                       R28 R27 K39 ["Image"]
      414 GETTABLEKS                       R28 R3 K51 ["ArrowColor"]
      416 SETTABLEKS                       R28 R27 K43 ["ImageColor3"]
      418 LOADN                            R28 1
      419 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      421 CALL                             R25 2 1
      422 GETUPVAL                         R27 5
      423 GETTABLEKS                       R26 R27 K37 ["createElement"]
      425 GETUPVAL                         R27 9
      426 DUPTABLE                         R28 K87 [{"Width", "UseAutoWidth", "Hide", "HoveredItemIndex", "Icons", "ItemHeight", "Items", "MaxHeight", "OnHoveredItemChanged", "OnFocusLost", "OnItemActivated", "OnRenderItem", "OnMouseEnter", "OnMouseLeave", "Style", "TextWrapped", "Variant"}]
      427 GETTABLEKS                       R29 R1 K18 ["Width"]
      429 SETTABLEKS                       R29 R28 K18 ["Width"]
      431 GETTABLEKS                       R29 R1 K76 ["UseAutoWidth"]
      433 SETTABLEKS                       R29 R28 K76 ["UseAutoWidth"]
      435 NOT                              R29 R9
      436 SETTABLEKS                       R29 R28 K77 ["Hide"]
      438 GETUPVAL                         R30 10
      439 JUMPIFNOT                        R30 ; [+3]
      440 GETTABLEKS                       R29 R2 K88 ["hoveredItemIndex"]
      442 JUMP                             ; [+1]
      443 LOADNIL                          R29
      444 SETTABLEKS                       R29 R28 K78 ["HoveredItemIndex"]
      446 SETTABLEKS                       R5 R28 K5 ["Icons"]
      448 GETTABLEKS                       R29 R1 K79 ["ItemHeight"]
      450 SETTABLEKS                       R29 R28 K79 ["ItemHeight"]
      452 SETTABLEKS                       R4 R28 K4 ["Items"]
      454 GETUPVAL                         R30 10
      455 JUMPIFNOT                        R30 ; [+3]
      456 GETTABLEKS                       R29 R1 K89 ["MenuHeight"]
      458 JUMP                             ; [+1]
      459 LOADNIL                          R29
      460 SETTABLEKS                       R29 R28 K80 ["MaxHeight"]
      462 GETUPVAL                         R30 10
      463 JUMPIFNOT                        R30 ; [+3]
      464 GETTABLEKS                       R29 R0 K90 ["onHoveredItemChanged"]
      466 JUMP                             ; [+1]
      467 LOADNIL                          R29
      468 SETTABLEKS                       R29 R28 K81 ["OnHoveredItemChanged"]
      470 GETTABLEKS                       R29 R0 K91 ["focusLost"]
      472 SETTABLEKS                       R29 R28 K82 ["OnFocusLost"]
      474 GETTABLEKS                       R29 R1 K83 ["OnItemActivated"]
      476 SETTABLEKS                       R29 R28 K83 ["OnItemActivated"]
      478 GETTABLEKS                       R29 R1 K84 ["OnRenderItem"]
      480 SETTABLEKS                       R29 R28 K84 ["OnRenderItem"]
      482 GETTABLEKS                       R29 R1 K85 ["OnMouseEnter"]
      484 SETTABLEKS                       R29 R28 K85 ["OnMouseEnter"]
      486 GETTABLEKS                       R29 R1 K86 ["OnMouseLeave"]
      488 SETTABLEKS                       R29 R28 K86 ["OnMouseLeave"]
      490 JUMPIFNOT                        R8 ; [+2]
      491 LOADK                            R29 K92 ["Modern"]
      492 JUMP                             ; [+2]
      493 GETTABLEKS                       R29 R3 K93 ["DropdownMenu"]
      495 SETTABLEKS                       R29 R28 K2 ["Style"]
      497 SETTABLEKS                       R6 R28 K6 ["TextWrapped"]
      499 JUMPIFNOT                        R8 ; [+2]
      500 LOADK                            R29 K9 ["modern"]
      501 JUMP                             ; [+1]
      502 LOADNIL                          R29
      503 SETTABLEKS                       R29 R28 K8 ["Variant"]
      505 CALL                             R26 2 1
      506 NEWTABLE                         R27 8 0
      508 GETUPVAL                         R29 0
      509 JUMPIFNOT                        R29 ; [+2]
      510 LOADNIL                          R28
      511 JUMP                             ; [+1]
      512 LOADN                            R28 1
      513 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      515 GETUPVAL                         R29 0
      516 JUMPIFNOT                        R29 ; [+3]
      517 GETTABLEKS                       R28 R1 K14 ["Size"]
      519 JUMP                             ; [+5]
      520 GETIMPORT                        R28 K95 [UDim2.fromScale]
      522 LOADN                            R29 1
      523 LOADN                            R30 1
      524 CALL                             R28 2 1
      525 SETTABLEKS                       R28 R27 K14 ["Size"]
      527 GETUPVAL                         R30 5
      528 GETTABLEKS                       R29 R30 K96 ["Event"]
      530 GETTABLEKS                       R28 R29 K97 ["InputBegan"]
      532 GETTABLEKS                       R29 R0 K98 ["onInputBegan"]
      534 SETTABLE                         R29 R27 R28
      535 GETUPVAL                         R30 5
      536 GETTABLEKS                       R29 R30 K96 ["Event"]
      538 GETTABLEKS                       R28 R29 K99 ["MouseEnter"]
      540 GETTABLEKS                       R29 R0 K100 ["mouseEnter"]
      542 SETTABLE                         R29 R27 R28
      543 GETUPVAL                         R30 5
      544 GETTABLEKS                       R29 R30 K96 ["Event"]
      546 GETTABLEKS                       R28 R29 K101 ["MouseLeave"]
      548 GETTABLEKS                       R29 R0 K102 ["mouseLeave"]
      550 SETTABLE                         R29 R27 R28
      551 LOADNIL                          R28
      552 GETTABLEKS                       R29 R1 K103 ["ShowSelection"]
      554 JUMPIFNOT                        R29 ; [+76]
      555 LOADK                            R29 K35 [""]
      556 SETTABLEKS                       R29 R27 K63 ["Text"]
      558 LOADB                            R29 0
      559 SETTABLEKS                       R29 R27 K104 ["AutoButtonColor"]
      561 GETUPVAL                         R29 0
      562 JUMPIFNOT                        R29 ; [+37]
      563 GETUPVAL                         R30 2
      564 GETTABLEKS                       R29 R30 K12 ["Tag"]
      566 GETUPVAL                         R30 8
      567 JUMPIFNOT                        R14 ; [+2]
      568 LOADK                            R31 K36 ["HasIcon"]
      569 JUMP                             ; [+1]
      570 LOADNIL                          R31
      571 JUMPIF                           R12 ; [+2]
      572 LOADK                            R32 K105 ["Placeholder"]
      573 JUMP                             ; [+1]
      574 LOADNIL                          R32
      575 JUMPIFNOT                        R8 ; [+2]
      576 LOADK                            R33 K106 ["Component-SelectInput-Selection Row"]
      577 JUMP                             ; [+1]
      578 LOADK                            R33 K107 ["X-Input Row"]
      579 GETUPVAL                         R36 2
      580 GETTABLEKS                       R35 R36 K12 ["Tag"]
      582 GETTABLE                         R34 R1 R35
      583 JUMPIFNOT                        R9 ; [+2]
      584 LOADK                            R35 K108 ["X-Focus"]
      585 JUMP                             ; [+1]
      586 LOADNIL                          R35
      587 CALL                             R30 5 1
      588 SETTABLE                         R30 R27 R29
      589 DUPTABLE                         R29 K113 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow", "Menu"}]
      590 SETTABLEKS                       R15 R29 K109 ["SelectedItemIcon"]
      592 SETTABLEKS                       R24 R29 K110 ["SelectedItemText"]
      594 SETTABLEKS                       R25 R29 K111 ["SelectArrow"]
      596 SETTABLEKS                       R26 R29 K112 ["Menu"]
      598 MOVE                             R28 R29
      599 JUMP                             ; [+47]
      600 DUPTABLE                         R29 K115 [{"Input", "Menu"}]
      601 GETUPVAL                         R31 5
      602 GETTABLEKS                       R30 R31 K37 ["createElement"]
      604 GETUPVAL                         R31 11
      605 DUPTABLE                         R32 K118 [{"Background", "BackgroundStyle", "BackgroundStyleModifier"}]
      606 GETUPVAL                         R33 12
      607 SETTABLEKS                       R33 R32 K116 ["Background"]
      609 SETTABLEKS                       R17 R32 K53 ["BackgroundStyle"]
      611 GETTABLEKS                       R34 R0 K1 ["state"]
      613 GETTABLEKS                       R33 R34 K119 ["StyleModifier"]
      615 SETTABLEKS                       R33 R32 K117 ["BackgroundStyleModifier"]
      617 DUPTABLE                         R33 K120 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow"}]
      618 SETTABLEKS                       R15 R33 K109 ["SelectedItemIcon"]
      620 SETTABLEKS                       R24 R33 K110 ["SelectedItemText"]
      622 SETTABLEKS                       R25 R33 K111 ["SelectArrow"]
      624 CALL                             R30 3 1
      625 SETTABLEKS                       R30 R29 K114 ["Input"]
      627 SETTABLEKS                       R26 R29 K112 ["Menu"]
      629 MOVE                             R28 R29
      630 JUMP                             ; [+16]
      631 DUPTABLE                         R29 K121 [{"Menu"}]
      632 SETTABLEKS                       R26 R29 K112 ["Menu"]
      634 MOVE                             R28 R29
      635 GETUPVAL                         R30 0
      636 JUMPIFNOT                        R30 ; [+3]
      637 GETTABLEKS                       R29 R1 K72 ["ExpandIcon"]
      639 JUMP                             ; [+5]
      640 GETTABLEKS                       R29 R1 K72 ["ExpandIcon"]
      642 JUMPIF                           R29 ; [+2]
      643 GETTABLEKS                       R29 R3 K75 ["ArrowImage"]
      645 SETTABLEKS                       R29 R27 K39 ["Image"]
      647 GETTABLEKS                       R30 R1 K122 ["Tooltip"]
      649 JUMPIFNOT                        R30 ; [+11]
      650 GETUPVAL                         R30 5
      651 GETTABLEKS                       R29 R30 K37 ["createElement"]
      653 GETUPVAL                         R30 13
      654 DUPTABLE                         R31 K123 [{"Text"}]
      655 GETTABLEKS                       R32 R1 K122 ["Tooltip"]
      657 SETTABLEKS                       R32 R31 K63 ["Text"]
      659 CALL                             R29 2 1
      660 JUMP                             ; [+1]
      661 LOADNIL                          R29
      662 SETTABLEKS                       R29 R28 K122 ["Tooltip"]
      664 GETTABLEKS                       R30 R1 K103 ["ShowSelection"]
      666 JUMPIFNOT                        R30 ; [+2]
      667 LOADK                            R29 K124 ["TextButton"]
      668 JUMP                             ; [+1]
      669 LOADK                            R29 K125 ["ImageButton"]
      670 DUPTABLE                         R30 K127 [{"SelectInput"}]
      671 GETUPVAL                         R32 5
      672 GETTABLEKS                       R31 R32 K37 ["createElement"]
      674 MOVE                             R32 R29
      675 MOVE                             R33 R27
      676 MOVE                             R34 R28
      677 CALL                             R31 3 1
      678 SETTABLEKS                       R31 R30 K126 ["SelectInput"]
      680 GETUPVAL                         R32 0
      681 JUMPIFNOT                        R32 ; [+6]
      682 GETUPVAL                         R31 4
      683 LOADK                            R33 K128 ["ErrorHeight"]
      684 NAMECALL                         R31 R31 K25 ["GetAttribute"]
      686 CALL                             R31 2 1
      687 JUMP                             ; [+4]
      688 GETTABLEKS                       R32 R3 K129 ["ErrorTextStyle"]
      690 GETTABLEKS                       R31 R32 K130 ["TextSize"]
      692 GETTABLEKS                       R32 R1 K11 ["ErrorText"]
      694 JUMPIFEQKNIL                     R32 ; [+107]
      696 GETUPVAL                         R32 0
      697 JUMPIFNOT                        R32 ; [+22]
      698 GETUPVAL                         R33 5
      699 GETTABLEKS                       R32 R33 K37 ["createElement"]
      701 GETUPVAL                         R33 7
      702 NEWTABLE                         R34 4 0
      704 LOADN                            R35 2
      705 SETTABLEKS                       R35 R34 K131 ["LayoutOrder"]
      707 GETTABLEKS                       R35 R1 K11 ["ErrorText"]
      709 SETTABLEKS                       R35 R34 K63 ["Text"]
      711 GETUPVAL                         R36 2
      712 GETTABLEKS                       R35 R36 K12 ["Tag"]
      714 LOADK                            R36 K132 ["Wrap Error X-Fit"]
      715 SETTABLE                         R36 R34 R35
      716 CALL                             R32 2 1
      717 SETTABLEKS                       R32 R30 K11 ["ErrorText"]
      719 JUMP                             ; [+82]
      720 DUPTABLE                         R32 K135 [{"UIListLayout", "Contents", "ErrorText"}]
      721 GETUPVAL                         R34 5
      722 GETTABLEKS                       R33 R34 K37 ["createElement"]
      724 LOADK                            R34 K133 ["UIListLayout"]
      725 DUPTABLE                         R35 K140 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      726 GETIMPORT                        R36 K142 [Enum.FillDirection.Vertical]
      728 SETTABLEKS                       R36 R35 K136 ["FillDirection"]
      730 GETIMPORT                        R36 K143 [Enum.HorizontalAlignment.Left]
      732 SETTABLEKS                       R36 R35 K137 ["HorizontalAlignment"]
      734 GETIMPORT                        R36 K145 [Enum.VerticalAlignment.Top]
      736 SETTABLEKS                       R36 R35 K138 ["VerticalAlignment"]
      738 GETIMPORT                        R36 K146 [Enum.SortOrder.LayoutOrder]
      740 SETTABLEKS                       R36 R35 K139 ["SortOrder"]
      742 CALL                             R33 2 1
      743 SETTABLEKS                       R33 R32 K133 ["UIListLayout"]
      745 GETUPVAL                         R34 5
      746 GETTABLEKS                       R33 R34 K37 ["createElement"]
      748 LOADK                            R34 K147 ["Frame"]
      749 DUPTABLE                         R35 K148 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      750 LOADN                            R36 1
      751 SETTABLEKS                       R36 R35 K44 ["BackgroundTransparency"]
      753 LOADN                            R36 1
      754 SETTABLEKS                       R36 R35 K131 ["LayoutOrder"]
      756 GETIMPORT                        R36 K17 [UDim2.new]
      758 LOADN                            R37 1
      759 LOADN                            R38 0
      760 LOADN                            R39 1
      761 MINUS                            R40 R31
      762 CALL                             R36 4 1
      763 SETTABLEKS                       R36 R35 K14 ["Size"]
      765 MOVE                             R36 R30
      766 CALL                             R33 3 1
      767 SETTABLEKS                       R33 R32 K134 ["Contents"]
      769 GETUPVAL                         R34 5
      770 GETTABLEKS                       R33 R34 K37 ["createElement"]
      772 GETUPVAL                         R34 7
      773 DUPTABLE                         R35 K150 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
      774 GETIMPORT                        R36 K152 [Enum.AutomaticSize.XY]
      776 SETTABLEKS                       R36 R35 K149 ["AutomaticSize"]
      778 LOADN                            R36 2
      779 SETTABLEKS                       R36 R35 K131 ["LayoutOrder"]
      781 GETTABLEKS                       R36 R3 K129 ["ErrorTextStyle"]
      783 SETTABLEKS                       R36 R35 K2 ["Style"]
      785 GETTABLEKS                       R36 R1 K11 ["ErrorText"]
      787 SETTABLEKS                       R36 R35 K63 ["Text"]
      789 LOADB                            R36 1
      790 SETTABLEKS                       R36 R35 K6 ["TextWrapped"]
      792 CALL                             R33 2 1
      793 SETTABLEKS                       R33 R32 K11 ["ErrorText"]
      795 MOVE                             R30 R32
      796 GETIMPORT                        R32 K23 [UDim2.fromOffset]
      798 LOADN                            R33 0
      799 MOVE                             R34 R31
      800 CALL                             R32 2 1
      801 ADD                              R11 R11 R32
      802 GETUPVAL                         R33 5
      803 GETTABLEKS                       R32 R33 K37 ["createElement"]
      805 GETUPVAL                         R34 0
      806 JUMPIFNOT                        R34 ; [+2]
      807 GETUPVAL                         R33 14
      808 JUMP                             ; [+1]
      809 LOADK                            R33 K147 ["Frame"]
      810 GETUPVAL                         R34 15
      811 DUPTABLE                         R35 K153 [{"AnchorPoint", "BackgroundTransparency", "LayoutOrder", "Position", "Size"}]
      812 GETTABLEKS                       R36 R1 K41 ["AnchorPoint"]
      814 SETTABLEKS                       R36 R35 K41 ["AnchorPoint"]
      816 LOADN                            R36 1
      817 SETTABLEKS                       R36 R35 K44 ["BackgroundTransparency"]
      819 GETTABLEKS                       R36 R1 K131 ["LayoutOrder"]
      821 SETTABLEKS                       R36 R35 K131 ["LayoutOrder"]
      823 GETTABLEKS                       R36 R1 K42 ["Position"]
      825 SETTABLEKS                       R36 R35 K42 ["Position"]
      827 SETTABLEKS                       R11 R35 K14 ["Size"]
      829 GETUPVAL                         R37 0
      830 JUMPIFNOT                        R37 ; [+18]
      831 NEWTABLE                         R36 1 0
      833 GETUPVAL                         R38 2
      834 GETTABLEKS                       R37 R38 K12 ["Tag"]
      836 GETUPVAL                         R38 8
      837 LOADK                            R39 K154 ["Component-SelectInput X-ColumnM"]
      838 JUMPIFNOT                        R10 ; [+2]
      839 LOADK                            R40 K155 ["HasError"]
      840 JUMP                             ; [+1]
      841 LOADNIL                          R40
      842 JUMPIFNOT                        R8 ; [+2]
      843 LOADK                            R41 K9 ["modern"]
      844 JUMP                             ; [+1]
      845 LOADNIL                          R41
      846 CALL                             R38 3 1
      847 SETTABLE                         R38 R36 R37
      848 JUMP                             ; [+1]
      849 LOADNIL                          R36
      850 CALL                             R34 2 1
      851 MOVE                             R35 R30
      852 CALL                             R32 3 -1
      853 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K10 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["join"]
       34 GETTABLEKS                       R7 R0 K4 ["Parent"]
       36 LOADK                            R9 K12 ["React"]
       37 NAMECALL                         R7 R7 K13 ["FindFirstChild"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R8 R0 K4 ["Parent"]
       45 GETTABLEKS                       R7 R8 K12 ["React"]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R9 R0 K14 ["Styling"]
       54 GETTABLEKS                       R8 R9 K15 ["supportsStyleSheets"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K16 ["SharedFlags"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K17 ["getFFlagDevFrameworkDropdownMenuHeight"]
       64 CALL                             R9 0 1
       65 GETTABLEKS                       R10 R0 K2 ["UI"]
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R10 K18 ["Components"]
       71 GETTABLEKS                       R12 R13 K19 ["Container"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R14 R10 K18 ["Components"]
       78 GETTABLEKS                       R13 R14 K20 ["DropdownMenu"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R15 R10 K18 ["Components"]
       85 GETTABLEKS                       R14 R15 K21 ["Image"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R16 R10 K18 ["Components"]
       92 GETTABLEKS                       R15 R16 K22 ["Pane"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K6 [require]
       97 GETTABLEKS                       R17 R10 K18 ["Components"]
       99 GETTABLEKS                       R16 R17 K23 ["RoundBox"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R18 R10 K18 ["Components"]
      106 GETTABLEKS                       R17 R18 K24 ["TextLabel"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R19 R10 K18 ["Components"]
      113 GETTABLEKS                       R18 R19 K25 ["Tooltip"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K6 [require]
      118 GETTABLEKS                       R20 R0 K14 ["Styling"]
      120 GETTABLEKS                       R19 R20 K26 ["hasTag"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R21 R0 K14 ["Styling"]
      127 GETTABLEKS                       R20 R21 K27 ["joinTags"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R21 R0 K28 ["Util"]
      134 CALL                             R20 1 1
      135 GETTABLEKS                       R21 R20 K29 ["prioritize"]
      137 GETIMPORT                        R22 K6 [require]
      139 GETTABLEKS                       R24 R0 K28 ["Util"]
      141 GETTABLEKS                       R23 R24 K30 ["StyleModifier"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K6 [require]
      146 GETTABLEKS                       R25 R0 K28 ["Util"]
      148 GETTABLEKS                       R24 R25 K31 ["Typecheck"]
      150 CALL                             R23 1 1
      151 GETIMPORT                        R24 K6 [require]
      153 GETIMPORT                        R26 K1 [script]
      155 GETTABLEKS                       R25 R26 K32 ["styles"]
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
      172 DUPTABLE                         R27 K40 [{"Enabled", "ShowSelection"}]
      173 LOADB                            R28 1
      174 SETTABLEKS                       R28 R27 K38 ["Enabled"]
      176 LOADB                            R28 1
      177 SETTABLEKS                       R28 R27 K39 ["ShowSelection"]
      179 SETTABLEKS                       R27 R25 K41 ["defaultProps"]
      181 LOADNIL                          R27
      182 JUMPIF                           R7 ; [+3]
      183 DUPCLOSURE                       R27 K42 [PROTO_0]
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R1
      186 NEWCLOSURE                       R28 P1
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R7
      189 CAPTURE                          REF R27
      190 CAPTURE                          VAL R26
      191 SETTABLEKS                       R28 R25 K43 ["init"]
      193 JUMPIF                           R7 ; [+4]
      194 NEWCLOSURE                       R28 P2
      195 CAPTURE                          REF R27
      196 SETTABLEKS                       R28 R25 K44 ["getDerivedStateFromProps"]
      198 DUPCLOSURE                       R28 K45 [PROTO_9]
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R5
      215 SETTABLEKS                       R28 R25 K46 ["render"]
      217 MOVE                             R28 R3
      218 DUPTABLE                         R29 K49 [{"Focus", "Stylizer"}]
      219 GETTABLEKS                       R30 R2 K47 ["Focus"]
      221 SETTABLEKS                       R30 R29 K47 ["Focus"]
      223 JUMPIFNOT                        R7 ; [+2]
      224 LOADNIL                          R30
      225 JUMP                             ; [+2]
      226 GETTABLEKS                       R30 R2 K48 ["Stylizer"]
      228 SETTABLEKS                       R30 R29 K48 ["Stylizer"]
      230 CALL                             R28 1 1
      231 MOVE                             R29 R25
      232 CALL                             R28 1 1
      233 MOVE                             R25 R28
      234 CLOSEUPVALS                      R27
      235 RETURN                           R25 1
