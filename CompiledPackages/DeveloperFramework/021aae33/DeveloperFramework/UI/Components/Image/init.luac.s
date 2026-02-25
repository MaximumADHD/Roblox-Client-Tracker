PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETUPVAL                         R4 0
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["Tag"]
       17 GETTABLE                         R3 R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R5 R1 K4 ["Image"]
       23 GETTABLEKS                       R6 R2 K4 ["Image"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R6 R1 K5 ["ImageColor3"]
       29 GETTABLEKS                       R7 R2 K6 ["Color"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R7 R1 K7 ["ImageTransparency"]
       35 GETTABLEKS                       R8 R2 K8 ["Transparency"]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R8 R1 K9 ["ImageRectSize"]
       41 GETTABLEKS                       R9 R2 K9 ["ImageRectSize"]
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R9 R1 K10 ["ImageRectOffset"]
       47 GETTABLEKS                       R10 R2 K10 ["ImageRectOffset"]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R10 R1 K11 ["ScaleType"]
       53 GETTABLEKS                       R11 R2 K11 ["ScaleType"]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R11 R1 K12 ["SizeConstraint"]
       59 GETTABLEKS                       R12 R2 K12 ["SizeConstraint"]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R12 R1 K13 ["SliceCenter"]
       65 GETTABLEKS                       R13 R2 K13 ["SliceCenter"]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R13 R1 K14 ["SliceScale"]
       71 GETTABLEKS                       R14 R2 K14 ["SliceScale"]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R14 R1 K15 ["TileSize"]
       77 GETTABLEKS                       R15 R2 K15 ["TileSize"]
       79 CALL                             R13 2 1
       80 GETUPVAL                         R14 2
       81 GETTABLEKS                       R15 R1 K16 ["ResampleMode"]
       83 GETTABLEKS                       R16 R2 K16 ["ResampleMode"]
       85 CALL                             R14 2 1
       86 GETUPVAL                         R15 2
       87 GETTABLEKS                       R16 R1 K17 ["BackgroundColor3"]
       89 GETTABLEKS                       R17 R2 K17 ["BackgroundColor3"]
       91 CALL                             R15 2 1
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R17 R1 K18 ["BackgroundTransparency"]
       95 GETTABLEKS                       R18 R2 K18 ["BackgroundTransparency"]
       97 LOADN                            R19 1
       98 CALL                             R16 3 1
       99 GETUPVAL                         R17 2
      100 GETTABLEKS                       R18 R1 K19 ["AnchorPoint"]
      102 GETTABLEKS                       R19 R2 K19 ["AnchorPoint"]
      104 CALL                             R17 2 1
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R19 R1 K20 ["Position"]
      108 GETTABLEKS                       R20 R2 K20 ["Position"]
      110 GETUPVAL                         R22 0
      111 JUMPIFNOT                        R22 ; [+2]
      112 LOADNIL                          R21
      113 JUMP                             ; [+7]
      114 GETIMPORT                        R21 K23 [UDim2.new]
      116 LOADN                            R22 0
      117 LOADN                            R23 0
      118 LOADN                            R24 0
      119 LOADN                            R25 0
      120 CALL                             R21 4 1
      121 CALL                             R18 3 1
      122 GETUPVAL                         R19 2
      123 GETTABLEKS                       R20 R1 K24 ["Size"]
      125 GETTABLEKS                       R21 R2 K24 ["Size"]
      127 GETUPVAL                         R23 0
      128 JUMPIFNOT                        R23 ; [+2]
      129 LOADNIL                          R22
      130 JUMP                             ; [+7]
      131 GETIMPORT                        R22 K23 [UDim2.new]
      133 LOADN                            R23 1
      134 LOADN                            R24 0
      135 LOADN                            R25 1
      136 LOADN                            R26 0
      137 CALL                             R22 4 1
      138 CALL                             R19 3 1
      139 GETUPVAL                         R20 2
      140 GETTABLEKS                       R21 R1 K25 ["Rotation"]
      142 GETTABLEKS                       R22 R2 K25 ["Rotation"]
      144 CALL                             R20 2 1
      145 GETTABLEKS                       R21 R1 K26 ["LayoutOrder"]
      147 GETTABLEKS                       R22 R1 K27 ["OnMouseEnter"]
      149 GETTABLEKS                       R23 R1 K28 ["OnMouseLeave"]
      151 GETUPVAL                         R25 3
      152 GETTABLEKS                       R24 R25 K29 ["createElement"]
      154 LOADK                            R25 K30 ["ImageLabel"]
      155 GETUPVAL                         R26 4
      156 NEWTABLE                         R27 32 0
      158 SETTABLEKS                       R17 R27 K19 ["AnchorPoint"]
      160 SETTABLEKS                       R19 R27 K24 ["Size"]
      162 SETTABLEKS                       R18 R27 K20 ["Position"]
      164 SETTABLEKS                       R16 R27 K18 ["BackgroundTransparency"]
      166 SETTABLEKS                       R15 R27 K17 ["BackgroundColor3"]
      168 SETTABLEKS                       R6 R27 K7 ["ImageTransparency"]
      170 SETTABLEKS                       R5 R27 K5 ["ImageColor3"]
      172 LOADN                            R28 0
      173 SETTABLEKS                       R28 R27 K31 ["BorderSizePixel"]
      175 SETTABLEKS                       R20 R27 K25 ["Rotation"]
      177 SETTABLEKS                       R4 R27 K4 ["Image"]
      179 SETTABLEKS                       R7 R27 K9 ["ImageRectSize"]
      181 SETTABLEKS                       R8 R27 K10 ["ImageRectOffset"]
      183 SETTABLEKS                       R9 R27 K11 ["ScaleType"]
      185 SETTABLEKS                       R11 R27 K13 ["SliceCenter"]
      187 SETTABLEKS                       R12 R27 K14 ["SliceScale"]
      189 SETTABLEKS                       R13 R27 K15 ["TileSize"]
      191 SETTABLEKS                       R14 R27 K16 ["ResampleMode"]
      193 SETTABLEKS                       R10 R27 K12 ["SizeConstraint"]
      195 SETTABLEKS                       R21 R27 K26 ["LayoutOrder"]
      197 GETUPVAL                         R30 3
      198 GETTABLEKS                       R29 R30 K32 ["Event"]
      200 GETTABLEKS                       R28 R29 K33 ["MouseEnter"]
      202 SETTABLE                         R22 R27 R28
      203 GETUPVAL                         R30 3
      204 GETTABLEKS                       R29 R30 K32 ["Event"]
      206 GETTABLEKS                       R28 R29 K34 ["MouseLeave"]
      208 SETTABLE                         R23 R27 R28
      209 GETUPVAL                         R29 0
      210 JUMPIFNOT                        R29 ; [+19]
      211 NEWTABLE                         R28 1 0
      213 GETUPVAL                         R30 1
      214 GETTABLEKS                       R29 R30 K3 ["Tag"]
      216 GETUPVAL                         R30 5
      217 LOADK                            R31 K35 ["Component-Image"]
      218 MOVE                             R32 R3
      219 GETUPVAL                         R34 6
      220 JUMPIFNOT                        R34 ; [+5]
      221 GETUPVAL                         R34 7
      222 JUMPIFNOTEQ                      R19 R34 ; [+3]
      224 LOADK                            R33 K36 ["X-DefaultSize"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R33
      227 CALL                             R30 3 1
      228 SETTABLE                         R30 R28 R29
      229 JUMP                             ; [+1]
      230 LOADNIL                          R28
      231 CALL                             R26 2 1
      232 GETUPVAL                         R29 3
      233 GETTABLEKS                       R28 R29 K37 ["Children"]
      235 GETTABLE                         R27 R1 R28
      236 CALL                             R24 3 -1
      237 RETURN                           R24 -1

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
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["SharedFlags"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       39 CALL                             R6 0 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K4 ["Parent"]
       44 GETTABLEKS                       R8 R9 K14 ["Dash"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K15 ["join"]
       49 GETTABLEKS                       R10 R0 K4 ["Parent"]
       51 LOADK                            R12 K16 ["React"]
       52 NAMECALL                         R10 R10 K17 ["FindFirstChild"]
       54 CALL                             R10 2 1
       55 JUMPIFNOT                        R10 ; [+8]
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K4 ["Parent"]
       60 GETTABLEKS                       R10 R11 K16 ["React"]
       62 CALL                             R9 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Styling"]
       69 GETTABLEKS                       R11 R12 K19 ["supportsStyleSheets"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Styling"]
       76 GETTABLEKS                       R12 R13 K20 ["joinTags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K10 ["Util"]
       83 GETTABLEKS                       R13 R14 K21 ["Typecheck"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       88 LOADK                            R15 K23 ["Image"]
       89 NAMECALL                         R13 R13 K24 ["extend"]
       91 CALL                             R13 2 1
       92 GETTABLEKS                       R14 R12 K25 ["wrap"]
       94 MOVE                             R15 R13
       95 GETIMPORT                        R16 K1 [script]
       97 CALL                             R14 2 0
       98 GETIMPORT                        R14 K28 [UDim2.fromScale]
      100 LOADN                            R15 0
      101 LOADN                            R16 0
      102 CALL                             R14 2 1
      103 DUPCLOSURE                       R15 K29 [PROTO_0]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R14
      112 SETTABLEKS                       R15 R13 K30 ["render"]
      114 JUMPIF                           R10 ; [+10]
      115 MOVE                             R15 R3
      116 DUPTABLE                         R16 K32 [{"Stylizer"}]
      117 GETTABLEKS                       R17 R2 K31 ["Stylizer"]
      119 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      121 CALL                             R15 1 1
      122 MOVE                             R16 R13
      123 CALL                             R15 1 1
      124 MOVE                             R13 R15
      125 RETURN                           R13 1
