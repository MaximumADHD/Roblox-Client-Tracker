PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["beginEditingPropertyAsync"]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K1 ["setPropertyPart"]
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K2 ["value"]
        8 MOVE                             R5 R1
        9 CALL                             R2 3 0
       10 GETTABLEKS                       R2 R0 K3 ["finishEditingProperty"]
       12 GETUPVAL                         R3 0
       13 GETIMPORT                        R4 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETTABLEKS                       R2 R0 K0 ["parts"]
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 GETTABLEKS                       R2 R2 K2 ["multiple"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 LOADK                            R2 K3 ["%* selected"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K4 ["format"]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K0 ["parts"]
       17 GETTABLEKS                       R2 R2 K1 ["value"]
       19 GETTABLEKS                       R2 R2 K1 ["value"]
       21 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 JUMPIFEQKNIL                     R2 ; [+8]
        5 GETTABLEKS                       R4 R2 K0 ["parts"]
        7 GETTABLEKS                       R4 R4 K1 ["value"]
        9 GETTABLEKS                       R4 R4 K2 ["multiple"]
       11 JUMPIFNOT                        R4 ; [+7]
       12 LOADK                            R4 K3 ["%* selected"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R1 R4
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R1 R2 K0 ["parts"]
       21 GETTABLEKS                       R1 R1 K1 ["value"]
       23 GETTABLEKS                       R1 R1 K1 ["value"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIconProps"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["parts"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["Text"]
        8 SETTABLEKS                       R2 R0 K1 ["Text"]
       10 GETTABLEKS                       R4 R1 K1 ["Text"]
       12 LENGTH                           R3 R4
       13 ADDK                             R2 R3 K2 [1]
       14 SETTABLEKS                       R2 R0 K3 ["CursorPosition"]
       16 LOADN                            R2 1
       17 SETTABLEKS                       R2 R0 K4 ["SelectionStart"]
       19 GETUPVAL                         R2 1
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKNIL                     R2 ; [+7]
        2 GETTABLEKS                       R3 R2 K0 ["KeyCode"]
        4 GETIMPORT                        R4 K3 [Enum.KeyCode.Escape]
        6 JUMPIFNOTEQ                      R3 R4 ; [+5]
        8 GETUPVAL                         R3 0
        9 LOADB                            R4 0
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K4 ["Text"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["session"]
       19 GETTABLEKS                       R4 R0 K4 ["Text"]
       21 GETTABLEKS                       R5 R3 K6 ["beginEditingPropertyAsync"]
       23 GETUPVAL                         R6 3
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R3 K7 ["setPropertyPart"]
       27 GETUPVAL                         R6 3
       28 LOADK                            R7 K8 ["value"]
       29 MOVE                             R8 R4
       30 CALL                             R5 3 0
       31 GETTABLEKS                       R5 R3 K9 ["finishEditingProperty"]
       33 GETUPVAL                         R6 3
       34 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       36 CALL                             R5 2 0
       37 GETUPVAL                         R3 0
       38 LOADB                            R4 0
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 NAMECALL                         R1 R0 K1 ["IsFocused"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K2 ["ReleaseFocus"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["summaryObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useSignalState"]
       11 GETTABLEKS                       R3 R0 K1 ["session"]
       13 GETTABLEKS                       R3 R3 K4 ["observeProperties"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["byId"]
       19 MOVE                             R4 R2
       20 GETUPVAL                         R5 3
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["byId"]
       25 MOVE                             R5 R2
       26 GETUPVAL                         R6 4
       27 CALL                             R4 2 1
       28 MOVE                             R5 R4
       29 JUMPIFNOT                        R5 ; [+6]
       30 GETTABLEKS                       R5 R4 K6 ["parts"]
       32 GETTABLEKS                       R5 R5 K7 ["value"]
       34 GETTABLEKS                       R5 R5 K8 ["multiple"]
       36 LOADB                            R6 0
       37 JUMPIFEQKNIL                     R4 ; [+2]
       39 NOT                              R6 R5
       40 GETTABLEKS                       R7 R1 K9 ["totalInstances"]
       42 GETUPVAL                         R8 5
       43 GETTABLEKS                       R8 R8 K10 ["useBinding"]
       45 JUMPIFEQKNIL                     R4 ; [+8]
       47 GETTABLEKS                       R10 R4 K6 ["parts"]
       49 GETTABLEKS                       R10 R10 K7 ["value"]
       51 GETTABLEKS                       R10 R10 K8 ["multiple"]
       53 JUMPIFNOT                        R10 ; [+6]
       54 LOADK                            R9 K11 ["%* selected"]
       55 MOVE                             R11 R7
       56 NAMECALL                         R9 R9 K12 ["format"]
       58 CALL                             R9 2 1
       59 JUMP                             ; [+6]
       60 GETTABLEKS                       R9 R4 K6 ["parts"]
       62 GETTABLEKS                       R9 R9 K7 ["value"]
       64 GETTABLEKS                       R9 R9 K7 ["value"]
       66 CALL                             R8 1 2
       67 GETUPVAL                         R10 5
       68 GETTABLEKS                       R10 R10 K13 ["useEffect"]
       70 NEWCLOSURE                       R11 P0
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R12 0 2
       76 MOVE                             R13 R4
       77 MOVE                             R14 R7
       78 SETLIST                          R12 R13 2 [1]
       80 CALL                             R10 2 0
       81 GETUPVAL                         R10 6
       82 CALL                             R10 0 1
       83 GETUPVAL                         R11 5
       84 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       86 NEWCLOSURE                       R12 P1
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R13 0 3
       91 MOVE                             R14 R10
       92 MOVE                             R15 R3
       93 MOVE                             R16 R3
       94 JUMPIFNOT                        R16 ; [+2]
       95 GETTABLEKS                       R16 R3 K6 ["parts"]
       97 SETLIST                          R13 R14 3 [1]
       99 CALL                             R11 2 1
      100 GETUPVAL                         R12 5
      101 GETTABLEKS                       R12 R12 K15 ["useRef"]
      103 LOADNIL                          R13
      104 CALL                             R12 1 1
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K15 ["useRef"]
      108 LOADNIL                          R14
      109 CALL                             R13 1 1
      110 GETUPVAL                         R14 5
      111 GETTABLEKS                       R14 R14 K16 ["useState"]
      113 LOADB                            R15 0
      114 CALL                             R14 1 2
      115 GETUPVAL                         R16 5
      116 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      118 NEWCLOSURE                       R17 P2
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R15
      121 NEWTABLE                         R18 0 0
      123 CALL                             R16 2 1
      124 GETUPVAL                         R17 5
      125 GETTABLEKS                       R17 R17 K17 ["useCallback"]
      127 NEWCLOSURE                       R18 P3
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U4
      132 NEWTABLE                         R19 0 1
      134 GETTABLEKS                       R20 R0 K1 ["session"]
      136 SETLIST                          R19 R20 1 [1]
      138 CALL                             R17 2 1
      139 GETUPVAL                         R18 5
      140 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      142 NEWCLOSURE                       R19 P4
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R6
      145 NEWTABLE                         R20 0 1
      147 MOVE                             R21 R7
      148 SETLIST                          R20 R21 1 [1]
      150 CALL                             R18 2 0
      151 GETUPVAL                         R18 7
      152 CALL                             R18 0 1
      153 GETUPVAL                         R19 8
      154 CALL                             R19 0 1
      155 GETUPVAL                         R20 8
      156 CALL                             R20 0 1
      157 GETUPVAL                         R21 9
      158 GETUPVAL                         R22 10
      159 DUPTABLE                         R23 K22 [{["LayoutOrder"], ["Size"], ["tag"] = "padding-x-small"}]
      160 GETTABLEKS                       R24 R0 K23 ["layoutOrder"]
      162 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      164 GETTABLEKS                       R24 R0 K24 ["size"]
      166 SETTABLEKS                       R24 R23 K19 ["Size"]
      168 DUPTABLE                         R24 K27 [{"Content", "Underline"}]
      169 GETUPVAL                         R25 9
      170 GETUPVAL                         R26 10
      171 DUPTABLE                         R27 K29 [{["tag"] = "row align-y-center gap-small size-full-full padding-left-small"}]
      172 DUPTABLE                         R28 K32 [{"Icon", "NameContainer"}]
      173 GETUPVAL                         R29 9
      174 LOADK                            R30 K33 ["ImageLabel"]
      175 DUPTABLE                         R31 K39 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"], ["Image"], ["ImageTransparency"], ["ImageColor3"]}]
      176 MOVE                             R32 R19
      177 CALL                             R32 0 1
      178 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      180 GETIMPORT                        R32 K42 [UDim2.fromOffset]
      182 GETTABLEKS                       R33 R18 K19 ["Size"]
      184 GETTABLEKS                       R33 R33 K43 ["Size_400"]
      186 GETTABLEKS                       R34 R18 K19 ["Size"]
      188 GETTABLEKS                       R34 R34 K43 ["Size_400"]
      190 CALL                             R32 2 1
      191 SETTABLEKS                       R32 R31 K19 ["Size"]
      193 GETTABLEKS                       R32 R11 K44 ["image"]
      195 SETTABLEKS                       R32 R31 K36 ["Image"]
      197 GETTABLEKS                       R32 R11 K45 ["transparency"]
      199 SETTABLEKS                       R32 R31 K37 ["ImageTransparency"]
      201 GETTABLEKS                       R32 R11 K46 ["color3"]
      203 SETTABLEKS                       R32 R31 K38 ["ImageColor3"]
      205 CALL                             R29 2 1
      206 SETTABLEKS                       R29 R28 K30 ["Icon"]
      208 GETUPVAL                         R29 9
      209 GETUPVAL                         R30 10
      210 DUPTABLE                         R31 K48 [{["tag"] = "size-full-full", ["LayoutOrder"]}]
      211 MOVE                             R32 R19
      212 CALL                             R32 0 1
      213 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      215 DUPTABLE                         R32 K51 [{"Name", "NameEditor"}]
      216 GETUPVAL                         R33 9
      217 GETUPVAL                         R34 11
      218 DUPTABLE                         R35 K57 [{["tag"] = "size-full-full text-body-small text-no-wrap text-align-x-left", ["LayoutOrder"], ["ZIndex"], ["Text"], ["textStyle"], ["ref"]}]
      219 MOVE                             R36 R19
      220 CALL                             R36 0 1
      221 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      223 MOVE                             R36 R20
      224 CALL                             R36 0 1
      225 SETTABLEKS                       R36 R35 K53 ["ZIndex"]
      227 SETTABLEKS                       R8 R35 K54 ["Text"]
      229 DUPTABLE                         R36 K59 [{"Transparency"}]
      230 JUMPIFNOT                        R14 ; [+2]
      231 LOADN                            R37 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R37
      234 SETTABLEKS                       R37 R36 K58 ["Transparency"]
      236 SETTABLEKS                       R36 R35 K55 ["textStyle"]
      238 SETTABLEKS                       R12 R35 K56 ["ref"]
      240 CALL                             R33 2 1
      241 SETTABLEKS                       R33 R32 K49 ["Name"]
      243 GETUPVAL                         R33 9
      244 LOADK                            R34 K60 ["TextBox"]
      245 NEWTABLE                         R35 32 0
      247 MOVE                             R36 R19
      248 CALL                             R36 0 1
      249 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      251 MOVE                             R36 R20
      252 CALL                             R36 0 1
      253 SETTABLEKS                       R36 R35 K53 ["ZIndex"]
      255 GETIMPORT                        R36 K62 [UDim2.fromScale]
      257 LOADN                            R37 1
      258 LOADN                            R38 1
      259 CALL                             R36 2 1
      260 SETTABLEKS                       R36 R35 K19 ["Size"]
      262 LOADB                            R36 0
      263 SETTABLEKS                       R36 R35 K63 ["ClearTextOnFocus"]
      265 SETTABLEKS                       R6 R35 K64 ["Visible"]
      267 LOADK                            R36 K65 [""]
      268 SETTABLEKS                       R36 R35 K54 ["Text"]
      270 LOADN                            R36 1
      271 SETTABLEKS                       R36 R35 K34 ["BackgroundTransparency"]
      273 JUMPIFNOT                        R14 ; [+9]
      274 GETTABLEKS                       R36 R18 K66 ["Color"]
      276 GETTABLEKS                       R36 R36 K25 ["Content"]
      278 GETTABLEKS                       R36 R36 K67 ["Default"]
      280 GETTABLEKS                       R36 R36 K58 ["Transparency"]
      282 JUMP                             ; [+1]
      283 LOADN                            R36 1
      284 SETTABLEKS                       R36 R35 K68 ["TextTransparency"]
      286 LOADN                            R36 0
      287 SETTABLEKS                       R36 R35 K69 ["BorderSizePixel"]
      289 GETTABLEKS                       R36 R18 K70 ["Typography"]
      291 GETTABLEKS                       R36 R36 K71 ["BodySmall"]
      293 GETTABLEKS                       R36 R36 K72 ["Font"]
      295 SETTABLEKS                       R36 R35 K72 ["Font"]
      297 GETTABLEKS                       R36 R18 K70 ["Typography"]
      299 GETTABLEKS                       R36 R36 K71 ["BodySmall"]
      301 GETTABLEKS                       R36 R36 K73 ["LineHeight"]
      303 SETTABLEKS                       R36 R35 K73 ["LineHeight"]
      305 GETTABLEKS                       R36 R18 K70 ["Typography"]
      307 GETTABLEKS                       R36 R36 K71 ["BodySmall"]
      309 GETTABLEKS                       R36 R36 K74 ["FontSize"]
      311 SETTABLEKS                       R36 R35 K75 ["TextSize"]
      313 GETIMPORT                        R36 K79 [Enum.TextXAlignment.Left]
      315 SETTABLEKS                       R36 R35 K77 ["TextXAlignment"]
      317 GETTABLEKS                       R36 R18 K66 ["Color"]
      319 GETTABLEKS                       R36 R36 K25 ["Content"]
      321 GETTABLEKS                       R36 R36 K67 ["Default"]
      323 GETTABLEKS                       R36 R36 K80 ["Color3"]
      325 SETTABLEKS                       R36 R35 K81 ["TextColor3"]
      327 SETTABLEKS                       R13 R35 K56 ["ref"]
      329 GETUPVAL                         R36 5
      330 GETTABLEKS                       R36 R36 K82 ["Event"]
      332 GETTABLEKS                       R36 R36 K83 ["Focused"]
      334 SETTABLE                         R16 R35 R36
      335 GETUPVAL                         R36 5
      336 GETTABLEKS                       R36 R36 K82 ["Event"]
      338 GETTABLEKS                       R36 R36 K84 ["FocusLost"]
      340 SETTABLE                         R17 R35 R36
      341 CALL                             R33 2 1
      342 SETTABLEKS                       R33 R32 K50 ["NameEditor"]
      344 CALL                             R29 3 1
      345 SETTABLEKS                       R29 R28 K31 ["NameContainer"]
      347 CALL                             R25 3 1
      348 SETTABLEKS                       R25 R24 K25 ["Content"]
      350 GETUPVAL                         R25 9
      351 GETUPVAL                         R26 10
      352 DUPTABLE                         R27 K88 [{["tag"] = "anchor-bottom-center", ["LayoutOrder"], ["Position"], ["Size"], ["backgroundStyle"]}]
      353 MOVE                             R28 R19
      354 CALL                             R28 0 1
      355 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      357 GETIMPORT                        R28 K90 [UDim2.new]
      359 LOADK                            R29 K91 [0.5]
      360 LOADN                            R30 0
      361 LOADN                            R31 1
      362 GETTABLEKS                       R33 R18 K92 ["Padding"]
      364 GETTABLEKS                       R33 R33 K93 ["XXSmall"]
      366 MINUS                            R32 R33
      367 CALL                             R28 4 1
      368 SETTABLEKS                       R28 R27 K86 ["Position"]
      370 GETIMPORT                        R28 K90 [UDim2.new]
      372 LOADN                            R29 1
      373 LOADN                            R30 0
      374 LOADN                            R31 0
      375 GETTABLEKS                       R32 R18 K94 ["Stroke"]
      377 GETTABLEKS                       R32 R32 K95 ["Standard"]
      379 CALL                             R28 4 1
      380 SETTABLEKS                       R28 R27 K19 ["Size"]
      382 GETTABLEKS                       R28 R18 K66 ["Color"]
      384 GETTABLEKS                       R28 R28 K94 ["Stroke"]
      386 GETTABLEKS                       R28 R28 K67 ["Default"]
      388 SETTABLEKS                       R28 R27 K87 ["backgroundStyle"]
      390 CALL                             R25 2 1
      391 SETTABLEKS                       R25 R24 K26 ["Underline"]
      393 CALL                             R21 3 -1
      394 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["findProperty"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K8 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["React"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K15 ["RpcTypes"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Parent"]
       61 GETTABLEKS                       R10 R10 K16 ["SignalsReact"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       68 GETTABLEKS                       R11 R11 K18 ["useStyledClassIcon"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R2 K19 ["Text"]
       73 GETTABLEKS                       R12 R2 K20 ["View"]
       75 GETTABLEKS                       R13 R7 K21 ["createNextOrder"]
       77 GETTABLEKS                       R14 R6 K22 ["createElement"]
       79 GETTABLEKS                       R15 R2 K17 ["Hooks"]
       81 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       83 DUPTABLE                         R16 K30 [{["metaType"] = "Property", ["name"] = "Name", ["className"] = "Instance"}]
       84 DUPTABLE                         R17 K33 [{["metaType"] = "Virtual", ["name"] = "Self", ["className"] = "Instance"}]
       85 DUPCLOSURE                       R18 K34 [PROTO_0]
       86 CAPTURE                          VAL R16
       87 DUPCLOSURE                       R19 K35 [PROTO_1]
       88 DUPCLOSURE                       R20 K36 [PROTO_7]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R11
      101 RETURN                           R20 1
