PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["HorizontalAlignment"]
        8 GETTABLEKS                       R5 R1 K4 ["Buttons"]
       10 GETTABLEKS                       R6 R1 K5 ["buttonActivated"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETTABLEKS                       R9 R1 K8 ["LocalizationNamespace"]
       16 ORK                              R8 R9 K7 ["FooterButton"]
       17 GETTABLEKS                       R10 R1 K9 ["AutoWidth"]
       19 JUMPIFEQKB                       R10 TRUE ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 GETTABLEKS                       R11 R1 K11 ["ButtonPaddingX"]
       25 ORK                              R10 R11 K10 [32]
       26 GETTABLEKS                       R12 R1 K13 ["MinButtonWidth"]
       28 ORK                              R11 R12 K12 [90]
       29 GETTABLEKS                       R13 R1 K15 ["Spacing"]
       31 ORK                              R12 R13 K14 [25]
       32 GETTABLEKS                       R14 R1 K17 ["LayoutOrder"]
       34 ORK                              R13 R14 K16 [1]
       35 GETTABLEKS                       R14 R1 K18 ["AnchorPoint"]
       37 JUMPIF                           R14 ; [+5]
       38 GETIMPORT                        R14 K21 [Vector2.new]
       40 LOADN                            R15 0
       41 LOADK                            R16 K22 [0.5]
       42 CALL                             R14 2 1
       43 GETTABLEKS                       R15 R1 K23 ["Position"]
       45 JUMPIF                           R15 ; [+7]
       46 GETIMPORT                        R15 K25 [UDim2.new]
       48 LOADN                            R16 0
       49 LOADN                            R17 0
       50 LOADK                            R18 K22 [0.5]
       51 LOADN                            R19 0
       52 CALL                             R15 4 1
       53 GETUPVAL                         R17 0
       54 GETTABLEKS                       R17 R17 K26 ["Children"]
       56 GETTABLE                         R16 R1 R17
       57 FASTCALL1                        TYPE R5 ; [+3]
       58 MOVE                             R20 R5
       59 GETIMPORT                        R19 K28 [type]
       61 CALL                             R19 1 1
       62 JUMPIFEQKS                       R19 K29 ["table"] ; [+2]
       64 LOADB                            R18 0 +1
       65 LOADB                            R18 1
       66 FASTCALL2K                       ASSERT R18 K30 ; [+4]
       68 LOADK                            R19 K30 ["ButtonBar.Buttons must be a table"]
       69 GETIMPORT                        R17 K32 [assert]
       71 CALL                             R17 2 0
       72 DUPTABLE                         R17 K34 [{"Layout"}]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R18 R18 K35 ["createElement"]
       76 LOADK                            R19 K36 ["UIListLayout"]
       77 DUPTABLE                         R20 K40 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
       78 GETIMPORT                        R21 K42 [UDim.new]
       80 LOADN                            R22 0
       81 MOVE                             R23 R12
       82 CALL                             R21 2 1
       83 SETTABLEKS                       R21 R20 K37 ["Padding"]
       85 SETTABLEKS                       R4 R20 K3 ["HorizontalAlignment"]
       87 GETIMPORT                        R21 K44 [Enum.SortOrder.LayoutOrder]
       89 SETTABLEKS                       R21 R20 K38 ["SortOrder"]
       91 GETIMPORT                        R21 K46 [Enum.FillDirection.Horizontal]
       93 SETTABLEKS                       R21 R20 K39 ["FillDirection"]
       95 MOVE                             R21 R16
       96 CALL                             R18 3 1
       97 SETTABLEKS                       R18 R17 K33 ["Layout"]
       99 GETIMPORT                        R18 K48 [Enum.HorizontalAlignment.Center]
      101 JUMPIFEQ                         R4 R18 ; [+19]
      103 MOVE                             R19 R17
      104 GETUPVAL                         R20 0
      105 GETTABLEKS                       R20 R20 K35 ["createElement"]
      107 LOADK                            R21 K49 ["UIPadding"]
      108 DUPTABLE                         R22 K51 [{"PaddingRight"}]
      109 GETIMPORT                        R23 K42 [UDim.new]
      111 LOADN                            R24 0
      112 LOADN                            R25 35
      113 CALL                             R23 2 1
      114 SETTABLEKS                       R23 R22 K50 ["PaddingRight"]
      116 CALL                             R20 2 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R18 K53 [table.insert]
      120 CALL                             R18 -1 0
      121 GETTABLEKS                       R19 R2 K54 ["fontStyle"]
      123 JUMPIFNOT                        R19 ; [+12]
      124 GETTABLEKS                       R19 R2 K54 ["fontStyle"]
      126 GETTABLEKS                       R19 R19 K55 ["Subtext"]
      128 JUMPIFNOT                        R19 ; [+7]
      129 GETTABLEKS                       R18 R2 K54 ["fontStyle"]
      131 GETTABLEKS                       R18 R18 K55 ["Subtext"]
      133 GETTABLEKS                       R18 R18 K56 ["TextSize"]
      135 JUMPIF                           R18 ; [+1]
      136 LOADN                            R18 22
      137 GETTABLEKS                       R20 R2 K57 ["footer"]
      139 JUMPIFNOT                        R20 ; [+12]
      140 GETTABLEKS                       R20 R2 K57 ["footer"]
      142 GETTABLEKS                       R20 R20 K58 ["textbutton"]
      144 JUMPIFNOT                        R20 ; [+7]
      145 GETTABLEKS                       R19 R2 K57 ["footer"]
      147 GETTABLEKS                       R19 R19 K58 ["textbutton"]
      149 GETTABLEKS                       R19 R19 K59 ["font"]
      151 JUMPIF                           R19 ; [+5]
      152 GETTABLEKS                       R19 R2 K59 ["font"]
      154 JUMPIF                           R19 ; [+2]
      155 GETIMPORT                        R19 K62 [Enum.Font.SourceSans]
      157 GETIMPORT                        R20 K64 [ipairs]
      159 MOVE                             R21 R5
      160 CALL                             R20 1 3
      161 FORGPREP_INEXT                   R20
      162 MOVE                             R27 R8
      163 GETTABLEKS                       R28 R24 K65 ["Name"]
      165 NAMECALL                         R25 R3 K66 ["getText"]
      167 CALL                             R25 3 1
      168 LOADN                            R26 125
      169 JUMPIFNOT                        R9 ; [+55]
      170 GETUPVAL                         R27 1
      171 MOVE                             R29 R25
      172 MOVE                             R30 R18
      173 MOVE                             R31 R19
      174 GETIMPORT                        R32 K21 [Vector2.new]
      176 LOADK                            R33 K67 [∞]
      177 LOADN                            R34 35
      178 CALL                             R32 2 -1
      179 NAMECALL                         R27 R27 K68 ["GetTextSize"]
      181 CALL                             R27 -1 1
      182 LOADN                            R28 0
      183 GETTABLEKS                       R29 R24 K69 ["LeftIcon"]
      185 JUMPIFNOT                        R29 ; [+24]
      186 GETTABLEKS                       R30 R24 K69 ["LeftIcon"]
      188 FASTCALL1                        TYPEOF R30 ; [+2]
      189 GETIMPORT                        R29 K71 [typeof]
      191 CALL                             R29 1 1
      192 JUMPIFNOTEQKS                    R29 K29 ["table"] ; [+16]
      194 GETTABLEKS                       R30 R24 K69 ["LeftIcon"]
      196 GETTABLEKS                       R30 R30 K72 ["ImageRectSize"]
      198 JUMPIFNOT                        R30 ; [+7]
      199 GETTABLEKS                       R29 R24 K69 ["LeftIcon"]
      201 GETTABLEKS                       R29 R29 K72 ["ImageRectSize"]
      203 GETTABLEKS                       R29 R29 K73 ["X"]
      205 JUMPIF                           R29 ; [+1]
      206 LOADN                            R29 16
      207 MOVE                             R28 R29
      208 JUMP                             ; [+1]
      209 LOADN                            R28 16
      210 GETTABLEKS                       R34 R27 K73 ["X"]
      212 ADD                              R33 R34 R10
      213 ADD                              R32 R33 R28
      214 FASTCALL1                        MATH_FLOOR R32 ; [+2]
      215 GETIMPORT                        R31 K76 [math.floor]
      217 CALL                             R31 1 1
      218 FASTCALL2                        MATH_MAX R11 R31 ; [+4]
      220 MOVE                             R30 R11
      221 GETIMPORT                        R29 K78 [math.max]
      223 CALL                             R29 2 1
      224 MOVE                             R26 R29
      225 LOADB                            R27 1
      226 GETTABLEKS                       R28 R24 K69 ["LeftIcon"]
      228 JUMPIFNOTEQKNIL                  R28 ; [+7]
      230 GETTABLEKS                       R28 R24 K79 ["RightIcon"]
      232 JUMPIFNOTEQKNIL                  R28 ; [+2]
      234 LOADB                            R27 0 +1
      235 LOADB                            R27 1
      236 DUPTABLE                         R28 K85 [{"OnClick", "LayoutOrder", "Size", "Style", "StyleModifier", "Text", "ZIndex"}]
      237 NEWCLOSURE                       R29 P0
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R24
      240 SETTABLEKS                       R29 R28 K80 ["OnClick"]
      242 SETTABLEKS                       R23 R28 K17 ["LayoutOrder"]
      244 GETIMPORT                        R29 K25 [UDim2.new]
      246 LOADN                            R30 0
      247 MOVE                             R31 R26
      248 LOADN                            R32 1
      249 LOADN                            R33 0
      250 CALL                             R29 4 1
      251 SETTABLEKS                       R29 R28 K81 ["Size"]
      253 GETTABLEKS                       R30 R24 K86 ["Default"]
      255 JUMPIFNOT                        R30 ; [+2]
      256 LOADK                            R29 K87 ["RoundPrimary"]
      257 JUMP                             ; [+1]
      258 LOADK                            R29 K88 ["Round"]
      259 SETTABLEKS                       R29 R28 K82 ["Style"]
      261 GETTABLEKS                       R30 R24 K89 ["Active"]
      263 JUMPIFNOTEQKB                    R30 FALSE ; [+5]
      265 GETUPVAL                         R29 2
      266 GETTABLEKS                       R29 R29 K90 ["Disabled"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R29
      270 SETTABLEKS                       R29 R28 K83 ["StyleModifier"]
      272 SETTABLEKS                       R25 R28 K84 ["Text"]
      274 ORK                              R29 R7 K16 [1]
      275 SETTABLEKS                       R29 R28 K6 ["ZIndex"]
      277 DUPTABLE                         R29 K92 [{"OnClick", "LayoutOrder", "Size", "Text", "ZIndex", "LeftIcon", "IsPrimary"}]
      278 NEWCLOSURE                       R30 P1
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R24
      281 SETTABLEKS                       R30 R29 K80 ["OnClick"]
      283 SETTABLEKS                       R23 R29 K17 ["LayoutOrder"]
      285 GETIMPORT                        R30 K25 [UDim2.new]
      287 LOADN                            R31 0
      288 MOVE                             R32 R26
      289 LOADN                            R33 1
      290 LOADN                            R34 0
      291 CALL                             R30 4 1
      292 SETTABLEKS                       R30 R29 K81 ["Size"]
      294 SETTABLEKS                       R25 R29 K84 ["Text"]
      296 ORK                              R30 R7 K16 [1]
      297 SETTABLEKS                       R30 R29 K6 ["ZIndex"]
      299 GETTABLEKS                       R30 R24 K69 ["LeftIcon"]
      301 SETTABLEKS                       R30 R29 K69 ["LeftIcon"]
      303 GETTABLEKS                       R31 R24 K86 ["Default"]
      305 JUMPIFEQKB                       R31 TRUE ; [+2]
      307 LOADB                            R30 0 +1
      308 LOADB                            R30 1
      309 SETTABLEKS                       R30 R29 K91 ["IsPrimary"]
      311 JUMPIFNOT                        R27 ; [+12]
      312 MOVE                             R31 R17
      313 GETUPVAL                         R32 0
      314 GETTABLEKS                       R32 R32 K35 ["createElement"]
      316 GETUPVAL                         R33 3
      317 MOVE                             R34 R29
      318 CALL                             R32 2 -1
      319 FASTCALL                         TABLE_INSERT ; [+2]
      320 GETIMPORT                        R30 K53 [table.insert]
      322 CALL                             R30 -1 0
      323 JUMP                             ; [+11]
      324 MOVE                             R31 R17
      325 GETUPVAL                         R32 0
      326 GETTABLEKS                       R32 R32 K35 ["createElement"]
      328 GETUPVAL                         R33 4
      329 MOVE                             R34 R28
      330 CALL                             R32 2 -1
      331 FASTCALL                         TABLE_INSERT ; [+2]
      332 GETIMPORT                        R30 K53 [table.insert]
      334 CALL                             R30 -1 0
      335 FORGLOOP                         R20 2 [inext] ; [-174]
      337 GETUPVAL                         R20 0
      338 GETTABLEKS                       R20 R20 K35 ["createElement"]
      340 LOADK                            R21 K93 ["Frame"]
      341 DUPTABLE                         R22 K95 [{"Size", "LayoutOrder", "AnchorPoint", "Position", "BackgroundTransparency"}]
      342 GETIMPORT                        R23 K25 [UDim2.new]
      344 LOADN                            R24 1
      345 LOADN                            R25 0
      346 LOADN                            R26 0
      347 LOADN                            R27 35
      348 CALL                             R23 4 1
      349 SETTABLEKS                       R23 R22 K81 ["Size"]
      351 SETTABLEKS                       R13 R22 K17 ["LayoutOrder"]
      353 SETTABLEKS                       R14 R22 K18 ["AnchorPoint"]
      355 SETTABLEKS                       R15 R22 K23 ["Position"]
      357 LOADN                            R23 1
      358 SETTABLEKS                       R23 R22 K94 ["BackgroundTransparency"]
      360 MOVE                             R23 R17
      361 CALL                             R20 3 -1
      362 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["TextService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R1 K12 ["UI"]
       31 GETTABLEKS                       R5 R4 K13 ["Button"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K14 ["Src"]
       37 GETTABLEKS                       R7 R7 K15 ["Components"]
       39 GETTABLEKS                       R7 R7 K16 ["IconTextButton"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R1 K17 ["Util"]
       44 GETTABLEKS                       R7 R7 K18 ["StyleModifier"]
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R0 K5 ["Packages"]
       50 GETTABLEKS                       R9 R9 K6 ["Framework"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K19 ["ContextServices"]
       55 GETTABLEKS                       R10 R9 K20 ["withContext"]
       57 GETTABLEKS                       R11 R2 K21 ["PureComponent"]
       59 LOADK                            R13 K22 ["ButtonBar"]
       60 NAMECALL                         R11 R11 K23 ["extend"]
       62 CALL                             R11 2 1
       63 DUPCLOSURE                       R12 K24 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R12 R11 K25 ["render"]
       71 MOVE                             R12 R10
       72 DUPTABLE                         R13 K28 [{"Stylizer", "Localization"}]
       73 GETTABLEKS                       R14 R9 K26 ["Stylizer"]
       75 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       77 GETTABLEKS                       R14 R9 K27 ["Localization"]
       79 SETTABLEKS                       R14 R13 K27 ["Localization"]
       81 CALL                             R12 1 1
       82 MOVE                             R13 R11
       83 CALL                             R12 1 1
       84 MOVE                             R11 R12
       85 RETURN                           R11 1
