PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["ScrollingFrame"]
        4 DUPTABLE                         R4 K8 [{"Size", "ScrollingEnabled", "CanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness"}]
        5 GETIMPORT                        R5 K11 [UDim2.new]
        7 LOADN                            R6 1
        8 LOADN                            R7 0
        9 LOADN                            R8 1
       10 LOADN                            R9 0
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K2 ["Size"]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K3 ["ScrollingEnabled"]
       17 GETIMPORT                        R5 K11 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K4 ["CanvasSize"]
       26 LOADN                            R5 1
       27 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       29 LOADN                            R5 0
       30 SETTABLEKS                       R5 R4 K6 ["BorderSizePixel"]
       32 LOADN                            R5 0
       33 SETTABLEKS                       R5 R4 K7 ["ScrollBarThickness"]
       35 MOVE                             R5 R1
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"ScrollBlocker"}]
        1 NAMECALL                         R4 R0 K2 ["getScrollBlocker"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["ScrollBlocker"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 LOADK                            R5 K4 ["Frame"]
       10 DUPTABLE                         R6 K9 [{"ZIndex", "Position", "Size", "BackgroundTransparency"}]
       11 LOADN                            R7 10
       12 SETTABLEKS                       R7 R6 K5 ["ZIndex"]
       14 GETIMPORT                        R7 K12 [UDim2.new]
       16 LOADN                            R8 0
       17 LOADN                            R9 0
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 CALL                             R7 4 1
       21 SETTABLEKS                       R7 R6 K6 ["Position"]
       23 GETIMPORT                        R7 K12 [UDim2.new]
       25 LOADN                            R8 1
       26 LOADN                            R9 0
       27 LOADN                            R10 1
       28 LOADN                            R11 0
       29 CALL                             R7 4 1
       30 SETTABLEKS                       R7 R6 K7 ["Size"]
       32 LOADN                            R7 1
       33 SETTABLEKS                       R7 R6 K8 ["BackgroundTransparency"]
       35 DUPTABLE                         R7 K18 [{"Top", "Left", "Right", "Bottom", "Content"}]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K3 ["createElement"]
       39 LOADK                            R9 K19 ["ImageButton"]
       40 NEWTABLE                         R10 8 0
       42 LOADB                            R11 0
       43 SETTABLEKS                       R11 R10 K20 ["AutoButtonColor"]
       45 LOADN                            R11 1
       46 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
       48 GETIMPORT                        R11 K12 [UDim2.new]
       50 LOADN                            R12 0
       51 LOADN                            R13 0
       52 LOADN                            R14 0
       53 LOADN                            R15 0
       54 CALL                             R11 4 1
       55 SETTABLEKS                       R11 R10 K6 ["Position"]
       57 GETIMPORT                        R11 K12 [UDim2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 0
       61 LOADN                            R14 0
       62 GETTABLEKS                       R15 R1 K21 ["Y"]
       64 CALL                             R11 4 1
       65 SETTABLEKS                       R11 R10 K7 ["Size"]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R12 R13 K22 ["Event"]
       70 GETTABLEKS                       R11 R12 K23 ["Activated"]
       72 GETTABLEKS                       R13 R0 K24 ["props"]
       74 GETUPVAL                         R16 0
       75 GETTABLEKS                       R15 R16 K22 ["Event"]
       77 GETTABLEKS                       R14 R15 K23 ["Activated"]
       79 GETTABLE                         R12 R13 R14
       80 SETTABLE                         R12 R10 R11
       81 MOVE                             R11 R3
       82 CALL                             R8 3 1
       83 SETTABLEKS                       R8 R7 K13 ["Top"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R8 R9 K3 ["createElement"]
       88 LOADK                            R9 K19 ["ImageButton"]
       89 NEWTABLE                         R10 8 0
       91 LOADB                            R11 0
       92 SETTABLEKS                       R11 R10 K20 ["AutoButtonColor"]
       94 LOADN                            R11 1
       95 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
       97 GETIMPORT                        R11 K12 [UDim2.new]
       99 LOADN                            R12 0
      100 LOADN                            R13 0
      101 LOADN                            R14 0
      102 GETTABLEKS                       R15 R1 K21 ["Y"]
      104 CALL                             R11 4 1
      105 SETTABLEKS                       R11 R10 K6 ["Position"]
      107 GETIMPORT                        R11 K12 [UDim2.new]
      109 LOADN                            R12 0
      110 GETTABLEKS                       R13 R1 K25 ["X"]
      112 LOADN                            R14 0
      113 GETTABLEKS                       R15 R2 K21 ["Y"]
      115 CALL                             R11 4 1
      116 SETTABLEKS                       R11 R10 K7 ["Size"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R12 R13 K22 ["Event"]
      121 GETTABLEKS                       R11 R12 K23 ["Activated"]
      123 GETTABLEKS                       R13 R0 K24 ["props"]
      125 GETUPVAL                         R16 0
      126 GETTABLEKS                       R15 R16 K22 ["Event"]
      128 GETTABLEKS                       R14 R15 K23 ["Activated"]
      130 GETTABLE                         R12 R13 R14
      131 SETTABLE                         R12 R10 R11
      132 MOVE                             R11 R3
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K14 ["Left"]
      136 GETUPVAL                         R9 0
      137 GETTABLEKS                       R8 R9 K3 ["createElement"]
      139 LOADK                            R9 K19 ["ImageButton"]
      140 NEWTABLE                         R10 8 0
      142 LOADB                            R11 0
      143 SETTABLEKS                       R11 R10 K20 ["AutoButtonColor"]
      145 LOADN                            R11 1
      146 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
      148 GETIMPORT                        R11 K12 [UDim2.new]
      150 LOADN                            R12 0
      151 GETTABLEKS                       R14 R1 K25 ["X"]
      153 GETTABLEKS                       R15 R2 K25 ["X"]
      155 ADD                              R13 R14 R15
      156 LOADN                            R14 0
      157 GETTABLEKS                       R15 R1 K21 ["Y"]
      159 CALL                             R11 4 1
      160 SETTABLEKS                       R11 R10 K6 ["Position"]
      162 GETIMPORT                        R11 K12 [UDim2.new]
      164 LOADN                            R12 1
      165 GETTABLEKS                       R15 R1 K25 ["X"]
      167 GETTABLEKS                       R16 R2 K25 ["X"]
      169 ADD                              R14 R15 R16
      170 MINUS                            R13 R14
      171 LOADN                            R14 0
      172 GETTABLEKS                       R15 R2 K21 ["Y"]
      174 CALL                             R11 4 1
      175 SETTABLEKS                       R11 R10 K7 ["Size"]
      177 GETUPVAL                         R13 0
      178 GETTABLEKS                       R12 R13 K22 ["Event"]
      180 GETTABLEKS                       R11 R12 K23 ["Activated"]
      182 GETTABLEKS                       R13 R0 K24 ["props"]
      184 GETUPVAL                         R16 0
      185 GETTABLEKS                       R15 R16 K22 ["Event"]
      187 GETTABLEKS                       R14 R15 K23 ["Activated"]
      189 GETTABLE                         R12 R13 R14
      190 SETTABLE                         R12 R10 R11
      191 MOVE                             R11 R3
      192 CALL                             R8 3 1
      193 SETTABLEKS                       R8 R7 K15 ["Right"]
      195 GETUPVAL                         R9 0
      196 GETTABLEKS                       R8 R9 K3 ["createElement"]
      198 LOADK                            R9 K19 ["ImageButton"]
      199 NEWTABLE                         R10 8 0
      201 LOADB                            R11 0
      202 SETTABLEKS                       R11 R10 K20 ["AutoButtonColor"]
      204 LOADN                            R11 1
      205 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
      207 GETIMPORT                        R11 K12 [UDim2.new]
      209 LOADN                            R12 0
      210 LOADN                            R13 0
      211 LOADN                            R14 0
      212 GETTABLEKS                       R16 R1 K21 ["Y"]
      214 GETTABLEKS                       R17 R2 K21 ["Y"]
      216 ADD                              R15 R16 R17
      217 CALL                             R11 4 1
      218 SETTABLEKS                       R11 R10 K6 ["Position"]
      220 GETIMPORT                        R11 K12 [UDim2.new]
      222 LOADN                            R12 1
      223 LOADN                            R13 0
      224 LOADN                            R14 1
      225 GETTABLEKS                       R17 R1 K21 ["Y"]
      227 GETTABLEKS                       R18 R2 K21 ["Y"]
      229 ADD                              R16 R17 R18
      230 MINUS                            R15 R16
      231 CALL                             R11 4 1
      232 SETTABLEKS                       R11 R10 K7 ["Size"]
      234 GETUPVAL                         R13 0
      235 GETTABLEKS                       R12 R13 K22 ["Event"]
      237 GETTABLEKS                       R11 R12 K23 ["Activated"]
      239 GETTABLEKS                       R13 R0 K24 ["props"]
      241 GETUPVAL                         R16 0
      242 GETTABLEKS                       R15 R16 K22 ["Event"]
      244 GETTABLEKS                       R14 R15 K23 ["Activated"]
      246 GETTABLE                         R12 R13 R14
      247 SETTABLE                         R12 R10 R11
      248 MOVE                             R11 R3
      249 CALL                             R8 3 1
      250 SETTABLEKS                       R8 R7 K16 ["Bottom"]
      252 GETUPVAL                         R9 0
      253 GETTABLEKS                       R8 R9 K3 ["createElement"]
      255 LOADK                            R9 K4 ["Frame"]
      256 DUPTABLE                         R10 K26 [{"BackgroundTransparency", "Position", "Size"}]
      257 LOADN                            R11 1
      258 SETTABLEKS                       R11 R10 K8 ["BackgroundTransparency"]
      260 GETIMPORT                        R11 K12 [UDim2.new]
      262 LOADN                            R12 0
      263 LOADN                            R13 0
      264 LOADN                            R14 0
      265 LOADN                            R15 0
      266 CALL                             R11 4 1
      267 SETTABLEKS                       R11 R10 K6 ["Position"]
      269 GETIMPORT                        R11 K12 [UDim2.new]
      271 LOADN                            R12 1
      272 LOADN                            R13 0
      273 LOADN                            R14 1
      274 LOADN                            R15 0
      275 CALL                             R11 4 1
      276 SETTABLEKS                       R11 R10 K7 ["Size"]
      278 GETTABLEKS                       R12 R0 K24 ["props"]
      280 GETUPVAL                         R14 0
      281 GETTABLEKS                       R13 R14 K27 ["Children"]
      283 GETTABLE                         R11 R12 R13
      284 CALL                             R8 3 1
      285 SETTABLEKS                       R8 R7 K17 ["Content"]
      287 CALL                             R4 3 -1
      288 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K10 ["Event"]
       36 GETTABLEKS                       R4 R5 K11 ["Activated"]
       38 GETTABLEKS                       R6 R0 K12 ["props"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K10 ["Event"]
       43 GETTABLEKS                       R7 R8 K11 ["Activated"]
       45 GETTABLE                         R5 R6 R7
       46 SETTABLE                         R5 R3 R4
       47 DUPTABLE                         R4 K14 [{"ScrollBlocker"}]
       48 GETTABLEKS                       R8 R0 K12 ["props"]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R9 R10 K15 ["Children"]
       53 GETTABLE                         R7 R8 R9
       54 NAMECALL                         R5 R0 K16 ["getScrollBlocker"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["ScrollBlocker"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Modal"]
        4 GETTABLEKS                       R2 R3 K2 ["modalTarget"]
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
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K10 ["createElement"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K11 ["Portal"]
       39 DUPTABLE                         R8 K13 [{"target"}]
       40 SETTABLEKS                       R2 R8 K12 ["target"]
       42 DUPTABLE                         R9 K15 [{"ClickEventDetectFrame"}]
       43 SETTABLEKS                       R5 R9 K14 ["ClickEventDetectFrame"]
       45 CALL                             R6 3 1
       46 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Framework"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K9 ["Src"]
       31 GETTABLEKS                       R7 R8 K8 ["ContextServices"]
       33 GETTABLEKS                       R6 R7 K11 ["ModalContext"]
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
