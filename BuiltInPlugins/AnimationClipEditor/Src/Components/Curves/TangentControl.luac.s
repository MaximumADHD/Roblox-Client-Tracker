PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Slope"]
        8 GETTABLEKS                       R5 R1 K4 ["Length"]
       10 GETTABLEKS                       R7 R1 K5 ["Side"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K6 ["SLOPES"]
       15 GETTABLEKS                       R8 R8 K7 ["Left"]
       17 JUMPIFEQ                         R7 R8 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 GETTABLEKS                       R7 R1 K8 ["Auto"]
       23 GETTABLEKS                       R8 R1 K9 ["ZIndex"]
       25 FASTCALL2K                       MATH_ATAN2 R4 K10 ; [+5]
       27 MOVE                             R11 R4
       28 LOADK                            R12 K10 [1]
       29 GETIMPORT                        R10 K13 [math.atan2]
       31 CALL                             R10 2 1
       32 FASTCALL1                        MATH_DEG R10 ; [+2]
       33 GETIMPORT                        R9 K15 [math.deg]
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K16 ["createElement"]
       39 LOADK                            R11 K17 ["Frame"]
       40 DUPTABLE                         R12 K23 [{"Position", "AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel", "Rotation", "ZIndex"}]
       41 SETTABLEKS                       R3 R12 K2 ["Position"]
       43 GETIMPORT                        R13 K26 [Vector2.new]
       45 LOADK                            R14 K27 [0.5]
       46 LOADK                            R15 K27 [0.5]
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K18 ["AnchorPoint"]
       50 GETIMPORT                        R13 K29 [UDim2.new]
       52 LOADN                            R14 0
       53 MULK                             R15 R5 K30 [2]
       54 LOADN                            R16 0
       55 LOADN                            R17 9
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K19 ["Size"]
       59 LOADN                            R13 1
       60 SETTABLEKS                       R13 R12 K20 ["BackgroundTransparency"]
       62 LOADN                            R13 0
       63 SETTABLEKS                       R13 R12 K21 ["BorderSizePixel"]
       65 SETTABLEKS                       R9 R12 K22 ["Rotation"]
       67 SETTABLEKS                       R8 R12 K9 ["ZIndex"]
       69 DUPTABLE                         R13 K33 [{"Line", "Control"}]
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K16 ["createElement"]
       73 LOADK                            R15 K17 ["Frame"]
       74 DUPTABLE                         R16 K35 [{"Position", "Size", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3"}]
       75 GETIMPORT                        R17 K29 [UDim2.new]
       77 JUMPIFNOT                        R6 ; [+2]
       78 LOADN                            R18 0
       79 JUMP                             ; [+1]
       80 LOADK                            R18 K27 [0.5]
       81 LOADN                            R19 0
       82 LOADK                            R20 K27 [0.5]
       83 LOADN                            R21 0
       84 CALL                             R17 4 1
       85 SETTABLEKS                       R17 R16 K2 ["Position"]
       87 GETIMPORT                        R17 K29 [UDim2.new]
       89 LOADN                            R18 0
       90 MOVE                             R19 R5
       91 LOADN                            R20 0
       92 LOADN                            R21 1
       93 CALL                             R17 4 1
       94 SETTABLEKS                       R17 R16 K19 ["Size"]
       96 LOADN                            R17 0
       97 SETTABLEKS                       R17 R16 K21 ["BorderSizePixel"]
       99 LOADN                            R17 0
      100 SETTABLEKS                       R17 R16 K20 ["BackgroundTransparency"]
      102 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      104 GETTABLEKS                       R17 R17 K37 ["tangentControlColor"]
      106 SETTABLEKS                       R17 R16 K34 ["BackgroundColor3"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K31 ["Line"]
      111 GETUPVAL                         R14 1
      112 GETTABLEKS                       R14 R14 K16 ["createElement"]
      114 LOADK                            R15 K38 ["ImageButton"]
      115 NEWTABLE                         R16 16 0
      117 GETIMPORT                        R17 K29 [UDim2.new]
      119 LOADN                            R18 0
      120 LOADN                            R19 9
      121 LOADN                            R20 0
      122 LOADN                            R21 9
      123 CALL                             R17 4 1
      124 SETTABLEKS                       R17 R16 K19 ["Size"]
      126 GETIMPORT                        R17 K26 [Vector2.new]
      128 JUMPIFNOT                        R6 ; [+2]
      129 LOADN                            R18 1
      130 JUMP                             ; [+1]
      131 LOADN                            R18 0
      132 LOADK                            R19 K27 [0.5]
      133 CALL                             R17 2 1
      134 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
      136 GETIMPORT                        R17 K29 [UDim2.new]
      138 JUMPIFNOT                        R6 ; [+2]
      139 LOADN                            R18 0
      140 JUMP                             ; [+1]
      141 LOADN                            R18 1
      142 LOADN                            R19 0
      143 LOADK                            R20 K27 [0.5]
      144 LOADN                            R21 0
      145 CALL                             R17 4 1
      146 SETTABLEKS                       R17 R16 K2 ["Position"]
      148 JUMPIFNOT                        R7 ; [+5]
      149 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      151 GETTABLEKS                       R17 R17 K39 ["tangentAutoButton"]
      153 JUMP                             ; [+4]
      154 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      156 GETTABLEKS                       R17 R17 K40 ["tangentDefinedButton"]
      158 SETTABLEKS                       R17 R16 K41 ["Image"]
      160 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      162 GETTABLEKS                       R17 R17 K37 ["tangentControlColor"]
      164 SETTABLEKS                       R17 R16 K42 ["ImageColor3"]
      166 LOADN                            R17 0
      167 SETTABLEKS                       R17 R16 K43 ["ImageTransparency"]
      169 LOADN                            R17 1
      170 SETTABLEKS                       R17 R16 K20 ["BackgroundTransparency"]
      172 LOADB                            R17 0
      173 SETTABLEKS                       R17 R16 K44 ["AutoButtonColor"]
      175 LOADN                            R17 1
      176 SETTABLEKS                       R17 R16 K21 ["BorderSizePixel"]
      178 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      180 GETTABLEKS                       R17 R17 K37 ["tangentControlColor"]
      182 SETTABLEKS                       R17 R16 K45 ["BorderColor3"]
      184 GETTABLEKS                       R17 R2 K36 ["curveTheme"]
      186 GETTABLEKS                       R17 R17 K37 ["tangentControlColor"]
      188 SETTABLEKS                       R17 R16 K34 ["BackgroundColor3"]
      190 GETUPVAL                         R17 1
      191 GETTABLEKS                       R17 R17 K46 ["Event"]
      193 GETTABLEKS                       R17 R17 K47 ["MouseButton2Click"]
      195 GETTABLEKS                       R18 R1 K48 ["OnRightClick"]
      197 SETTABLE                         R18 R16 R17
      198 GETUPVAL                         R17 1
      199 GETTABLEKS                       R17 R17 K46 ["Event"]
      201 GETTABLEKS                       R17 R17 K49 ["InputBegan"]
      203 GETTABLEKS                       R18 R1 K50 ["OnInputBegan"]
      205 SETTABLE                         R18 R16 R17
      206 GETUPVAL                         R17 1
      207 GETTABLEKS                       R17 R17 K46 ["Event"]
      209 GETTABLEKS                       R17 R17 K51 ["InputEnded"]
      211 GETTABLEKS                       R18 R1 K52 ["OnInputEnded"]
      213 SETTABLE                         R18 R16 R17
      214 CALL                             R14 2 1
      215 SETTABLEKS                       R14 R13 K32 ["Control"]
      217 CALL                             R10 3 -1
      218 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["TangentControl"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R7 R6 K18 ["render"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
