PROTO_0:
        0 DUPTABLE                         R1 K10 [{"TitleBar", "TabBar", "ScrollBar", "PropertyRow", "Arrow", "ClassIcon", "ColorSwatch", "Vector", "NumberSequence", "RowStops"}]
        1 DUPTABLE                         R2 K12 [{"Height"}]
        2 GETTABLEKS                       R3 R0 K13 ["Size"]
        4 GETTABLEKS                       R3 R3 K14 ["Size_800"]
        6 SETTABLEKS                       R3 R2 K11 ["Height"]
        8 SETTABLEKS                       R2 R1 K0 ["TitleBar"]
       10 DUPTABLE                         R2 K12 [{"Height"}]
       11 GETTABLEKS                       R3 R0 K13 ["Size"]
       13 GETTABLEKS                       R3 R3 K14 ["Size_800"]
       15 SETTABLEKS                       R3 R2 K11 ["Height"]
       17 SETTABLEKS                       R2 R1 K1 ["TabBar"]
       19 DUPTABLE                         R2 K17 [{["Width"] = 6}]
       20 SETTABLEKS                       R2 R1 K2 ["ScrollBar"]
       22 DUPTABLE                         R2 K21 [{"MinHeight", "Label", "Value"}]
       23 GETTABLEKS                       R3 R0 K13 ["Size"]
       25 GETTABLEKS                       R3 R3 K22 ["Size_600"]
       27 SETTABLEKS                       R3 R2 K18 ["MinHeight"]
       29 DUPTABLE                         R3 K30 [{"MaxWidth", "IndentWidth", "Color", "Transparency", "Fade", "ReadOnly", "Unimplemented"}]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K23 ["MaxWidth"]
       33 GETTABLEKS                       R4 R0 K13 ["Size"]
       35 GETTABLEKS                       R4 R4 K14 ["Size_800"]
       37 SETTABLEKS                       R4 R3 K24 ["IndentWidth"]
       39 GETTABLEKS                       R4 R0 K25 ["Color"]
       41 GETTABLEKS                       R4 R4 K31 ["Content"]
       43 GETTABLEKS                       R4 R4 K32 ["Default"]
       45 GETTABLEKS                       R4 R4 K33 ["Color3"]
       47 SETTABLEKS                       R4 R3 K25 ["Color"]
       49 GETTABLEKS                       R4 R0 K25 ["Color"]
       51 GETTABLEKS                       R4 R4 K31 ["Content"]
       53 GETTABLEKS                       R4 R4 K32 ["Default"]
       55 GETTABLEKS                       R4 R4 K26 ["Transparency"]
       57 SETTABLEKS                       R4 R3 K26 ["Transparency"]
       59 DUPTABLE                         R4 K34 [{"Width", "Color"}]
       60 GETTABLEKS                       R5 R0 K35 ["Padding"]
       62 GETTABLEKS                       R5 R5 K36 ["Medium"]
       64 SETTABLEKS                       R5 R4 K15 ["Width"]
       66 DUPTABLE                         R5 K39 [{"Light", "Dark"}]
       67 GETIMPORT                        R6 K41 [Color3.fromHex]
       69 LOADK                            R7 K42 ["#FFFFFF"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K37 ["Light"]
       73 GETTABLEKS                       R6 R0 K25 ["Color"]
       75 GETTABLEKS                       R6 R6 K43 ["Surface"]
       77 GETTABLEKS                       R6 R6 K44 ["Surface_100"]
       79 GETTABLEKS                       R6 R6 K33 ["Color3"]
       81 SETTABLEKS                       R6 R5 K38 ["Dark"]
       83 SETTABLEKS                       R5 R4 K25 ["Color"]
       85 SETTABLEKS                       R4 R3 K27 ["Fade"]
       87 DUPTABLE                         R4 K46 [{["Transparency"] = 0.5}]
       88 SETTABLEKS                       R4 R3 K28 ["ReadOnly"]
       90 DUPTABLE                         R4 K47 [{"Color"}]
       91 GETIMPORT                        R5 K49 [Color3.fromRGB]
       93 LOADN                            R6 223
       94 LOADN                            R7 40
       95 LOADN                            R8 31
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K25 ["Color"]
       99 SETTABLEKS                       R4 R3 K29 ["Unimplemented"]
      101 SETTABLEKS                       R3 R2 K19 ["Label"]
      103 DUPTABLE                         R3 K51 [{"MinWidth"}]
      104 GETUPVAL                         R4 1
      105 SETTABLEKS                       R4 R3 K50 ["MinWidth"]
      107 SETTABLEKS                       R3 R2 K20 ["Value"]
      109 SETTABLEKS                       R2 R1 K3 ["PropertyRow"]
      111 DUPTABLE                         R2 K53 [{"Indent", "Size"}]
      112 GETTABLEKS                       R3 R0 K13 ["Size"]
      114 GETTABLEKS                       R3 R3 K54 ["Size_300"]
      116 SETTABLEKS                       R3 R2 K52 ["Indent"]
      118 GETIMPORT                        R4 K57 [Vector2.one]
      120 GETTABLEKS                       R5 R0 K13 ["Size"]
      122 GETTABLEKS                       R5 R5 K58 ["Size_400"]
      124 MUL                              R3 R4 R5
      125 SETTABLEKS                       R3 R2 K13 ["Size"]
      127 SETTABLEKS                       R2 R1 K4 ["Arrow"]
      129 DUPTABLE                         R2 K61 [{["DisabledTransparency"] = 0.62}]
      130 SETTABLEKS                       R2 R1 K5 ["ClassIcon"]
      132 DUPTABLE                         R2 K63 [{"MultipleColor"}]
      133 GETIMPORT                        R3 K49 [Color3.fromRGB]
      135 LOADN                            R4 255
      136 LOADN                            R5 255
      137 LOADN                            R6 255
      138 CALL                             R3 3 1
      139 SETTABLEKS                       R3 R2 K62 ["MultipleColor"]
      141 SETTABLEKS                       R2 R1 K6 ["ColorSwatch"]
      143 DUPTABLE                         R2 K65 [{"Chip"}]
      144 DUPTABLE                         R3 K69 [{"XColor", "YColor", "ZColor"}]
      145 GETIMPORT                        R4 K41 [Color3.fromHex]
      147 LOADK                            R5 K70 ["#DF281F"]
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R3 K66 ["XColor"]
      151 GETIMPORT                        R4 K41 [Color3.fromHex]
      153 LOADK                            R5 K71 ["#39C582"]
      154 CALL                             R4 1 1
      155 SETTABLEKS                       R4 R3 K67 ["YColor"]
      157 GETIMPORT                        R4 K41 [Color3.fromHex]
      159 LOADK                            R5 K72 ["#2F7AC6"]
      160 CALL                             R4 1 1
      161 SETTABLEKS                       R4 R3 K68 ["ZColor"]
      163 SETTABLEKS                       R3 R2 K64 ["Chip"]
      165 SETTABLEKS                       R2 R1 K7 ["Vector"]
      167 DUPTABLE                         R2 K88 [{["GraphMaxX"] = 1, ["GraphMinY"] = 0, ["GraphMaxY"] = 10, ["EditorInitialSize"], ["EditorMinWidth"] = 500, ["EditorMinHeight"] = 200, ["EditorYPadding"], ["EditorFillPadding"], ["MaxRows"] = 4}]
      168 GETIMPORT                        R3 K90 [Vector2.new]
      170 LOADN                            R4 700
      171 LOADN                            R5 200
      172 CALL                             R3 2 1
      173 SETTABLEKS                       R3 R2 K79 ["EditorInitialSize"]
      175 GETTABLEKS                       R3 R0 K91 ["Gap"]
      177 GETTABLEKS                       R3 R3 K92 ["Large"]
      179 SETTABLEKS                       R3 R2 K84 ["EditorYPadding"]
      181 GETTABLEKS                       R3 R0 K91 ["Gap"]
      183 GETTABLEKS                       R3 R3 K93 ["Small"]
      185 SETTABLEKS                       R3 R2 K85 ["EditorFillPadding"]
      187 SETTABLEKS                       R2 R1 K8 ["NumberSequence"]
      189 DUPTABLE                         R2 K99 [{"HeaderContentHeight", "HeaderBottomPadding", "RowsGap", "RowSlotYPadding", "CellContentHeight"}]
      190 GETTABLEKS                       R3 R0 K13 ["Size"]
      192 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      194 SETTABLEKS                       R3 R2 K94 ["HeaderContentHeight"]
      196 GETTABLEKS                       R3 R0 K35 ["Padding"]
      198 GETTABLEKS                       R3 R3 K93 ["Small"]
      200 SETTABLEKS                       R3 R2 K95 ["HeaderBottomPadding"]
      202 GETTABLEKS                       R3 R0 K91 ["Gap"]
      204 GETTABLEKS                       R3 R3 K93 ["Small"]
      206 SETTABLEKS                       R3 R2 K96 ["RowsGap"]
      208 GETTABLEKS                       R3 R0 K91 ["Gap"]
      210 GETTABLEKS                       R3 R3 K100 ["XSmall"]
      212 SETTABLEKS                       R3 R2 K97 ["RowSlotYPadding"]
      214 GETTABLEKS                       R3 R0 K13 ["Size"]
      216 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      218 SETTABLEKS                       R3 R2 K98 ["CellContentHeight"]
      220 SETTABLEKS                       R2 R1 K9 ["RowStops"]
      222 RETURN                           R1 1

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
