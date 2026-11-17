PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["ScrollingFrame"]
        4 DUPTABLE                         R4 K11 [{["Size"], ["ScrollingEnabled"] = True, ["CanvasSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScrollBarThickness"] = 0}]
        5 GETIMPORT                        R5 K14 [UDim2.new]
        7 LOADN                            R6 1
        8 LOADN                            R7 0
        9 LOADN                            R8 1
       10 LOADN                            R9 0
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K2 ["Size"]
       14 GETIMPORT                        R5 K14 [UDim2.new]
       16 LOADN                            R6 1
       17 LOADN                            R7 0
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K5 ["CanvasSize"]
       23 MOVE                             R5 R1
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"ScrollBlocker"}]
        1 NAMECALL                         R4 R0 K2 ["getScrollBlocker"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["ScrollBlocker"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 LOADK                            R5 K4 ["Frame"]
       10 DUPTABLE                         R6 K11 [{["ZIndex"] = 10, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       11 GETIMPORT                        R7 K14 [UDim2.new]
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 LOADN                            R11 0
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K7 ["Position"]
       20 GETIMPORT                        R7 K14 [UDim2.new]
       22 LOADN                            R8 1
       23 LOADN                            R9 0
       24 LOADN                            R10 1
       25 LOADN                            R11 0
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K8 ["Size"]
       29 DUPTABLE                         R7 K20 [{"Top", "Left", "Right", "Bottom", "Content"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 LOADK                            R9 K21 ["ImageButton"]
       34 NEWTABLE                         R10 8 0
       36 LOADB                            R11 0
       37 SETTABLEKS                       R11 R10 K22 ["AutoButtonColor"]
       39 LOADN                            R11 1
       40 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       42 GETIMPORT                        R11 K14 [UDim2.new]
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 LOADN                            R14 0
       47 LOADN                            R15 0
       48 CALL                             R11 4 1
       49 SETTABLEKS                       R11 R10 K7 ["Position"]
       51 GETIMPORT                        R11 K14 [UDim2.new]
       53 LOADN                            R12 1
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 GETTABLEKS                       R15 R1 K23 ["Y"]
       58 CALL                             R11 4 1
       59 SETTABLEKS                       R11 R10 K8 ["Size"]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K24 ["Event"]
       64 GETTABLEKS                       R11 R11 K25 ["Activated"]
       66 GETTABLEKS                       R13 R0 K26 ["props"]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K24 ["Event"]
       71 GETTABLEKS                       R14 R14 K25 ["Activated"]
       73 GETTABLE                         R12 R13 R14
       74 SETTABLE                         R12 R10 R11
       75 MOVE                             R11 R3
       76 CALL                             R8 3 1
       77 SETTABLEKS                       R8 R7 K15 ["Top"]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K3 ["createElement"]
       82 LOADK                            R9 K21 ["ImageButton"]
       83 NEWTABLE                         R10 8 0
       85 LOADB                            R11 0
       86 SETTABLEKS                       R11 R10 K22 ["AutoButtonColor"]
       88 LOADN                            R11 1
       89 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       91 GETIMPORT                        R11 K14 [UDim2.new]
       93 LOADN                            R12 0
       94 LOADN                            R13 0
       95 LOADN                            R14 0
       96 GETTABLEKS                       R15 R1 K23 ["Y"]
       98 CALL                             R11 4 1
       99 SETTABLEKS                       R11 R10 K7 ["Position"]
      101 GETIMPORT                        R11 K14 [UDim2.new]
      103 LOADN                            R12 0
      104 GETTABLEKS                       R13 R1 K27 ["X"]
      106 LOADN                            R14 0
      107 GETTABLEKS                       R15 R2 K23 ["Y"]
      109 CALL                             R11 4 1
      110 SETTABLEKS                       R11 R10 K8 ["Size"]
      112 GETUPVAL                         R11 0
      113 GETTABLEKS                       R11 R11 K24 ["Event"]
      115 GETTABLEKS                       R11 R11 K25 ["Activated"]
      117 GETTABLEKS                       R13 R0 K26 ["props"]
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K24 ["Event"]
      122 GETTABLEKS                       R14 R14 K25 ["Activated"]
      124 GETTABLE                         R12 R13 R14
      125 SETTABLE                         R12 R10 R11
      126 MOVE                             R11 R3
      127 CALL                             R8 3 1
      128 SETTABLEKS                       R8 R7 K16 ["Left"]
      130 GETUPVAL                         R8 0
      131 GETTABLEKS                       R8 R8 K3 ["createElement"]
      133 LOADK                            R9 K21 ["ImageButton"]
      134 NEWTABLE                         R10 8 0
      136 LOADB                            R11 0
      137 SETTABLEKS                       R11 R10 K22 ["AutoButtonColor"]
      139 LOADN                            R11 1
      140 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
      142 GETIMPORT                        R11 K14 [UDim2.new]
      144 LOADN                            R12 0
      145 GETTABLEKS                       R14 R1 K27 ["X"]
      147 GETTABLEKS                       R15 R2 K27 ["X"]
      149 ADD                              R13 R14 R15
      150 LOADN                            R14 0
      151 GETTABLEKS                       R15 R1 K23 ["Y"]
      153 CALL                             R11 4 1
      154 SETTABLEKS                       R11 R10 K7 ["Position"]
      156 GETIMPORT                        R11 K14 [UDim2.new]
      158 LOADN                            R12 1
      159 GETTABLEKS                       R15 R1 K27 ["X"]
      161 GETTABLEKS                       R16 R2 K27 ["X"]
      163 ADD                              R14 R15 R16
      164 MINUS                            R13 R14
      165 LOADN                            R14 0
      166 GETTABLEKS                       R15 R2 K23 ["Y"]
      168 CALL                             R11 4 1
      169 SETTABLEKS                       R11 R10 K8 ["Size"]
      171 GETUPVAL                         R11 0
      172 GETTABLEKS                       R11 R11 K24 ["Event"]
      174 GETTABLEKS                       R11 R11 K25 ["Activated"]
      176 GETTABLEKS                       R13 R0 K26 ["props"]
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K24 ["Event"]
      181 GETTABLEKS                       R14 R14 K25 ["Activated"]
      183 GETTABLE                         R12 R13 R14
      184 SETTABLE                         R12 R10 R11
      185 MOVE                             R11 R3
      186 CALL                             R8 3 1
      187 SETTABLEKS                       R8 R7 K17 ["Right"]
      189 GETUPVAL                         R8 0
      190 GETTABLEKS                       R8 R8 K3 ["createElement"]
      192 LOADK                            R9 K21 ["ImageButton"]
      193 NEWTABLE                         R10 8 0
      195 LOADB                            R11 0
      196 SETTABLEKS                       R11 R10 K22 ["AutoButtonColor"]
      198 LOADN                            R11 1
      199 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
      201 GETIMPORT                        R11 K14 [UDim2.new]
      203 LOADN                            R12 0
      204 LOADN                            R13 0
      205 LOADN                            R14 0
      206 GETTABLEKS                       R16 R1 K23 ["Y"]
      208 GETTABLEKS                       R17 R2 K23 ["Y"]
      210 ADD                              R15 R16 R17
      211 CALL                             R11 4 1
      212 SETTABLEKS                       R11 R10 K7 ["Position"]
      214 GETIMPORT                        R11 K14 [UDim2.new]
      216 LOADN                            R12 1
      217 LOADN                            R13 0
      218 LOADN                            R14 1
      219 GETTABLEKS                       R17 R1 K23 ["Y"]
      221 GETTABLEKS                       R18 R2 K23 ["Y"]
      223 ADD                              R16 R17 R18
      224 MINUS                            R15 R16
      225 CALL                             R11 4 1
      226 SETTABLEKS                       R11 R10 K8 ["Size"]
      228 GETUPVAL                         R11 0
      229 GETTABLEKS                       R11 R11 K24 ["Event"]
      231 GETTABLEKS                       R11 R11 K25 ["Activated"]
      233 GETTABLEKS                       R13 R0 K26 ["props"]
      235 GETUPVAL                         R14 0
      236 GETTABLEKS                       R14 R14 K24 ["Event"]
      238 GETTABLEKS                       R14 R14 K25 ["Activated"]
      240 GETTABLE                         R12 R13 R14
      241 SETTABLE                         R12 R10 R11
      242 MOVE                             R11 R3
      243 CALL                             R8 3 1
      244 SETTABLEKS                       R8 R7 K18 ["Bottom"]
      246 GETUPVAL                         R8 0
      247 GETTABLEKS                       R8 R8 K3 ["createElement"]
      249 LOADK                            R9 K4 ["Frame"]
      250 DUPTABLE                         R10 K28 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      251 GETIMPORT                        R11 K14 [UDim2.new]
      253 LOADN                            R12 0
      254 LOADN                            R13 0
      255 LOADN                            R14 0
      256 LOADN                            R15 0
      257 CALL                             R11 4 1
      258 SETTABLEKS                       R11 R10 K7 ["Position"]
      260 GETIMPORT                        R11 K14 [UDim2.new]
      262 LOADN                            R12 1
      263 LOADN                            R13 0
      264 LOADN                            R14 1
      265 LOADN                            R15 0
      266 CALL                             R11 4 1
      267 SETTABLEKS                       R11 R10 K8 ["Size"]
      269 GETTABLEKS                       R12 R0 K26 ["props"]
      271 GETUPVAL                         R13 0
      272 GETTABLEKS                       R13 R13 K29 ["Children"]
      274 GETTABLE                         R11 R12 R13
      275 CALL                             R8 3 1
      276 SETTABLEKS                       R8 R7 K19 ["Content"]
      278 CALL                             R4 3 -1
      279 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ImageButton"]
        4 NEWTABLE                         R3 8 0
        6 LOADN                            R4 10
        7 SETTABLEKS                       R4 R3 K2 ["ZIndex"]
        9 GETIMPORT                        R4 K5 [UDim2.new]
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 SETTABLEKS                       R4 R3 K6 ["Position"]
       18 GETIMPORT                        R4 K5 [UDim2.new]
       20 LOADN                            R5 1
       21 LOADN                            R6 0
       22 LOADN                            R7 1
       23 LOADN                            R8 0
       24 CALL                             R4 4 1
       25 SETTABLEKS                       R4 R3 K7 ["Size"]
       27 LOADN                            R4 1
       28 SETTABLEKS                       R4 R3 K8 ["BackgroundTransparency"]
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K9 ["AutoButtonColor"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K10 ["Event"]
       36 GETTABLEKS                       R4 R4 K11 ["Activated"]
       38 GETTABLEKS                       R6 R0 K12 ["props"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K10 ["Event"]
       43 GETTABLEKS                       R7 R7 K11 ["Activated"]
       45 GETTABLE                         R5 R6 R7
       46 SETTABLE                         R5 R3 R4
       47 DUPTABLE                         R4 K14 [{"ScrollBlocker"}]
       48 GETTABLEKS                       R8 R0 K12 ["props"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K15 ["Children"]
       53 GETTABLE                         R7 R8 R9
       54 NAMECALL                         R5 R0 K16 ["getScrollBlocker"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["ScrollBlocker"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Modal"]
        4 GETTABLEKS                       R2 R2 K2 ["modalTarget"]
        6 GETTABLEKS                       R3 R1 K3 ["windowPosition"]
        8 JUMPIF                           R3 ; [+7]
        9 GETIMPORT                        R3 K6 [UDim2.new]
       11 LOADN                            R4 0
       12 LOADN                            R5 0
       13 LOADN                            R6 0
       14 LOADN                            R7 0
       15 CALL                             R3 4 1
       16 GETTABLEKS                       R4 R1 K7 ["windowSize"]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+7]
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 NAMECALL                         R6 R0 K8 ["getClickDetectFrameWithWindow"]
       24 CALL                             R6 3 1
       25 MOVE                             R5 R6
       26 JUMP                             ; [+4]
       27 NAMECALL                         R6 R0 K9 ["getClickDetectFrame"]
       29 CALL                             R6 1 1
       30 MOVE                             R5 R6
       31 MOVE                             R6 R2
       32 JUMPIFNOT                        R6 ; [+13]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K10 ["createElement"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K11 ["Portal"]
       39 DUPTABLE                         R8 K13 [{"target"}]
       40 SETTABLEKS                       R2 R8 K12 ["target"]
       42 DUPTABLE                         R9 K15 [{"ClickEventDetectFrame"}]
       43 SETTABLEKS                       R5 R9 K14 ["ClickEventDetectFrame"]
       45 CALL                             R6 3 1
       46 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K9 ["Src"]
       31 GETTABLEKS                       R6 R6 K8 ["ContextServices"]
       33 GETTABLEKS                       R6 R6 K11 ["ModalContext"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R3 K12 ["withContext"]
       38 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       40 LOADK                            R9 K14 ["ClickEventDetectFrame"]
       41 NAMECALL                         R7 R7 K15 ["extend"]
       43 CALL                             R7 2 1
       44 DUPCLOSURE                       R8 K16 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R8 R7 K17 ["getScrollBlocker"]
       48 DUPCLOSURE                       R8 K18 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R8 R7 K19 ["getClickDetectFrameWithWindow"]
       52 DUPCLOSURE                       R8 K20 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R8 R7 K21 ["getClickDetectFrame"]
       56 DUPCLOSURE                       R8 K22 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R7 K23 ["render"]
       60 MOVE                             R8 R6
       61 DUPTABLE                         R9 K25 [{"Modal"}]
       62 SETTABLEKS                       R5 R9 K24 ["Modal"]
       64 CALL                             R8 1 1
       65 MOVE                             R9 R7
       66 CALL                             R8 1 1
       67 MOVE                             R7 R8
       68 RETURN                           R7 1
