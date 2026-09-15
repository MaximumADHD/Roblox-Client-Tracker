PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["Center"]
        4 JUMPIFNOT                        R3 ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["Center"]
        7 GETTABLEKS                       R4 R0 K1 ["Transform"]
        9 GETTABLEKS                       R4 R4 K2 ["Position"]
       11 NAMECALL                         R2 R2 K3 ["PointToObjectSpace"]
       13 CALL                             R2 2 1
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R3 R0 K1 ["Transform"]
       17 GETTABLEKS                       R3 R3 K4 ["Rotation"]
       19 LOADK                            R4 K5 [{0, 1, 0}]
       20 MUL                              R2 R3 R4
       21 GETTABLEKS                       R3 R0 K1 ["Transform"]
       23 GETTABLEKS                       R3 R3 K2 ["Position"]
       25 GETTABLEKS                       R4 R0 K1 ["Transform"]
       27 GETTABLEKS                       R6 R0 K6 ["Size"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K7 ["VoxelResolution"]
       32 MUL                              R5 R6 R7
       33 NEWTABLE                         R6 0 0
       35 NEWTABLE                         R7 0 0
       37 NEWTABLE                         R8 0 0
       39 NEWTABLE                         R9 0 0
       41 LOADN                            R12 1
       42 LOADN                            R10 10
       43 LOADN                            R11 1
       44 FORNPREP                         R10
       45 GETTABLEKS                       R15 R2 K9 ["Y"]
       47 DIV                              R14 R15 R5
       48 MODK                             R13 R14 K8 [1]
       49 ORK                              R18 R13 K12 [0]
       50 SUB                              R17 R12 R18
       51 SUBK                             R16 R17 K11 [1.5]
       52 DIVK                             R15 R16 K10 [9]
       53 MODK                             R14 R15 K8 [1]
       54 MULK                             R16 R5 K10 [9]
       55 MULK                             R20 R14 K14 [1.99]
       56 SUBK                             R19 R20 K13 [0.995]
       57 FASTCALL1                        MATH_ACOS R19 ; [+2]
       58 GETIMPORT                        R18 K17 [math.acos]
       60 CALL                             R18 1 1
       61 FASTCALL1                        MATH_SIN R18 ; [+2]
       62 GETIMPORT                        R17 K19 [math.sin]
       64 CALL                             R17 1 1
       65 MUL                              R15 R16 R17
       66 SUBK                             R18 R14 K20 [0.5]
       67 MULK                             R17 R18 K10 [9]
       68 MUL                              R16 R17 R5
       69 GETTABLEKS                       R19 R2 K21 ["X"]
       71 DIV                              R18 R19 R5
       72 MODK                             R17 R18 K8 [1]
       73 ORK                              R22 R17 K12 [0]
       74 SUB                              R21 R12 R22
       75 SUBK                             R20 R21 K11 [1.5]
       76 DIVK                             R19 R20 K10 [9]
       77 MODK                             R18 R19 K8 [1]
       78 MULK                             R20 R5 K10 [9]
       79 MULK                             R24 R18 K14 [1.99]
       80 SUBK                             R23 R24 K13 [0.995]
       81 FASTCALL1                        MATH_ACOS R23 ; [+2]
       82 GETIMPORT                        R22 K17 [math.acos]
       84 CALL                             R22 1 1
       85 FASTCALL1                        MATH_SIN R22 ; [+2]
       86 GETIMPORT                        R21 K19 [math.sin]
       88 CALL                             R21 1 1
       89 MUL                              R19 R20 R21
       90 SUBK                             R22 R18 K20 [0.5]
       91 MULK                             R21 R22 K10 [9]
       92 MUL                              R20 R21 R5
       93 GETUPVAL                         R21 2
       94 GETTABLEKS                       R21 R21 K22 ["CurrentCamera"]
       96 GETTABLEKS                       R25 R21 K23 ["CFrame"]
       98 GETTABLEKS                       R25 R25 K2 ["Position"]
      100 SUB                              R24 R25 R3
      101 GETTABLEKS                       R24 R24 K24 ["Magnitude"]
      103 FASTCALL2K                       MATH_POW R24 K20 ; [+4]
      105 LOADK                            R25 K20 [0.5]
      106 GETIMPORT                        R23 K26 [math.pow]
      108 CALL                             R23 2 1
      109 GETUPVAL                         R24 1
      110 GETTABLEKS                       R24 R24 K27 ["GridLineWidth"]
      112 DIV                              R22 R23 R24
      113 FASTCALL3                        VECTOR R15 R22 R22
      115 MOVE                             R24 R15
      116 MOVE                             R25 R22
      117 MOVE                             R26 R22
      118 GETIMPORT                        R23 K30 [Vector3.new]
      120 CALL                             R23 3 1
      121 GETIMPORT                        R24 K31 [CFrame.new]
      123 LOADN                            R25 0
      124 MOVE                             R26 R16
      125 LOADN                            R27 0
      126 CALL                             R24 3 1
      127 FASTCALL3                        VECTOR R22 R19 R22
      129 MOVE                             R26 R22
      130 MOVE                             R27 R19
      131 MOVE                             R28 R22
      132 GETIMPORT                        R25 K30 [Vector3.new]
      134 CALL                             R25 3 1
      135 GETIMPORT                        R26 K31 [CFrame.new]
      137 MOVE                             R27 R20
      138 LOADN                            R28 0
      139 LOADN                            R29 0
      140 CALL                             R26 3 1
      141 LOADK                            R27 K32 ["Line%*"]
      142 MOVE                             R29 R12
      143 NAMECALL                         R27 R27 K33 ["format"]
      145 CALL                             R27 2 1
      146 GETUPVAL                         R28 3
      147 GETTABLEKS                       R28 R28 K34 ["createElement"]
      149 GETUPVAL                         R29 4
      150 DUPTABLE                         R30 K36 [{"Adornee", "CFrame", "Size"}]
      151 SETTABLEKS                       R1 R30 K35 ["Adornee"]
      153 MUL                              R31 R4 R24
      154 SETTABLEKS                       R31 R30 K23 ["CFrame"]
      156 SETTABLEKS                       R23 R30 K6 ["Size"]
      158 CALL                             R28 2 1
      159 SETTABLE                         R28 R6 R27
      160 LOADK                            R27 K32 ["Line%*"]
      161 MOVE                             R29 R12
      162 NAMECALL                         R27 R27 K33 ["format"]
      164 CALL                             R27 2 1
      165 GETUPVAL                         R28 3
      166 GETTABLEKS                       R28 R28 K34 ["createElement"]
      168 GETUPVAL                         R29 4
      169 DUPTABLE                         R30 K40 [{["Adornee"], ["AlwaysOnTop"] = True, ["CFrame"], ["Size"], ["Visible"]}]
      170 SETTABLEKS                       R1 R30 K35 ["Adornee"]
      172 MUL                              R31 R4 R24
      173 SETTABLEKS                       R31 R30 K23 ["CFrame"]
      175 SETTABLEKS                       R23 R30 K6 ["Size"]
      177 GETTABLEKS                       R31 R0 K37 ["AlwaysOnTop"]
      179 SETTABLEKS                       R31 R30 K39 ["Visible"]
      181 CALL                             R28 2 1
      182 SETTABLE                         R28 R7 R27
      183 LOADK                            R27 K32 ["Line%*"]
      184 MOVE                             R29 R12
      185 NAMECALL                         R27 R27 K33 ["format"]
      187 CALL                             R27 2 1
      188 GETUPVAL                         R28 3
      189 GETTABLEKS                       R28 R28 K34 ["createElement"]
      191 GETUPVAL                         R29 4
      192 DUPTABLE                         R30 K36 [{"Adornee", "CFrame", "Size"}]
      193 SETTABLEKS                       R1 R30 K35 ["Adornee"]
      195 MUL                              R31 R4 R26
      196 SETTABLEKS                       R31 R30 K23 ["CFrame"]
      198 SETTABLEKS                       R25 R30 K6 ["Size"]
      200 CALL                             R28 2 1
      201 SETTABLE                         R28 R8 R27
      202 LOADK                            R27 K32 ["Line%*"]
      203 MOVE                             R29 R12
      204 NAMECALL                         R27 R27 K33 ["format"]
      206 CALL                             R27 2 1
      207 GETUPVAL                         R28 3
      208 GETTABLEKS                       R28 R28 K34 ["createElement"]
      210 GETUPVAL                         R29 4
      211 DUPTABLE                         R30 K40 [{["Adornee"], ["AlwaysOnTop"] = True, ["CFrame"], ["Size"], ["Visible"]}]
      212 SETTABLEKS                       R1 R30 K35 ["Adornee"]
      214 MUL                              R31 R4 R26
      215 SETTABLEKS                       R31 R30 K23 ["CFrame"]
      217 SETTABLEKS                       R25 R30 K6 ["Size"]
      219 GETTABLEKS                       R31 R0 K37 ["AlwaysOnTop"]
      221 SETTABLEKS                       R31 R30 K39 ["Visible"]
      223 CALL                             R28 2 1
      224 SETTABLE                         R28 R9 R27
      225 FORNLOOP                         R10
      226 GETUPVAL                         R10 5
      227 GETTABLEKS                       R10 R10 K41 ["createPortal"]
      229 DUPTABLE                         R11 K43 [{"Grid"}]
      230 GETUPVAL                         R12 3
      231 GETTABLEKS                       R12 R12 K34 ["createElement"]
      233 LOADK                            R13 K44 ["Folder"]
      234 NEWTABLE                         R14 0 0
      236 DUPTABLE                         R15 K49 [{"Lines", "LinesOnTop", "LinesPerpendicular", "LinesOnTopPerpendicular"}]
      237 GETUPVAL                         R16 3
      238 GETTABLEKS                       R16 R16 K34 ["createElement"]
      240 LOADK                            R17 K44 ["Folder"]
      241 NEWTABLE                         R18 0 0
      243 MOVE                             R19 R6
      244 CALL                             R16 3 1
      245 SETTABLEKS                       R16 R15 K45 ["Lines"]
      247 GETUPVAL                         R16 3
      248 GETTABLEKS                       R16 R16 K34 ["createElement"]
      250 LOADK                            R17 K44 ["Folder"]
      251 NEWTABLE                         R18 0 0
      253 MOVE                             R19 R7
      254 CALL                             R16 3 1
      255 SETTABLEKS                       R16 R15 K46 ["LinesOnTop"]
      257 GETUPVAL                         R16 3
      258 GETTABLEKS                       R16 R16 K34 ["createElement"]
      260 LOADK                            R17 K44 ["Folder"]
      261 NEWTABLE                         R18 0 0
      263 MOVE                             R19 R8
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K47 ["LinesPerpendicular"]
      267 GETUPVAL                         R16 3
      268 GETTABLEKS                       R16 R16 K34 ["createElement"]
      270 LOADK                            R17 K44 ["Folder"]
      271 NEWTABLE                         R18 0 0
      273 MOVE                             R19 R9
      274 CALL                             R16 3 1
      275 SETTABLEKS                       R16 R15 K48 ["LinesOnTopPerpendicular"]
      277 CALL                             R12 3 1
      278 SETTABLEKS                       R12 R11 K42 ["Grid"]
      280 GETUPVAL                         R12 6
      281 CALL                             R10 2 -1
      282 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useTerrain"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Constants"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K14 ["Line"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K16 [game]
       48 LOADK                            R8 K17 ["CoreGui"]
       49 NAMECALL                         R6 R6 K18 ["GetService"]
       51 CALL                             R6 2 1
       52 GETIMPORT                        R7 K16 [game]
       54 LOADK                            R9 K19 ["Workspace"]
       55 NAMECALL                         R7 R7 K18 ["GetService"]
       57 CALL                             R7 2 1
       58 DUPCLOSURE                       R8 K20 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 RETURN                           R8 1
