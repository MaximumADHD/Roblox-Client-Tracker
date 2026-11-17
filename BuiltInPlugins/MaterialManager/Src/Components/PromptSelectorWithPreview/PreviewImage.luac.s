PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onPromptSelectionHover"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onPromptSelectionHoverEnd"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["PromptSelectorWithPreview"]
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
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["createElement"]
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
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K17 ["Event"]
       52 GETTABLEKS                       R10 R10 K18 ["MouseEnter"]
       54 GETTABLEKS                       R11 R0 K19 ["onPromptSelectionHover"]
       56 SETTABLE                         R11 R9 R10
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K17 ["Event"]
       60 GETTABLEKS                       R10 R10 K20 ["MouseLeave"]
       62 GETTABLEKS                       R11 R0 K21 ["onPromptSelectionHoverEnd"]
       64 SETTABLE                         R11 R9 R10
       65 DUPTABLE                         R10 K25 [{"PreviewNoImageSign", "PreviewContentContainer", "Toolbar"}]
       66 NOT                              R11 R5
       67 JUMPIFNOT                        R11 ; [+56]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K8 ["createElement"]
       71 LOADK                            R12 K26 ["Frame"]
       72 DUPTABLE                         R13 K29 [{["ZIndex"] = 2, ["Size"], ["BackgroundColor3"]}]
       73 GETIMPORT                        R14 K13 [UDim2.new]
       75 LOADN                            R15 1
       76 LOADN                            R16 0
       77 LOADN                            R17 1
       78 LOADN                            R18 0
       79 CALL                             R14 4 1
       80 SETTABLEKS                       R14 R13 K15 ["Size"]
       82 GETTABLEKS                       R14 R2 K30 ["ImportImageBackground"]
       84 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
       86 DUPTABLE                         R14 K32 [{"NoImageText"}]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K8 ["createElement"]
       90 GETUPVAL                         R16 1
       91 DUPTABLE                         R17 K39 [{["Size"], ["TextXAlignment"], ["TextSize"], ["Text"], ["TextWrapped"] = True, ["TextColor"]}]
       92 GETIMPORT                        R18 K13 [UDim2.new]
       94 LOADN                            R19 1
       95 LOADN                            R20 0
       96 LOADN                            R21 1
       97 LOADN                            R22 0
       98 CALL                             R18 4 1
       99 SETTABLEKS                       R18 R17 K15 ["Size"]
      101 GETIMPORT                        R18 K42 [Enum.TextXAlignment.Center]
      103 SETTABLEKS                       R18 R17 K33 ["TextXAlignment"]
      105 GETTABLEKS                       R18 R2 K43 ["TextHeight"]
      107 SETTABLEKS                       R18 R17 K34 ["TextSize"]
      109 LOADK                            R20 K44 ["CreateDialog"]
      110 LOADK                            R21 K45 ["NoImageSelected"]
      111 NAMECALL                         R18 R3 K46 ["getText"]
      113 CALL                             R18 3 1
      114 SETTABLEKS                       R18 R17 K35 ["Text"]
      116 GETTABLEKS                       R18 R2 K47 ["ButtonIconColor"]
      118 SETTABLEKS                       R18 R17 K38 ["TextColor"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K31 ["NoImageText"]
      123 CALL                             R11 3 1
      124 SETTABLEKS                       R11 R10 K22 ["PreviewNoImageSign"]
      126 MOVE                             R11 R5
      127 JUMPIFNOT                        R11 ; [+65]
      128 GETUPVAL                         R11 0
      129 GETTABLEKS                       R11 R11 K8 ["createElement"]
      131 LOADK                            R12 K26 ["Frame"]
      132 DUPTABLE                         R13 K48 [{["ZIndex"] = 2, ["Size"]}]
      133 GETIMPORT                        R14 K13 [UDim2.new]
      135 LOADN                            R15 1
      136 LOADN                            R16 0
      137 LOADN                            R17 1
      138 LOADN                            R18 0
      139 CALL                             R14 4 1
      140 SETTABLEKS                       R14 R13 K15 ["Size"]
      142 DUPTABLE                         R14 K50 [{"PreviewContent"}]
      143 GETTABLEKS                       R16 R1 K51 ["IsTempId"]
      145 JUMPIFNOTEQKB                    R16 TRUE ; [+25]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K8 ["createElement"]
      150 GETUPVAL                         R16 2
      151 DUPTABLE                         R17 K55 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ScaleType"]}]
      152 GETIMPORT                        R18 K13 [UDim2.new]
      154 LOADN                            R19 1
      155 LOADN                            R20 0
      156 LOADN                            R21 1
      157 LOADN                            R22 0
      158 CALL                             R18 4 1
      159 SETTABLEKS                       R18 R17 K15 ["Size"]
      161 GETTABLEKS                       R18 R1 K5 ["ImageId"]
      163 SETTABLEKS                       R18 R17 K16 ["Image"]
      165 GETIMPORT                        R18 K57 [Enum.ScaleType.Fit]
      167 SETTABLEKS                       R18 R17 K54 ["ScaleType"]
      169 CALL                             R15 2 1
      170 JUMP                             ; [+19]
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K8 ["createElement"]
      174 GETUPVAL                         R16 3
      175 DUPTABLE                         R17 K58 [{"Size", "Image"}]
      176 GETIMPORT                        R18 K13 [UDim2.new]
      178 LOADN                            R19 1
      179 LOADN                            R20 0
      180 LOADN                            R21 1
      181 LOADN                            R22 0
      182 CALL                             R18 4 1
      183 SETTABLEKS                       R18 R17 K15 ["Size"]
      185 GETTABLEKS                       R18 R1 K5 ["ImageId"]
      187 SETTABLEKS                       R18 R17 K16 ["Image"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K49 ["PreviewContent"]
      192 CALL                             R11 3 1
      193 SETTABLEKS                       R11 R10 K23 ["PreviewContentContainer"]
      195 GETTABLEKS                       R12 R1 K51 ["IsTempId"]
      197 JUMPIFNOTEQKB                    R12 FALSE ; [+103]
      199 GETUPVAL                         R11 0
      200 GETTABLEKS                       R11 R11 K8 ["createElement"]
      202 LOADK                            R12 K26 ["Frame"]
      203 DUPTABLE                         R13 K65 [{["ZIndex"] = 3, ["AnchorPoint"], ["Position"], ["Size"], ["Visible"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      204 GETIMPORT                        R14 K67 [Vector2.new]
      206 LOADN                            R15 0
      207 LOADN                            R16 1
      208 CALL                             R14 2 1
      209 SETTABLEKS                       R14 R13 K60 ["AnchorPoint"]
      211 GETIMPORT                        R14 K13 [UDim2.new]
      213 LOADN                            R15 0
      214 LOADN                            R16 0
      215 LOADN                            R17 1
      216 LOADN                            R18 0
      217 CALL                             R14 4 1
      218 SETTABLEKS                       R14 R13 K61 ["Position"]
      220 GETIMPORT                        R14 K13 [UDim2.new]
      222 LOADN                            R15 1
      223 LOADN                            R16 0
      224 LOADN                            R17 0
      225 GETTABLEKS                       R18 R2 K68 ["ToolbarHeight"]
      227 CALL                             R14 4 1
      228 SETTABLEKS                       R14 R13 K15 ["Size"]
      230 SETTABLEKS                       R6 R13 K62 ["Visible"]
      232 GETTABLEKS                       R14 R2 K69 ["ToolbarTransparency"]
      234 SETTABLEKS                       R14 R13 K52 ["BackgroundTransparency"]
      236 GETTABLEKS                       R14 R2 K70 ["ToolbarBackgroundColor"]
      238 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
      240 DUPTABLE                         R14 K73 [{"ExpandPreview", "ClearButton"}]
      241 GETUPVAL                         R15 0
      242 GETTABLEKS                       R15 R15 K8 ["createElement"]
      244 GETUPVAL                         R16 4
      245 NEWTABLE                         R17 2 0
      247 GETTABLEKS                       R18 R2 K74 ["ExpandIcon"]
      249 SETTABLEKS                       R18 R17 K75 ["Icon"]
      251 GETUPVAL                         R18 0
      252 GETTABLEKS                       R18 R18 K17 ["Event"]
      254 GETTABLEKS                       R18 R18 K76 ["Activated"]
      256 GETTABLEKS                       R19 R1 K77 ["OpenExpandedPreview"]
      258 SETTABLE                         R19 R17 R18
      259 CALL                             R15 2 1
      260 SETTABLEKS                       R15 R14 K71 ["ExpandPreview"]
      262 GETUPVAL                         R15 0
      263 GETTABLEKS                       R15 R15 K8 ["createElement"]
      265 GETUPVAL                         R16 4
      266 NEWTABLE                         R17 4 0
      268 GETIMPORT                        R18 K67 [Vector2.new]
      270 LOADN                            R19 1
      271 LOADN                            R20 0
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R17 K60 ["AnchorPoint"]
      275 GETIMPORT                        R18 K13 [UDim2.new]
      277 LOADN                            R19 1
      278 LOADN                            R20 0
      279 LOADN                            R21 0
      280 LOADN                            R22 0
      281 CALL                             R18 4 1
      282 SETTABLEKS                       R18 R17 K61 ["Position"]
      284 GETTABLEKS                       R18 R2 K78 ["ClearIcon"]
      286 SETTABLEKS                       R18 R17 K75 ["Icon"]
      288 GETUPVAL                         R18 0
      289 GETTABLEKS                       R18 R18 K17 ["Event"]
      291 GETTABLEKS                       R18 R18 K76 ["Activated"]
      293 GETTABLEKS                       R19 R1 K79 ["ClearSelection"]
      295 SETTABLE                         R19 R17 R18
      296 CALL                             R15 2 1
      297 SETTABLEKS                       R15 R14 K72 ["ClearButton"]
      299 CALL                             R11 3 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R11
      302 SETTABLEKS                       R11 R10 K24 ["Toolbar"]
      304 CALL                             R7 3 -1
      305 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["Localization"]
       29 GETTABLEKS                       R5 R3 K10 ["withContext"]
       31 GETTABLEKS                       R6 R2 K11 ["Style"]
       33 GETTABLEKS                       R6 R6 K12 ["Stylizer"]
       35 GETTABLEKS                       R7 R2 K13 ["UI"]
       37 GETTABLEKS                       R8 R7 K14 ["Image"]
       39 GETTABLEKS                       R9 R7 K15 ["TextLabel"]
       41 GETTABLEKS                       R10 R0 K16 ["Src"]
       43 GETTABLEKS                       R10 R10 K17 ["Components"]
       45 GETIMPORT                        R11 K4 [require]
       47 GETTABLEKS                       R12 R10 K18 ["PromptSelectorWithPreview"]
       49 GETTABLEKS                       R12 R12 K19 ["PreviewToolbarButton"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K4 [require]
       54 GETTABLEKS                       R13 R0 K16 ["Src"]
       56 GETTABLEKS                       R13 R13 K17 ["Components"]
       58 GETTABLEKS                       R13 R13 K20 ["LoadingImage"]
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
