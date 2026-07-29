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
       78 DUPTABLE                         R16 K20 [{["Orientation"] = "Vertical", ["Value"], ["Tag"], ["Color3"], ["Thickness"], ["Transparency"]}]
       79 SETTABLEKS                       R12 R16 K15 ["Value"]
       81 GETTABLEKS                       R17 R0 K16 ["Tag"]
       83 SETTABLEKS                       R17 R16 K16 ["Tag"]
       85 GETUPVAL                         R17 5
       86 GETTABLEKS                       R17 R17 K21 ["GRID_COLOR3"]
       88 SETTABLEKS                       R17 R16 K17 ["Color3"]
       90 GETUPVAL                         R17 5
       91 GETTABLEKS                       R17 R17 K22 ["GRID_THICKNESS"]
       93 SETTABLEKS                       R17 R16 K18 ["Thickness"]
       95 GETUPVAL                         R17 5
       96 GETTABLEKS                       R17 R17 K23 ["GRID_TRANSPARENCY"]
       98 SETTABLEKS                       R17 R16 K19 ["Transparency"]
      100 CALL                             R14 2 1
      101 SETTABLE                         R14 R7 R13
      102 FORGLOOP                         R8 2 ; [-35]
      104 MOVE                             R8 R5
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 LOADK                            R14 K24 ["Xm%*"]
      109 MOVE                             R16 R12
      110 NAMECALL                         R14 R14 K11 ["format"]
      112 CALL                             R14 2 1
      113 MOVE                             R13 R14
      114 GETUPVAL                         R14 0
      115 GETTABLEKS                       R14 R14 K12 ["createElement"]
      117 GETUPVAL                         R15 4
      118 DUPTABLE                         R16 K20 [{["Orientation"] = "Vertical", ["Value"], ["Tag"], ["Color3"], ["Thickness"], ["Transparency"]}]
      119 SETTABLEKS                       R12 R16 K15 ["Value"]
      121 GETTABLEKS                       R17 R0 K16 ["Tag"]
      123 SETTABLEKS                       R17 R16 K16 ["Tag"]
      125 GETUPVAL                         R17 5
      126 GETTABLEKS                       R17 R17 K25 ["GRID_COLOR3_MINOR"]
      128 SETTABLEKS                       R17 R16 K17 ["Color3"]
      130 GETUPVAL                         R17 5
      131 GETTABLEKS                       R17 R17 K26 ["GRID_THICKNESS_MINOR"]
      133 SETTABLEKS                       R17 R16 K18 ["Thickness"]
      135 GETUPVAL                         R17 5
      136 GETTABLEKS                       R17 R17 K27 ["GRID_TRANSPARENCY_MINOR"]
      138 SETTABLEKS                       R17 R16 K19 ["Transparency"]
      140 CALL                             R14 2 1
      141 SETTABLE                         R14 R7 R13
      142 FORGLOOP                         R8 2 ; [-35]
      144 MOVE                             R8 R4
      145 LOADNIL                          R9
      146 LOADNIL                          R10
      147 FORGPREP                         R8
      148 LOADK                            R14 K28 ["Y%*"]
      149 MOVE                             R16 R12
      150 NAMECALL                         R14 R14 K11 ["format"]
      152 CALL                             R14 2 1
      153 MOVE                             R13 R14
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R14 R14 K12 ["createElement"]
      157 GETUPVAL                         R15 4
      158 DUPTABLE                         R16 K30 [{["Orientation"] = "Horizontal", ["Value"], ["Tag"], ["Color3"], ["Thickness"], ["Transparency"]}]
      159 SETTABLEKS                       R12 R16 K15 ["Value"]
      161 GETTABLEKS                       R17 R0 K16 ["Tag"]
      163 SETTABLEKS                       R17 R16 K16 ["Tag"]
      165 GETUPVAL                         R17 5
      166 GETTABLEKS                       R17 R17 K21 ["GRID_COLOR3"]
      168 SETTABLEKS                       R17 R16 K17 ["Color3"]
      170 GETUPVAL                         R17 5
      171 GETTABLEKS                       R17 R17 K22 ["GRID_THICKNESS"]
      173 SETTABLEKS                       R17 R16 K18 ["Thickness"]
      175 GETUPVAL                         R17 5
      176 GETTABLEKS                       R17 R17 K23 ["GRID_TRANSPARENCY"]
      178 SETTABLEKS                       R17 R16 K19 ["Transparency"]
      180 CALL                             R14 2 1
      181 SETTABLE                         R14 R7 R13
      182 FORGLOOP                         R8 2 ; [-35]
      184 MOVE                             R8 R6
      185 LOADNIL                          R9
      186 LOADNIL                          R10
      187 FORGPREP                         R8
      188 LOADK                            R14 K31 ["Ym%*"]
      189 MOVE                             R16 R12
      190 NAMECALL                         R14 R14 K11 ["format"]
      192 CALL                             R14 2 1
      193 MOVE                             R13 R14
      194 GETUPVAL                         R14 0
      195 GETTABLEKS                       R14 R14 K12 ["createElement"]
      197 GETUPVAL                         R15 4
      198 DUPTABLE                         R16 K30 [{["Orientation"] = "Horizontal", ["Value"], ["Tag"], ["Color3"], ["Thickness"], ["Transparency"]}]
      199 SETTABLEKS                       R12 R16 K15 ["Value"]
      201 GETTABLEKS                       R17 R0 K16 ["Tag"]
      203 SETTABLEKS                       R17 R16 K16 ["Tag"]
      205 GETUPVAL                         R17 5
      206 GETTABLEKS                       R17 R17 K25 ["GRID_COLOR3_MINOR"]
      208 SETTABLEKS                       R17 R16 K17 ["Color3"]
      210 GETUPVAL                         R17 5
      211 GETTABLEKS                       R17 R17 K26 ["GRID_THICKNESS_MINOR"]
      213 SETTABLEKS                       R17 R16 K18 ["Thickness"]
      215 GETUPVAL                         R17 5
      216 GETTABLEKS                       R17 R17 K27 ["GRID_TRANSPARENCY_MINOR"]
      218 SETTABLEKS                       R17 R16 K19 ["Transparency"]
      220 CALL                             R14 2 1
      221 SETTABLE                         R14 R7 R13
      222 FORGLOOP                         R8 2 ; [-35]
      224 GETUPVAL                         R8 0
      225 GETTABLEKS                       R8 R8 K12 ["createElement"]
      227 LOADK                            R9 K32 ["Frame"]
      228 DUPTABLE                         R10 K38 [{["Size"], ["ZIndex"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      229 GETIMPORT                        R11 K41 [UDim2.fromScale]
      231 LOADN                            R12 1
      232 LOADN                            R13 1
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K33 ["Size"]
      236 SETTABLEKS                       R2 R10 K2 ["ZIndex"]
      238 MOVE                             R11 R7
      239 CALL                             R8 3 -1
      240 RETURN                           R8 -1

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
