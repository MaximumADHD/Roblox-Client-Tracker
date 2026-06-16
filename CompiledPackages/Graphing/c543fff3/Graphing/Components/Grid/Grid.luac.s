PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K2 ["ZIndex"]
        7 ORK                              R2 R3 K1 [-1]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["getValues"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K4 ["AXIS_X"]
       14 GETTABLEKS                       R5 R0 K5 ["XAxis"]
       16 MOVE                             R6 R1
       17 CALL                             R3 3 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["getValues"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["AXIS_Y"]
       24 GETTABLEKS                       R6 R0 K7 ["YAxis"]
       26 MOVE                             R7 R1
       27 CALL                             R4 3 1
       28 GETTABLEKS                       R6 R0 K8 ["XAxisMinor"]
       30 JUMPIFNOT                        R6 ; [+12]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K3 ["getValues"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K4 ["AXIS_X"]
       37 GETTABLEKS                       R7 R0 K8 ["XAxisMinor"]
       39 MOVE                             R8 R1
       40 MOVE                             R9 R3
       41 CALL                             R5 4 1
       42 JUMP                             ; [+2]
       43 NEWTABLE                         R5 0 0
       45 GETTABLEKS                       R7 R0 K9 ["YAxisMinor"]
       47 JUMPIFNOT                        R7 ; [+12]
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R6 R6 K3 ["getValues"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K6 ["AXIS_Y"]
       54 GETTABLEKS                       R8 R0 K9 ["YAxisMinor"]
       56 MOVE                             R9 R1
       57 MOVE                             R10 R4
       58 CALL                             R6 4 1
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R6 0 0
       62 NEWTABLE                         R7 0 0
       64 MOVE                             R8 R3
       65 LOADNIL                          R9
       66 LOADNIL                          R10
       67 FORGPREP                         R8
       68 LOADK                            R14 K10 ["X%*"]
       69 MOVE                             R16 R12
       70 NAMECALL                         R14 R14 K11 ["format"]
       72 CALL                             R14 2 1
       73 MOVE                             R13 R14
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R14 R14 K12 ["createElement"]
       77 GETUPVAL                         R15 4
       78 DUPTABLE                         R16 K19 [{"Orientation", "Value", "Tag", "Color3", "Thickness", "Transparency"}]
       79 LOADK                            R17 K20 ["Vertical"]
       80 SETTABLEKS                       R17 R16 K13 ["Orientation"]
       82 SETTABLEKS                       R12 R16 K14 ["Value"]
       84 GETTABLEKS                       R17 R0 K15 ["Tag"]
       86 SETTABLEKS                       R17 R16 K15 ["Tag"]
       88 GETUPVAL                         R17 5
       89 GETTABLEKS                       R17 R17 K21 ["GRID_COLOR3"]
       91 SETTABLEKS                       R17 R16 K16 ["Color3"]
       93 GETUPVAL                         R17 5
       94 GETTABLEKS                       R17 R17 K22 ["GRID_THICKNESS"]
       96 SETTABLEKS                       R17 R16 K17 ["Thickness"]
       98 GETUPVAL                         R17 5
       99 GETTABLEKS                       R17 R17 K23 ["GRID_TRANSPARENCY"]
      101 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      103 CALL                             R14 2 1
      104 SETTABLE                         R14 R7 R13
      105 FORGLOOP                         R8 2 ; [-38]
      107 MOVE                             R8 R5
      108 LOADNIL                          R9
      109 LOADNIL                          R10
      110 FORGPREP                         R8
      111 LOADK                            R14 K24 ["Xm%*"]
      112 MOVE                             R16 R12
      113 NAMECALL                         R14 R14 K11 ["format"]
      115 CALL                             R14 2 1
      116 MOVE                             R13 R14
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K12 ["createElement"]
      120 GETUPVAL                         R15 4
      121 DUPTABLE                         R16 K19 [{"Orientation", "Value", "Tag", "Color3", "Thickness", "Transparency"}]
      122 LOADK                            R17 K20 ["Vertical"]
      123 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      125 SETTABLEKS                       R12 R16 K14 ["Value"]
      127 GETTABLEKS                       R17 R0 K15 ["Tag"]
      129 SETTABLEKS                       R17 R16 K15 ["Tag"]
      131 GETUPVAL                         R17 5
      132 GETTABLEKS                       R17 R17 K25 ["GRID_COLOR3_MINOR"]
      134 SETTABLEKS                       R17 R16 K16 ["Color3"]
      136 GETUPVAL                         R17 5
      137 GETTABLEKS                       R17 R17 K26 ["GRID_THICKNESS_MINOR"]
      139 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      141 GETUPVAL                         R17 5
      142 GETTABLEKS                       R17 R17 K27 ["GRID_TRANSPARENCY_MINOR"]
      144 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      146 CALL                             R14 2 1
      147 SETTABLE                         R14 R7 R13
      148 FORGLOOP                         R8 2 ; [-38]
      150 MOVE                             R8 R4
      151 LOADNIL                          R9
      152 LOADNIL                          R10
      153 FORGPREP                         R8
      154 LOADK                            R14 K28 ["Y%*"]
      155 MOVE                             R16 R12
      156 NAMECALL                         R14 R14 K11 ["format"]
      158 CALL                             R14 2 1
      159 MOVE                             R13 R14
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K12 ["createElement"]
      163 GETUPVAL                         R15 4
      164 DUPTABLE                         R16 K19 [{"Orientation", "Value", "Tag", "Color3", "Thickness", "Transparency"}]
      165 LOADK                            R17 K29 ["Horizontal"]
      166 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      168 SETTABLEKS                       R12 R16 K14 ["Value"]
      170 GETTABLEKS                       R17 R0 K15 ["Tag"]
      172 SETTABLEKS                       R17 R16 K15 ["Tag"]
      174 GETUPVAL                         R17 5
      175 GETTABLEKS                       R17 R17 K21 ["GRID_COLOR3"]
      177 SETTABLEKS                       R17 R16 K16 ["Color3"]
      179 GETUPVAL                         R17 5
      180 GETTABLEKS                       R17 R17 K22 ["GRID_THICKNESS"]
      182 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      184 GETUPVAL                         R17 5
      185 GETTABLEKS                       R17 R17 K23 ["GRID_TRANSPARENCY"]
      187 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      189 CALL                             R14 2 1
      190 SETTABLE                         R14 R7 R13
      191 FORGLOOP                         R8 2 ; [-38]
      193 MOVE                             R8 R6
      194 LOADNIL                          R9
      195 LOADNIL                          R10
      196 FORGPREP                         R8
      197 LOADK                            R14 K30 ["Ym%*"]
      198 MOVE                             R16 R12
      199 NAMECALL                         R14 R14 K11 ["format"]
      201 CALL                             R14 2 1
      202 MOVE                             R13 R14
      203 GETUPVAL                         R14 0
      204 GETTABLEKS                       R14 R14 K12 ["createElement"]
      206 GETUPVAL                         R15 4
      207 DUPTABLE                         R16 K19 [{"Orientation", "Value", "Tag", "Color3", "Thickness", "Transparency"}]
      208 LOADK                            R17 K29 ["Horizontal"]
      209 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      211 SETTABLEKS                       R12 R16 K14 ["Value"]
      213 GETTABLEKS                       R17 R0 K15 ["Tag"]
      215 SETTABLEKS                       R17 R16 K15 ["Tag"]
      217 GETUPVAL                         R17 5
      218 GETTABLEKS                       R17 R17 K25 ["GRID_COLOR3_MINOR"]
      220 SETTABLEKS                       R17 R16 K16 ["Color3"]
      222 GETUPVAL                         R17 5
      223 GETTABLEKS                       R17 R17 K26 ["GRID_THICKNESS_MINOR"]
      225 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      227 GETUPVAL                         R17 5
      228 GETTABLEKS                       R17 R17 K27 ["GRID_TRANSPARENCY_MINOR"]
      230 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      232 CALL                             R14 2 1
      233 SETTABLE                         R14 R7 R13
      234 FORGLOOP                         R8 2 ; [-38]
      236 GETUPVAL                         R8 0
      237 GETTABLEKS                       R8 R8 K12 ["createElement"]
      239 LOADK                            R9 K31 ["Frame"]
      240 DUPTABLE                         R10 K35 [{"Size", "ZIndex", "BackgroundTransparency", "BorderSizePixel"}]
      241 GETIMPORT                        R11 K38 [UDim2.fromScale]
      243 LOADN                            R12 1
      244 LOADN                            R13 1
      245 CALL                             R11 2 1
      246 SETTABLEKS                       R11 R10 K32 ["Size"]
      248 SETTABLEKS                       R2 R10 K2 ["ZIndex"]
      250 LOADN                            R11 1
      251 SETTABLEKS                       R11 R10 K33 ["BackgroundTransparency"]
      253 LOADN                            R11 0
      254 SETTABLEKS                       R11 R10 K34 ["BorderSizePixel"]
      256 MOVE                             R11 R7
      257 CALL                             R8 3 -1
      258 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["GridLine"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["GridUtil"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["StyleUtil"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K15 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 SETGLOBAL                        R8 K16 ["Grid"]
       54 GETGLOBAL                        R8 K16 ["Grid"]
       56 RETURN                           R8 1
