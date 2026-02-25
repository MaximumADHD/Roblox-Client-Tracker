PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K2 ["Description"]
       12 GETTABLEKS                       R4 R0 K3 ["Header"]
       14 GETTABLEKS                       R5 R0 K4 ["Image"]
       16 GETTABLEKS                       R6 R0 K5 ["OnClose"]
       18 GETTABLEKS                       R8 R0 K6 ["Title"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R7 R0 K6 ["Title"]
       23 JUMP                             ; [+5]
       24 LOADK                            R9 K7 ["General"]
       25 LOADK                            R10 K8 ["RobloxStudio"]
       26 NAMECALL                         R7 R1 K9 ["getText"]
       28 CALL                             R7 3 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R8 R9 K10 ["new"]
       32 CALL                             R8 0 1
       33 GETUPVAL                         R13 3
       34 GETTABLEKS                       R12 R13 K11 ["PROMPT_SIZE"]
       36 GETTABLEKS                       R11 R12 K12 ["Y"]
       38 GETTABLEKS                       R10 R11 K13 ["Offset"]
       40 GETUPVAL                         R14 3
       41 GETTABLEKS                       R13 R14 K14 ["BALANCE_SIZE"]
       43 GETTABLEKS                       R12 R13 K12 ["Y"]
       45 GETTABLEKS                       R11 R12 K13 ["Offset"]
       47 ADD                              R9 R10 R11
       48 GETUPVAL                         R14 3
       49 GETTABLEKS                       R13 R14 K15 ["IMAGE_SIZE"]
       51 GETTABLEKS                       R12 R13 K16 ["X"]
       53 GETTABLEKS                       R11 R12 K13 ["Offset"]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R14 R15 K11 ["PROMPT_SIZE"]
       58 GETTABLEKS                       R13 R14 K16 ["X"]
       60 GETTABLEKS                       R12 R13 K13 ["Offset"]
       62 ADD                              R10 R11 R12
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R11 R12 K17 ["createElement"]
       66 GETUPVAL                         R12 5
       67 DUPTABLE                         R13 K22 [{"Buttons", "LayoutOrder", "MinContentSize", "OnButtonPressed", "OnClose", "Title"}]
       68 NEWTABLE                         R14 0 1
       70 DUPTABLE                         R15 K26 [{"Key", "Style", "Text"}]
       71 LOADB                            R16 0
       72 SETTABLEKS                       R16 R15 K23 ["Key"]
       74 LOADK                            R16 K27 ["RoundPrimary"]
       75 SETTABLEKS                       R16 R15 K24 ["Style"]
       77 LOADK                            R18 K28 ["Common"]
       78 LOADK                            R19 K29 ["OK"]
       79 NAMECALL                         R16 R1 K9 ["getText"]
       81 CALL                             R16 3 1
       82 SETTABLEKS                       R16 R15 K25 ["Text"]
       84 SETLIST                          R14 R15 1 [1]
       86 SETTABLEKS                       R14 R13 K18 ["Buttons"]
       88 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
       90 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       92 GETIMPORT                        R14 K31 [Vector2.new]
       94 MOVE                             R15 R10
       95 MOVE                             R16 R9
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       99 SETTABLEKS                       R6 R13 K21 ["OnButtonPressed"]
      101 JUMPIFNOT                        R6 ; [+2]
      102 MOVE                             R14 R6
      103 JUMP                             ; [+1]
      104 DUPCLOSURE                       R14 K32 [PROTO_0]
      105 SETTABLEKS                       R14 R13 K5 ["OnClose"]
      107 SETTABLEKS                       R7 R13 K6 ["Title"]
      109 DUPTABLE                         R14 K34 [{"Container"}]
      110 GETUPVAL                         R16 4
      111 GETTABLEKS                       R15 R16 K17 ["createElement"]
      113 GETUPVAL                         R16 6
      114 DUPTABLE                         R17 K39 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
      115 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
      117 SETTABLEKS                       R18 R17 K35 ["AutomaticSize"]
      119 GETIMPORT                        R18 K45 [Enum.FillDirection.Horizontal]
      121 SETTABLEKS                       R18 R17 K36 ["Layout"]
      123 NAMECALL                         R18 R8 K46 ["getNextOrder"]
      125 CALL                             R18 1 1
      126 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      128 LOADN                            R18 16
      129 SETTABLEKS                       R18 R17 K37 ["Spacing"]
      131 GETIMPORT                        R18 K48 [Enum.VerticalAlignment.Top]
      133 SETTABLEKS                       R18 R17 K38 ["VerticalAlignment"]
      135 DUPTABLE                         R18 K51 [{"Thumbnail", "TextContainer"}]
      136 JUMPIFNOT                        R5 ; [+19]
      137 GETUPVAL                         R20 4
      138 GETTABLEKS                       R19 R20 K17 ["createElement"]
      140 GETUPVAL                         R20 7
      141 DUPTABLE                         R21 K53 [{"Image", "LayoutOrder", "Size"}]
      142 SETTABLEKS                       R5 R21 K4 ["Image"]
      144 NAMECALL                         R22 R8 K46 ["getNextOrder"]
      146 CALL                             R22 1 1
      147 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      149 GETUPVAL                         R23 3
      150 GETTABLEKS                       R22 R23 K15 ["IMAGE_SIZE"]
      152 SETTABLEKS                       R22 R21 K52 ["Size"]
      154 CALL                             R19 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R19
      157 SETTABLEKS                       R19 R18 K49 ["Thumbnail"]
      159 GETUPVAL                         R20 4
      160 GETTABLEKS                       R19 R20 K17 ["createElement"]
      162 GETUPVAL                         R20 6
      163 DUPTABLE                         R21 K55 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Size", "VerticalAlignment"}]
      164 GETUPVAL                         R23 8
      165 CALL                             R23 0 1
      166 JUMPIFNOT                        R23 ; [+3]
      167 GETIMPORT                        R22 K56 [Enum.AutomaticSize.Y]
      169 JUMP                             ; [+2]
      170 GETIMPORT                        R22 K42 [Enum.AutomaticSize.XY]
      172 SETTABLEKS                       R22 R21 K35 ["AutomaticSize"]
      174 GETUPVAL                         R23 8
      175 CALL                             R23 0 1
      176 JUMPIFNOT                        R23 ; [+3]
      177 GETIMPORT                        R22 K58 [Enum.HorizontalAlignment.Left]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R22
      181 SETTABLEKS                       R22 R21 K54 ["HorizontalAlignment"]
      183 GETIMPORT                        R22 K60 [Enum.FillDirection.Vertical]
      185 SETTABLEKS                       R22 R21 K36 ["Layout"]
      187 NAMECALL                         R22 R8 K46 ["getNextOrder"]
      189 CALL                             R22 1 1
      190 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      192 LOADN                            R22 8
      193 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      195 GETUPVAL                         R23 8
      196 CALL                             R23 0 1
      197 JUMPIFNOT                        R23 ; [+17]
      198 JUMPIFNOT                        R5 ; [+16]
      199 GETIMPORT                        R22 K62 [UDim2.new]
      201 LOADN                            R23 1
      202 GETUPVAL                         R29 3
      203 GETTABLEKS                       R28 R29 K15 ["IMAGE_SIZE"]
      205 GETTABLEKS                       R27 R28 K16 ["X"]
      207 GETTABLEKS                       R26 R27 K13 ["Offset"]
      209 MINUS                            R25 R26
      210 SUBK                             R24 R25 K63 [16]
      211 LOADN                            R25 0
      212 LOADN                            R26 0
      213 CALL                             R22 4 1
      214 JUMP                             ; [+7]
      215 GETIMPORT                        R22 K62 [UDim2.new]
      217 LOADN                            R23 1
      218 LOADN                            R24 0
      219 LOADN                            R25 0
      220 LOADN                            R26 0
      221 CALL                             R22 4 1
      222 SETTABLEKS                       R22 R21 K52 ["Size"]
      224 GETIMPORT                        R22 K48 [Enum.VerticalAlignment.Top]
      226 SETTABLEKS                       R22 R21 K38 ["VerticalAlignment"]
      228 DUPTABLE                         R22 K65 [{"Header", "Prompt"}]
      229 GETUPVAL                         R24 4
      230 GETTABLEKS                       R23 R24 K17 ["createElement"]
      232 GETUPVAL                         R24 9
      233 DUPTABLE                         R25 K70 [{"AutomaticSize", "LayoutOrder", "Font", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      234 GETIMPORT                        R26 K56 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R26 R25 K35 ["AutomaticSize"]
      238 NAMECALL                         R26 R8 K46 ["getNextOrder"]
      240 CALL                             R26 1 1
      241 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      243 GETUPVAL                         R27 10
      244 GETTABLEKS                       R26 R27 K71 ["FONT_BOLD"]
      246 SETTABLEKS                       R26 R25 K66 ["Font"]
      248 GETIMPORT                        R26 K62 [UDim2.new]
      250 LOADN                            R27 1
      251 LOADN                            R28 0
      252 LOADN                            R29 0
      253 LOADN                            R30 0
      254 CALL                             R26 4 1
      255 SETTABLEKS                       R26 R25 K52 ["Size"]
      257 SETTABLEKS                       R4 R25 K25 ["Text"]
      259 GETTABLEKS                       R27 R2 K72 ["purchaseDialog"]
      261 GETTABLEKS                       R26 R27 K73 ["promptText"]
      263 SETTABLEKS                       R26 R25 K67 ["TextColor"]
      265 LOADB                            R26 1
      266 SETTABLEKS                       R26 R25 K68 ["TextWrapped"]
      268 GETIMPORT                        R26 K74 [Enum.TextXAlignment.Left]
      270 SETTABLEKS                       R26 R25 K69 ["TextXAlignment"]
      272 CALL                             R23 2 1
      273 SETTABLEKS                       R23 R22 K3 ["Header"]
      275 GETUPVAL                         R24 4
      276 GETTABLEKS                       R23 R24 K17 ["createElement"]
      278 GETUPVAL                         R24 9
      279 DUPTABLE                         R25 K75 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      280 GETIMPORT                        R26 K56 [Enum.AutomaticSize.Y]
      282 SETTABLEKS                       R26 R25 K35 ["AutomaticSize"]
      284 NAMECALL                         R26 R8 K46 ["getNextOrder"]
      286 CALL                             R26 1 1
      287 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      289 GETIMPORT                        R26 K62 [UDim2.new]
      291 LOADN                            R27 1
      292 LOADN                            R28 0
      293 LOADN                            R29 0
      294 LOADN                            R30 0
      295 CALL                             R26 4 1
      296 SETTABLEKS                       R26 R25 K52 ["Size"]
      298 SETTABLEKS                       R3 R25 K25 ["Text"]
      300 GETTABLEKS                       R27 R2 K72 ["purchaseDialog"]
      302 GETTABLEKS                       R26 R27 K73 ["promptText"]
      304 SETTABLEKS                       R26 R25 K67 ["TextColor"]
      306 LOADB                            R26 1
      307 SETTABLEKS                       R26 R25 K68 ["TextWrapped"]
      309 GETIMPORT                        R26 K74 [Enum.TextXAlignment.Left]
      311 SETTABLEKS                       R26 R25 K69 ["TextXAlignment"]
      313 CALL                             R23 2 1
      314 SETTABLEKS                       R23 R22 K64 ["Prompt"]
      316 CALL                             R19 3 1
      317 SETTABLEKS                       R19 R18 K50 ["TextContainer"]
      319 CALL                             R15 3 1
      320 SETTABLEKS                       R15 R14 K33 ["Container"]
      322 CALL                             R11 3 -1
      323 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R5 R4 K10 ["Image"]
       23 GETTABLEKS                       R7 R3 K9 ["UI"]
       25 GETTABLEKS                       R6 R7 K11 ["Pane"]
       27 GETTABLEKS                       R7 R4 K12 ["StyledDialog"]
       29 GETTABLEKS                       R8 R4 K13 ["TextLabel"]
       31 GETTABLEKS                       R10 R0 K14 ["Src"]
       33 GETTABLEKS                       R9 R10 K15 ["Util"]
       35 GETIMPORT                        R10 K6 [require]
       37 GETTABLEKS                       R11 R9 K16 ["Constants"]
       39 CALL                             R10 1 1
       40 GETIMPORT                        R11 K6 [require]
       42 GETTABLEKS                       R12 R9 K17 ["LayoutOrderIterator"]
       44 CALL                             R11 1 1
       45 GETTABLEKS                       R12 R10 K18 ["Dialog"]
       47 GETTABLEKS                       R14 R3 K19 ["ContextServices"]
       49 GETTABLEKS                       R13 R14 K20 ["Stylizer"]
       51 GETTABLEKS                       R14 R3 K19 ["ContextServices"]
       53 GETIMPORT                        R15 K6 [require]
       55 GETTABLEKS                       R19 R0 K14 ["Src"]
       57 GETTABLEKS                       R18 R19 K15 ["Util"]
       59 GETTABLEKS                       R17 R18 K21 ["SharedFlags"]
       61 GETTABLEKS                       R16 R17 K22 ["getFFlagToolboxFixGenericDialogSize"]
       63 CALL                             R15 1 1
       64 DUPCLOSURE                       R16 K23 [PROTO_1]
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 RETURN                           R16 1
