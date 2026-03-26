PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+44]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["cursorPosition"]
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["textInputRef"]
        8 GETTABLEKS                       R2 R3 K2 ["current"]
       10 JUMPIFNOT                        R2 ; [+34]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       14 GETTABLEKS                       R3 R4 K2 ["current"]
       16 GETTABLEKS                       R2 R3 K3 ["CaptureFocus"]
       18 JUMPIFNOT                        R2 ; [+26]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       22 GETTABLEKS                       R3 R4 K2 ["current"]
       24 GETTABLEKS                       R2 R3 K4 ["CursorPosition"]
       26 JUMPIFNOT                        R2 ; [+18]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["cursorPosition"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       33 GETTABLEKS                       R3 R4 K2 ["current"]
       35 NAMECALL                         R3 R3 K3 ["CaptureFocus"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K1 ["textInputRef"]
       41 GETTABLEKS                       R3 R4 K2 ["current"]
       43 SETTABLEKS                       R2 R3 K4 ["CursorPosition"]
       45 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K1 ["hasError"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onTextChanged"]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["createRef"]
       16 CALL                             R2 0 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K4 ["textInputRef"]
       21 GETUPVAL                         R2 0
       22 JUMPIFNOT                        R2 ; [+4]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K5 ["onFocusLost"]
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textInputRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["textInputRef"]
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 GETTABLEKS                       R0 R1 K2 ["CursorPosition"]
       13 LOADN                            R1 0
       14 JUMPIFNOTLE                      R1 R0 ; [+11]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["textInputRef"]
       20 GETTABLEKS                       R2 R3 K1 ["current"]
       22 GETTABLEKS                       R1 R2 K2 ["CursorPosition"]
       24 SETTABLEKS                       R1 R0 K3 ["cursorPosition"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETTABLEKS                       R2 R0 K0 ["textInputRef"]
        4 GETTABLEKS                       R1 R2 K1 ["current"]
        6 JUMPIFNOT                        R1 ; [+22]
        7 GETTABLEKS                       R3 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R2 R3 K1 ["current"]
       11 GETTABLEKS                       R1 R2 K2 ["GetPropertyChangedSignal"]
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R2 R0 K0 ["textInputRef"]
       16 GETTABLEKS                       R1 R2 K1 ["current"]
       18 LOADK                            R3 K3 ["CursorPosition"]
       19 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R1 R1 K4 ["Connect"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K5 ["textInputRefCursorPositionChanged"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R0 K2 ["state"]
        8 GETTABLEKS                       R4 R2 K3 ["Title"]
       10 GETTABLEKS                       R5 R2 K4 ["TotalHeight"]
       12 GETTABLEKS                       R6 R2 K5 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R2 K6 ["MaxCount"]
       16 GETTABLEKS                       R9 R2 K8 ["TextContent"]
       18 ORK                              R8 R9 K7 [""]
       19 GETTABLEKS                       R10 R3 K9 ["currentContent"]
       21 OR                               R9 R10 R8
       22 GETTABLEKS                       R11 R0 K0 ["props"]
       24 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       26 JUMPIFNOT                        R10 ; [+34]
       27 LENGTH                           R10 R9
       28 GETTABLEKS                       R12 R0 K0 ["props"]
       30 GETTABLEKS                       R11 R12 K6 ["MaxCount"]
       32 JUMPIFNOTLT                      R11 R10 ; [+15]
       34 GETTABLEKS                       R10 R0 K11 ["hasError"]
       36 JUMPIF                           R10 ; [+24]
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R0 K11 ["hasError"]
       40 GETTABLEKS                       R11 R0 K0 ["props"]
       42 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       44 GETTABLEKS                       R11 R0 K11 ["hasError"]
       46 CALL                             R10 1 0
       47 JUMP                             ; [+13]
       48 GETTABLEKS                       R10 R0 K11 ["hasError"]
       50 JUMPIFNOT                        R10 ; [+10]
       51 LOADB                            R10 0
       52 SETTABLEKS                       R10 R0 K11 ["hasError"]
       54 GETTABLEKS                       R11 R0 K0 ["props"]
       56 GETTABLEKS                       R10 R11 K10 ["ErrorCallback"]
       58 GETTABLEKS                       R11 R0 K11 ["hasError"]
       60 CALL                             R10 1 0
       61 GETTABLEKS                       R10 R1 K12 ["publishAsset"]
       63 GETIMPORT                        R11 K15 [utf8.len]
       65 MOVE                             R12 R9
       66 CALL                             R11 1 1
       67 MOVE                             R12 R7
       68 JUMPIFNOT                        R12 ; [+4]
       69 JUMPIFLT                         R7 R11 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 JUMPIFNOT                        R7 ; [+5]
       74 MOVE                             R14 R11
       75 LOADK                            R15 K16 ["/"]
       76 MOVE                             R16 R7
       77 CONCAT                           R13 R14 R16
       78 JUMPIF                           R13 ; [+1]
       79 LOADK                            R13 K7 [""]
       80 MOVE                             R14 R7
       81 JUMPIFNOT                        R14 ; [+5]
       82 LOADN                            R15 50
       83 JUMPIFLT                         R15 R7 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R15 R16 K17 ["new"]
       90 CALL                             R15 0 1
       91 GETTABLEKS                       R17 R1 K18 ["assetConfig"]
       93 GETTABLEKS                       R16 R17 K19 ["inputBottomText"]
       95 GETUPVAL                         R17 1
       96 CALL                             R17 0 1
       97 JUMPIFNOT                        R17 ; [+180]
       98 GETUPVAL                         R18 2
       99 GETTABLEKS                       R17 R18 K20 ["createElement"]
      101 GETUPVAL                         R18 3
      102 DUPTABLE                         R19 K21 [{"LayoutOrder", "Title"}]
      103 SETTABLEKS                       R6 R19 K5 ["LayoutOrder"]
      105 SETTABLEKS                       R4 R19 K3 ["Title"]
      107 DUPTABLE                         R20 K23 [{"TextFieldWrapper"}]
      108 GETUPVAL                         R22 2
      109 GETTABLEKS                       R21 R22 K20 ["createElement"]
      111 GETUPVAL                         R23 4
      112 GETTABLEKS                       R22 R23 K24 ["View"]
      114 DUPTABLE                         R23 K27 [{"tag", "LayoutOrder", "Size"}]
      115 LOADK                            R24 K28 ["col align-x-left auto-y size-full-x gap-small"]
      116 SETTABLEKS                       R24 R23 K25 ["tag"]
      118 NAMECALL                         R24 R15 K29 ["getNextOrder"]
      120 CALL                             R24 1 1
      121 SETTABLEKS                       R24 R23 K5 ["LayoutOrder"]
      123 GETIMPORT                        R24 K31 [UDim2.new]
      125 LOADN                            R25 1
      126 LOADN                            R26 0
      127 LOADN                            R27 0
      128 MOVE                             R28 R5
      129 CALL                             R24 4 1
      130 SETTABLEKS                       R24 R23 K26 ["Size"]
      132 DUPTABLE                         R24 K34 [{"TextField", "BottomTextWrapper"}]
      133 JUMPIFNOT                        R14 ; [+46]
      134 GETUPVAL                         R26 2
      135 GETTABLEKS                       R25 R26 K20 ["createElement"]
      137 GETUPVAL                         R27 4
      138 GETTABLEKS                       R26 R27 K35 ["TextArea"]
      140 DUPTABLE                         R27 K43 [{"LayoutOrder", "text", "onChanged", "label", "hint", "hasError", "numLines", "size", "width"}]
      141 NAMECALL                         R28 R15 K29 ["getNextOrder"]
      143 CALL                             R28 1 1
      144 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      146 SETTABLEKS                       R9 R27 K36 ["text"]
      148 GETTABLEKS                       R28 R0 K44 ["onTextChanged"]
      150 SETTABLEKS                       R28 R27 K37 ["onChanged"]
      152 LOADK                            R28 K7 [""]
      153 SETTABLEKS                       R28 R27 K38 ["label"]
      155 SETTABLEKS                       R13 R27 K39 ["hint"]
      157 SETTABLEKS                       R12 R27 K11 ["hasError"]
      159 LOADN                            R28 6
      160 SETTABLEKS                       R28 R27 K40 ["numLines"]
      162 GETUPVAL                         R31 4
      163 GETTABLEKS                       R30 R31 K45 ["Enums"]
      165 GETTABLEKS                       R29 R30 K46 ["InputSize"]
      167 GETTABLEKS                       R28 R29 K47 ["Small"]
      169 SETTABLEKS                       R28 R27 K41 ["size"]
      171 GETIMPORT                        R28 K49 [UDim.new]
      173 LOADN                            R29 1
      174 LOADN                            R30 0
      175 CALL                             R28 2 1
      176 SETTABLEKS                       R28 R27 K42 ["width"]
      178 CALL                             R25 2 1
      179 JUMP                             ; [+45]
      180 GETUPVAL                         R26 2
      181 GETTABLEKS                       R25 R26 K20 ["createElement"]
      183 GETUPVAL                         R27 4
      184 GETTABLEKS                       R26 R27 K50 ["TextInput"]
      186 DUPTABLE                         R27 K43 [{"LayoutOrder", "text", "onChanged", "label", "hint", "hasError", "numLines", "size", "width"}]
      187 NAMECALL                         R28 R15 K29 ["getNextOrder"]
      189 CALL                             R28 1 1
      190 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      192 SETTABLEKS                       R9 R27 K36 ["text"]
      194 GETTABLEKS                       R28 R0 K44 ["onTextChanged"]
      196 SETTABLEKS                       R28 R27 K37 ["onChanged"]
      198 LOADK                            R28 K7 [""]
      199 SETTABLEKS                       R28 R27 K38 ["label"]
      201 SETTABLEKS                       R13 R27 K39 ["hint"]
      203 SETTABLEKS                       R12 R27 K11 ["hasError"]
      205 LOADN                            R28 1
      206 SETTABLEKS                       R28 R27 K40 ["numLines"]
      208 GETUPVAL                         R31 4
      209 GETTABLEKS                       R30 R31 K45 ["Enums"]
      211 GETTABLEKS                       R29 R30 K46 ["InputSize"]
      213 GETTABLEKS                       R28 R29 K47 ["Small"]
      215 SETTABLEKS                       R28 R27 K41 ["size"]
      217 GETIMPORT                        R28 K49 [UDim.new]
      219 LOADN                            R29 1
      220 LOADN                            R30 0
      221 CALL                             R28 2 1
      222 SETTABLEKS                       R28 R27 K42 ["width"]
      224 CALL                             R25 2 1
      225 SETTABLEKS                       R25 R24 K32 ["TextField"]
      227 GETTABLEKS                       R26 R2 K51 ["BottomRightText"]
      229 JUMPIFNOT                        R26 ; [+40]
      230 GETUPVAL                         R26 2
      231 GETTABLEKS                       R25 R26 K20 ["createElement"]
      233 GETUPVAL                         R27 4
      234 GETTABLEKS                       R26 R27 K24 ["View"]
      236 DUPTABLE                         R27 K52 [{"tag", "LayoutOrder"}]
      237 LOADK                            R28 K53 ["size-full-0 auto-y"]
      238 SETTABLEKS                       R28 R27 K25 ["tag"]
      240 NAMECALL                         R28 R15 K29 ["getNextOrder"]
      242 CALL                             R28 1 1
      243 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      245 DUPTABLE                         R28 K55 [{"BottomText"}]
      246 GETUPVAL                         R30 2
      247 GETTABLEKS                       R29 R30 K20 ["createElement"]
      249 GETUPVAL                         R31 4
      250 GETTABLEKS                       R30 R31 K56 ["Text"]
      252 DUPTABLE                         R31 K57 [{"tag", "Text", "LayoutOrder"}]
      253 LOADK                            R32 K58 ["size-full-0 auto-y text-caption-small content-muted text-align-x-right"]
      254 SETTABLEKS                       R32 R31 K25 ["tag"]
      256 GETTABLEKS                       R32 R2 K51 ["BottomRightText"]
      258 SETTABLEKS                       R32 R31 K56 ["Text"]
      260 NAMECALL                         R32 R15 K29 ["getNextOrder"]
      262 CALL                             R32 1 1
      263 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      265 CALL                             R29 2 1
      266 SETTABLEKS                       R29 R28 K54 ["BottomText"]
      268 CALL                             R25 3 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R25
      271 SETTABLEKS                       R25 R24 K33 ["BottomTextWrapper"]
      273 CALL                             R21 3 1
      274 SETTABLEKS                       R21 R20 K22 ["TextFieldWrapper"]
      276 CALL                             R17 3 -1
      277 RETURN                           R17 -1
      278 GETUPVAL                         R18 5
      279 GETTABLEKS                       R17 R18 K20 ["createElement"]
      281 GETUPVAL                         R18 3
      282 DUPTABLE                         R19 K21 [{"LayoutOrder", "Title"}]
      283 SETTABLEKS                       R6 R19 K5 ["LayoutOrder"]
      285 SETTABLEKS                       R4 R19 K3 ["Title"]
      287 DUPTABLE                         R20 K23 [{"TextFieldWrapper"}]
      288 GETUPVAL                         R22 5
      289 GETTABLEKS                       R21 R22 K20 ["createElement"]
      291 GETUPVAL                         R22 6
      292 DUPTABLE                         R23 K61 [{"AutomaticSize", "LayoutOrder", "Size", "Spacing"}]
      293 GETIMPORT                        R24 K64 [Enum.AutomaticSize.XY]
      295 SETTABLEKS                       R24 R23 K59 ["AutomaticSize"]
      297 NAMECALL                         R24 R15 K29 ["getNextOrder"]
      299 CALL                             R24 1 1
      300 SETTABLEKS                       R24 R23 K5 ["LayoutOrder"]
      302 GETIMPORT                        R24 K31 [UDim2.new]
      304 LOADN                            R25 1
      305 LOADN                            R26 0
      306 LOADN                            R27 0
      307 MOVE                             R28 R5
      308 CALL                             R24 4 1
      309 SETTABLEKS                       R24 R23 K26 ["Size"]
      311 GETTABLEKS                       R24 R16 K65 ["bottomTextSpacing"]
      313 SETTABLEKS                       R24 R23 K60 ["Spacing"]
      315 DUPTABLE                         R24 K67 [{"UIListLayout", "TextField", "BottomTextWrapper"}]
      316 GETUPVAL                         R26 5
      317 GETTABLEKS                       R25 R26 K20 ["createElement"]
      319 LOADK                            R26 K66 ["UIListLayout"]
      320 DUPTABLE                         R27 K72 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      321 GETIMPORT                        R28 K74 [Enum.FillDirection.Vertical]
      323 SETTABLEKS                       R28 R27 K68 ["FillDirection"]
      325 GETIMPORT                        R28 K76 [Enum.HorizontalAlignment.Left]
      327 SETTABLEKS                       R28 R27 K69 ["HorizontalAlignment"]
      329 GETIMPORT                        R28 K78 [Enum.VerticalAlignment.Top]
      331 SETTABLEKS                       R28 R27 K70 ["VerticalAlignment"]
      333 GETIMPORT                        R28 K79 [Enum.SortOrder.LayoutOrder]
      335 SETTABLEKS                       R28 R27 K71 ["SortOrder"]
      337 CALL                             R25 2 1
      338 SETTABLEKS                       R25 R24 K66 ["UIListLayout"]
      340 GETUPVAL                         R26 5
      341 GETTABLEKS                       R25 R26 K20 ["createElement"]
      343 GETUPVAL                         R26 7
      344 DUPTABLE                         R27 K85 [{"BottomText", "LayoutOrder", "MultiLine", "OnTextChanged", "Size", "StyleModifier", "Text", "OnFocusLost", "ForwardRef"}]
      345 GETTABLEKS                       R29 R2 K51 ["BottomRightText"]
      347 JUMPIFNOT                        R29 ; [+2]
      348 LOADNIL                          R28
      349 JUMP                             ; [+1]
      350 MOVE                             R28 R13
      351 SETTABLEKS                       R28 R27 K54 ["BottomText"]
      353 NAMECALL                         R28 R15 K29 ["getNextOrder"]
      355 CALL                             R28 1 1
      356 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      358 SETTABLEKS                       R14 R27 K80 ["MultiLine"]
      360 GETTABLEKS                       R28 R0 K44 ["onTextChanged"]
      362 SETTABLEKS                       R28 R27 K81 ["OnTextChanged"]
      364 GETIMPORT                        R28 K31 [UDim2.new]
      366 LOADN                            R29 1
      367 LOADN                            R30 0
      368 LOADN                            R31 0
      369 SUBK                             R33 R5 K87 [40]
      370 SUBK                             R32 R33 K86 [20]
      371 CALL                             R28 4 1
      372 SETTABLEKS                       R28 R27 K26 ["Size"]
      374 JUMPIFNOT                        R12 ; [+4]
      375 GETUPVAL                         R29 8
      376 GETTABLEKS                       R28 R29 K88 ["Error"]
      378 JUMP                             ; [+1]
      379 LOADNIL                          R28
      380 SETTABLEKS                       R28 R27 K82 ["StyleModifier"]
      382 SETTABLEKS                       R9 R27 K56 ["Text"]
      384 GETUPVAL                         R29 9
      385 JUMPIFNOT                        R29 ; [+3]
      386 GETTABLEKS                       R28 R0 K89 ["onFocusLost"]
      388 JUMP                             ; [+1]
      389 LOADNIL                          R28
      390 SETTABLEKS                       R28 R27 K83 ["OnFocusLost"]
      392 GETUPVAL                         R29 9
      393 JUMPIFNOT                        R29 ; [+3]
      394 GETTABLEKS                       R28 R0 K90 ["textInputRef"]
      396 JUMP                             ; [+1]
      397 LOADNIL                          R28
      398 SETTABLEKS                       R28 R27 K84 ["ForwardRef"]
      400 CALL                             R25 2 1
      401 SETTABLEKS                       R25 R24 K32 ["TextField"]
      403 GETTABLEKS                       R26 R2 K51 ["BottomRightText"]
      405 JUMPIFNOT                        R26 ; [+112]
      406 GETUPVAL                         R26 5
      407 GETTABLEKS                       R25 R26 K20 ["createElement"]
      409 GETUPVAL                         R26 6
      410 DUPTABLE                         R27 K91 [{"AutomaticSize", "LayoutOrder", "Size"}]
      411 GETIMPORT                        R28 K64 [Enum.AutomaticSize.XY]
      413 SETTABLEKS                       R28 R27 K59 ["AutomaticSize"]
      415 NAMECALL                         R28 R15 K29 ["getNextOrder"]
      417 CALL                             R28 1 1
      418 SETTABLEKS                       R28 R27 K5 ["LayoutOrder"]
      420 GETIMPORT                        R28 K31 [UDim2.new]
      422 LOADN                            R29 1
      423 LOADN                            R30 0
      424 LOADN                            R31 0
      425 LOADN                            R32 0
      426 CALL                             R28 4 1
      427 SETTABLEKS                       R28 R27 K26 ["Size"]
      429 DUPTABLE                         R28 K93 [{"CounterText", "BottomText"}]
      430 GETUPVAL                         R30 5
      431 GETTABLEKS                       R29 R30 K20 ["createElement"]
      433 GETUPVAL                         R30 10
      434 DUPTABLE                         R31 K97 [{"AutomaticSize", "LayoutOrder", "Size", "TextXAlignment", "Text", "TextColor", "TextSize"}]
      435 GETIMPORT                        R32 K64 [Enum.AutomaticSize.XY]
      437 SETTABLEKS                       R32 R31 K59 ["AutomaticSize"]
      439 NAMECALL                         R32 R15 K29 ["getNextOrder"]
      441 CALL                             R32 1 1
      442 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      444 GETIMPORT                        R32 K31 [UDim2.new]
      446 LOADN                            R33 1
      447 LOADN                            R34 0
      448 LOADN                            R35 0
      449 LOADN                            R36 0
      450 CALL                             R32 4 1
      451 SETTABLEKS                       R32 R31 K26 ["Size"]
      453 GETIMPORT                        R32 K98 [Enum.TextXAlignment.Left]
      455 SETTABLEKS                       R32 R31 K94 ["TextXAlignment"]
      457 SETTABLEKS                       R13 R31 K56 ["Text"]
      459 JUMPIFNOT                        R12 ; [+3]
      460 GETTABLEKS                       R32 R16 K99 ["textErrorColor"]
      462 JUMP                             ; [+2]
      463 GETTABLEKS                       R32 R16 K100 ["textColor"]
      465 SETTABLEKS                       R32 R31 K95 ["TextColor"]
      467 GETTABLEKS                       R32 R16 K101 ["textSize"]
      469 SETTABLEKS                       R32 R31 K96 ["TextSize"]
      471 CALL                             R29 2 1
      472 SETTABLEKS                       R29 R28 K92 ["CounterText"]
      474 GETUPVAL                         R30 5
      475 GETTABLEKS                       R29 R30 K20 ["createElement"]
      477 GETUPVAL                         R30 10
      478 DUPTABLE                         R31 K102 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
      479 GETIMPORT                        R32 K104 [Enum.AutomaticSize.Y]
      481 SETTABLEKS                       R32 R31 K59 ["AutomaticSize"]
      483 NAMECALL                         R32 R15 K29 ["getNextOrder"]
      485 CALL                             R32 1 1
      486 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      488 GETIMPORT                        R32 K31 [UDim2.new]
      490 LOADN                            R33 1
      491 LOADN                            R34 0
      492 LOADN                            R35 0
      493 LOADN                            R36 0
      494 CALL                             R32 4 1
      495 SETTABLEKS                       R32 R31 K26 ["Size"]
      497 GETTABLEKS                       R32 R2 K51 ["BottomRightText"]
      499 SETTABLEKS                       R32 R31 K56 ["Text"]
      501 GETTABLEKS                       R32 R16 K100 ["textColor"]
      503 SETTABLEKS                       R32 R31 K95 ["TextColor"]
      505 GETTABLEKS                       R32 R16 K101 ["textSize"]
      507 SETTABLEKS                       R32 R31 K96 ["TextSize"]
      509 GETIMPORT                        R32 K106 [Enum.TextXAlignment.Right]
      511 SETTABLEKS                       R32 R31 K94 ["TextXAlignment"]
      513 CALL                             R29 2 1
      514 SETTABLEKS                       R29 R28 K54 ["BottomText"]
      516 CALL                             R25 3 1
      517 JUMP                             ; [+1]
      518 LOADNIL                          R25
      519 SETTABLEKS                       R25 R24 K33 ["BottomTextWrapper"]
      521 CALL                             R21 3 1
      522 SETTABLEKS                       R21 R20 K22 ["TextFieldWrapper"]
      524 CALL                             R17 3 -1
      525 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Src"]
       37 GETTABLEKS                       R8 R9 K11 ["Flags"]
       39 GETTABLEKS                       R7 R8 K12 ["getFFlagToolboxAssetConfigFoundationMigration"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K14 ["withContext"]
       46 GETTABLEKS                       R10 R0 K10 ["Src"]
       48 GETTABLEKS                       R9 R10 K15 ["Util"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R9 K16 ["Constants"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R9 K17 ["AssetConfigConstants"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R13 R4 K15 ["Util"]
       62 GETTABLEKS                       R12 R13 K18 ["LayoutOrderIterator"]
       64 GETTABLEKS                       R14 R4 K15 ["Util"]
       66 GETTABLEKS                       R13 R14 K19 ["StyleModifier"]
       68 GETTABLEKS                       R14 R4 K20 ["UI"]
       70 GETTABLEKS                       R15 R14 K21 ["Pane"]
       72 GETTABLEKS                       R16 R14 K22 ["TextInput"]
       74 GETTABLEKS                       R17 R14 K23 ["TextLabel"]
       76 GETTABLEKS                       R20 R0 K10 ["Src"]
       78 GETTABLEKS                       R19 R20 K24 ["Components"]
       80 GETTABLEKS                       R18 R19 K25 ["AssetConfiguration"]
       82 GETIMPORT                        R19 K5 [require]
       84 GETTABLEKS                       R20 R18 K26 ["ConfigSectionWrapper"]
       86 CALL                             R19 1 1
       87 GETIMPORT                        R20 K28 [game]
       89 LOADK                            R22 K29 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       90 LOADB                            R23 0
       91 NAMECALL                         R20 R20 K30 ["DefineFastFlag"]
       93 CALL                             R20 3 0
       94 GETIMPORT                        R20 K28 [game]
       96 LOADK                            R22 K29 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       97 NAMECALL                         R20 R20 K31 ["GetFastFlag"]
       99 CALL                             R20 2 1
      100 GETTABLEKS                       R21 R3 K32 ["PureComponent"]
      102 LOADK                            R23 K33 ["ConfigTextField"]
      103 NAMECALL                         R21 R21 K34 ["extend"]
      105 CALL                             R21 2 1
      106 DUPCLOSURE                       R22 K35 [PROTO_2]
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R3
      109 SETTABLEKS                       R22 R21 K36 ["init"]
      111 DUPCLOSURE                       R22 K37 [PROTO_4]
      112 CAPTURE                          VAL R20
      113 SETTABLEKS                       R22 R21 K38 ["didMount"]
      115 DUPCLOSURE                       R22 K39 [PROTO_5]
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R17
      127 SETTABLEKS                       R22 R21 K40 ["render"]
      129 MOVE                             R22 R8
      130 DUPTABLE                         R23 K42 [{"Stylizer"}]
      131 GETTABLEKS                       R24 R7 K41 ["Stylizer"]
      133 SETTABLEKS                       R24 R23 K41 ["Stylizer"]
      135 CALL                             R22 1 1
      136 MOVE                             R23 R21
      137 CALL                             R22 1 1
      138 MOVE                             R21 R22
      139 RETURN                           R21 1
