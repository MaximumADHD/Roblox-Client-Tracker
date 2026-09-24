MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-SelectInput"]
       18 DUPTABLE                         R4 K17 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = 1, ["Size"], ["Text"] = ""}]
       19 GETIMPORT                        R5 K20 [UDim2.new]
       21 LOADN                            R6 0
       22 LOADN                            R7 240
       23 LOADN                            R8 0
       24 LOADN                            R9 32
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K14 ["Size"]
       28 NEWTABLE                         R5 0 4
       30 MOVE                             R6 R1
       31 LOADK                            R7 K21 ["> TextButton"]
       32 DUPTABLE                         R8 K22 [{["BackgroundTransparency"] = 1, ["Size"]}]
       33 GETIMPORT                        R9 K20 [UDim2.new]
       35 LOADN                            R10 1
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 LOADN                            R13 32
       39 CALL                             R9 4 1
       40 SETTABLEKS                       R9 R8 K14 ["Size"]
       42 NEWTABLE                         R9 0 5
       44 MOVE                             R10 R1
       45 LOADK                            R11 K23 ["> #SelectedItemIcon"]
       46 DUPTABLE                         R12 K26 [{"AnchorPoint", "Position"}]
       47 GETIMPORT                        R13 K28 [Vector2.new]
       49 LOADN                            R14 0
       50 LOADK                            R15 K29 [0.5]
       51 CALL                             R13 2 1
       52 SETTABLEKS                       R13 R12 K24 ["AnchorPoint"]
       54 GETIMPORT                        R13 K20 [UDim2.new]
       56 LOADN                            R14 0
       57 LOADN                            R15 10
       58 LOADK                            R16 K29 [0.5]
       59 LOADN                            R17 0
       60 CALL                             R13 4 1
       61 SETTABLEKS                       R13 R12 K25 ["Position"]
       63 CALL                             R10 2 1
       64 MOVE                             R11 R1
       65 LOADK                            R12 K30 ["> #SelectedItemText"]
       66 DUPTABLE                         R13 K31 [{"Position", "Size"}]
       67 GETIMPORT                        R14 K33 [UDim2.fromOffset]
       69 LOADN                            R15 10
       70 LOADN                            R16 0
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K25 ["Position"]
       74 GETIMPORT                        R14 K20 [UDim2.new]
       76 LOADN                            R15 1
       77 LOADN                            R16 -30
       78 LOADN                            R17 1
       79 LOADN                            R18 -2
       80 CALL                             R14 4 1
       81 SETTABLEKS                       R14 R13 K14 ["Size"]
       83 CALL                             R11 2 1
       84 MOVE                             R12 R1
       85 LOADK                            R13 K34 ["> #SelectArrow"]
       86 DUPTABLE                         R14 K35 [{"AnchorPoint", "Size", "Position"}]
       87 GETIMPORT                        R15 K28 [Vector2.new]
       89 LOADN                            R16 1
       90 LOADK                            R17 K29 [0.5]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K24 ["AnchorPoint"]
       94 GETIMPORT                        R15 K33 [UDim2.fromOffset]
       96 LOADN                            R16 12
       97 LOADN                            R17 12
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K14 ["Size"]
      101 GETIMPORT                        R15 K20 [UDim2.new]
      103 LOADN                            R16 1
      104 LOADN                            R17 -5
      105 LOADK                            R18 K29 [0.5]
      106 LOADN                            R19 0
      107 CALL                             R15 4 1
      108 SETTABLEKS                       R15 R14 K25 ["Position"]
      110 CALL                             R12 2 1
      111 MOVE                             R13 R1
      112 LOADK                            R14 K36 [".Placeholder > #SelectedItemText"]
      113 DUPTABLE                         R15 K39 [{["TextColor"] = "$TextSecondary"}]
      114 CALL                             R13 2 1
      115 MOVE                             R14 R1
      116 LOADK                            R15 K40 [".HasIcon > #SelectedItemText"]
      117 DUPTABLE                         R16 K31 [{"Position", "Size"}]
      118 GETIMPORT                        R17 K33 [UDim2.fromOffset]
      120 LOADN                            R18 36
      121 LOADN                            R19 0
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K25 ["Position"]
      125 GETIMPORT                        R17 K20 [UDim2.new]
      127 LOADN                            R18 1
      128 LOADN                            R19 -46
      129 LOADN                            R20 1
      130 LOADN                            R21 -2
      131 CALL                             R17 4 1
      132 SETTABLEKS                       R17 R16 K14 ["Size"]
      134 CALL                             R14 2 -1
      135 SETLIST                          R9 R10 -1 [1]
      137 CALL                             R6 3 1
      138 MOVE                             R7 R1
      139 LOADK                            R8 K41 [".HasError"]
      140 DUPTABLE                         R9 K42 [{"Size"}]
      141 GETIMPORT                        R10 K33 [UDim2.fromOffset]
      143 LOADN                            R11 240
      144 LOADN                            R12 64
      145 CALL                             R10 2 1
      146 SETTABLEKS                       R10 R9 K14 ["Size"]
      148 CALL                             R7 2 1
      149 MOVE                             R8 R1
      150 LOADK                            R9 K43 ["> ImageButton"]
      151 DUPTABLE                         R10 K46 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["Size"]}]
      152 GETIMPORT                        R11 K48 [UDim2.fromScale]
      154 LOADN                            R12 1
      155 LOADN                            R13 1
      156 CALL                             R11 2 1
      157 SETTABLEKS                       R11 R10 K14 ["Size"]
      159 CALL                             R8 2 1
      160 MOVE                             R9 R1
      161 LOADK                            R10 K49 [".modern"]
      162 NEWTABLE                         R11 0 0
      164 NEWTABLE                         R12 0 2
      166 MOVE                             R13 R1
      167 LOADK                            R14 K50 [">> #SelectedItemText"]
      168 DUPTABLE                         R15 K52 [{"Font"}]
      169 GETIMPORT                        R16 K55 [Enum.Font.BuilderSansBold]
      171 SETTABLEKS                       R16 R15 K51 ["Font"]
      173 CALL                             R13 2 1
      174 MOVE                             R14 R1
      175 LOADK                            R15 K56 [">> .Component-SelectInput-Selection"]
      176 DUPTABLE                         R16 K60 [{["BackgroundColor3"] = "$Gray70", ["BackgroundTransparency"] = 0}]
      177 NEWTABLE                         R17 0 3
      179 MOVE                             R18 R1
      180 LOADK                            R19 K61 ["::UICorner"]
      181 DUPTABLE                         R20 K63 [{"CornerRadius"}]
      182 GETIMPORT                        R21 K65 [UDim.new]
      184 LOADN                            R22 0
      185 LOADN                            R23 8
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K62 ["CornerRadius"]
      189 CALL                             R18 2 1
      190 MOVE                             R19 R1
      191 LOADK                            R20 K66 ["::UIStroke"]
      192 DUPTABLE                         R21 K68 [{["Thickness"] = 0}]
      193 CALL                             R19 2 1
      194 MOVE                             R20 R1
      195 LOADK                            R21 K69 [":hover"]
      196 DUPTABLE                         R22 K71 [{["BackgroundColor3"] = "$SelectInputHoverBackground", ["BackgroundTransparency"] = 0}]
      197 CALL                             R20 2 -1
      198 SETLIST                          R17 R18 -1 [1]
      200 CALL                             R14 3 -1
      201 SETLIST                          R12 R13 -1 [1]
      203 CALL                             R9 3 -1
      204 SETLIST                          R5 R6 -1 [1]
      206 DUPTABLE                         R6 K79 [{["ArrowOffset"] = 22, ["ErrorHeight"] = 32, ["Height"] = 32, ["IconOffset"] = 26}]
      207 CALL                             R2 4 -1
      208 RETURN                           R2 -1
