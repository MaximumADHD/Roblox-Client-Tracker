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
       30 GETTABLEKS                       R2 R2 K4 ["editProperty"]
       32 DUPTABLE                         R3 K8 [{["type"] = "Edit", ["part"]}]
       33 DUPTABLE                         R4 K11 [{["name"] = "value", ["value"]}]
       34 SETTABLEKS                       R1 R4 K10 ["value"]
       36 SETTABLEKS                       R4 R3 K7 ["part"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["editProperty"]
        3 DUPTABLE                         R1 K4 [{["type"] = "Edit", ["part"]}]
        4 DUPTABLE                         R2 K8 [{["name"] = "value", ["value"] = }]
        5 SETTABLEKS                       R2 R1 K3 ["part"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
      126 GETTABLEKS                       R21 R21 K23 ["useEventCallback"]
      128 NEWCLOSURE                       R22 P2
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R0
      135 CALL                             R21 1 1
      136 GETUPVAL                         R22 6
      137 NEWCLOSURE                       R23 P3
      138 CAPTURE                          VAL R14
      139 NEWTABLE                         R24 0 0
      141 CALL                             R22 2 1
      142 GETUPVAL                         R23 5
      143 GETTABLEKS                       R23 R23 K23 ["useEventCallback"]
      145 NEWCLOSURE                       R24 P4
      146 CAPTURE                          VAL R0
      147 CALL                             R23 1 1
      148 GETUPVAL                         R24 7
      149 GETTABLEKS                       R24 R24 K24 ["Hooks"]
      151 GETTABLEKS                       R24 R24 K25 ["useTokens"]
      153 CALL                             R24 0 1
      154 GETUPVAL                         R25 8
      155 CALL                             R25 0 1
      156 GETUPVAL                         R26 9
      157 GETUPVAL                         R27 7
      158 GETTABLEKS                       R27 R27 K26 ["View"]
      160 DUPTABLE                         R28 K32 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      161 NEWTABLE                         R29 8 0
      163 LOADB                            R30 1
      164 SETTABLEKS                       R30 R29 K33 ["row flex-around align-y-center radius-small"]
      166 SETTABLEKS                       R11 R29 K34 ["bg-emphasis"]
      168 NOT                              R30 R11
      169 JUMPIFNOT                        R30 ; [+1]
      170 NOT                              R30 R10
      171 SETTABLEKS                       R30 R29 K35 ["bg-shift-200"]
      173 SETTABLEKS                       R10 R29 K36 ["bg-shift-100"]
      175 SETTABLEKS                       R17 R29 K37 ["stroke-emphasis"]
      177 SETTABLEKS                       R29 R28 K27 ["tag"]
      179 GETIMPORT                        R29 K40 [UDim2.new]
      181 LOADN                            R30 1
      182 LOADN                            R31 0
      183 LOADN                            R32 0
      184 GETTABLEKS                       R33 R24 K28 ["Size"]
      186 GETTABLEKS                       R33 R33 K41 ["Size_600"]
      188 CALL                             R29 4 1
      189 SETTABLEKS                       R29 R28 K28 ["Size"]
      191 JUMPIF                           R10 ; [+2]
      192 MOVE                             R29 R21
      193 JUMP                             ; [+1]
      194 LOADNIL                          R29
      195 SETTABLEKS                       R29 R28 K29 ["onActivated"]
      197 JUMPIF                           R10 ; [+2]
      198 MOVE                             R29 R22
      199 JUMP                             ; [+1]
      200 LOADNIL                          R29
      201 SETTABLEKS                       R29 R28 K30 ["onStateChanged"]
      203 JUMPIFNOT                        R10 ; [+2]
      204 DUPTABLE                         R29 K44 [{["affordance"] = "None"}]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R29
      207 SETTABLEKS                       R29 R28 K31 ["stateLayer"]
      209 DUPTABLE                         R29 K50 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      210 GETUPVAL                         R30 9
      211 GETUPVAL                         R31 7
      212 GETTABLEKS                       R31 R31 K51 ["Image"]
      214 DUPTABLE                         R32 K55 [{["tag"] = "size-400-400", ["LayoutOrder"], ["Image"], ["imageStyle"]}]
      215 MOVE                             R33 R25
      216 CALL                             R33 0 1
      217 SETTABLEKS                       R33 R32 K53 ["LayoutOrder"]
      219 GETTABLEKS                       R33 R19 K56 ["image"]
      221 SETTABLEKS                       R33 R32 K51 ["Image"]
      223 DUPTABLE                         R33 K59 [{"Transparency", "Color3"}]
      224 JUMPIFNOT                        R10 ; [+5]
      225 GETTABLEKS                       R34 R3 K45 ["ClassIcon"]
      227 GETTABLEKS                       R34 R34 K60 ["DisabledTransparency"]
      229 JUMP                             ; [+2]
      230 GETTABLEKS                       R34 R19 K61 ["transparency"]
      232 SETTABLEKS                       R34 R33 K57 ["Transparency"]
      234 GETTABLEKS                       R34 R19 K62 ["color3"]
      236 SETTABLEKS                       R34 R33 K58 ["Color3"]
      238 SETTABLEKS                       R33 R32 K54 ["imageStyle"]
      240 CALL                             R30 2 1
      241 SETTABLEKS                       R30 R29 K45 ["ClassIcon"]
      243 GETUPVAL                         R30 9
      244 GETUPVAL                         R31 7
      245 GETTABLEKS                       R31 R31 K63 ["Text"]
      247 DUPTABLE                         R32 K66 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      248 NEWTABLE                         R33 4 0
      250 LOADB                            R34 1
      251 SETTABLEKS                       R34 R33 K67 ["align-x-left shrink size-0-full auto-x padding-left-xsmall text-label-small text-align-x-left"]
      253 SETTABLEKS                       R11 R33 K68 ["content-action-emphasis"]
      255 NOT                              R34 R9
      256 JUMPIFNOT                        R34 ; [+3]
      257 NOT                              R34 R11
      258 JUMPIFNOT                        R34 ; [+1]
      259 NOT                              R34 R10
      260 SETTABLEKS                       R34 R33 K69 ["content-emphasis"]
      262 JUMPIFNOT                        R9 ; [+2]
      263 NOT                              R34 R11
      264 JUMPIF                           R34 ; [+1]
      265 MOVE                             R34 R10
      266 SETTABLEKS                       R34 R33 K70 ["content-muted"]
      268 SETTABLEKS                       R33 R32 K27 ["tag"]
      270 MOVE                             R33 R25
      271 CALL                             R33 0 1
      272 SETTABLEKS                       R33 R32 K53 ["LayoutOrder"]
      274 SETTABLEKS                       R20 R32 K63 ["Text"]
      276 CALL                             R30 2 1
      277 SETTABLEKS                       R30 R29 K46 ["InstanceName"]
      279 GETUPVAL                         R30 9
      280 GETUPVAL                         R31 7
      281 GETTABLEKS                       R31 R31 K26 ["View"]
      283 DUPTABLE                         R32 K72 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      284 MOVE                             R33 R25
      285 CALL                             R33 0 1
      286 SETTABLEKS                       R33 R32 K53 ["LayoutOrder"]
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K47 ["Padding"]
      291 GETUPVAL                         R30 9
      292 GETUPVAL                         R31 10
      293 DUPTABLE                         R32 K76 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      294 SETTABLEKS                       R11 R32 K73 ["emphasis"]
      296 SETTABLEKS                       R23 R32 K74 ["onClose"]
      298 MOVE                             R33 R25
      299 CALL                             R33 0 1
      300 SETTABLEKS                       R33 R32 K53 ["LayoutOrder"]
      302 NOT                              R33 R9
      303 JUMPIFNOT                        R33 ; [+3]
      304 NOT                              R33 R11
      305 JUMPIFNOT                        R33 ; [+1]
      306 NOT                              R33 R10
      307 SETTABLEKS                       R33 R32 K75 ["Visible"]
      309 CALL                             R30 2 1
      310 SETTABLEKS                       R30 R29 K48 ["Cancel"]
      312 GETUPVAL                         R30 9
      313 LOADK                            R31 K49 ["UIPadding"]
      314 DUPTABLE                         R32 K78 [{"PaddingLeft"}]
      315 GETIMPORT                        R33 K80 [UDim.new]
      317 LOADN                            R34 0
      318 GETTABLEKS                       R35 R24 K28 ["Size"]
      320 GETTABLEKS                       R35 R35 K81 ["Size_150"]
      322 CALL                             R33 2 1
      323 SETTABLEKS                       R33 R32 K77 ["PaddingLeft"]
      325 CALL                             R30 2 1
      326 SETTABLEKS                       R30 R29 K49 ["UIPadding"]
      328 CALL                             R26 3 -1
      329 RETURN                           R26 -1

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
       42 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K15 ["SignalsReact"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K16 ["Resources"]
       54 GETTABLEKS                       R10 R10 K17 ["Localization"]
       56 GETTABLEKS                       R10 R10 K18 ["Translator"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       63 GETTABLEKS                       R11 R11 K20 ["useStyledClassIcon"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       70 GETTABLEKS                       R12 R12 K21 ["useVisualValues"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R6 K22 ["createNextOrder"]
       75 GETTABLEKS                       R13 R5 K23 ["useCallback"]
       77 GETTABLEKS                       R14 R5 K24 ["createElement"]
       79 DUPCLOSURE                       R15 K25 [PROTO_5]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R2
       91 RETURN                           R15 1
