PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["PromptSelectorWithPreview"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETTABLEKS                       R5 R0 K3 ["ImageId"]
       16 JUMPIFNOT                        R5 ; [+6]
       17 GETTABLEKS                       R6 R0 K3 ["ImageId"]
       19 JUMPIFNOTEQKS                    R6 K4 [""] ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 AND                              R6 R5 R3
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K5 ["createElement"]
       27 LOADK                            R8 K6 ["ImageLabel"]
       28 NEWTABLE                         R9 8 0
       30 LOADN                            R10 1
       31 SETTABLEKS                       R10 R9 K7 ["ZIndex"]
       33 GETIMPORT                        R10 K10 [UDim2.new]
       35 LOADN                            R11 0
       36 GETTABLEKS                       R12 R2 K11 ["PreviewSize"]
       38 LOADN                            R13 0
       39 GETTABLEKS                       R14 R2 K11 ["PreviewSize"]
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K12 ["Size"]
       44 LOADK                            R10 K4 [""]
       45 SETTABLEKS                       R10 R9 K13 ["Image"]
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K14 ["Event"]
       50 GETTABLEKS                       R10 R10 K15 ["MouseEnter"]
       52 NEWCLOSURE                       R11 P0
       53 CAPTURE                          VAL R4
       54 SETTABLE                         R11 R9 R10
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K14 ["Event"]
       58 GETTABLEKS                       R10 R10 K16 ["MouseLeave"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R4
       62 SETTABLE                         R11 R9 R10
       63 DUPTABLE                         R10 K20 [{"PreviewNoImageSign", "PreviewContentContainer", "Toolbar"}]
       64 NOT                              R11 R5
       65 JUMPIFNOT                        R11 ; [+62]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K5 ["createElement"]
       69 LOADK                            R12 K21 ["Frame"]
       70 DUPTABLE                         R13 K23 [{"ZIndex", "Size", "BackgroundColor3"}]
       71 LOADN                            R14 2
       72 SETTABLEKS                       R14 R13 K7 ["ZIndex"]
       74 GETIMPORT                        R14 K10 [UDim2.new]
       76 LOADN                            R15 1
       77 LOADN                            R16 0
       78 LOADN                            R17 1
       79 LOADN                            R18 0
       80 CALL                             R14 4 1
       81 SETTABLEKS                       R14 R13 K12 ["Size"]
       83 GETTABLEKS                       R14 R2 K24 ["ImportImageBackground"]
       85 SETTABLEKS                       R14 R13 K22 ["BackgroundColor3"]
       87 DUPTABLE                         R14 K26 [{"NoImageText"}]
       88 GETUPVAL                         R15 2
       89 GETTABLEKS                       R15 R15 K5 ["createElement"]
       91 GETUPVAL                         R16 3
       92 DUPTABLE                         R17 K32 [{"Size", "TextXAlignment", "TextSize", "Text", "TextWrapped", "TextColor"}]
       93 GETIMPORT                        R18 K10 [UDim2.new]
       95 LOADN                            R19 1
       96 LOADN                            R20 0
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K12 ["Size"]
      102 GETIMPORT                        R18 K35 [Enum.TextXAlignment.Center]
      104 SETTABLEKS                       R18 R17 K27 ["TextXAlignment"]
      106 GETTABLEKS                       R18 R2 K36 ["TextHeight"]
      108 SETTABLEKS                       R18 R17 K28 ["TextSize"]
      110 LOADK                            R20 K37 ["ImportImage"]
      111 LOADK                            R21 K38 ["NoImageSelected"]
      112 NAMECALL                         R18 R1 K39 ["getText"]
      114 CALL                             R18 3 1
      115 SETTABLEKS                       R18 R17 K29 ["Text"]
      117 LOADB                            R18 1
      118 SETTABLEKS                       R18 R17 K30 ["TextWrapped"]
      120 GETTABLEKS                       R18 R2 K40 ["ButtonIconColor"]
      122 SETTABLEKS                       R18 R17 K31 ["TextColor"]
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K25 ["NoImageText"]
      127 CALL                             R11 3 1
      128 SETTABLEKS                       R11 R10 K17 ["PreviewNoImageSign"]
      130 MOVE                             R11 R5
      131 JUMPIFNOT                        R11 ; [+40]
      132 GETUPVAL                         R11 2
      133 GETTABLEKS                       R11 R11 K5 ["createElement"]
      135 LOADK                            R12 K21 ["Frame"]
      136 DUPTABLE                         R13 K41 [{"ZIndex", "Size"}]
      137 LOADN                            R14 2
      138 SETTABLEKS                       R14 R13 K7 ["ZIndex"]
      140 GETIMPORT                        R14 K10 [UDim2.new]
      142 LOADN                            R15 1
      143 LOADN                            R16 0
      144 LOADN                            R17 1
      145 LOADN                            R18 0
      146 CALL                             R14 4 1
      147 SETTABLEKS                       R14 R13 K12 ["Size"]
      149 DUPTABLE                         R14 K43 [{"PreviewContent"}]
      150 GETUPVAL                         R15 2
      151 GETTABLEKS                       R15 R15 K5 ["createElement"]
      153 GETUPVAL                         R16 4
      154 DUPTABLE                         R17 K44 [{"Size", "Image"}]
      155 GETIMPORT                        R18 K10 [UDim2.new]
      157 LOADN                            R19 1
      158 LOADN                            R20 0
      159 LOADN                            R21 1
      160 LOADN                            R22 0
      161 CALL                             R18 4 1
      162 SETTABLEKS                       R18 R17 K12 ["Size"]
      164 GETTABLEKS                       R18 R0 K3 ["ImageId"]
      166 SETTABLEKS                       R18 R17 K13 ["Image"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K42 ["PreviewContent"]
      171 CALL                             R11 3 1
      172 SETTABLEKS                       R11 R10 K18 ["PreviewContentContainer"]
      174 GETUPVAL                         R11 2
      175 GETTABLEKS                       R11 R11 K5 ["createElement"]
      177 LOADK                            R12 K21 ["Frame"]
      178 DUPTABLE                         R13 K50 [{"ZIndex", "AnchorPoint", "Position", "Size", "Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      179 LOADN                            R14 3
      180 SETTABLEKS                       R14 R13 K7 ["ZIndex"]
      182 GETIMPORT                        R14 K52 [Vector2.new]
      184 LOADN                            R15 0
      185 LOADN                            R16 1
      186 CALL                             R14 2 1
      187 SETTABLEKS                       R14 R13 K45 ["AnchorPoint"]
      189 GETIMPORT                        R14 K10 [UDim2.new]
      191 LOADN                            R15 0
      192 LOADN                            R16 0
      193 LOADN                            R17 1
      194 LOADN                            R18 0
      195 CALL                             R14 4 1
      196 SETTABLEKS                       R14 R13 K46 ["Position"]
      198 GETIMPORT                        R14 K10 [UDim2.new]
      200 LOADN                            R15 1
      201 LOADN                            R16 0
      202 LOADN                            R17 0
      203 GETTABLEKS                       R18 R2 K53 ["ToolbarHeight"]
      205 CALL                             R14 4 1
      206 SETTABLEKS                       R14 R13 K12 ["Size"]
      208 SETTABLEKS                       R6 R13 K47 ["Visible"]
      210 GETTABLEKS                       R14 R2 K54 ["ToolbarTransparency"]
      212 SETTABLEKS                       R14 R13 K48 ["BackgroundTransparency"]
      214 LOADN                            R14 0
      215 SETTABLEKS                       R14 R13 K49 ["BorderSizePixel"]
      217 GETTABLEKS                       R14 R2 K55 ["ToolbarBackgroundColor"]
      219 SETTABLEKS                       R14 R13 K22 ["BackgroundColor3"]
      221 DUPTABLE                         R14 K57 [{"ClearButton"}]
      222 GETUPVAL                         R15 2
      223 GETTABLEKS                       R15 R15 K5 ["createElement"]
      225 GETUPVAL                         R16 5
      226 NEWTABLE                         R17 2 0
      228 GETTABLEKS                       R18 R2 K58 ["ClearIcon"]
      230 SETTABLEKS                       R18 R17 K59 ["Icon"]
      232 GETUPVAL                         R18 2
      233 GETTABLEKS                       R18 R18 K14 ["Event"]
      235 GETTABLEKS                       R18 R18 K60 ["Activated"]
      237 GETTABLEKS                       R19 R0 K61 ["ClearSelection"]
      239 SETTABLE                         R19 R17 R18
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K56 ["ClearButton"]
      243 CALL                             R11 3 1
      244 SETTABLEKS                       R11 R10 K19 ["Toolbar"]
      246 CALL                             R7 3 -1
      247 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["Stylizer"]
       29 GETTABLEKS                       R6 R2 K13 ["UI"]
       31 GETTABLEKS                       R7 R6 K14 ["Image"]
       33 GETTABLEKS                       R8 R6 K15 ["TextLabel"]
       35 GETTABLEKS                       R9 R0 K16 ["Src"]
       37 GETTABLEKS                       R9 R9 K17 ["Components"]
       39 GETIMPORT                        R10 K5 [require]
       41 GETTABLEKS                       R11 R9 K18 ["PreviewToolbarButton"]
       43 CALL                             R10 1 1
       44 DUPCLOSURE                       R11 K19 [PROTO_2]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R10
       51 RETURN                           R11 1
