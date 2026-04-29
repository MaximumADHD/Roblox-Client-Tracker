PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["useSignalState"]
        8 GETTABLEKS                       R3 R1 K2 ["viewportRectGetter"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R3 R0 K4 ["ZIndex"]
       13 ORK                              R2 R3 K3 [-1]
       14 GETTABLEKS                       R4 R0 K5 ["XAxis"]
       16 JUMPIFNOT                        R4 ; [+11]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K6 ["getValues"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R4 R5 K7 ["AXIS_X"]
       23 GETTABLEKS                       R5 R0 K5 ["XAxis"]
       25 MOVE                             R6 R1
       26 CALL                             R3 3 1
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R3 0 0
       30 GETTABLEKS                       R5 R0 K8 ["YAxis"]
       32 JUMPIFNOT                        R5 ; [+11]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K6 ["getValues"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R5 R6 K9 ["AXIS_Y"]
       39 GETTABLEKS                       R6 R0 K8 ["YAxis"]
       41 MOVE                             R7 R1
       42 CALL                             R4 3 1
       43 JUMP                             ; [+2]
       44 NEWTABLE                         R4 0 0
       46 GETTABLEKS                       R6 R0 K10 ["XAxisMinor"]
       48 JUMPIFNOT                        R6 ; [+12]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K6 ["getValues"]
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R6 R7 K7 ["AXIS_X"]
       55 GETTABLEKS                       R7 R0 K10 ["XAxisMinor"]
       57 MOVE                             R8 R1
       58 MOVE                             R9 R3
       59 CALL                             R5 4 1
       60 JUMP                             ; [+2]
       61 NEWTABLE                         R5 0 0
       63 GETTABLEKS                       R7 R0 K11 ["YAxisMinor"]
       65 JUMPIFNOT                        R7 ; [+12]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R6 R7 K6 ["getValues"]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R7 R8 K9 ["AXIS_Y"]
       72 GETTABLEKS                       R8 R0 K11 ["YAxisMinor"]
       74 MOVE                             R9 R1
       75 MOVE                             R10 R4
       76 CALL                             R6 4 1
       77 JUMP                             ; [+2]
       78 NEWTABLE                         R6 0 0
       80 NEWTABLE                         R7 0 0
       82 MOVE                             R8 R3
       83 LOADNIL                          R9
       84 LOADNIL                          R10
       85 FORGPREP                         R8
       86 LOADK                            R14 K12 ["X%*"]
       87 MOVE                             R16 R12
       88 NAMECALL                         R14 R14 K13 ["format"]
       90 CALL                             R14 2 1
       91 MOVE                             R13 R14
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R14 R15 K14 ["createElement"]
       95 GETUPVAL                         R15 5
       96 DUPTABLE                         R16 K21 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
       97 LOADK                            R17 K22 ["Vertical"]
       98 SETTABLEKS                       R17 R16 K15 ["Orientation"]
      100 SETTABLEKS                       R12 R16 K16 ["Position"]
      102 GETTABLEKS                       R17 R0 K17 ["Tag"]
      104 SETTABLEKS                       R17 R16 K17 ["Tag"]
      106 GETUPVAL                         R18 6
      107 GETTABLEKS                       R17 R18 K23 ["GRID_COLOR3"]
      109 SETTABLEKS                       R17 R16 K18 ["Color3"]
      111 GETUPVAL                         R18 6
      112 GETTABLEKS                       R17 R18 K24 ["GRID_THICKNESS"]
      114 SETTABLEKS                       R17 R16 K19 ["Thickness"]
      116 GETUPVAL                         R18 6
      117 GETTABLEKS                       R17 R18 K25 ["GRID_TRANSPARENCY"]
      119 SETTABLEKS                       R17 R16 K20 ["Transparency"]
      121 CALL                             R14 2 1
      122 SETTABLE                         R14 R7 R13
      123 FORGLOOP                         R8 2 ; [-38]
      125 MOVE                             R8 R5
      126 LOADNIL                          R9
      127 LOADNIL                          R10
      128 FORGPREP                         R8
      129 LOADK                            R14 K26 ["Xm%*"]
      130 MOVE                             R16 R12
      131 NAMECALL                         R14 R14 K13 ["format"]
      133 CALL                             R14 2 1
      134 MOVE                             R13 R14
      135 GETUPVAL                         R15 0
      136 GETTABLEKS                       R14 R15 K14 ["createElement"]
      138 GETUPVAL                         R15 5
      139 DUPTABLE                         R16 K21 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      140 LOADK                            R17 K22 ["Vertical"]
      141 SETTABLEKS                       R17 R16 K15 ["Orientation"]
      143 SETTABLEKS                       R12 R16 K16 ["Position"]
      145 GETTABLEKS                       R17 R0 K17 ["Tag"]
      147 SETTABLEKS                       R17 R16 K17 ["Tag"]
      149 GETUPVAL                         R18 6
      150 GETTABLEKS                       R17 R18 K27 ["GRID_COLOR3_MINOR"]
      152 SETTABLEKS                       R17 R16 K18 ["Color3"]
      154 GETUPVAL                         R18 6
      155 GETTABLEKS                       R17 R18 K28 ["GRID_THICKNESS_MINOR"]
      157 SETTABLEKS                       R17 R16 K19 ["Thickness"]
      159 GETUPVAL                         R18 6
      160 GETTABLEKS                       R17 R18 K29 ["GRID_TRANSPARENCY_MINOR"]
      162 SETTABLEKS                       R17 R16 K20 ["Transparency"]
      164 CALL                             R14 2 1
      165 SETTABLE                         R14 R7 R13
      166 FORGLOOP                         R8 2 ; [-38]
      168 MOVE                             R8 R4
      169 LOADNIL                          R9
      170 LOADNIL                          R10
      171 FORGPREP                         R8
      172 LOADK                            R14 K30 ["Y%*"]
      173 MOVE                             R16 R12
      174 NAMECALL                         R14 R14 K13 ["format"]
      176 CALL                             R14 2 1
      177 MOVE                             R13 R14
      178 GETUPVAL                         R15 0
      179 GETTABLEKS                       R14 R15 K14 ["createElement"]
      181 GETUPVAL                         R15 5
      182 DUPTABLE                         R16 K21 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      183 LOADK                            R17 K31 ["Horizontal"]
      184 SETTABLEKS                       R17 R16 K15 ["Orientation"]
      186 SETTABLEKS                       R12 R16 K16 ["Position"]
      188 GETTABLEKS                       R17 R0 K17 ["Tag"]
      190 SETTABLEKS                       R17 R16 K17 ["Tag"]
      192 GETUPVAL                         R18 6
      193 GETTABLEKS                       R17 R18 K23 ["GRID_COLOR3"]
      195 SETTABLEKS                       R17 R16 K18 ["Color3"]
      197 GETUPVAL                         R18 6
      198 GETTABLEKS                       R17 R18 K24 ["GRID_THICKNESS"]
      200 SETTABLEKS                       R17 R16 K19 ["Thickness"]
      202 GETUPVAL                         R18 6
      203 GETTABLEKS                       R17 R18 K25 ["GRID_TRANSPARENCY"]
      205 SETTABLEKS                       R17 R16 K20 ["Transparency"]
      207 CALL                             R14 2 1
      208 SETTABLE                         R14 R7 R13
      209 FORGLOOP                         R8 2 ; [-38]
      211 MOVE                             R8 R6
      212 LOADNIL                          R9
      213 LOADNIL                          R10
      214 FORGPREP                         R8
      215 LOADK                            R14 K32 ["Ym%*"]
      216 MOVE                             R16 R12
      217 NAMECALL                         R14 R14 K13 ["format"]
      219 CALL                             R14 2 1
      220 MOVE                             R13 R14
      221 GETUPVAL                         R15 0
      222 GETTABLEKS                       R14 R15 K14 ["createElement"]
      224 GETUPVAL                         R15 5
      225 DUPTABLE                         R16 K21 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      226 LOADK                            R17 K31 ["Horizontal"]
      227 SETTABLEKS                       R17 R16 K15 ["Orientation"]
      229 SETTABLEKS                       R12 R16 K16 ["Position"]
      231 GETTABLEKS                       R17 R0 K17 ["Tag"]
      233 SETTABLEKS                       R17 R16 K17 ["Tag"]
      235 GETUPVAL                         R18 6
      236 GETTABLEKS                       R17 R18 K27 ["GRID_COLOR3_MINOR"]
      238 SETTABLEKS                       R17 R16 K18 ["Color3"]
      240 GETUPVAL                         R18 6
      241 GETTABLEKS                       R17 R18 K28 ["GRID_THICKNESS_MINOR"]
      243 SETTABLEKS                       R17 R16 K19 ["Thickness"]
      245 GETUPVAL                         R18 6
      246 GETTABLEKS                       R17 R18 K29 ["GRID_TRANSPARENCY_MINOR"]
      248 SETTABLEKS                       R17 R16 K20 ["Transparency"]
      250 CALL                             R14 2 1
      251 SETTABLE                         R14 R7 R13
      252 FORGLOOP                         R8 2 ; [-38]
      254 GETUPVAL                         R9 0
      255 GETTABLEKS                       R8 R9 K14 ["createElement"]
      257 LOADK                            R9 K33 ["Frame"]
      258 DUPTABLE                         R10 K37 [{"Size", "ZIndex", "BackgroundTransparency", "BorderSizePixel"}]
      259 GETIMPORT                        R11 K40 [UDim2.fromScale]
      261 LOADN                            R12 1
      262 LOADN                            R13 1
      263 CALL                             R11 2 1
      264 SETTABLEKS                       R11 R10 K34 ["Size"]
      266 SETTABLEKS                       R2 R10 K4 ["ZIndex"]
      268 LOADN                            R11 1
      269 SETTABLEKS                       R11 R10 K35 ["BackgroundTransparency"]
      271 LOADN                            R11 0
      272 SETTABLEKS                       R11 R10 K36 ["BorderSizePixel"]
      274 MOVE                             R11 R7
      275 CALL                             R8 3 -1
      276 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["SignalsReact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["CanvasContext"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Types"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R8 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R8 K12 ["GridLine"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Util"]
       40 GETTABLEKS                       R8 R9 K14 ["GridUtil"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R10 R0 K13 ["Util"]
       47 GETTABLEKS                       R9 R10 K15 ["StyleUtil"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K16 [PROTO_0]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 SETGLOBAL                        R9 K17 ["Grid"]
       60 GETGLOBAL                        R9 K17 ["Grid"]
       62 RETURN                           R9 1
