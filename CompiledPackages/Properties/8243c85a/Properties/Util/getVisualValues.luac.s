PROTO_0:
        0 DUPTABLE                         R1 K9 [{"TitleBar", "TabBar", "ScrollBar", "PropertyRow", "Arrow", "ClassIcon", "ColorSwatch", "Vector", "NumberSequence"}]
        1 DUPTABLE                         R2 K11 [{"Height"}]
        2 GETTABLEKS                       R3 R0 K12 ["Size"]
        4 GETTABLEKS                       R3 R3 K13 ["Size_800"]
        6 SETTABLEKS                       R3 R2 K10 ["Height"]
        8 SETTABLEKS                       R2 R1 K0 ["TitleBar"]
       10 DUPTABLE                         R2 K11 [{"Height"}]
       11 GETTABLEKS                       R3 R0 K12 ["Size"]
       13 GETTABLEKS                       R3 R3 K13 ["Size_800"]
       15 SETTABLEKS                       R3 R2 K10 ["Height"]
       17 SETTABLEKS                       R2 R1 K1 ["TabBar"]
       19 DUPTABLE                         R2 K16 [{["Width"] = 6}]
       20 SETTABLEKS                       R2 R1 K2 ["ScrollBar"]
       22 DUPTABLE                         R2 K20 [{"MinHeight", "Label", "Value"}]
       23 GETTABLEKS                       R3 R0 K12 ["Size"]
       25 GETTABLEKS                       R3 R3 K21 ["Size_600"]
       27 SETTABLEKS                       R3 R2 K17 ["MinHeight"]
       29 DUPTABLE                         R3 K29 [{"MaxWidth", "IndentWidth", "Color", "Transparency", "Fade", "ReadOnly", "Unimplemented"}]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K22 ["MaxWidth"]
       33 GETTABLEKS                       R4 R0 K12 ["Size"]
       35 GETTABLEKS                       R4 R4 K13 ["Size_800"]
       37 SETTABLEKS                       R4 R3 K23 ["IndentWidth"]
       39 GETTABLEKS                       R4 R0 K24 ["Color"]
       41 GETTABLEKS                       R4 R4 K30 ["Content"]
       43 GETTABLEKS                       R4 R4 K31 ["Default"]
       45 GETTABLEKS                       R4 R4 K32 ["Color3"]
       47 SETTABLEKS                       R4 R3 K24 ["Color"]
       49 GETTABLEKS                       R4 R0 K24 ["Color"]
       51 GETTABLEKS                       R4 R4 K30 ["Content"]
       53 GETTABLEKS                       R4 R4 K31 ["Default"]
       55 GETTABLEKS                       R4 R4 K25 ["Transparency"]
       57 SETTABLEKS                       R4 R3 K25 ["Transparency"]
       59 DUPTABLE                         R4 K33 [{"Width", "Color"}]
       60 GETTABLEKS                       R5 R0 K34 ["Padding"]
       62 GETTABLEKS                       R5 R5 K35 ["Medium"]
       64 SETTABLEKS                       R5 R4 K14 ["Width"]
       66 DUPTABLE                         R5 K38 [{"Light", "Dark"}]
       67 GETIMPORT                        R6 K40 [Color3.fromHex]
       69 LOADK                            R7 K41 ["#FFFFFF"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K36 ["Light"]
       73 GETTABLEKS                       R6 R0 K24 ["Color"]
       75 GETTABLEKS                       R6 R6 K42 ["Surface"]
       77 GETTABLEKS                       R6 R6 K43 ["Surface_100"]
       79 GETTABLEKS                       R6 R6 K32 ["Color3"]
       81 SETTABLEKS                       R6 R5 K37 ["Dark"]
       83 SETTABLEKS                       R5 R4 K24 ["Color"]
       85 SETTABLEKS                       R4 R3 K26 ["Fade"]
       87 DUPTABLE                         R4 K45 [{["Transparency"] = 0.5}]
       88 SETTABLEKS                       R4 R3 K27 ["ReadOnly"]
       90 DUPTABLE                         R4 K46 [{"Color"}]
       91 GETIMPORT                        R5 K48 [Color3.fromRGB]
       93 LOADN                            R6 223
       94 LOADN                            R7 40
       95 LOADN                            R8 31
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K24 ["Color"]
       99 SETTABLEKS                       R4 R3 K28 ["Unimplemented"]
      101 SETTABLEKS                       R3 R2 K18 ["Label"]
      103 DUPTABLE                         R3 K50 [{"MinWidth"}]
      104 GETUPVAL                         R4 1
      105 SETTABLEKS                       R4 R3 K49 ["MinWidth"]
      107 SETTABLEKS                       R3 R2 K19 ["Value"]
      109 SETTABLEKS                       R2 R1 K3 ["PropertyRow"]
      111 DUPTABLE                         R2 K52 [{"Indent", "Size"}]
      112 GETTABLEKS                       R3 R0 K12 ["Size"]
      114 GETTABLEKS                       R3 R3 K53 ["Size_300"]
      116 SETTABLEKS                       R3 R2 K51 ["Indent"]
      118 GETIMPORT                        R4 K56 [Vector2.one]
      120 GETTABLEKS                       R5 R0 K12 ["Size"]
      122 GETTABLEKS                       R5 R5 K57 ["Size_400"]
      124 MUL                              R3 R4 R5
      125 SETTABLEKS                       R3 R2 K12 ["Size"]
      127 SETTABLEKS                       R2 R1 K4 ["Arrow"]
      129 DUPTABLE                         R2 K60 [{["DisabledTransparency"] = 0.62}]
      130 SETTABLEKS                       R2 R1 K5 ["ClassIcon"]
      132 DUPTABLE                         R2 K62 [{"MultipleColor"}]
      133 GETIMPORT                        R3 K48 [Color3.fromRGB]
      135 LOADN                            R4 255
      136 LOADN                            R5 255
      137 LOADN                            R6 255
      138 CALL                             R3 3 1
      139 SETTABLEKS                       R3 R2 K61 ["MultipleColor"]
      141 SETTABLEKS                       R2 R1 K6 ["ColorSwatch"]
      143 DUPTABLE                         R2 K64 [{"Chip"}]
      144 DUPTABLE                         R3 K68 [{"XColor", "YColor", "ZColor"}]
      145 GETIMPORT                        R4 K40 [Color3.fromHex]
      147 LOADK                            R5 K69 ["#DF281F"]
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R3 K65 ["XColor"]
      151 GETIMPORT                        R4 K40 [Color3.fromHex]
      153 LOADK                            R5 K70 ["#39C582"]
      154 CALL                             R4 1 1
      155 SETTABLEKS                       R4 R3 K66 ["YColor"]
      157 GETIMPORT                        R4 K40 [Color3.fromHex]
      159 LOADK                            R5 K71 ["#2F7AC6"]
      160 CALL                             R4 1 1
      161 SETTABLEKS                       R4 R3 K67 ["ZColor"]
      163 SETTABLEKS                       R3 R2 K63 ["Chip"]
      165 SETTABLEKS                       R2 R1 K7 ["Vector"]
      167 DUPTABLE                         R2 K78 [{["GraphMaxX"] = 1, ["GraphMinY"] = 0, ["GraphMaxY"] = 10}]
      168 SETTABLEKS                       R2 R1 K8 ["NumberSequence"]
      170 RETURN                           R1 1

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
