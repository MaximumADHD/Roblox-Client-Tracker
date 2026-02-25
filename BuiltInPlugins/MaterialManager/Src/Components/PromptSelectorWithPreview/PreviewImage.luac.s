PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"promptSelectionHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["promptSelectionHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"promptSelectionHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["promptSelectionHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"promptSelectionHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["promptSelectionHovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onPromptSelectionHover"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onPromptSelectionHoverEnd"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["PromptSelectorWithPreview"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R0 K4 ["state"]
       10 GETTABLEKS                       R5 R1 K5 ["ImageId"]
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETTABLEKS                       R6 R1 K5 ["ImageId"]
       15 JUMPIFNOTEQKS                    R6 K6 [""] ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 JUMPIFNOT                        R5 ; [+5]
       20 GETTABLEKS                       R7 R4 K7 ["promptSelectionHovered"]
       22 JUMPIFNOT                        R7 ; [+2]
       23 LOADB                            R6 1
       24 JUMP                             ; [+1]
       25 LOADB                            R6 0
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K8 ["createElement"]
       29 LOADK                            R8 K9 ["ImageLabel"]
       30 NEWTABLE                         R9 8 0
       32 LOADN                            R10 1
       33 SETTABLEKS                       R10 R9 K10 ["ZIndex"]
       35 GETIMPORT                        R10 K13 [UDim2.new]
       37 LOADN                            R11 0
       38 GETTABLEKS                       R12 R2 K14 ["PreviewSize"]
       40 LOADN                            R13 0
       41 GETTABLEKS                       R14 R2 K14 ["PreviewSize"]
       43 CALL                             R10 4 1
       44 SETTABLEKS                       R10 R9 K15 ["Size"]
       46 LOADK                            R10 K6 [""]
       47 SETTABLEKS                       R10 R9 K16 ["Image"]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K17 ["Event"]
       52 GETTABLEKS                       R10 R11 K18 ["MouseEnter"]
       54 GETTABLEKS                       R11 R0 K19 ["onPromptSelectionHover"]
       56 SETTABLE                         R11 R9 R10
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R11 R12 K17 ["Event"]
       60 GETTABLEKS                       R10 R11 K20 ["MouseLeave"]
       62 GETTABLEKS                       R11 R0 K21 ["onPromptSelectionHoverEnd"]
       64 SETTABLE                         R11 R9 R10
       65 DUPTABLE                         R10 K25 [{"PreviewNoImageSign", "PreviewContentContainer", "Toolbar"}]
       66 NOT                              R11 R5
       67 JUMPIFNOT                        R11 ; [+62]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R11 R12 K8 ["createElement"]
       71 LOADK                            R12 K26 ["Frame"]
       72 DUPTABLE                         R13 K28 [{"ZIndex", "Size", "BackgroundColor3"}]
       73 LOADN                            R14 2
       74 SETTABLEKS                       R14 R13 K10 ["ZIndex"]
       76 GETIMPORT                        R14 K13 [UDim2.new]
       78 LOADN                            R15 1
       79 LOADN                            R16 0
       80 LOADN                            R17 1
       81 LOADN                            R18 0
       82 CALL                             R14 4 1
       83 SETTABLEKS                       R14 R13 K15 ["Size"]
       85 GETTABLEKS                       R14 R2 K29 ["ImportImageBackground"]
       87 SETTABLEKS                       R14 R13 K27 ["BackgroundColor3"]
       89 DUPTABLE                         R14 K31 [{"NoImageText"}]
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R15 R16 K8 ["createElement"]
       93 GETUPVAL                         R16 1
       94 DUPTABLE                         R17 K37 [{"Size", "TextXAlignment", "TextSize", "Text", "TextWrapped", "TextColor"}]
       95 GETIMPORT                        R18 K13 [UDim2.new]
       97 LOADN                            R19 1
       98 LOADN                            R20 0
       99 LOADN                            R21 1
      100 LOADN                            R22 0
      101 CALL                             R18 4 1
      102 SETTABLEKS                       R18 R17 K15 ["Size"]
      104 GETIMPORT                        R18 K40 [Enum.TextXAlignment.Center]
      106 SETTABLEKS                       R18 R17 K32 ["TextXAlignment"]
      108 GETTABLEKS                       R18 R2 K41 ["TextHeight"]
      110 SETTABLEKS                       R18 R17 K33 ["TextSize"]
      112 LOADK                            R20 K42 ["CreateDialog"]
      113 LOADK                            R21 K43 ["NoImageSelected"]
      114 NAMECALL                         R18 R3 K44 ["getText"]
      116 CALL                             R18 3 1
      117 SETTABLEKS                       R18 R17 K34 ["Text"]
      119 LOADB                            R18 1
      120 SETTABLEKS                       R18 R17 K35 ["TextWrapped"]
      122 GETTABLEKS                       R18 R2 K45 ["ButtonIconColor"]
      124 SETTABLEKS                       R18 R17 K36 ["TextColor"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K30 ["NoImageText"]
      129 CALL                             R11 3 1
      130 SETTABLEKS                       R11 R10 K22 ["PreviewNoImageSign"]
      132 MOVE                             R11 R5
      133 JUMPIFNOT                        R11 ; [+71]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R11 R12 K8 ["createElement"]
      137 LOADK                            R12 K26 ["Frame"]
      138 DUPTABLE                         R13 K46 [{"ZIndex", "Size"}]
      139 LOADN                            R14 2
      140 SETTABLEKS                       R14 R13 K10 ["ZIndex"]
      142 GETIMPORT                        R14 K13 [UDim2.new]
      144 LOADN                            R15 1
      145 LOADN                            R16 0
      146 LOADN                            R17 1
      147 LOADN                            R18 0
      148 CALL                             R14 4 1
      149 SETTABLEKS                       R14 R13 K15 ["Size"]
      151 DUPTABLE                         R14 K48 [{"PreviewContent"}]
      152 GETTABLEKS                       R16 R1 K49 ["IsTempId"]
      154 JUMPIFNOTEQKB                    R16 TRUE ; [+28]
      156 GETUPVAL                         R16 0
      157 GETTABLEKS                       R15 R16 K8 ["createElement"]
      159 GETUPVAL                         R16 2
      160 DUPTABLE                         R17 K52 [{"BackgroundTransparency", "Size", "Image", "ScaleType"}]
      161 LOADN                            R18 1
      162 SETTABLEKS                       R18 R17 K50 ["BackgroundTransparency"]
      164 GETIMPORT                        R18 K13 [UDim2.new]
      166 LOADN                            R19 1
      167 LOADN                            R20 0
      168 LOADN                            R21 1
      169 LOADN                            R22 0
      170 CALL                             R18 4 1
      171 SETTABLEKS                       R18 R17 K15 ["Size"]
      173 GETTABLEKS                       R18 R1 K5 ["ImageId"]
      175 SETTABLEKS                       R18 R17 K16 ["Image"]
      177 GETIMPORT                        R18 K54 [Enum.ScaleType.Fit]
      179 SETTABLEKS                       R18 R17 K51 ["ScaleType"]
      181 CALL                             R15 2 1
      182 JUMP                             ; [+19]
      183 GETUPVAL                         R16 0
      184 GETTABLEKS                       R15 R16 K8 ["createElement"]
      186 GETUPVAL                         R16 3
      187 DUPTABLE                         R17 K55 [{"Size", "Image"}]
      188 GETIMPORT                        R18 K13 [UDim2.new]
      190 LOADN                            R19 1
      191 LOADN                            R20 0
      192 LOADN                            R21 1
      193 LOADN                            R22 0
      194 CALL                             R18 4 1
      195 SETTABLEKS                       R18 R17 K15 ["Size"]
      197 GETTABLEKS                       R18 R1 K5 ["ImageId"]
      199 SETTABLEKS                       R18 R17 K16 ["Image"]
      201 CALL                             R15 2 1
      202 SETTABLEKS                       R15 R14 K47 ["PreviewContent"]
      204 CALL                             R11 3 1
      205 SETTABLEKS                       R11 R10 K23 ["PreviewContentContainer"]
      207 GETTABLEKS                       R12 R1 K49 ["IsTempId"]
      209 JUMPIFNOTEQKB                    R12 FALSE ; [+109]
      211 GETUPVAL                         R12 0
      212 GETTABLEKS                       R11 R12 K8 ["createElement"]
      214 LOADK                            R12 K26 ["Frame"]
      215 DUPTABLE                         R13 K60 [{"ZIndex", "AnchorPoint", "Position", "Size", "Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      216 LOADN                            R14 3
      217 SETTABLEKS                       R14 R13 K10 ["ZIndex"]
      219 GETIMPORT                        R14 K62 [Vector2.new]
      221 LOADN                            R15 0
      222 LOADN                            R16 1
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K56 ["AnchorPoint"]
      226 GETIMPORT                        R14 K13 [UDim2.new]
      228 LOADN                            R15 0
      229 LOADN                            R16 0
      230 LOADN                            R17 1
      231 LOADN                            R18 0
      232 CALL                             R14 4 1
      233 SETTABLEKS                       R14 R13 K57 ["Position"]
      235 GETIMPORT                        R14 K13 [UDim2.new]
      237 LOADN                            R15 1
      238 LOADN                            R16 0
      239 LOADN                            R17 0
      240 GETTABLEKS                       R18 R2 K63 ["ToolbarHeight"]
      242 CALL                             R14 4 1
      243 SETTABLEKS                       R14 R13 K15 ["Size"]
      245 SETTABLEKS                       R6 R13 K58 ["Visible"]
      247 GETTABLEKS                       R14 R2 K64 ["ToolbarTransparency"]
      249 SETTABLEKS                       R14 R13 K50 ["BackgroundTransparency"]
      251 LOADN                            R14 0
      252 SETTABLEKS                       R14 R13 K59 ["BorderSizePixel"]
      254 GETTABLEKS                       R14 R2 K65 ["ToolbarBackgroundColor"]
      256 SETTABLEKS                       R14 R13 K27 ["BackgroundColor3"]
      258 DUPTABLE                         R14 K68 [{"ExpandPreview", "ClearButton"}]
      259 GETUPVAL                         R16 0
      260 GETTABLEKS                       R15 R16 K8 ["createElement"]
      262 GETUPVAL                         R16 4
      263 NEWTABLE                         R17 2 0
      265 GETTABLEKS                       R18 R2 K69 ["ExpandIcon"]
      267 SETTABLEKS                       R18 R17 K70 ["Icon"]
      269 GETUPVAL                         R20 0
      270 GETTABLEKS                       R19 R20 K17 ["Event"]
      272 GETTABLEKS                       R18 R19 K71 ["Activated"]
      274 GETTABLEKS                       R19 R1 K72 ["OpenExpandedPreview"]
      276 SETTABLE                         R19 R17 R18
      277 CALL                             R15 2 1
      278 SETTABLEKS                       R15 R14 K66 ["ExpandPreview"]
      280 GETUPVAL                         R16 0
      281 GETTABLEKS                       R15 R16 K8 ["createElement"]
      283 GETUPVAL                         R16 4
      284 NEWTABLE                         R17 4 0
      286 GETIMPORT                        R18 K62 [Vector2.new]
      288 LOADN                            R19 1
      289 LOADN                            R20 0
      290 CALL                             R18 2 1
      291 SETTABLEKS                       R18 R17 K56 ["AnchorPoint"]
      293 GETIMPORT                        R18 K13 [UDim2.new]
      295 LOADN                            R19 1
      296 LOADN                            R20 0
      297 LOADN                            R21 0
      298 LOADN                            R22 0
      299 CALL                             R18 4 1
      300 SETTABLEKS                       R18 R17 K57 ["Position"]
      302 GETTABLEKS                       R18 R2 K73 ["ClearIcon"]
      304 SETTABLEKS                       R18 R17 K70 ["Icon"]
      306 GETUPVAL                         R20 0
      307 GETTABLEKS                       R19 R20 K17 ["Event"]
      309 GETTABLEKS                       R18 R19 K71 ["Activated"]
      311 GETTABLEKS                       R19 R1 K74 ["ClearSelection"]
      313 SETTABLE                         R19 R17 R18
      314 CALL                             R15 2 1
      315 SETTABLEKS                       R15 R14 K67 ["ClearButton"]
      317 CALL                             R11 3 1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R11
      320 SETTABLEKS                       R11 R10 K24 ["Toolbar"]
      322 CALL                             R7 3 -1
      323 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["Localization"]
       29 GETTABLEKS                       R5 R3 K10 ["withContext"]
       31 GETTABLEKS                       R7 R2 K11 ["Style"]
       33 GETTABLEKS                       R6 R7 K12 ["Stylizer"]
       35 GETTABLEKS                       R7 R2 K13 ["UI"]
       37 GETTABLEKS                       R8 R7 K14 ["Image"]
       39 GETTABLEKS                       R9 R7 K15 ["TextLabel"]
       41 GETTABLEKS                       R11 R0 K16 ["Src"]
       43 GETTABLEKS                       R10 R11 K17 ["Components"]
       45 GETIMPORT                        R11 K4 [require]
       47 GETTABLEKS                       R13 R10 K18 ["PromptSelectorWithPreview"]
       49 GETTABLEKS                       R12 R13 K19 ["PreviewToolbarButton"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K4 [require]
       54 GETTABLEKS                       R15 R0 K16 ["Src"]
       56 GETTABLEKS                       R14 R15 K17 ["Components"]
       58 GETTABLEKS                       R13 R14 K20 ["LoadingImage"]
       60 CALL                             R12 1 1
       61 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       63 LOADK                            R15 K22 ["PreviewImage"]
       64 NAMECALL                         R13 R13 K23 ["extend"]
       66 CALL                             R13 2 1
       67 DUPCLOSURE                       R14 K24 [PROTO_2]
       68 SETTABLEKS                       R14 R13 K25 ["init"]
       70 DUPCLOSURE                       R14 K26 [PROTO_3]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R14 R13 K27 ["render"]
       78 MOVE                             R14 R5
       79 DUPTABLE                         R15 K28 [{"Stylizer", "Localization"}]
       80 SETTABLEKS                       R6 R15 K12 ["Stylizer"]
       82 SETTABLEKS                       R4 R15 K9 ["Localization"]
       84 CALL                             R14 1 1
       85 MOVE                             R15 R13
       86 CALL                             R14 1 1
       87 MOVE                             R13 R14
       88 RETURN                           R13 1
