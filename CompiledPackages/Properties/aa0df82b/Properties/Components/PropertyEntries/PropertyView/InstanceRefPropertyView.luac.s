PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 DUPTABLE                         R0 K4 [{[1] = "", ["transparency"] = 0}]
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K5 ["getIconProps"]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K0 ["InstanceRef"]
        6 LOADK                            R3 K1 ["Selecting"]
        7 NAMECALL                         R0 R0 K2 ["getText"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 0
       12 JUMPIFNOT                        R0 ; [+13]
       13 GETUPVAL                         R0 3
       14 JUMPIFNOT                        R0 ; [+11]
       15 GETUPVAL                         R0 2
       16 LOADK                            R2 K0 ["InstanceRef"]
       17 LOADK                            R3 K3 ["SelectInstanceType"]
       18 DUPTABLE                         R4 K5 [{"typeOfInstance"}]
       19 GETUPVAL                         R5 4
       20 SETTABLEKS                       R5 R4 K4 ["typeOfInstance"]
       22 NAMECALL                         R0 R0 K2 ["getText"]
       24 CALL                             R0 4 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R0 5
       27 JUMPIFNOT                        R0 ; [+7]
       28 GETUPVAL                         R0 2
       29 LOADK                            R2 K0 ["InstanceRef"]
       30 LOADK                            R3 K6 ["Multiple"]
       31 NAMECALL                         R0 R0 K2 ["getText"]
       33 CALL                             R0 3 -1
       34 RETURN                           R0 -1
       35 GETUPVAL                         R0 0
       36 JUMPIFNOT                        R0 ; [+7]
       37 GETUPVAL                         R0 2
       38 LOADK                            R2 K0 ["InstanceRef"]
       39 LOADK                            R3 K7 ["Empty"]
       40 NAMECALL                         R0 R0 K2 ["getText"]
       42 CALL                             R0 3 -1
       43 RETURN                           R0 -1
       44 GETUPVAL                         R0 6
       45 GETTABLEKS                       R0 R0 K8 ["name"]
       47 GETTABLEKS                       R0 R0 K9 ["value"]
       49 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["get"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETIMPORT                        R1 K2 [warn]
       14 LOADK                            R2 K3 ["Tried to start selecting when InstancePicker was already active"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 NEWTABLE                         R2 0 1
       20 GETUPVAL                         R3 4
       21 SETLIST                          R2 R3 1 [1]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 LOADB                            R3 0
       26 CALL                             R2 1 0
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K4 ["beginEditingAsync"]
       32 CALL                             R2 0 0
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K5 ["setPart"]
       36 LOADK                            R3 K6 ["value"]
       37 MOVE                             R4 R1
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 5
       40 GETTABLEKS                       R2 R2 K7 ["finishEditing"]
       42 GETIMPORT                        R3 K11 [Enum.FinishRecordingOperation.Commit]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 JUMPIFEQKS                       R0 K0 ["Hover"] ; [+5]
        4 JUMPIFEQKS                       R0 K1 ["Pressed"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["setPart"]
        7 LOADK                            R1 K2 ["value"]
        8 LOADNIL                          R2
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["finishEditing"]
       13 GETIMPORT                        R1 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["specializedEditingUtils"]
        2 GETTABLEKS                       R1 R1 K1 ["instancePicker"]
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["must provide an instanceRef utils to use instanceRef"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["useSignalState"]
       14 GETTABLEKS                       R3 R0 K6 ["getInfo"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 CALL                             R3 0 1
       19 LOADB                            R5 0
       20 GETTABLEKS                       R6 R2 K7 ["extra"]
       22 JUMPIFEQKNIL                     R6 ; [+9]
       24 GETTABLEKS                       R6 R2 K7 ["extra"]
       26 GETTABLEKS                       R6 R6 K8 ["type"]
       28 JUMPIFEQKS                       R6 K9 ["instanceRef"] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       34 LOADK                            R6 K10 ["Did not contain InstanceRefPropertyInfoExtra"]
       35 GETIMPORT                        R4 K4 [assert]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R2 K7 ["extra"]
       40 GETTABLEKS                       R4 R4 K11 ["className"]
       42 GETTABLEKS                       R5 R2 K12 ["parts"]
       44 GETTABLEKS                       R6 R5 K13 ["value"]
       46 GETTABLEKS                       R7 R6 K13 ["value"]
       48 GETTABLEKS                       R8 R6 K14 ["multiple"]
       50 NOT                              R9 R8
       51 JUMPIFNOT                        R9 ; [+4]
       52 JUMPIFEQKNIL                     R7 ; [+2]
       54 LOADB                            R9 0 +1
       55 LOADB                            R9 1
       56 GETTABLEKS                       R10 R2 K15 ["readonly"]
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R11 R11 K16 ["useState"]
       61 LOADB                            R12 0
       62 CALL                             R11 1 2
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R13 R13 K16 ["useState"]
       66 LOADB                            R14 0
       67 CALL                             R13 1 2
       68 GETTABLEKS                       R15 R1 K17 ["isActive"]
       70 GETTABLEKS                       R16 R1 K18 ["pickInstanceAsync"]
       72 MOVE                             R17 R13
       73 JUMPIFNOT                        R17 ; [+6]
       74 GETTABLEKS                       R18 R15 K19 ["get"]
       76 CALL                             R18 0 1
       77 NOT                              R17 R18
       78 JUMPIFNOT                        R17 ; [+1]
       79 NOT                              R17 R10
       80 GETUPVAL                         R18 3
       81 CALL                             R18 0 1
       82 GETUPVAL                         R19 2
       83 GETTABLEKS                       R19 R19 K20 ["useMemo"]
       85 NEWCLOSURE                       R20 P0
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R18
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R21 0 5
       91 MOVE                             R22 R9
       92 MOVE                             R23 R8
       93 MOVE                             R24 R7
       94 GETTABLEKS                       R25 R18 K21 ["getIconProps"]
       96 MOVE                             R26 R5
       97 SETLIST                          R21 R22 5 [1]
       99 CALL                             R19 2 1
      100 GETUPVAL                         R20 2
      101 GETTABLEKS                       R20 R20 K20 ["useMemo"]
      103 NEWCLOSURE                       R21 P1
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R5
      111 NEWTABLE                         R22 0 6
      113 MOVE                             R23 R11
      114 MOVE                             R24 R17
      115 MOVE                             R25 R8
      116 MOVE                             R26 R9
      117 GETTABLEKS                       R27 R5 K22 ["name"]
      119 GETTABLEKS                       R27 R27 K13 ["value"]
      121 MOVE                             R28 R4
      122 SETLIST                          R22 R23 6 [1]
      124 CALL                             R20 2 1
      125 GETUPVAL                         R21 5
      126 NEWCLOSURE                       R22 P2
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R0
      133 NEWTABLE                         R23 0 7
      135 MOVE                             R24 R11
      136 GETTABLEKS                       R25 R0 K23 ["beginEditingAsync"]
      138 GETTABLEKS                       R26 R0 K24 ["setPart"]
      140 GETTABLEKS                       R27 R0 K25 ["finishEditing"]
      142 MOVE                             R28 R15
      143 MOVE                             R29 R16
      144 MOVE                             R30 R4
      145 SETLIST                          R23 R24 7 [1]
      147 CALL                             R21 2 1
      148 GETUPVAL                         R22 5
      149 NEWCLOSURE                       R23 P3
      150 CAPTURE                          VAL R14
      151 NEWTABLE                         R24 0 0
      153 CALL                             R22 2 1
      154 GETUPVAL                         R23 5
      155 NEWCLOSURE                       R24 P4
      156 CAPTURE                          VAL R0
      157 NEWTABLE                         R25 0 3
      159 GETTABLEKS                       R26 R0 K23 ["beginEditingAsync"]
      161 GETTABLEKS                       R27 R0 K24 ["setPart"]
      163 GETTABLEKS                       R28 R0 K23 ["beginEditingAsync"]
      165 SETLIST                          R25 R26 3 [1]
      167 CALL                             R23 2 1
      168 GETUPVAL                         R24 6
      169 GETTABLEKS                       R24 R24 K26 ["Hooks"]
      171 GETTABLEKS                       R24 R24 K27 ["useTokens"]
      173 CALL                             R24 0 1
      174 GETUPVAL                         R25 7
      175 CALL                             R25 0 1
      176 GETUPVAL                         R26 8
      177 GETUPVAL                         R27 6
      178 GETTABLEKS                       R27 R27 K28 ["View"]
      180 DUPTABLE                         R28 K34 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      181 NEWTABLE                         R29 8 0
      183 LOADB                            R30 1
      184 SETTABLEKS                       R30 R29 K35 ["row flex-around align-y-center radius-small"]
      186 SETTABLEKS                       R11 R29 K36 ["bg-emphasis"]
      188 NOT                              R30 R11
      189 JUMPIFNOT                        R30 ; [+1]
      190 NOT                              R30 R10
      191 SETTABLEKS                       R30 R29 K37 ["bg-shift-200"]
      193 SETTABLEKS                       R10 R29 K38 ["bg-shift-100"]
      195 SETTABLEKS                       R17 R29 K39 ["stroke-emphasis"]
      197 SETTABLEKS                       R29 R28 K29 ["tag"]
      199 GETIMPORT                        R29 K42 [UDim2.new]
      201 LOADN                            R30 1
      202 LOADN                            R31 0
      203 LOADN                            R32 0
      204 GETTABLEKS                       R33 R24 K30 ["Size"]
      206 GETTABLEKS                       R33 R33 K43 ["Size_600"]
      208 CALL                             R29 4 1
      209 SETTABLEKS                       R29 R28 K30 ["Size"]
      211 JUMPIF                           R10 ; [+2]
      212 MOVE                             R29 R21
      213 JUMP                             ; [+1]
      214 LOADNIL                          R29
      215 SETTABLEKS                       R29 R28 K31 ["onActivated"]
      217 JUMPIF                           R10 ; [+2]
      218 MOVE                             R29 R22
      219 JUMP                             ; [+1]
      220 LOADNIL                          R29
      221 SETTABLEKS                       R29 R28 K32 ["onStateChanged"]
      223 JUMPIFNOT                        R10 ; [+2]
      224 DUPTABLE                         R29 K46 [{["affordance"] = "None"}]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R29
      227 SETTABLEKS                       R29 R28 K33 ["stateLayer"]
      229 DUPTABLE                         R29 K52 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      230 GETUPVAL                         R30 8
      231 GETUPVAL                         R31 6
      232 GETTABLEKS                       R31 R31 K53 ["Image"]
      234 DUPTABLE                         R32 K57 [{["tag"] = "size-400-400", ["LayoutOrder"], ["Image"], ["imageStyle"]}]
      235 MOVE                             R33 R25
      236 CALL                             R33 0 1
      237 SETTABLEKS                       R33 R32 K55 ["LayoutOrder"]
      239 GETTABLEKS                       R33 R19 K58 ["image"]
      241 SETTABLEKS                       R33 R32 K53 ["Image"]
      243 DUPTABLE                         R33 K61 [{"Transparency", "Color3"}]
      244 JUMPIFNOT                        R10 ; [+5]
      245 GETTABLEKS                       R34 R3 K47 ["ClassIcon"]
      247 GETTABLEKS                       R34 R34 K62 ["DisabledTransparency"]
      249 JUMP                             ; [+2]
      250 GETTABLEKS                       R34 R19 K63 ["transparency"]
      252 SETTABLEKS                       R34 R33 K59 ["Transparency"]
      254 GETTABLEKS                       R34 R19 K64 ["color3"]
      256 SETTABLEKS                       R34 R33 K60 ["Color3"]
      258 SETTABLEKS                       R33 R32 K56 ["imageStyle"]
      260 CALL                             R30 2 1
      261 SETTABLEKS                       R30 R29 K47 ["ClassIcon"]
      263 GETUPVAL                         R30 8
      264 GETUPVAL                         R31 6
      265 GETTABLEKS                       R31 R31 K65 ["Text"]
      267 DUPTABLE                         R32 K68 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      268 NEWTABLE                         R33 4 0
      270 LOADB                            R34 1
      271 SETTABLEKS                       R34 R33 K69 ["align-x-left shrink size-0-full auto-x padding-left-xsmall text-label-small text-align-x-left"]
      273 SETTABLEKS                       R11 R33 K70 ["content-action-emphasis"]
      275 NOT                              R34 R9
      276 JUMPIFNOT                        R34 ; [+3]
      277 NOT                              R34 R11
      278 JUMPIFNOT                        R34 ; [+1]
      279 NOT                              R34 R10
      280 SETTABLEKS                       R34 R33 K71 ["content-emphasis"]
      282 JUMPIFNOT                        R9 ; [+2]
      283 NOT                              R34 R11
      284 JUMPIF                           R34 ; [+1]
      285 MOVE                             R34 R10
      286 SETTABLEKS                       R34 R33 K72 ["content-muted"]
      288 SETTABLEKS                       R33 R32 K29 ["tag"]
      290 MOVE                             R33 R25
      291 CALL                             R33 0 1
      292 SETTABLEKS                       R33 R32 K55 ["LayoutOrder"]
      294 SETTABLEKS                       R20 R32 K65 ["Text"]
      296 CALL                             R30 2 1
      297 SETTABLEKS                       R30 R29 K48 ["InstanceName"]
      299 GETUPVAL                         R30 8
      300 GETUPVAL                         R31 6
      301 GETTABLEKS                       R31 R31 K28 ["View"]
      303 DUPTABLE                         R32 K74 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      304 MOVE                             R33 R25
      305 CALL                             R33 0 1
      306 SETTABLEKS                       R33 R32 K55 ["LayoutOrder"]
      308 CALL                             R30 2 1
      309 SETTABLEKS                       R30 R29 K49 ["Padding"]
      311 GETUPVAL                         R30 8
      312 GETUPVAL                         R31 9
      313 DUPTABLE                         R32 K78 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      314 SETTABLEKS                       R11 R32 K75 ["emphasis"]
      316 SETTABLEKS                       R23 R32 K76 ["onClose"]
      318 MOVE                             R33 R25
      319 CALL                             R33 0 1
      320 SETTABLEKS                       R33 R32 K55 ["LayoutOrder"]
      322 NOT                              R33 R9
      323 JUMPIFNOT                        R33 ; [+3]
      324 NOT                              R33 R11
      325 JUMPIFNOT                        R33 ; [+1]
      326 NOT                              R33 R10
      327 SETTABLEKS                       R33 R32 K77 ["Visible"]
      329 CALL                             R30 2 1
      330 SETTABLEKS                       R30 R29 K50 ["Cancel"]
      332 GETUPVAL                         R30 8
      333 LOADK                            R31 K51 ["UIPadding"]
      334 DUPTABLE                         R32 K80 [{"PaddingLeft"}]
      335 GETIMPORT                        R33 K82 [UDim.new]
      337 LOADN                            R34 0
      338 GETTABLEKS                       R35 R24 K30 ["Size"]
      340 GETTABLEKS                       R35 R35 K83 ["Size_150"]
      342 CALL                             R33 2 1
      343 SETTABLEKS                       R33 R32 K79 ["PaddingLeft"]
      345 CALL                             R30 2 1
      346 SETTABLEKS                       R30 R29 K51 ["UIPadding"]
      348 CALL                             R26 3 -1
      349 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["CloseAffordance"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K12 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K14 ["SignalsReact"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K15 ["Resources"]
       49 GETTABLEKS                       R9 R9 K16 ["Localization"]
       51 GETTABLEKS                       R9 R9 K17 ["Translator"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       58 GETTABLEKS                       R10 R10 K19 ["useStyledClassIcon"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       65 GETTABLEKS                       R11 R11 K20 ["useVisualValues"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R6 K21 ["createNextOrder"]
       70 GETTABLEKS                       R12 R5 K22 ["useCallback"]
       72 GETTABLEKS                       R13 R5 K23 ["createElement"]
       74 DUPCLOSURE                       R14 K24 [PROTO_5]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R2
       85 RETURN                           R14 1
