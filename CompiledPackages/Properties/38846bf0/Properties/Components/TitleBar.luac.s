PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["parts"]
        9 GETTABLEKS                       R0 R0 K2 ["value"]
       11 GETTABLEKS                       R0 R0 K3 ["multiple"]
       13 JUMPIFNOT                        R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K4 ["session"]
       18 GETTABLEKS                       R0 R0 K5 ["editProperty"]
       20 GETUPVAL                         R1 3
       21 DUPTABLE                         R2 K9 [{["type"] = "Stage", ["part"]}]
       22 DUPTABLE                         R3 K11 [{["name"] = "value", ["value"]}]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K2 ["value"]
       26 SETTABLEKS                       R3 R2 K8 ["part"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["session"]
        8 GETTABLEKS                       R1 R1 K2 ["editProperty"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K6 [{["type"] = "Stage", ["part"]}]
       12 DUPTABLE                         R4 K9 [{["name"] = "value", ["value"]}]
       13 SETTABLEKS                       R0 R4 K8 ["value"]
       15 SETTABLEKS                       R4 R3 K5 ["part"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 JUMPIFEQKNIL                     R0 ; [+7]
        6 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Escape]
       10 JUMPIFNOTEQ                      R1 R2 ; [+10]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["session"]
       15 GETTABLEKS                       R1 R1 K6 ["editProperty"]
       17 GETUPVAL                         R2 2
       18 DUPTABLE                         R3 K9 [{["type"] = "Cancel"}]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K5 ["session"]
       24 GETTABLEKS                       R1 R1 K6 ["editProperty"]
       26 GETUPVAL                         R2 2
       27 DUPTABLE                         R3 K11 [{["type"] = "Commit"}]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_5:
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
       28 GETTABLEKS                       R5 R1 K6 ["totalInstances"]
       30 JUMPIFEQKNIL                     R4 ; [+8]
       32 GETTABLEKS                       R7 R4 K7 ["parts"]
       34 GETTABLEKS                       R7 R7 K8 ["value"]
       36 GETTABLEKS                       R7 R7 K9 ["multiple"]
       38 JUMPIFNOT                        R7 ; [+6]
       39 LOADK                            R6 K10 ["%* selected"]
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K11 ["format"]
       43 CALL                             R6 2 1
       44 JUMP                             ; [+6]
       45 GETTABLEKS                       R6 R4 K7 ["parts"]
       47 GETTABLEKS                       R6 R6 K8 ["value"]
       49 GETTABLEKS                       R6 R6 K8 ["value"]
       51 GETUPVAL                         R7 5
       52 CALL                             R7 0 1
       53 GETUPVAL                         R8 6
       54 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R10 0 3
       61 MOVE                             R11 R7
       62 MOVE                             R12 R3
       63 MOVE                             R13 R3
       64 JUMPIFNOT                        R13 ; [+2]
       65 GETTABLEKS                       R13 R3 K7 ["parts"]
       67 SETLIST                          R10 R11 3 [1]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 6
       71 GETTABLEKS                       R9 R9 K13 ["useRef"]
       73 LOADB                            R10 0
       74 CALL                             R9 1 1
       75 GETUPVAL                         R10 7
       76 GETTABLEKS                       R10 R10 K14 ["useEventCallback"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R6
       84 CALL                             R10 1 1
       85 GETUPVAL                         R11 7
       86 GETTABLEKS                       R11 R11 K14 ["useEventCallback"]
       88 NEWCLOSURE                       R12 P2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U4
       92 CALL                             R11 1 1
       93 GETUPVAL                         R12 7
       94 GETTABLEKS                       R12 R12 K14 ["useEventCallback"]
       96 NEWCLOSURE                       R13 P3
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U4
      100 CALL                             R12 1 1
      101 GETUPVAL                         R13 8
      102 CALL                             R13 0 1
      103 GETUPVAL                         R14 9
      104 CALL                             R14 0 1
      105 GETUPVAL                         R15 10
      106 GETUPVAL                         R16 11
      107 DUPTABLE                         R17 K19 [{["LayoutOrder"], ["Size"], ["tag"] = "padding-x-small"}]
      108 GETTABLEKS                       R18 R0 K20 ["layoutOrder"]
      110 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      112 GETTABLEKS                       R18 R0 K21 ["size"]
      114 SETTABLEKS                       R18 R17 K16 ["Size"]
      116 DUPTABLE                         R18 K24 [{"Content", "Underline"}]
      117 GETUPVAL                         R19 10
      118 GETUPVAL                         R20 11
      119 DUPTABLE                         R21 K26 [{["tag"] = "row align-y-center gap-small size-full-full padding-left-small"}]
      120 DUPTABLE                         R22 K30 [{"Icon", "NameContainer", "PinSelection"}]
      121 GETUPVAL                         R23 10
      122 LOADK                            R24 K31 ["ImageLabel"]
      123 DUPTABLE                         R25 K37 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"], ["Image"], ["ImageTransparency"], ["ImageColor3"]}]
      124 MOVE                             R26 R14
      125 CALL                             R26 0 1
      126 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      128 GETIMPORT                        R26 K40 [UDim2.fromOffset]
      130 GETTABLEKS                       R27 R13 K16 ["Size"]
      132 GETTABLEKS                       R27 R27 K41 ["Size_400"]
      134 GETTABLEKS                       R28 R13 K16 ["Size"]
      136 GETTABLEKS                       R28 R28 K41 ["Size_400"]
      138 CALL                             R26 2 1
      139 SETTABLEKS                       R26 R25 K16 ["Size"]
      141 GETTABLEKS                       R26 R8 K42 ["image"]
      143 SETTABLEKS                       R26 R25 K34 ["Image"]
      145 GETTABLEKS                       R26 R8 K43 ["transparency"]
      147 SETTABLEKS                       R26 R25 K35 ["ImageTransparency"]
      149 GETTABLEKS                       R26 R8 K44 ["color3"]
      151 SETTABLEKS                       R26 R25 K36 ["ImageColor3"]
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K27 ["Icon"]
      156 GETUPVAL                         R23 10
      157 GETUPVAL                         R24 11
      158 DUPTABLE                         R25 K46 [{["tag"] = "size-0-full fill", ["LayoutOrder"]}]
      159 MOVE                             R26 R14
      160 CALL                             R26 0 1
      161 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      163 DUPTABLE                         R26 K48 [{"NameEditor"}]
      164 GETUPVAL                         R27 10
      165 GETUPVAL                         R28 12
      166 DUPTABLE                         R29 K61 [{["label"] = "", ["text"], ["size"], ["width"], ["focusBehavior"], ["variant"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["AnchorPoint"], ["Position"]}]
      167 SETTABLEKS                       R6 R29 K51 ["text"]
      169 GETUPVAL                         R30 13
      170 GETTABLEKS                       R30 R30 K62 ["XSmall"]
      172 SETTABLEKS                       R30 R29 K21 ["size"]
      174 GETIMPORT                        R30 K65 [UDim.new]
      176 LOADN                            R31 1
      177 LOADN                            R32 0
      178 CALL                             R30 2 1
      179 SETTABLEKS                       R30 R29 K52 ["width"]
      181 JUMPIFNOT                        R4 ; [+11]
      182 GETTABLEKS                       R31 R4 K7 ["parts"]
      184 GETTABLEKS                       R31 R31 K8 ["value"]
      186 GETTABLEKS                       R31 R31 K9 ["multiple"]
      188 JUMPIF                           R31 ; [+4]
      189 GETUPVAL                         R30 14
      190 GETTABLEKS                       R30 R30 K66 ["Highlight"]
      192 JUMP                             ; [+3]
      193 GETUPVAL                         R30 14
      194 GETTABLEKS                       R30 R30 K67 ["Clear"]
      196 SETTABLEKS                       R30 R29 K53 ["focusBehavior"]
      198 GETUPVAL                         R30 15
      199 GETTABLEKS                       R30 R30 K68 ["Utility"]
      201 SETTABLEKS                       R30 R29 K54 ["variant"]
      203 JUMPIFEQKN                       R5 K69 [0] ; [+2]
      205 LOADB                            R30 0 +1
      206 LOADB                            R30 1
      207 SETTABLEKS                       R30 R29 K55 ["isDisabled"]
      209 SETTABLEKS                       R10 R29 K56 ["onFocusGained"]
      211 SETTABLEKS                       R11 R29 K57 ["onChanged"]
      213 SETTABLEKS                       R12 R29 K58 ["onFocusLost"]
      215 GETIMPORT                        R30 K71 [Vector2.new]
      217 LOADN                            R31 0
      218 LOADK                            R32 K72 [0.5]
      219 CALL                             R30 2 1
      220 SETTABLEKS                       R30 R29 K59 ["AnchorPoint"]
      222 GETIMPORT                        R30 K74 [UDim2.fromScale]
      224 LOADN                            R31 0
      225 LOADK                            R32 K72 [0.5]
      226 CALL                             R30 2 1
      227 SETTABLEKS                       R30 R29 K60 ["Position"]
      229 CALL                             R27 2 1
      230 SETTABLEKS                       R27 R26 K47 ["NameEditor"]
      232 CALL                             R23 3 1
      233 SETTABLEKS                       R23 R22 K28 ["NameContainer"]
      235 GETUPVAL                         R23 16
      236 JUMPIFNOT                        R23 ; [+12]
      237 GETUPVAL                         R23 10
      238 GETUPVAL                         R24 17
      239 DUPTABLE                         R25 K75 [{"session", "LayoutOrder"}]
      240 GETTABLEKS                       R26 R0 K1 ["session"]
      242 SETTABLEKS                       R26 R25 K1 ["session"]
      244 MOVE                             R26 R14
      245 CALL                             R26 0 1
      246 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      248 CALL                             R23 2 1
      249 SETTABLEKS                       R23 R22 K29 ["PinSelection"]
      251 CALL                             R19 3 1
      252 SETTABLEKS                       R19 R18 K22 ["Content"]
      254 GETUPVAL                         R19 10
      255 GETUPVAL                         R20 11
      256 DUPTABLE                         R21 K78 [{["tag"] = "anchor-bottom-center", ["LayoutOrder"], ["Position"], ["Size"], ["backgroundStyle"]}]
      257 MOVE                             R22 R14
      258 CALL                             R22 0 1
      259 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      261 GETIMPORT                        R22 K79 [UDim2.new]
      263 LOADK                            R23 K72 [0.5]
      264 LOADN                            R24 0
      265 LOADN                            R25 1
      266 GETTABLEKS                       R27 R13 K80 ["Padding"]
      268 GETTABLEKS                       R27 R27 K81 ["XXSmall"]
      270 MINUS                            R26 R27
      271 CALL                             R22 4 1
      272 SETTABLEKS                       R22 R21 K60 ["Position"]
      274 GETIMPORT                        R22 K79 [UDim2.new]
      276 LOADN                            R23 1
      277 LOADN                            R24 0
      278 LOADN                            R25 0
      279 GETTABLEKS                       R26 R13 K82 ["Stroke"]
      281 GETTABLEKS                       R26 R26 K83 ["Standard"]
      283 CALL                             R22 4 1
      284 SETTABLEKS                       R22 R21 K16 ["Size"]
      286 GETTABLEKS                       R22 R13 K84 ["Color"]
      288 GETTABLEKS                       R22 R22 K82 ["Stroke"]
      290 GETTABLEKS                       R22 R22 K85 ["Default"]
      292 SETTABLEKS                       R22 R21 K77 ["backgroundStyle"]
      294 CALL                             R19 2 1
      295 SETTABLEKS                       R19 R18 K23 ["Underline"]
      297 CALL                             R15 3 -1
      298 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagPropertiesPinSelection"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["findProperty"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["Observable"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["PinSelectionButton"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["PropertyInteraction"]
       46 GETTABLEKS                       R7 R7 K16 ["PropertyId"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["PropertyTypes"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K10 ["Parent"]
       58 GETTABLEKS                       R9 R9 K18 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Parent"]
       65 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K20 ["RpcTypes"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Parent"]
       77 GETTABLEKS                       R12 R12 K21 ["SignalsReact"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       84 GETTABLEKS                       R13 R13 K23 ["useStyledClassIcon"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R3 K24 ["Enums"]
       89 GETTABLEKS                       R13 R13 K25 ["InputFocusBehavior"]
       91 GETTABLEKS                       R14 R3 K24 ["Enums"]
       93 GETTABLEKS                       R14 R14 K26 ["InputSize"]
       95 GETTABLEKS                       R15 R3 K24 ["Enums"]
       97 GETTABLEKS                       R15 R15 K27 ["InputVariant"]
       99 GETTABLEKS                       R16 R3 K28 ["TextInput"]
      101 GETTABLEKS                       R17 R3 K29 ["View"]
      103 GETTABLEKS                       R18 R9 K30 ["createNextOrder"]
      105 GETTABLEKS                       R19 R8 K31 ["createElement"]
      107 GETTABLEKS                       R20 R3 K22 ["Hooks"]
      109 GETTABLEKS                       R20 R20 K32 ["useTokens"]
      111 GETTABLEKS                       R21 R6 K33 ["fromClass"]
      113 LOADK                            R22 K34 ["Name"]
      114 LOADK                            R23 K35 ["Instance"]
      115 LOADK                            R24 K36 ["Property"]
      116 CALL                             R21 3 1
      117 GETTABLEKS                       R22 R6 K33 ["fromClass"]
      119 LOADK                            R23 K37 ["Self"]
      120 LOADK                            R24 K35 ["Instance"]
      121 LOADK                            R25 K38 ["Virtual"]
      122 CALL                             R22 3 1
      123 DUPCLOSURE                       R23 K39 [PROTO_0]
      124 DUPCLOSURE                       R24 K40 [PROTO_5]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R5
      143 GETTABLEKS                       R25 R8 K41 ["memo"]
      145 MOVE                             R26 R24
      146 CALL                             R25 1 -1
      147 RETURN                           R25 -1
