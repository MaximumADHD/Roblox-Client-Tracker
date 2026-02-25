PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        5 LOADK                            R3 K2 ["AvatarSizeRuler"]
        6 NAMECALL                         R1 R1 K3 ["use"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["useState"]
       12 LOADNIL                          R3
       13 CALL                             R2 1 2
       14 GETTABLEKS                       R4 R0 K5 ["Axis1"]
       16 GETTABLEKS                       R5 R0 K6 ["Axis2"]
       18 MOVE                             R8 R4
       19 NAMECALL                         R6 R5 K7 ["Cross"]
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K10 [CFrame.fromMatrix]
       24 GETTABLEKS                       R9 R0 K8 ["CFrame"]
       26 GETTABLEKS                       R8 R9 K11 ["Position"]
       28 MOVE                             R9 R4
       29 MOVE                             R10 R6
       30 CALL                             R7 3 1
       31 GETTABLEKS                       R11 R0 K12 ["Size"]
       33 GETTABLEKS                       R12 R0 K5 ["Axis1"]
       35 MUL                              R10 R11 R12
       36 GETTABLEKS                       R9 R10 K13 ["Magnitude"]
       38 LOADN                            R10 0
       39 GETTABLEKS                       R13 R0 K12 ["Size"]
       41 GETTABLEKS                       R14 R0 K6 ["Axis2"]
       43 MUL                              R12 R13 R14
       44 GETTABLEKS                       R11 R12 K13 ["Magnitude"]
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R8 K16 [Vector3.new]
       49 CALL                             R8 3 1
       50 LOADK                            R12 K17 [{-0.5, 0, -0.5}]
       51 MUL                              R11 R8 R12
       52 NAMECALL                         R9 R7 K18 ["VectorToWorldSpace"]
       54 CALL                             R9 2 1
       55 ADD                              R7 R7 R9
       56 LOADN                            R12 0
       57 GETTABLEKS                       R16 R0 K12 ["Size"]
       59 MUL                              R15 R16 R6
       60 GETTABLEKS                       R14 R15 K13 ["Magnitude"]
       62 MULK                             R13 R14 K19 [-0.5]
       63 LOADN                            R14 0
       64 FASTCALL                         VECTOR ; [+2]
       65 GETIMPORT                        R11 K16 [Vector3.new]
       67 CALL                             R11 3 1
       68 NAMECALL                         R9 R7 K18 ["VectorToWorldSpace"]
       70 CALL                             R9 2 1
       71 ADD                              R7 R7 R9
       72 LOADK                            R12 K20 [{-0.5, 0, 0}]
       73 MUL                              R11 R8 R12
       74 NAMECALL                         R9 R7 K18 ["VectorToWorldSpace"]
       76 CALL                             R9 2 1
       77 ADD                              R7 R7 R9
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R9 R10 K21 ["createPortal"]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R10 R11 K22 ["createElement"]
       84 LOADK                            R11 K23 ["Part"]
       85 DUPTABLE                         R12 K33 [{"Anchored", "CanQuery", "CanCollide", "CanTouch", "Archivable", "ref", "CFrame", "TopSurface", "BottomSurface", "Size", "Transparency"}]
       86 LOADB                            R13 1
       87 SETTABLEKS                       R13 R12 K24 ["Anchored"]
       89 LOADB                            R13 0
       90 SETTABLEKS                       R13 R12 K25 ["CanQuery"]
       92 LOADB                            R13 0
       93 SETTABLEKS                       R13 R12 K26 ["CanCollide"]
       95 LOADB                            R13 0
       96 SETTABLEKS                       R13 R12 K27 ["CanTouch"]
       98 LOADB                            R13 0
       99 SETTABLEKS                       R13 R12 K28 ["Archivable"]
      101 SETTABLEKS                       R3 R12 K29 ["ref"]
      103 GETTABLEKS                       R14 R0 K8 ["CFrame"]
      105 LOADK                            R18 K34 [{-1.5, 0, 0}]
      106 MUL                              R17 R8 R18
      107 NAMECALL                         R15 R7 K18 ["VectorToWorldSpace"]
      109 CALL                             R15 2 1
      110 ADD                              R13 R14 R15
      111 SETTABLEKS                       R13 R12 K8 ["CFrame"]
      113 GETIMPORT                        R13 K38 [Enum.SurfaceType.Smooth]
      115 SETTABLEKS                       R13 R12 K30 ["TopSurface"]
      117 GETIMPORT                        R13 K38 [Enum.SurfaceType.Smooth]
      119 SETTABLEKS                       R13 R12 K31 ["BottomSurface"]
      121 GETTABLEKS                       R13 R0 K12 ["Size"]
      123 SETTABLEKS                       R13 R12 K12 ["Size"]
      125 LOADN                            R13 1
      126 SETTABLEKS                       R13 R12 K32 ["Transparency"]
      128 DUPTABLE                         R13 K41 [{"Ruler", "SurfaceGui"}]
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R14 R15 K22 ["createElement"]
      132 GETUPVAL                         R15 3
      133 DUPTABLE                         R16 K48 [{"Color3", "MainTransparency", "DimTransparency", "GridSize", "MajorStep", "CFrame", "Size", "ExtraSize"}]
      134 GETTABLEKS                       R17 R1 K49 ["RulerColor"]
      136 SETTABLEKS                       R17 R16 K42 ["Color3"]
      138 GETTABLEKS                       R17 R1 K43 ["MainTransparency"]
      140 SETTABLEKS                       R17 R16 K43 ["MainTransparency"]
      142 GETTABLEKS                       R17 R1 K44 ["DimTransparency"]
      144 SETTABLEKS                       R17 R16 K44 ["DimTransparency"]
      146 GETTABLEKS                       R17 R1 K45 ["GridSize"]
      148 SETTABLEKS                       R17 R16 K45 ["GridSize"]
      150 GETTABLEKS                       R17 R1 K46 ["MajorStep"]
      152 SETTABLEKS                       R17 R16 K46 ["MajorStep"]
      154 SETTABLEKS                       R7 R16 K8 ["CFrame"]
      156 LOADN                            R18 0
      157 LOADN                            R19 0
      158 GETTABLEKS                       R20 R8 K50 ["Z"]
      160 FASTCALL                         VECTOR ; [+2]
      161 GETIMPORT                        R17 K16 [Vector3.new]
      163 CALL                             R17 3 1
      164 SETTABLEKS                       R17 R16 K12 ["Size"]
      166 LOADNIL                          R17
      167 SETTABLEKS                       R17 R16 K47 ["ExtraSize"]
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R13 K39 ["Ruler"]
      172 GETUPVAL                         R15 1
      173 GETTABLEKS                       R14 R15 K22 ["createElement"]
      175 LOADK                            R15 K40 ["SurfaceGui"]
      176 DUPTABLE                         R16 K56 [{"Adornee", "AlwaysOnTop", "Face", "SizingMode", "PixelsPerStud"}]
      177 SETTABLEKS                       R2 R16 K51 ["Adornee"]
      179 LOADB                            R17 1
      180 SETTABLEKS                       R17 R16 K52 ["AlwaysOnTop"]
      182 GETTABLEKS                       R17 R0 K57 ["TextFace"]
      184 SETTABLEKS                       R17 R16 K53 ["Face"]
      186 GETIMPORT                        R17 K59 [Enum.SurfaceGuiSizingMode.PixelsPerStud]
      188 SETTABLEKS                       R17 R16 K54 ["SizingMode"]
      190 GETTABLEKS                       R17 R1 K55 ["PixelsPerStud"]
      192 SETTABLEKS                       R17 R16 K55 ["PixelsPerStud"]
      194 DUPTABLE                         R17 K61 [{"Container"}]
      195 GETUPVAL                         R19 1
      196 GETTABLEKS                       R18 R19 K22 ["createElement"]
      198 GETUPVAL                         R21 0
      199 GETTABLEKS                       R20 R21 K62 ["UI"]
      201 GETTABLEKS                       R19 R20 K60 ["Container"]
      203 DUPTABLE                         R20 K65 [{"AutomaticSize", "Padding"}]
      204 GETIMPORT                        R21 K67 [Enum.AutomaticSize.XY]
      206 SETTABLEKS                       R21 R20 K63 ["AutomaticSize"]
      208 DUPTABLE                         R21 K69 [{"Left"}]
      209 GETTABLEKS                       R22 R1 K64 ["Padding"]
      211 SETTABLEKS                       R22 R21 K68 ["Left"]
      213 SETTABLEKS                       R21 R20 K64 ["Padding"]
      215 DUPTABLE                         R21 K71 [{"SizeLabel"}]
      216 GETUPVAL                         R23 1
      217 GETTABLEKS                       R22 R23 K22 ["createElement"]
      219 GETUPVAL                         R25 0
      220 GETTABLEKS                       R24 R25 K62 ["UI"]
      222 GETTABLEKS                       R23 R24 K72 ["TextLabel"]
      224 DUPTABLE                         R24 K75 [{"AutomaticSize", "Text", "TextSize"}]
      225 GETIMPORT                        R25 K67 [Enum.AutomaticSize.XY]
      227 SETTABLEKS                       R25 R24 K63 ["AutomaticSize"]
      229 GETTABLEKS                       R25 R0 K73 ["Text"]
      231 SETTABLEKS                       R25 R24 K73 ["Text"]
      233 GETTABLEKS                       R25 R1 K74 ["TextSize"]
      235 SETTABLEKS                       R25 R24 K74 ["TextSize"]
      237 CALL                             R22 2 1
      238 SETTABLEKS                       R22 R21 K70 ["SizeLabel"]
      240 CALL                             R18 3 1
      241 SETTABLEKS                       R18 R17 K60 ["Container"]
      243 CALL                             R14 3 1
      244 SETTABLEKS                       R14 R13 K40 ["SurfaceGui"]
      246 CALL                             R10 3 1
      247 GETTABLEKS                       R11 R0 K60 ["Container"]
      249 JUMPIF                           R11 ; [+1]
      250 GETUPVAL                         R11 4
      251 LOADK                            R12 K2 ["AvatarSizeRuler"]
      252 CALL                             R9 3 -1
      253 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R7 K9 [require]
       36 GETTABLEKS                       R9 R0 K10 ["Packages"]
       38 GETTABLEKS                       R8 R9 K14 ["DraggerFramework"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R6 R7 K15 ["Components"]
       43 GETTABLEKS                       R5 R6 K16 ["RulerView"]
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R0 K17 ["Src"]
       49 GETTABLEKS                       R8 R9 K18 ["Resources"]
       51 GETTABLEKS                       R7 R8 K19 ["Theme"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K20 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 RETURN                           R7 1
