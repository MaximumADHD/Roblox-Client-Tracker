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
       40 DUPTABLE                         R12 K24 [{["Position"], ["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Rotation"], ["ZIndex"]}]
       41 SETTABLEKS                       R3 R12 K2 ["Position"]
       43 GETIMPORT                        R13 K27 [Vector2.new]
       45 LOADK                            R14 K28 [0.5]
       46 LOADK                            R15 K28 [0.5]
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K18 ["AnchorPoint"]
       50 GETIMPORT                        R13 K30 [UDim2.new]
       52 LOADN                            R14 0
       53 MULK                             R15 R5 K31 [2]
       54 LOADN                            R16 0
       55 LOADN                            R17 9
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K19 ["Size"]
       59 SETTABLEKS                       R9 R12 K23 ["Rotation"]
       61 SETTABLEKS                       R8 R12 K9 ["ZIndex"]
       63 DUPTABLE                         R13 K34 [{"Line", "Control"}]
       64 GETUPVAL                         R14 1
       65 GETTABLEKS                       R14 R14 K16 ["createElement"]
       67 LOADK                            R15 K17 ["Frame"]
       68 DUPTABLE                         R16 K36 [{["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
       69 GETIMPORT                        R17 K30 [UDim2.new]
       71 JUMPIFNOT                        R6 ; [+2]
       72 LOADN                            R18 0
       73 JUMP                             ; [+1]
       74 LOADK                            R18 K28 [0.5]
       75 LOADN                            R19 0
       76 LOADK                            R20 K28 [0.5]
       77 LOADN                            R21 0
       78 CALL                             R17 4 1
       79 SETTABLEKS                       R17 R16 K2 ["Position"]
       81 GETIMPORT                        R17 K30 [UDim2.new]
       83 LOADN                            R18 0
       84 MOVE                             R19 R5
       85 LOADN                            R20 0
       86 LOADN                            R21 1
       87 CALL                             R17 4 1
       88 SETTABLEKS                       R17 R16 K19 ["Size"]
       90 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
       92 GETTABLEKS                       R17 R17 K38 ["tangentControlColor"]
       94 SETTABLEKS                       R17 R16 K35 ["BackgroundColor3"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K32 ["Line"]
       99 GETUPVAL                         R14 1
      100 GETTABLEKS                       R14 R14 K16 ["createElement"]
      102 LOADK                            R15 K39 ["ImageButton"]
      103 NEWTABLE                         R16 16 0
      105 GETIMPORT                        R17 K30 [UDim2.new]
      107 LOADN                            R18 0
      108 LOADN                            R19 9
      109 LOADN                            R20 0
      110 LOADN                            R21 9
      111 CALL                             R17 4 1
      112 SETTABLEKS                       R17 R16 K19 ["Size"]
      114 GETIMPORT                        R17 K27 [Vector2.new]
      116 JUMPIFNOT                        R6 ; [+2]
      117 LOADN                            R18 1
      118 JUMP                             ; [+1]
      119 LOADN                            R18 0
      120 LOADK                            R19 K28 [0.5]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
      124 GETIMPORT                        R17 K30 [UDim2.new]
      126 JUMPIFNOT                        R6 ; [+2]
      127 LOADN                            R18 0
      128 JUMP                             ; [+1]
      129 LOADN                            R18 1
      130 LOADN                            R19 0
      131 LOADK                            R20 K28 [0.5]
      132 LOADN                            R21 0
      133 CALL                             R17 4 1
      134 SETTABLEKS                       R17 R16 K2 ["Position"]
      136 JUMPIFNOT                        R7 ; [+5]
      137 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
      139 GETTABLEKS                       R17 R17 K40 ["tangentAutoButton"]
      141 JUMP                             ; [+4]
      142 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
      144 GETTABLEKS                       R17 R17 K41 ["tangentDefinedButton"]
      146 SETTABLEKS                       R17 R16 K42 ["Image"]
      148 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
      150 GETTABLEKS                       R17 R17 K38 ["tangentControlColor"]
      152 SETTABLEKS                       R17 R16 K43 ["ImageColor3"]
      154 LOADN                            R17 0
      155 SETTABLEKS                       R17 R16 K44 ["ImageTransparency"]
      157 LOADN                            R17 1
      158 SETTABLEKS                       R17 R16 K20 ["BackgroundTransparency"]
      160 LOADB                            R17 0
      161 SETTABLEKS                       R17 R16 K45 ["AutoButtonColor"]
      163 LOADN                            R17 1
      164 SETTABLEKS                       R17 R16 K21 ["BorderSizePixel"]
      166 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
      168 GETTABLEKS                       R17 R17 K38 ["tangentControlColor"]
      170 SETTABLEKS                       R17 R16 K46 ["BorderColor3"]
      172 GETTABLEKS                       R17 R2 K37 ["curveTheme"]
      174 GETTABLEKS                       R17 R17 K38 ["tangentControlColor"]
      176 SETTABLEKS                       R17 R16 K35 ["BackgroundColor3"]
      178 GETUPVAL                         R17 1
      179 GETTABLEKS                       R17 R17 K47 ["Event"]
      181 GETTABLEKS                       R17 R17 K48 ["MouseButton2Click"]
      183 GETTABLEKS                       R18 R1 K49 ["OnRightClick"]
      185 SETTABLE                         R18 R16 R17
      186 GETUPVAL                         R17 1
      187 GETTABLEKS                       R17 R17 K47 ["Event"]
      189 GETTABLEKS                       R17 R17 K50 ["InputBegan"]
      191 GETTABLEKS                       R18 R1 K51 ["OnInputBegan"]
      193 SETTABLE                         R18 R16 R17
      194 GETUPVAL                         R17 1
      195 GETTABLEKS                       R17 R17 K47 ["Event"]
      197 GETTABLEKS                       R17 R17 K52 ["InputEnded"]
      199 GETTABLEKS                       R18 R1 K53 ["OnInputEnded"]
      201 SETTABLE                         R18 R16 R17
      202 CALL                             R14 2 1
      203 SETTABLEKS                       R14 R13 K33 ["Control"]
      205 CALL                             R10 3 -1
      206 RETURN                           R10 -1

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
