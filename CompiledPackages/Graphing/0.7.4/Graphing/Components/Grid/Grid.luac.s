PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K2 ["ZIndex"]
        7 ORK                              R2 R3 K1 [-1]
        8 GETTABLEKS                       R4 R0 K3 ["XAxis"]
       10 JUMPIFNOT                        R4 ; [+11]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["getValues"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K5 ["AXIS_X"]
       17 GETTABLEKS                       R5 R0 K3 ["XAxis"]
       19 MOVE                             R6 R1
       20 CALL                             R3 3 1
       21 JUMP                             ; [+2]
       22 NEWTABLE                         R3 0 0
       24 GETTABLEKS                       R5 R0 K6 ["YAxis"]
       26 JUMPIFNOT                        R5 ; [+11]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K4 ["getValues"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R5 R6 K7 ["AXIS_Y"]
       33 GETTABLEKS                       R6 R0 K6 ["YAxis"]
       35 MOVE                             R7 R1
       36 CALL                             R4 3 1
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R4 0 0
       40 GETTABLEKS                       R6 R0 K8 ["XAxisMinor"]
       42 JUMPIFNOT                        R6 ; [+12]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K4 ["getValues"]
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R6 R7 K5 ["AXIS_X"]
       49 GETTABLEKS                       R7 R0 K8 ["XAxisMinor"]
       51 MOVE                             R8 R1
       52 MOVE                             R9 R3
       53 CALL                             R5 4 1
       54 JUMP                             ; [+2]
       55 NEWTABLE                         R5 0 0
       57 GETTABLEKS                       R7 R0 K9 ["YAxisMinor"]
       59 JUMPIFNOT                        R7 ; [+12]
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R6 R7 K4 ["getValues"]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R7 R8 K7 ["AXIS_Y"]
       66 GETTABLEKS                       R8 R0 K9 ["YAxisMinor"]
       68 MOVE                             R9 R1
       69 MOVE                             R10 R4
       70 CALL                             R6 4 1
       71 JUMP                             ; [+2]
       72 NEWTABLE                         R6 0 0
       74 NEWTABLE                         R7 0 0
       76 MOVE                             R8 R3
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 LOADK                            R14 K10 ["X%*"]
       81 MOVE                             R16 R12
       82 NAMECALL                         R14 R14 K11 ["format"]
       84 CALL                             R14 2 1
       85 MOVE                             R13 R14
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R14 R15 K12 ["createElement"]
       89 GETUPVAL                         R15 4
       90 DUPTABLE                         R16 K19 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
       91 LOADK                            R17 K20 ["Vertical"]
       92 SETTABLEKS                       R17 R16 K13 ["Orientation"]
       94 SETTABLEKS                       R12 R16 K14 ["Position"]
       96 GETTABLEKS                       R17 R0 K15 ["Tag"]
       98 SETTABLEKS                       R17 R16 K15 ["Tag"]
      100 GETUPVAL                         R18 5
      101 GETTABLEKS                       R17 R18 K21 ["GRID_COLOR3"]
      103 SETTABLEKS                       R17 R16 K16 ["Color3"]
      105 GETUPVAL                         R18 5
      106 GETTABLEKS                       R17 R18 K22 ["GRID_THICKNESS"]
      108 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      110 GETUPVAL                         R18 5
      111 GETTABLEKS                       R17 R18 K23 ["GRID_TRANSPARENCY"]
      113 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      115 CALL                             R14 2 1
      116 SETTABLE                         R14 R7 R13
      117 FORGLOOP                         R8 2 ; [-38]
      119 MOVE                             R8 R5
      120 LOADNIL                          R9
      121 LOADNIL                          R10
      122 FORGPREP                         R8
      123 LOADK                            R14 K24 ["Xm%*"]
      124 MOVE                             R16 R12
      125 NAMECALL                         R14 R14 K11 ["format"]
      127 CALL                             R14 2 1
      128 MOVE                             R13 R14
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R14 R15 K12 ["createElement"]
      132 GETUPVAL                         R15 4
      133 DUPTABLE                         R16 K19 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      134 LOADK                            R17 K20 ["Vertical"]
      135 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      137 SETTABLEKS                       R12 R16 K14 ["Position"]
      139 GETTABLEKS                       R17 R0 K15 ["Tag"]
      141 SETTABLEKS                       R17 R16 K15 ["Tag"]
      143 GETUPVAL                         R18 5
      144 GETTABLEKS                       R17 R18 K25 ["GRID_COLOR3_MINOR"]
      146 SETTABLEKS                       R17 R16 K16 ["Color3"]
      148 GETUPVAL                         R18 5
      149 GETTABLEKS                       R17 R18 K26 ["GRID_THICKNESS_MINOR"]
      151 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      153 GETUPVAL                         R18 5
      154 GETTABLEKS                       R17 R18 K27 ["GRID_TRANSPARENCY_MINOR"]
      156 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      158 CALL                             R14 2 1
      159 SETTABLE                         R14 R7 R13
      160 FORGLOOP                         R8 2 ; [-38]
      162 MOVE                             R8 R4
      163 LOADNIL                          R9
      164 LOADNIL                          R10
      165 FORGPREP                         R8
      166 LOADK                            R14 K28 ["Y%*"]
      167 MOVE                             R16 R12
      168 NAMECALL                         R14 R14 K11 ["format"]
      170 CALL                             R14 2 1
      171 MOVE                             R13 R14
      172 GETUPVAL                         R15 0
      173 GETTABLEKS                       R14 R15 K12 ["createElement"]
      175 GETUPVAL                         R15 4
      176 DUPTABLE                         R16 K19 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      177 LOADK                            R17 K29 ["Horizontal"]
      178 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      180 SETTABLEKS                       R12 R16 K14 ["Position"]
      182 GETTABLEKS                       R17 R0 K15 ["Tag"]
      184 SETTABLEKS                       R17 R16 K15 ["Tag"]
      186 GETUPVAL                         R18 5
      187 GETTABLEKS                       R17 R18 K21 ["GRID_COLOR3"]
      189 SETTABLEKS                       R17 R16 K16 ["Color3"]
      191 GETUPVAL                         R18 5
      192 GETTABLEKS                       R17 R18 K22 ["GRID_THICKNESS"]
      194 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      196 GETUPVAL                         R18 5
      197 GETTABLEKS                       R17 R18 K23 ["GRID_TRANSPARENCY"]
      199 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      201 CALL                             R14 2 1
      202 SETTABLE                         R14 R7 R13
      203 FORGLOOP                         R8 2 ; [-38]
      205 MOVE                             R8 R6
      206 LOADNIL                          R9
      207 LOADNIL                          R10
      208 FORGPREP                         R8
      209 LOADK                            R14 K30 ["Ym%*"]
      210 MOVE                             R16 R12
      211 NAMECALL                         R14 R14 K11 ["format"]
      213 CALL                             R14 2 1
      214 MOVE                             R13 R14
      215 GETUPVAL                         R15 0
      216 GETTABLEKS                       R14 R15 K12 ["createElement"]
      218 GETUPVAL                         R15 4
      219 DUPTABLE                         R16 K19 [{"Orientation", "Position", "Tag", "Color3", "Thickness", "Transparency"}]
      220 LOADK                            R17 K29 ["Horizontal"]
      221 SETTABLEKS                       R17 R16 K13 ["Orientation"]
      223 SETTABLEKS                       R12 R16 K14 ["Position"]
      225 GETTABLEKS                       R17 R0 K15 ["Tag"]
      227 SETTABLEKS                       R17 R16 K15 ["Tag"]
      229 GETUPVAL                         R18 5
      230 GETTABLEKS                       R17 R18 K25 ["GRID_COLOR3_MINOR"]
      232 SETTABLEKS                       R17 R16 K16 ["Color3"]
      234 GETUPVAL                         R18 5
      235 GETTABLEKS                       R17 R18 K26 ["GRID_THICKNESS_MINOR"]
      237 SETTABLEKS                       R17 R16 K17 ["Thickness"]
      239 GETUPVAL                         R18 5
      240 GETTABLEKS                       R17 R18 K27 ["GRID_TRANSPARENCY_MINOR"]
      242 SETTABLEKS                       R17 R16 K18 ["Transparency"]
      244 CALL                             R14 2 1
      245 SETTABLE                         R14 R7 R13
      246 FORGLOOP                         R8 2 ; [-38]
      248 GETUPVAL                         R9 0
      249 GETTABLEKS                       R8 R9 K12 ["createElement"]
      251 LOADK                            R9 K31 ["Frame"]
      252 DUPTABLE                         R10 K35 [{"Size", "ZIndex", "BackgroundTransparency", "BorderSizePixel"}]
      253 GETIMPORT                        R11 K38 [UDim2.fromScale]
      255 LOADN                            R12 1
      256 LOADN                            R13 1
      257 CALL                             R11 2 1
      258 SETTABLEKS                       R11 R10 K32 ["Size"]
      260 SETTABLEKS                       R2 R10 K2 ["ZIndex"]
      262 LOADN                            R11 1
      263 SETTABLEKS                       R11 R10 K33 ["BackgroundTransparency"]
      265 LOADN                            R11 0
      266 SETTABLEKS                       R11 R10 K34 ["BorderSizePixel"]
      268 MOVE                             R11 R7
      269 CALL                             R8 3 -1
      270 RETURN                           R8 -1

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
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["GridLine"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Util"]
       35 GETTABLEKS                       R7 R8 K13 ["GridUtil"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K12 ["Util"]
       42 GETTABLEKS                       R8 R9 K14 ["StyleUtil"]
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
