MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-SelectInput"]
       18 DUPTABLE                         R4 K14 [{"AutoButtonColor", "BackgroundTransparency", "Size", "Text"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K10 ["AutoButtonColor"]
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K11 ["BackgroundTransparency"]
       25 GETIMPORT                        R5 K17 [UDim2.new]
       27 LOADN                            R6 0
       28 LOADN                            R7 240
       29 LOADN                            R8 0
       30 LOADN                            R9 32
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R4 K12 ["Size"]
       34 LOADK                            R5 K18 [""]
       35 SETTABLEKS                       R5 R4 K13 ["Text"]
       37 NEWTABLE                         R5 0 4
       39 MOVE                             R6 R1
       40 LOADK                            R7 K19 ["> TextButton"]
       41 DUPTABLE                         R8 K20 [{"BackgroundTransparency", "Size"}]
       42 LOADN                            R9 1
       43 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       45 GETIMPORT                        R9 K17 [UDim2.new]
       47 LOADN                            R10 1
       48 LOADN                            R11 0
       49 LOADN                            R12 0
       50 LOADN                            R13 32
       51 CALL                             R9 4 1
       52 SETTABLEKS                       R9 R8 K12 ["Size"]
       54 NEWTABLE                         R9 0 5
       56 MOVE                             R10 R1
       57 LOADK                            R11 K21 ["> #SelectedItemIcon"]
       58 DUPTABLE                         R12 K24 [{"AnchorPoint", "Position"}]
       59 GETIMPORT                        R13 K26 [Vector2.new]
       61 LOADN                            R14 0
       62 LOADK                            R15 K27 [0.5]
       63 CALL                             R13 2 1
       64 SETTABLEKS                       R13 R12 K22 ["AnchorPoint"]
       66 GETIMPORT                        R13 K17 [UDim2.new]
       68 LOADN                            R14 0
       69 LOADN                            R15 10
       70 LOADK                            R16 K27 [0.5]
       71 LOADN                            R17 0
       72 CALL                             R13 4 1
       73 SETTABLEKS                       R13 R12 K23 ["Position"]
       75 CALL                             R10 2 1
       76 MOVE                             R11 R1
       77 LOADK                            R12 K28 ["> #SelectedItemText"]
       78 DUPTABLE                         R13 K29 [{"Position", "Size"}]
       79 GETIMPORT                        R14 K31 [UDim2.fromOffset]
       81 LOADN                            R15 10
       82 LOADN                            R16 0
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K23 ["Position"]
       86 GETIMPORT                        R14 K17 [UDim2.new]
       88 LOADN                            R15 1
       89 LOADN                            R16 226
       90 LOADN                            R17 1
       91 LOADN                            R18 254
       92 CALL                             R14 4 1
       93 SETTABLEKS                       R14 R13 K12 ["Size"]
       95 CALL                             R11 2 1
       96 MOVE                             R12 R1
       97 LOADK                            R13 K32 ["> #SelectArrow"]
       98 DUPTABLE                         R14 K33 [{"AnchorPoint", "Size", "Position"}]
       99 GETIMPORT                        R15 K26 [Vector2.new]
      101 LOADN                            R16 1
      102 LOADK                            R17 K27 [0.5]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K22 ["AnchorPoint"]
      106 GETIMPORT                        R15 K31 [UDim2.fromOffset]
      108 LOADN                            R16 12
      109 LOADN                            R17 12
      110 CALL                             R15 2 1
      111 SETTABLEKS                       R15 R14 K12 ["Size"]
      113 GETIMPORT                        R15 K17 [UDim2.new]
      115 LOADN                            R16 1
      116 LOADN                            R17 251
      117 LOADK                            R18 K27 [0.5]
      118 LOADN                            R19 0
      119 CALL                             R15 4 1
      120 SETTABLEKS                       R15 R14 K23 ["Position"]
      122 CALL                             R12 2 1
      123 MOVE                             R13 R1
      124 LOADK                            R14 K34 [".Placeholder > #SelectedItemText"]
      125 DUPTABLE                         R15 K36 [{"TextColor"}]
      126 LOADK                            R16 K37 ["$TextSecondary"]
      127 SETTABLEKS                       R16 R15 K35 ["TextColor"]
      129 CALL                             R13 2 1
      130 MOVE                             R14 R1
      131 LOADK                            R15 K38 [".HasIcon > #SelectedItemText"]
      132 DUPTABLE                         R16 K29 [{"Position", "Size"}]
      133 GETIMPORT                        R17 K31 [UDim2.fromOffset]
      135 LOADN                            R18 36
      136 LOADN                            R19 0
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K23 ["Position"]
      140 GETIMPORT                        R17 K17 [UDim2.new]
      142 LOADN                            R18 1
      143 LOADN                            R19 210
      144 LOADN                            R20 1
      145 LOADN                            R21 254
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K12 ["Size"]
      149 CALL                             R14 2 -1
      150 SETLIST                          R9 R10 -1 [1]
      152 CALL                             R6 3 1
      153 MOVE                             R7 R1
      154 LOADK                            R8 K39 [".HasError"]
      155 DUPTABLE                         R9 K40 [{"Size"}]
      156 GETIMPORT                        R10 K31 [UDim2.fromOffset]
      158 LOADN                            R11 240
      159 LOADN                            R12 64
      160 CALL                             R10 2 1
      161 SETTABLEKS                       R10 R9 K12 ["Size"]
      163 CALL                             R7 2 1
      164 MOVE                             R8 R1
      165 LOADK                            R9 K41 ["> ImageButton"]
      166 DUPTABLE                         R10 K43 [{"BackgroundTransparency", "Image", "Size"}]
      167 LOADN                            R11 1
      168 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
      170 LOADK                            R11 K44 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
      171 SETTABLEKS                       R11 R10 K42 ["Image"]
      173 GETIMPORT                        R11 K46 [UDim2.fromScale]
      175 LOADN                            R12 1
      176 LOADN                            R13 1
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R10 K12 ["Size"]
      180 CALL                             R8 2 1
      181 MOVE                             R9 R1
      182 LOADK                            R10 K47 [".modern"]
      183 NEWTABLE                         R11 0 0
      185 NEWTABLE                         R12 0 2
      187 MOVE                             R13 R1
      188 LOADK                            R14 K48 [">> #SelectedItemText"]
      189 DUPTABLE                         R15 K50 [{"Font"}]
      190 GETIMPORT                        R16 K53 [Enum.Font.BuilderSansBold]
      192 SETTABLEKS                       R16 R15 K49 ["Font"]
      194 CALL                             R13 2 1
      195 MOVE                             R14 R1
      196 LOADK                            R15 K54 [">> .Component-SelectInput-Selection"]
      197 DUPTABLE                         R16 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      198 LOADK                            R17 K57 ["$Gray70"]
      199 SETTABLEKS                       R17 R16 K55 ["BackgroundColor3"]
      201 LOADN                            R17 0
      202 SETTABLEKS                       R17 R16 K11 ["BackgroundTransparency"]
      204 NEWTABLE                         R17 0 3
      206 MOVE                             R18 R1
      207 LOADK                            R19 K58 ["::UICorner"]
      208 DUPTABLE                         R20 K60 [{"CornerRadius"}]
      209 GETIMPORT                        R21 K62 [UDim.new]
      211 LOADN                            R22 0
      212 LOADN                            R23 8
      213 CALL                             R21 2 1
      214 SETTABLEKS                       R21 R20 K59 ["CornerRadius"]
      216 CALL                             R18 2 1
      217 MOVE                             R19 R1
      218 LOADK                            R20 K63 ["::UIStroke"]
      219 DUPTABLE                         R21 K65 [{"Thickness"}]
      220 LOADN                            R22 0
      221 SETTABLEKS                       R22 R21 K64 ["Thickness"]
      223 CALL                             R19 2 1
      224 MOVE                             R20 R1
      225 LOADK                            R21 K66 [":hover"]
      226 DUPTABLE                         R22 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      227 LOADK                            R23 K67 ["$SelectInputHoverBackground"]
      228 SETTABLEKS                       R23 R22 K55 ["BackgroundColor3"]
      230 LOADN                            R23 0
      231 SETTABLEKS                       R23 R22 K11 ["BackgroundTransparency"]
      233 CALL                             R20 2 -1
      234 SETLIST                          R17 R18 -1 [1]
      236 CALL                             R14 3 -1
      237 SETLIST                          R12 R13 -1 [1]
      239 CALL                             R9 3 -1
      240 SETLIST                          R5 R6 -1 [1]
      242 DUPTABLE                         R6 K72 [{"ArrowOffset", "ErrorHeight", "Height", "IconOffset"}]
      243 LOADN                            R7 22
      244 SETTABLEKS                       R7 R6 K68 ["ArrowOffset"]
      246 LOADN                            R7 32
      247 SETTABLEKS                       R7 R6 K69 ["ErrorHeight"]
      249 LOADN                            R7 32
      250 SETTABLEKS                       R7 R6 K70 ["Height"]
      252 LOADN                            R7 26
      253 SETTABLEKS                       R7 R6 K71 ["IconOffset"]
      255 CALL                             R2 4 -1
      256 RETURN                           R2 -1
