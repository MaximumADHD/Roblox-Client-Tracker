PROTO_0:
        0 LOADK                            R3 K0 ["[</>]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 NAMECALL                         R3 R0 K0 ["lower"]
        2 CALL                             R3 1 1
        3 LOADK                            R6 K1 ["[</>]"]
        4 LOADK                            R7 K2 [""]
        5 NAMECALL                         R4 R3 K3 ["gsub"]
        7 CALL                             R4 3 1
        8 MOVE                             R2 R4
        9 NAMECALL                         R4 R1 K0 ["lower"]
       11 CALL                             R4 1 1
       12 LOADK                            R7 K1 ["[</>]"]
       13 LOADK                            R8 K2 [""]
       14 NAMECALL                         R5 R4 K3 ["gsub"]
       16 CALL                             R5 3 1
       17 MOVE                             R3 R5
       18 GETIMPORT                        R4 K6 [string.find]
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 LOADN                            R7 1
       23 LOADB                            R8 1
       24 CALL                             R4 4 1
       25 LOADNIL                          R5
       26 JUMPIFEQKNIL                     R4 ; [+46]
       28 LOADN                            R13 0
       29 SUBK                             R14 R4 K7 [1]
       30 FASTCALL3                        STRING_SUB R0 R13 R14
       32 MOVE                             R12 R0
       33 GETIMPORT                        R11 K9 [string.sub]
       35 CALL                             R11 3 1
       36 MOVE                             R6 R11
       37 LOADK                            R7 K10 ["</b>"]
       38 FASTCALL1                        STRING_LEN R1 ; [+3]
       39 MOVE                             R17 R1
       40 GETIMPORT                        R16 K12 [string.len]
       42 CALL                             R16 1 1
       43 ADD                              R15 R4 R16
       44 SUBK                             R14 R15 K7 [1]
       45 FASTCALL3                        STRING_SUB R0 R4 R14
       47 MOVE                             R12 R0
       48 MOVE                             R13 R4
       49 GETIMPORT                        R11 K9 [string.sub]
       51 CALL                             R11 3 1
       52 MOVE                             R8 R11
       53 LOADK                            R9 K13 ["<b>"]
       54 FASTCALL1                        STRING_LEN R1 ; [+3]
       55 MOVE                             R14 R1
       56 GETIMPORT                        R13 K12 [string.len]
       58 CALL                             R13 1 1
       59 ADD                              R12 R4 R13
       60 FASTCALL1                        STRING_LEN R0 ; [+3]
       61 MOVE                             R14 R0
       62 GETIMPORT                        R13 K12 [string.len]
       64 CALL                             R13 1 1
       65 FASTCALL3                        STRING_SUB R0 R12 R13
       67 MOVE                             R11 R0
       68 GETIMPORT                        R10 K9 [string.sub]
       70 CALL                             R10 3 1
       71 CONCAT                           R5 R6 R10
       72 JUMP                             ; [+1]
       73 MOVE                             R5 R0
       74 LOADK                            R7 K13 ["<b>"]
       75 MOVE                             R8 R5
       76 LOADK                            R9 K10 ["</b>"]
       77 CONCAT                           R6 R7 R9
       78 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["TextSize"]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R1 K3 ["FocusedText"]
        9 JUMPIFEQKNIL                     R5 ; [+9]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R6 R1 K4 ["Text"]
       14 GETTABLEKS                       R7 R1 K3 ["FocusedText"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R4 R1 K4 ["Text"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K5 ["createElement"]
       24 GETUPVAL                         R6 2
       25 DUPTABLE                         R7 K15 [{"AutomaticSize", "OnClick", "Position", "Size", "LayoutOrder", "Style", "DisableHover", "OnMouseEnter", "OnMouseLeave"}]
       26 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       30 GETTABLEKS                       R8 R1 K7 ["OnClick"]
       32 SETTABLEKS                       R8 R7 K7 ["OnClick"]
       34 GETTABLEKS                       R8 R1 K8 ["Position"]
       36 SETTABLEKS                       R8 R7 K8 ["Position"]
       38 GETTABLEKS                       R8 R1 K9 ["Size"]
       40 SETTABLEKS                       R8 R7 K9 ["Size"]
       42 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       46 GETTABLEKS                       R8 R1 K19 ["DropdownMenuItemButtonStyle"]
       48 SETTABLEKS                       R8 R7 K11 ["Style"]
       50 GETTABLEKS                       R8 R1 K12 ["DisableHover"]
       52 SETTABLEKS                       R8 R7 K12 ["DisableHover"]
       54 GETTABLEKS                       R8 R1 K13 ["OnMouseEnter"]
       56 SETTABLEKS                       R8 R7 K13 ["OnMouseEnter"]
       58 GETTABLEKS                       R8 R1 K14 ["OnMouseLeave"]
       60 SETTABLEKS                       R8 R7 K14 ["OnMouseLeave"]
       62 DUPTABLE                         R8 K23 [{"Layout", "ItemLabel", "Separator"}]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R9 R10 K5 ["createElement"]
       66 LOADK                            R10 K24 ["UIListLayout"]
       67 DUPTABLE                         R11 K27 [{"FillDirection", "SortOrder"}]
       68 GETIMPORT                        R12 K29 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R12 R11 K25 ["FillDirection"]
       72 GETIMPORT                        R12 K30 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R12 R11 K26 ["SortOrder"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K20 ["Layout"]
       79 GETTABLEKS                       R11 R0 K0 ["props"]
       81 GETTABLEKS                       R10 R11 K31 ["ItemButtonContentOverride"]
       83 JUMPIFNOT                        R10 ; [+93]
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R9 R10 K5 ["createElement"]
       87 LOADK                            R10 K32 ["Frame"]
       88 DUPTABLE                         R11 K34 [{"BackgroundTransparency", "Size"}]
       89 LOADN                            R12 1
       90 SETTABLEKS                       R12 R11 K33 ["BackgroundTransparency"]
       92 GETIMPORT                        R12 K37 [UDim2.fromScale]
       94 LOADN                            R13 1
       95 LOADN                            R14 1
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K9 ["Size"]
       99 DUPTABLE                         R12 K39 [{"ItemLabel", "ButtonComponent"}]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R13 R14 K5 ["createElement"]
      103 LOADK                            R14 K40 ["TextLabel"]
      104 DUPTABLE                         R15 K48 [{"BackgroundTransparency", "ClipsDescendants", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextColor3", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      105 LOADN                            R16 1
      106 SETTABLEKS                       R16 R15 K33 ["BackgroundTransparency"]
      108 LOADB                            R16 1
      109 SETTABLEKS                       R16 R15 K41 ["ClipsDescendants"]
      111 GETTABLEKS                       R16 R2 K42 ["Font"]
      113 SETTABLEKS                       R16 R15 K42 ["Font"]
      115 LOADN                            R16 1
      116 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      118 LOADB                            R16 1
      119 SETTABLEKS                       R16 R15 K43 ["RichText"]
      121 GETIMPORT                        R16 K50 [UDim2.new]
      123 LOADN                            R17 1
      124 LOADN                            R18 216
      125 LOADN                            R19 1
      126 LOADN                            R20 0
      127 CALL                             R16 4 1
      128 SETTABLEKS                       R16 R15 K9 ["Size"]
      130 SETTABLEKS                       R4 R15 K4 ["Text"]
      132 GETTABLEKS                       R16 R2 K51 ["TextColor"]
      134 SETTABLEKS                       R16 R15 K44 ["TextColor3"]
      136 SETTABLEKS                       R3 R15 K2 ["TextSize"]
      138 GETIMPORT                        R16 K53 [Enum.TextTruncate.AtEnd]
      140 SETTABLEKS                       R16 R15 K45 ["TextTruncate"]
      142 GETIMPORT                        R16 K55 [Enum.TextXAlignment.Left]
      144 SETTABLEKS                       R16 R15 K46 ["TextXAlignment"]
      146 GETIMPORT                        R16 K57 [Enum.TextYAlignment.Center]
      148 SETTABLEKS                       R16 R15 K47 ["TextYAlignment"]
      150 DUPTABLE                         R16 K59 [{"Padding"}]
      151 GETUPVAL                         R18 1
      152 GETTABLEKS                       R17 R18 K5 ["createElement"]
      154 LOADK                            R18 K60 ["UIPadding"]
      155 DUPTABLE                         R19 K62 [{"PaddingLeft"}]
      156 GETIMPORT                        R20 K64 [UDim.new]
      158 LOADN                            R21 0
      159 LOADN                            R22 10
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K61 ["PaddingLeft"]
      163 CALL                             R17 2 1
      164 SETTABLEKS                       R17 R16 K58 ["Padding"]
      166 CALL                             R13 3 1
      167 SETTABLEKS                       R13 R12 K21 ["ItemLabel"]
      169 GETTABLEKS                       R14 R0 K0 ["props"]
      171 GETTABLEKS                       R13 R14 K31 ["ItemButtonContentOverride"]
      173 SETTABLEKS                       R13 R12 K38 ["ButtonComponent"]
      175 CALL                             R9 3 1
      176 JUMP                             ; [+62]
      177 GETUPVAL                         R10 1
      178 GETTABLEKS                       R9 R10 K5 ["createElement"]
      180 LOADK                            R10 K40 ["TextLabel"]
      181 DUPTABLE                         R11 K48 [{"BackgroundTransparency", "ClipsDescendants", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextColor3", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      182 LOADN                            R12 1
      183 SETTABLEKS                       R12 R11 K33 ["BackgroundTransparency"]
      185 LOADB                            R12 1
      186 SETTABLEKS                       R12 R11 K41 ["ClipsDescendants"]
      188 GETTABLEKS                       R12 R2 K42 ["Font"]
      190 SETTABLEKS                       R12 R11 K42 ["Font"]
      192 LOADN                            R12 1
      193 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      195 LOADB                            R12 1
      196 SETTABLEKS                       R12 R11 K43 ["RichText"]
      198 GETTABLEKS                       R12 R1 K9 ["Size"]
      200 SETTABLEKS                       R12 R11 K9 ["Size"]
      202 SETTABLEKS                       R4 R11 K4 ["Text"]
      204 GETTABLEKS                       R12 R2 K51 ["TextColor"]
      206 SETTABLEKS                       R12 R11 K44 ["TextColor3"]
      208 SETTABLEKS                       R3 R11 K2 ["TextSize"]
      210 GETIMPORT                        R12 K53 [Enum.TextTruncate.AtEnd]
      212 SETTABLEKS                       R12 R11 K45 ["TextTruncate"]
      214 GETIMPORT                        R12 K55 [Enum.TextXAlignment.Left]
      216 SETTABLEKS                       R12 R11 K46 ["TextXAlignment"]
      218 GETIMPORT                        R12 K57 [Enum.TextYAlignment.Center]
      220 SETTABLEKS                       R12 R11 K47 ["TextYAlignment"]
      222 DUPTABLE                         R12 K59 [{"Padding"}]
      223 GETUPVAL                         R14 1
      224 GETTABLEKS                       R13 R14 K5 ["createElement"]
      226 LOADK                            R14 K60 ["UIPadding"]
      227 DUPTABLE                         R15 K62 [{"PaddingLeft"}]
      228 GETIMPORT                        R16 K64 [UDim.new]
      230 LOADN                            R17 0
      231 LOADN                            R18 10
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K61 ["PaddingLeft"]
      235 CALL                             R13 2 1
      236 SETTABLEKS                       R13 R12 K58 ["Padding"]
      238 CALL                             R9 3 1
      239 SETTABLEKS                       R9 R8 K21 ["ItemLabel"]
      241 GETTABLEKS                       R10 R1 K65 ["HideSeparator"]
      243 NOT                              R9 R10
      244 JUMPIFNOT                        R9 ; [+13]
      245 GETUPVAL                         R10 1
      246 GETTABLEKS                       R9 R10 K5 ["createElement"]
      248 GETUPVAL                         R10 3
      249 DUPTABLE                         R11 K67 [{"DominantAxis", "LayoutOrder"}]
      250 GETIMPORT                        R12 K69 [Enum.DominantAxis.Width]
      252 SETTABLEKS                       R12 R11 K66 ["DominantAxis"]
      254 LOADN                            R12 2
      255 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      257 CALL                             R9 2 1
      258 SETTABLEKS                       R9 R8 K22 ["Separator"]
      260 CALL                             R5 3 -1
      261 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       23 GETTABLEKS                       R6 R3 K9 ["UI"]
       25 GETTABLEKS                       R5 R6 K10 ["Button"]
       27 GETTABLEKS                       R7 R3 K9 ["UI"]
       29 GETTABLEKS                       R6 R7 K11 ["Separator"]
       31 GETTABLEKS                       R7 R2 K12 ["PureComponent"]
       33 LOADK                            R9 K13 ["DropdownMenuItem"]
       34 NAMECALL                         R7 R7 K14 ["extend"]
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R8 R4 K15 ["withContext"]
       39 DUPTABLE                         R9 K17 [{"Size"}]
       40 GETIMPORT                        R10 K20 [UDim2.new]
       42 LOADN                            R11 0
       43 LOADN                            R12 200
       44 LOADN                            R13 0
       45 LOADN                            R14 25
       46 CALL                             R10 4 1
       47 SETTABLEKS                       R10 R9 K16 ["Size"]
       49 SETTABLEKS                       R9 R7 K21 ["defaultProps"]
       51 DUPCLOSURE                       R9 K22 [PROTO_0]
       52 DUPCLOSURE                       R10 K23 [PROTO_1]
       53 DUPCLOSURE                       R11 K24 [PROTO_2]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R11 R7 K25 ["render"]
       60 MOVE                             R11 R8
       61 DUPTABLE                         R12 K27 [{"Stylizer"}]
       62 GETTABLEKS                       R13 R4 K26 ["Stylizer"]
       64 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       66 CALL                             R11 1 1
       67 MOVE                             R12 R7
       68 CALL                             R11 1 1
       69 MOVE                             R7 R11
       70 RETURN                           R7 1
