PROTO_0:
        0 DUPTABLE                         R1 K8 [{"TitleBar", "TabBar", "ScrollBar", "PropertyRow", "Arrow", "ClassIcon", "ColorSwatch", "Vector"}]
        1 DUPTABLE                         R2 K10 [{"Height"}]
        2 GETTABLEKS                       R4 R0 K11 ["Size"]
        4 GETTABLEKS                       R3 R4 K12 ["Size_800"]
        6 SETTABLEKS                       R3 R2 K9 ["Height"]
        8 SETTABLEKS                       R2 R1 K0 ["TitleBar"]
       10 DUPTABLE                         R2 K10 [{"Height"}]
       11 GETTABLEKS                       R4 R0 K11 ["Size"]
       13 GETTABLEKS                       R3 R4 K12 ["Size_800"]
       15 SETTABLEKS                       R3 R2 K9 ["Height"]
       17 SETTABLEKS                       R2 R1 K1 ["TabBar"]
       19 DUPTABLE                         R2 K14 [{"Width"}]
       20 LOADN                            R3 6
       21 SETTABLEKS                       R3 R2 K13 ["Width"]
       23 SETTABLEKS                       R2 R1 K2 ["ScrollBar"]
       25 DUPTABLE                         R2 K18 [{"MinHeight", "Label", "Value"}]
       26 GETTABLEKS                       R4 R0 K11 ["Size"]
       28 GETTABLEKS                       R3 R4 K19 ["Size_600"]
       30 SETTABLEKS                       R3 R2 K15 ["MinHeight"]
       32 DUPTABLE                         R3 K27 [{"MaxWidth", "IndentWidth", "Color", "Transparency", "Fade", "ReadOnly", "Unimplemented"}]
       33 GETUPVAL                         R4 0
       34 SETTABLEKS                       R4 R3 K20 ["MaxWidth"]
       36 GETTABLEKS                       R5 R0 K11 ["Size"]
       38 GETTABLEKS                       R4 R5 K12 ["Size_800"]
       40 SETTABLEKS                       R4 R3 K21 ["IndentWidth"]
       42 GETTABLEKS                       R7 R0 K22 ["Color"]
       44 GETTABLEKS                       R6 R7 K28 ["Content"]
       46 GETTABLEKS                       R5 R6 K29 ["Default"]
       48 GETTABLEKS                       R4 R5 K30 ["Color3"]
       50 SETTABLEKS                       R4 R3 K22 ["Color"]
       52 GETTABLEKS                       R7 R0 K22 ["Color"]
       54 GETTABLEKS                       R6 R7 K28 ["Content"]
       56 GETTABLEKS                       R5 R6 K29 ["Default"]
       58 GETTABLEKS                       R4 R5 K23 ["Transparency"]
       60 SETTABLEKS                       R4 R3 K23 ["Transparency"]
       62 DUPTABLE                         R4 K31 [{"Width", "Color"}]
       63 GETTABLEKS                       R6 R0 K32 ["Padding"]
       65 GETTABLEKS                       R5 R6 K33 ["Medium"]
       67 SETTABLEKS                       R5 R4 K13 ["Width"]
       69 DUPTABLE                         R5 K36 [{"Light", "Dark"}]
       70 GETIMPORT                        R6 K38 [Color3.fromHex]
       72 LOADK                            R7 K39 ["#FFFFFF"]
       73 CALL                             R6 1 1
       74 SETTABLEKS                       R6 R5 K34 ["Light"]
       76 GETTABLEKS                       R9 R0 K22 ["Color"]
       78 GETTABLEKS                       R8 R9 K40 ["Surface"]
       80 GETTABLEKS                       R7 R8 K41 ["Surface_100"]
       82 GETTABLEKS                       R6 R7 K30 ["Color3"]
       84 SETTABLEKS                       R6 R5 K35 ["Dark"]
       86 SETTABLEKS                       R5 R4 K22 ["Color"]
       88 SETTABLEKS                       R4 R3 K24 ["Fade"]
       90 DUPTABLE                         R4 K42 [{"Transparency"}]
       91 LOADK                            R5 K43 [0.5]
       92 SETTABLEKS                       R5 R4 K23 ["Transparency"]
       94 SETTABLEKS                       R4 R3 K25 ["ReadOnly"]
       96 DUPTABLE                         R4 K44 [{"Color"}]
       97 GETIMPORT                        R5 K46 [Color3.fromRGB]
       99 LOADN                            R6 223
      100 LOADN                            R7 40
      101 LOADN                            R8 31
      102 CALL                             R5 3 1
      103 SETTABLEKS                       R5 R4 K22 ["Color"]
      105 SETTABLEKS                       R4 R3 K26 ["Unimplemented"]
      107 SETTABLEKS                       R3 R2 K16 ["Label"]
      109 DUPTABLE                         R3 K48 [{"MinWidth"}]
      110 GETUPVAL                         R4 1
      111 SETTABLEKS                       R4 R3 K47 ["MinWidth"]
      113 SETTABLEKS                       R3 R2 K17 ["Value"]
      115 SETTABLEKS                       R2 R1 K3 ["PropertyRow"]
      117 DUPTABLE                         R2 K50 [{"Indent", "Size"}]
      118 GETTABLEKS                       R4 R0 K11 ["Size"]
      120 GETTABLEKS                       R3 R4 K51 ["Size_300"]
      122 SETTABLEKS                       R3 R2 K49 ["Indent"]
      124 GETIMPORT                        R4 K54 [Vector2.one]
      126 GETTABLEKS                       R6 R0 K11 ["Size"]
      128 GETTABLEKS                       R5 R6 K55 ["Size_400"]
      130 MUL                              R3 R4 R5
      131 SETTABLEKS                       R3 R2 K11 ["Size"]
      133 SETTABLEKS                       R2 R1 K4 ["Arrow"]
      135 DUPTABLE                         R2 K57 [{"DisabledTransparency"}]
      136 LOADK                            R3 K58 [0.62]
      137 SETTABLEKS                       R3 R2 K56 ["DisabledTransparency"]
      139 SETTABLEKS                       R2 R1 K5 ["ClassIcon"]
      141 DUPTABLE                         R2 K60 [{"MultipleColor"}]
      142 GETIMPORT                        R3 K46 [Color3.fromRGB]
      144 LOADN                            R4 255
      145 LOADN                            R5 255
      146 LOADN                            R6 255
      147 CALL                             R3 3 1
      148 SETTABLEKS                       R3 R2 K59 ["MultipleColor"]
      150 SETTABLEKS                       R2 R1 K6 ["ColorSwatch"]
      152 DUPTABLE                         R2 K62 [{"Chip"}]
      153 DUPTABLE                         R3 K66 [{"XColor", "YColor", "ZColor"}]
      154 GETIMPORT                        R4 K38 [Color3.fromHex]
      156 LOADK                            R5 K67 ["#DF281F"]
      157 CALL                             R4 1 1
      158 SETTABLEKS                       R4 R3 K63 ["XColor"]
      160 GETIMPORT                        R4 K38 [Color3.fromHex]
      162 LOADK                            R5 K68 ["#39C582"]
      163 CALL                             R4 1 1
      164 SETTABLEKS                       R4 R3 K64 ["YColor"]
      166 GETIMPORT                        R4 K38 [Color3.fromHex]
      168 LOADK                            R5 K69 ["#2F7AC6"]
      169 CALL                             R4 1 1
      170 SETTABLEKS                       R4 R3 K65 ["ZColor"]
      172 SETTABLEKS                       R3 R2 K61 ["Chip"]
      174 SETTABLEKS                       R2 R1 K7 ["Vector"]
      176 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K9 [game]
       16 LOADK                            R5 K10 ["PropertiesMaxLabelWidth"]
       17 LOADN                            R6 135
       18 NAMECALL                         R3 R3 K11 ["DefineFastInt"]
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K9 [game]
       23 LOADK                            R6 K12 ["PropertiesMinValueWidth"]
       24 LOADN                            R7 155
       25 NAMECALL                         R4 R4 K11 ["DefineFastInt"]
       27 CALL                             R4 3 1
       28 DUPCLOSURE                       R5 K13 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
