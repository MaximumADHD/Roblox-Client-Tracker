PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnButtonClicked"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["PROMPT_BUTTON_SIZE"]
        5 GETTABLEKS                       R5 R6 K2 ["Y"]
        7 GETTABLEKS                       R6 R4 K3 ["ButtonWidth"]
        9 JUMPIF                           R6 ; [+5]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K1 ["PROMPT_BUTTON_SIZE"]
       13 GETTABLEKS                       R6 R7 K4 ["X"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K5 ["createElement"]
       18 GETUPVAL                         R8 2
       19 DUPTABLE                         R9 K11 [{"Size", "LayoutOrder", "Style", "Text", "OnClick"}]
       20 GETIMPORT                        R10 K14 [UDim2.new]
       22 LOADN                            R11 0
       23 MOVE                             R12 R6
       24 LOADN                            R13 0
       25 MOVE                             R14 R5
       26 CALL                             R10 4 1
       27 SETTABLEKS                       R10 R9 K6 ["Size"]
       29 SETTABLEKS                       R1 R9 K7 ["LayoutOrder"]
       31 GETTABLEKS                       R10 R2 K8 ["Style"]
       33 SETTABLEKS                       R10 R9 K8 ["Style"]
       35 GETTABLEKS                       R10 R2 K9 ["Text"]
       37 SETTABLEKS                       R10 R9 K9 ["Text"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R10 R9 K10 ["OnClick"]
       44 CALL                             R7 2 -1
       45 RETURN                           R7 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["toastTheme"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["PROMPT_BUTTON_PADDING"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K4 ["PROMPT_BUTTON_SIZE"]
       12 GETTABLEKS                       R5 R6 K5 ["Y"]
       14 GETTABLEKS                       R6 R1 K6 ["Text"]
       16 GETTABLEKS                       R7 R1 K7 ["Buttons"]
       18 GETUPVAL                         R8 1
       19 MOVE                             R10 R6
       20 GETTABLEKS                       R11 R3 K8 ["textSize"]
       22 GETTABLEKS                       R12 R2 K9 ["font"]
       24 GETUPVAL                         R13 2
       25 NAMECALL                         R8 R8 K10 ["GetTextSize"]
       27 CALL                             R8 5 1
       28 GETTABLEKS                       R11 R8 K5 ["Y"]
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K12 ["PROMPT_VERTICAL_PADDING"]
       33 MULK                             R12 R13 K11 [3]
       34 ADD                              R10 R11 R12
       35 ADD                              R9 R10 R5
       36 DUPTABLE                         R10 K14 [{"Layout"}]
       37 GETUPVAL                         R12 3
       38 GETTABLEKS                       R11 R12 K15 ["createElement"]
       40 LOADK                            R12 K16 ["UIListLayout"]
       41 DUPTABLE                         R13 K21 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       42 GETIMPORT                        R14 K24 [Enum.SortOrder.LayoutOrder]
       44 SETTABLEKS                       R14 R13 K17 ["SortOrder"]
       46 GETIMPORT                        R14 K26 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R14 R13 K18 ["FillDirection"]
       50 GETIMPORT                        R14 K28 [Enum.HorizontalAlignment.Center]
       52 SETTABLEKS                       R14 R13 K19 ["HorizontalAlignment"]
       54 GETIMPORT                        R14 K31 [UDim.new]
       56 LOADN                            R15 0
       57 MOVE                             R16 R4
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K20 ["Padding"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K13 ["Layout"]
       64 GETIMPORT                        R11 K33 [ipairs]
       66 MOVE                             R12 R7
       67 CALL                             R11 1 3
       68 FORGPREP_INEXT                   R11
       69 MOVE                             R17 R10
       70 MOVE                             R20 R14
       71 MOVE                             R21 R15
       72 GETTABLEKS                       R22 R3 K8 ["textSize"]
       74 NAMECALL                         R18 R0 K34 ["renderButton"]
       76 CALL                             R18 4 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R16 K37 [table.insert]
       80 CALL                             R16 -1 0
       81 FORGLOOP                         R11 2 [inext] ; [-13]
       83 GETUPVAL                         R12 3
       84 GETTABLEKS                       R11 R12 K15 ["createElement"]
       86 GETUPVAL                         R12 4
       87 DUPTABLE                         R13 K40 [{"AnchorPoint", "Size"}]
       88 GETIMPORT                        R14 K42 [Vector2.new]
       90 LOADN                            R15 1
       91 LOADN                            R16 1
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K38 ["AnchorPoint"]
       95 GETIMPORT                        R14 K44 [UDim2.new]
       97 LOADN                            R15 0
       98 LOADN                            R16 124
       99 LOADN                            R17 0
      100 MOVE                             R18 R9
      101 CALL                             R14 4 1
      102 SETTABLEKS                       R14 R13 K39 ["Size"]
      104 DUPTABLE                         R14 K45 [{"Padding", "Text", "Buttons"}]
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R15 R16 K15 ["createElement"]
      108 LOADK                            R16 K46 ["UIPadding"]
      109 DUPTABLE                         R17 K51 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      110 GETIMPORT                        R18 K31 [UDim.new]
      112 LOADN                            R19 0
      113 GETUPVAL                         R21 0
      114 GETTABLEKS                       R20 R21 K12 ["PROMPT_VERTICAL_PADDING"]
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K47 ["PaddingTop"]
      119 GETIMPORT                        R18 K31 [UDim.new]
      121 LOADN                            R19 0
      122 GETUPVAL                         R21 0
      123 GETTABLEKS                       R20 R21 K12 ["PROMPT_VERTICAL_PADDING"]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K48 ["PaddingBottom"]
      128 GETIMPORT                        R18 K31 [UDim.new]
      130 LOADN                            R19 0
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R20 R21 K52 ["PROMPT_HORIZONTAL_PADDING"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K49 ["PaddingLeft"]
      137 GETIMPORT                        R18 K31 [UDim.new]
      139 LOADN                            R19 0
      140 GETUPVAL                         R21 0
      141 GETTABLEKS                       R20 R21 K52 ["PROMPT_HORIZONTAL_PADDING"]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K50 ["PaddingRight"]
      146 CALL                             R15 2 1
      147 SETTABLEKS                       R15 R14 K20 ["Padding"]
      149 GETUPVAL                         R16 3
      150 GETTABLEKS                       R15 R16 K15 ["createElement"]
      152 LOADK                            R16 K53 ["TextLabel"]
      153 DUPTABLE                         R17 K61 [{"Size", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font"}]
      154 GETIMPORT                        R18 K44 [UDim2.new]
      156 LOADN                            R19 1
      157 LOADN                            R20 0
      158 LOADN                            R21 1
      159 LOADN                            R22 0
      160 CALL                             R18 4 1
      161 SETTABLEKS                       R18 R17 K39 ["Size"]
      163 LOADN                            R18 1
      164 SETTABLEKS                       R18 R17 K54 ["BackgroundTransparency"]
      166 SETTABLEKS                       R6 R17 K6 ["Text"]
      168 LOADB                            R18 1
      169 SETTABLEKS                       R18 R17 K55 ["TextWrapped"]
      171 GETIMPORT                        R18 K63 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R18 R17 K56 ["TextXAlignment"]
      175 GETIMPORT                        R18 K65 [Enum.TextYAlignment.Top]
      177 SETTABLEKS                       R18 R17 K57 ["TextYAlignment"]
      179 GETTABLEKS                       R18 R3 K8 ["textSize"]
      181 SETTABLEKS                       R18 R17 K58 ["TextSize"]
      183 GETTABLEKS                       R18 R3 K66 ["textColor"]
      185 SETTABLEKS                       R18 R17 K59 ["TextColor3"]
      187 GETTABLEKS                       R18 R2 K9 ["font"]
      189 SETTABLEKS                       R18 R17 K60 ["Font"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K6 ["Text"]
      194 GETUPVAL                         R16 3
      195 GETTABLEKS                       R15 R16 K15 ["createElement"]
      197 LOADK                            R16 K67 ["Frame"]
      198 DUPTABLE                         R17 K69 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      199 GETIMPORT                        R18 K44 [UDim2.new]
      201 LOADN                            R19 1
      202 LOADN                            R20 0
      203 LOADN                            R21 0
      204 MOVE                             R22 R5
      205 CALL                             R18 4 1
      206 SETTABLEKS                       R18 R17 K39 ["Size"]
      208 GETIMPORT                        R18 K42 [Vector2.new]
      210 LOADK                            R19 K70 [0.5]
      211 LOADN                            R20 1
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K38 ["AnchorPoint"]
      215 GETIMPORT                        R18 K44 [UDim2.new]
      217 LOADK                            R19 K70 [0.5]
      218 LOADN                            R20 0
      219 LOADN                            R21 1
      220 LOADN                            R22 0
      221 CALL                             R18 4 1
      222 SETTABLEKS                       R18 R17 K68 ["Position"]
      224 LOADN                            R18 1
      225 SETTABLEKS                       R18 R17 K54 ["BackgroundTransparency"]
      227 MOVE                             R18 R10
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K7 ["Buttons"]
      231 CALL                             R11 3 -1
      232 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 84
        4 LOADN                            R2 16
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [game]
        8 LOADK                            R3 K5 ["TextService"]
        9 NAMECALL                         R1 R1 K6 ["GetService"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K8 [script]
       14 LOADK                            R4 K9 ["AnimationClipEditor"]
       15 NAMECALL                         R2 R2 K10 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K12 [require]
       20 GETTABLEKS                       R5 R2 K13 ["Packages"]
       22 GETTABLEKS                       R4 R5 K14 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K12 [require]
       27 GETTABLEKS                       R7 R2 K15 ["Src"]
       29 GETTABLEKS                       R6 R7 K16 ["Util"]
       31 GETTABLEKS                       R5 R6 K17 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K12 [require]
       36 GETTABLEKS                       R7 R2 K13 ["Packages"]
       38 GETTABLEKS                       R6 R7 K18 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R5 K19 ["UI"]
       43 GETTABLEKS                       R6 R7 K20 ["Button"]
       45 GETTABLEKS                       R7 R5 K21 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K22 ["withContext"]
       49 GETIMPORT                        R9 K12 [require]
       51 GETTABLEKS                       R13 R2 K15 ["Src"]
       53 GETTABLEKS                       R12 R13 K23 ["Components"]
       55 GETTABLEKS                       R11 R12 K24 ["Toast"]
       57 GETTABLEKS                       R10 R11 K25 ["BaseToast"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R3 K26 ["PureComponent"]
       62 LOADK                            R12 K27 ["ActionToast"]
       63 NAMECALL                         R10 R10 K28 ["extend"]
       65 CALL                             R10 2 1
       66 DUPCLOSURE                       R11 K29 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 SETTABLEKS                       R11 R10 K30 ["renderButton"]
       72 DUPCLOSURE                       R11 K31 [PROTO_2]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R11 R10 K32 ["render"]
       80 MOVE                             R11 R8
       81 DUPTABLE                         R12 K34 [{"Stylizer"}]
       82 GETTABLEKS                       R13 R7 K33 ["Stylizer"]
       84 SETTABLEKS                       R13 R12 K33 ["Stylizer"]
       86 CALL                             R11 1 1
       87 MOVE                             R12 R10
       88 CALL                             R11 1 1
       89 MOVE                             R10 R11
       90 RETURN                           R10 1
