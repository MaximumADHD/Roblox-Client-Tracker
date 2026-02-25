PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["A"]
        6 GETTABLEKS                       R4 R1 K2 ["B"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 GETTABLEKS                       R9 R3 K3 ["X"]
       12 GETTABLEKS                       R7 R4 K3 ["X"]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R8 R10 K4 ["CURVE_INTERVAL"]
       17 FORNPREP                         R7
       18 GETTABLEKS                       R12 R3 K3 ["X"]
       20 SUB                              R11 R9 R12
       21 GETTABLEKS                       R13 R4 K3 ["X"]
       23 GETTABLEKS                       R14 R3 K3 ["X"]
       25 SUB                              R12 R13 R14
       26 DIV                              R10 R11 R12
       27 MUL                              R11 R10 R10
       28 LOADN                            R16 2
       29 MUL                              R15 R16 R10
       30 SUBK                             R14 R15 K6 [3]
       31 MUL                              R13 R11 R14
       32 ADDK                             R12 R13 K5 [1]
       33 SUBK                             R16 R10 K7 [2]
       34 MUL                              R15 R16 R10
       35 ADDK                             R14 R15 K5 [1]
       36 MUL                              R13 R14 R10
       37 LOADN                            R17 2
       38 MUL                              R16 R17 R10
       39 SUBRK                            R15 R6 K16 ["FrameWidth"]
       40 MUL                              R14 R11 R15
       41 SUBK                             R16 R10 K5 [1]
       42 MUL                              R15 R11 R16
       43 GETTABLEKS                       R20 R3 K8 ["Y"]
       45 MUL                              R19 R12 R20
       46 GETTABLEKS                       R23 R4 K3 ["X"]
       48 GETTABLEKS                       R24 R3 K3 ["X"]
       50 SUB                              R22 R23 R24
       51 MUL                              R21 R13 R22
       52 GETTABLEKS                       R22 R1 K9 ["ASlope"]
       54 MUL                              R20 R21 R22
       55 ADD                              R18 R19 R20
       56 GETTABLEKS                       R20 R4 K8 ["Y"]
       58 MUL                              R19 R14 R20
       59 ADD                              R17 R18 R19
       60 GETTABLEKS                       R21 R4 K3 ["X"]
       62 GETTABLEKS                       R22 R3 K3 ["X"]
       64 SUB                              R20 R21 R22
       65 MUL                              R19 R15 R20
       66 GETTABLEKS                       R20 R1 K10 ["BSlope"]
       68 MUL                              R18 R19 R20
       69 ADD                              R16 R17 R18
       70 GETTABLEKS                       R18 R0 K0 ["props"]
       72 GETTABLEKS                       R17 R18 K11 ["MinClamp"]
       74 JUMPIFNOT                        R17 ; [+20]
       75 GETTABLEKS                       R18 R0 K0 ["props"]
       77 GETTABLEKS                       R17 R18 K12 ["MaxClamp"]
       79 JUMPIFNOT                        R17 ; [+15]
       80 GETTABLEKS                       R20 R0 K0 ["props"]
       82 GETTABLEKS                       R19 R20 K11 ["MinClamp"]
       84 GETTABLEKS                       R21 R0 K0 ["props"]
       86 GETTABLEKS                       R20 R21 K12 ["MaxClamp"]
       88 FASTCALL3                        MATH_CLAMP R16 R19 R20
       90 MOVE                             R18 R16
       91 GETIMPORT                        R17 K15 [math.clamp]
       93 CALL                             R17 3 1
       94 MOVE                             R16 R17
       95 JUMPIFNOT                        R5 ; [+48]
       96 GETTABLEKS                       R17 R1 K16 ["FrameWidth"]
       98 JUMPIFNOTLT                      R5 R17 ; [+45]
      100 LOADN                            R17 0
      101 JUMPIFNOTLT                      R17 R9 ; [+42]
      103 MOVE                             R18 R2
      104 GETUPVAL                         R20 1
      105 GETTABLEKS                       R19 R20 K17 ["createElement"]
      107 GETUPVAL                         R20 2
      108 DUPTABLE                         R21 K22 [{"A", "B", "Color", "Width", "Transparency", "ZIndex"}]
      109 GETIMPORT                        R22 K25 [Vector2.new]
      111 MOVE                             R23 R5
      112 MOVE                             R24 R6
      113 CALL                             R22 2 1
      114 SETTABLEKS                       R22 R21 K1 ["A"]
      116 GETIMPORT                        R22 K25 [Vector2.new]
      118 MOVE                             R23 R9
      119 MOVE                             R24 R16
      120 CALL                             R22 2 1
      121 SETTABLEKS                       R22 R21 K2 ["B"]
      123 GETTABLEKS                       R22 R1 K18 ["Color"]
      125 SETTABLEKS                       R22 R21 K18 ["Color"]
      127 GETTABLEKS                       R22 R1 K19 ["Width"]
      129 SETTABLEKS                       R22 R21 K19 ["Width"]
      131 GETTABLEKS                       R22 R1 K20 ["Transparency"]
      133 SETTABLEKS                       R22 R21 K20 ["Transparency"]
      135 GETTABLEKS                       R22 R1 K21 ["ZIndex"]
      137 SETTABLEKS                       R22 R21 K21 ["ZIndex"]
      139 CALL                             R19 2 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R17 K28 [table.insert]
      143 CALL                             R17 -1 0
      144 MOVE                             R5 R9
      145 MOVE                             R6 R16
      146 FORNLOOP                         R7
      147 MOVE                             R8 R2
      148 GETUPVAL                         R10 1
      149 GETTABLEKS                       R9 R10 K17 ["createElement"]
      151 GETUPVAL                         R10 2
      152 DUPTABLE                         R11 K22 [{"A", "B", "Color", "Width", "Transparency", "ZIndex"}]
      153 JUMPIFNOT                        R5 ; [+6]
      154 GETIMPORT                        R12 K25 [Vector2.new]
      156 MOVE                             R13 R5
      157 MOVE                             R14 R6
      158 CALL                             R12 2 1
      159 JUMP                             ; [+1]
      160 MOVE                             R12 R3
      161 SETTABLEKS                       R12 R11 K1 ["A"]
      163 SETTABLEKS                       R4 R11 K2 ["B"]
      165 GETTABLEKS                       R12 R1 K18 ["Color"]
      167 SETTABLEKS                       R12 R11 K18 ["Color"]
      169 GETTABLEKS                       R12 R1 K19 ["Width"]
      171 SETTABLEKS                       R12 R11 K19 ["Width"]
      173 GETTABLEKS                       R12 R1 K20 ["Transparency"]
      175 SETTABLEKS                       R12 R11 K20 ["Transparency"]
      177 GETTABLEKS                       R12 R1 K21 ["ZIndex"]
      179 SETTABLEKS                       R12 R11 K21 ["ZIndex"]
      181 CALL                             R9 2 -1
      182 FASTCALL                         TABLE_INSERT ; [+2]
      183 GETIMPORT                        R7 K28 [table.insert]
      185 CALL                             R7 -1 0
      186 GETUPVAL                         R8 1
      187 GETTABLEKS                       R7 R8 K17 ["createElement"]
      189 LOADK                            R8 K29 ["Frame"]
      190 DUPTABLE                         R9 K34 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      191 GETIMPORT                        R10 K36 [UDim2.new]
      193 LOADN                            R11 0
      194 LOADN                            R12 0
      195 LOADN                            R13 0
      196 LOADN                            R14 0
      197 CALL                             R10 4 1
      198 SETTABLEKS                       R10 R9 K30 ["Position"]
      200 GETIMPORT                        R10 K36 [UDim2.new]
      202 LOADN                            R11 1
      203 LOADN                            R12 0
      204 LOADN                            R13 1
      205 LOADN                            R14 0
      206 CALL                             R10 4 1
      207 SETTABLEKS                       R10 R9 K31 ["Size"]
      209 LOADN                            R10 1
      210 SETTABLEKS                       R10 R9 K32 ["BackgroundTransparency"]
      212 LOADN                            R10 0
      213 SETTABLEKS                       R10 R9 K33 ["BorderSizePixel"]
      215 GETTABLEKS                       R10 R1 K21 ["ZIndex"]
      217 SETTABLEKS                       R10 R9 K21 ["ZIndex"]
      219 MOVE                             R10 R2
      220 CALL                             R7 3 -1
      221 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Components"]
       29 GETTABLEKS                       R5 R6 K12 ["Curves"]
       31 GETTABLEKS                       R4 R5 K13 ["Line"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K14 ["PureComponent"]
       36 LOADK                            R6 K15 ["Cubic"]
       37 NAMECALL                         R4 R4 K16 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K17 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R4 K18 ["render"]
       46 RETURN                           R4 1
