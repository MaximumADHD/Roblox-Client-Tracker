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
       65 JUMPIFNOT                        R11 ; [+56]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K5 ["createElement"]
       69 LOADK                            R12 K21 ["Frame"]
       70 DUPTABLE                         R13 K24 [{["ZIndex"] = 2, ["Size"], ["BackgroundColor3"]}]
       71 GETIMPORT                        R14 K10 [UDim2.new]
       73 LOADN                            R15 1
       74 LOADN                            R16 0
       75 LOADN                            R17 1
       76 LOADN                            R18 0
       77 CALL                             R14 4 1
       78 SETTABLEKS                       R14 R13 K12 ["Size"]
       80 GETTABLEKS                       R14 R2 K25 ["ImportImageBackground"]
       82 SETTABLEKS                       R14 R13 K23 ["BackgroundColor3"]
       84 DUPTABLE                         R14 K27 [{"NoImageText"}]
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R15 R15 K5 ["createElement"]
       88 GETUPVAL                         R16 3
       89 DUPTABLE                         R17 K34 [{["Size"], ["TextXAlignment"], ["TextSize"], ["Text"], ["TextWrapped"] = True, ["TextColor"]}]
       90 GETIMPORT                        R18 K10 [UDim2.new]
       92 LOADN                            R19 1
       93 LOADN                            R20 0
       94 LOADN                            R21 1
       95 LOADN                            R22 0
       96 CALL                             R18 4 1
       97 SETTABLEKS                       R18 R17 K12 ["Size"]
       99 GETIMPORT                        R18 K37 [Enum.TextXAlignment.Center]
      101 SETTABLEKS                       R18 R17 K28 ["TextXAlignment"]
      103 GETTABLEKS                       R18 R2 K38 ["TextHeight"]
      105 SETTABLEKS                       R18 R17 K29 ["TextSize"]
      107 LOADK                            R20 K39 ["ImportImage"]
      108 LOADK                            R21 K40 ["NoImageSelected"]
      109 NAMECALL                         R18 R1 K41 ["getText"]
      111 CALL                             R18 3 1
      112 SETTABLEKS                       R18 R17 K30 ["Text"]
      114 GETTABLEKS                       R18 R2 K42 ["ButtonIconColor"]
      116 SETTABLEKS                       R18 R17 K33 ["TextColor"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K26 ["NoImageText"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K17 ["PreviewNoImageSign"]
      124 MOVE                             R11 R5
      125 JUMPIFNOT                        R11 ; [+37]
      126 GETUPVAL                         R11 2
      127 GETTABLEKS                       R11 R11 K5 ["createElement"]
      129 LOADK                            R12 K21 ["Frame"]
      130 DUPTABLE                         R13 K43 [{["ZIndex"] = 2, ["Size"]}]
      131 GETIMPORT                        R14 K10 [UDim2.new]
      133 LOADN                            R15 1
      134 LOADN                            R16 0
      135 LOADN                            R17 1
      136 LOADN                            R18 0
      137 CALL                             R14 4 1
      138 SETTABLEKS                       R14 R13 K12 ["Size"]
      140 DUPTABLE                         R14 K45 [{"PreviewContent"}]
      141 GETUPVAL                         R15 2
      142 GETTABLEKS                       R15 R15 K5 ["createElement"]
      144 GETUPVAL                         R16 4
      145 DUPTABLE                         R17 K46 [{"Size", "Image"}]
      146 GETIMPORT                        R18 K10 [UDim2.new]
      148 LOADN                            R19 1
      149 LOADN                            R20 0
      150 LOADN                            R21 1
      151 LOADN                            R22 0
      152 CALL                             R18 4 1
      153 SETTABLEKS                       R18 R17 K12 ["Size"]
      155 GETTABLEKS                       R18 R0 K3 ["ImageId"]
      157 SETTABLEKS                       R18 R17 K13 ["Image"]
      159 CALL                             R15 2 1
      160 SETTABLEKS                       R15 R14 K44 ["PreviewContent"]
      162 CALL                             R11 3 1
      163 SETTABLEKS                       R11 R10 K18 ["PreviewContentContainer"]
      165 GETUPVAL                         R11 2
      166 GETTABLEKS                       R11 R11 K5 ["createElement"]
      168 LOADK                            R12 K21 ["Frame"]
      169 DUPTABLE                         R13 K54 [{["ZIndex"] = 3, ["AnchorPoint"], ["Position"], ["Size"], ["Visible"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      170 GETIMPORT                        R14 K56 [Vector2.new]
      172 LOADN                            R15 0
      173 LOADN                            R16 1
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K48 ["AnchorPoint"]
      177 GETIMPORT                        R14 K10 [UDim2.new]
      179 LOADN                            R15 0
      180 LOADN                            R16 0
      181 LOADN                            R17 1
      182 LOADN                            R18 0
      183 CALL                             R14 4 1
      184 SETTABLEKS                       R14 R13 K49 ["Position"]
      186 GETIMPORT                        R14 K10 [UDim2.new]
      188 LOADN                            R15 1
      189 LOADN                            R16 0
      190 LOADN                            R17 0
      191 GETTABLEKS                       R18 R2 K57 ["ToolbarHeight"]
      193 CALL                             R14 4 1
      194 SETTABLEKS                       R14 R13 K12 ["Size"]
      196 SETTABLEKS                       R6 R13 K50 ["Visible"]
      198 GETTABLEKS                       R14 R2 K58 ["ToolbarTransparency"]
      200 SETTABLEKS                       R14 R13 K51 ["BackgroundTransparency"]
      202 GETTABLEKS                       R14 R2 K59 ["ToolbarBackgroundColor"]
      204 SETTABLEKS                       R14 R13 K23 ["BackgroundColor3"]
      206 DUPTABLE                         R14 K61 [{"ClearButton"}]
      207 GETUPVAL                         R15 2
      208 GETTABLEKS                       R15 R15 K5 ["createElement"]
      210 GETUPVAL                         R16 5
      211 NEWTABLE                         R17 2 0
      213 GETTABLEKS                       R18 R2 K62 ["ClearIcon"]
      215 SETTABLEKS                       R18 R17 K63 ["Icon"]
      217 GETUPVAL                         R18 2
      218 GETTABLEKS                       R18 R18 K14 ["Event"]
      220 GETTABLEKS                       R18 R18 K64 ["Activated"]
      222 GETTABLEKS                       R19 R0 K65 ["ClearSelection"]
      224 SETTABLE                         R19 R17 R18
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K60 ["ClearButton"]
      228 CALL                             R11 3 1
      229 SETTABLEKS                       R11 R10 K19 ["Toolbar"]
      231 CALL                             R7 3 -1
      232 RETURN                           R7 -1

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
