PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 DUPTABLE                         R0 K2 [{"image", "transparency"}]
        3 LOADK                            R1 K3 [""]
        4 SETTABLEKS                       R1 R0 K0 ["image"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["transparency"]
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K4 ["getIconProps"]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["specializedGuestUtils"]
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
       19 GETTABLEKS                       R4 R2 K7 ["extra"]
       21 GETTABLEKS                       R5 R4 K8 ["className"]
       23 GETTABLEKS                       R6 R2 K9 ["parts"]
       25 GETTABLEKS                       R7 R6 K10 ["value"]
       27 GETTABLEKS                       R8 R7 K10 ["value"]
       29 GETTABLEKS                       R9 R7 K11 ["multiple"]
       31 NOT                              R10 R9
       32 JUMPIFNOT                        R10 ; [+4]
       33 JUMPIFEQKNIL                     R8 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 GETTABLEKS                       R11 R2 K12 ["readonly"]
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R12 R12 K13 ["useState"]
       42 LOADB                            R13 0
       43 CALL                             R12 1 2
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R14 R14 K13 ["useState"]
       47 LOADB                            R15 0
       48 CALL                             R14 1 2
       49 GETTABLEKS                       R16 R1 K14 ["isActive"]
       51 GETTABLEKS                       R17 R1 K15 ["pickInstanceAsync"]
       53 MOVE                             R18 R14
       54 JUMPIFNOT                        R18 ; [+6]
       55 GETTABLEKS                       R19 R16 K16 ["get"]
       57 CALL                             R19 0 1
       58 NOT                              R18 R19
       59 JUMPIFNOT                        R18 ; [+1]
       60 NOT                              R18 R11
       61 GETUPVAL                         R19 3
       62 CALL                             R19 0 1
       63 GETUPVAL                         R20 2
       64 GETTABLEKS                       R20 R20 K17 ["useMemo"]
       66 NEWCLOSURE                       R21 P0
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R19
       69 CAPTURE                          VAL R6
       70 NEWTABLE                         R22 0 5
       72 MOVE                             R23 R10
       73 MOVE                             R24 R9
       74 MOVE                             R25 R8
       75 GETTABLEKS                       R26 R19 K18 ["getIconProps"]
       77 MOVE                             R27 R6
       78 SETLIST                          R22 R23 5 [1]
       80 CALL                             R20 2 1
       81 GETUPVAL                         R21 2
       82 GETTABLEKS                       R21 R21 K17 ["useMemo"]
       84 NEWCLOSURE                       R22 P1
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 NEWTABLE                         R23 0 6
       94 MOVE                             R24 R12
       95 MOVE                             R25 R18
       96 MOVE                             R26 R9
       97 MOVE                             R27 R10
       98 GETTABLEKS                       R28 R6 K19 ["name"]
      100 GETTABLEKS                       R28 R28 K10 ["value"]
      102 MOVE                             R29 R5
      103 SETLIST                          R23 R24 6 [1]
      105 CALL                             R21 2 1
      106 GETUPVAL                         R22 5
      107 NEWCLOSURE                       R23 P2
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R0
      114 NEWTABLE                         R24 0 7
      116 MOVE                             R25 R12
      117 GETTABLEKS                       R26 R0 K20 ["beginEditingAsync"]
      119 GETTABLEKS                       R27 R0 K21 ["setPart"]
      121 GETTABLEKS                       R28 R0 K22 ["finishEditing"]
      123 MOVE                             R29 R16
      124 MOVE                             R30 R17
      125 MOVE                             R31 R5
      126 SETLIST                          R24 R25 7 [1]
      128 CALL                             R22 2 1
      129 GETUPVAL                         R23 5
      130 NEWCLOSURE                       R24 P3
      131 CAPTURE                          VAL R15
      132 NEWTABLE                         R25 0 0
      134 CALL                             R23 2 1
      135 GETUPVAL                         R24 5
      136 NEWCLOSURE                       R25 P4
      137 CAPTURE                          VAL R0
      138 NEWTABLE                         R26 0 3
      140 GETTABLEKS                       R27 R0 K20 ["beginEditingAsync"]
      142 GETTABLEKS                       R28 R0 K21 ["setPart"]
      144 GETTABLEKS                       R29 R0 K20 ["beginEditingAsync"]
      146 SETLIST                          R26 R27 3 [1]
      148 CALL                             R24 2 1
      149 GETUPVAL                         R25 6
      150 GETTABLEKS                       R25 R25 K23 ["Hooks"]
      152 GETTABLEKS                       R25 R25 K24 ["useTokens"]
      154 CALL                             R25 0 1
      155 GETUPVAL                         R26 7
      156 CALL                             R26 0 1
      157 GETUPVAL                         R27 8
      158 GETUPVAL                         R28 6
      159 GETTABLEKS                       R28 R28 K25 ["View"]
      161 DUPTABLE                         R29 K31 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      162 NEWTABLE                         R30 8 0
      164 LOADB                            R31 1
      165 SETTABLEKS                       R31 R30 K32 ["row align-y-center flex-around radius-small"]
      167 SETTABLEKS                       R12 R30 K33 ["bg-emphasis"]
      169 NOT                              R31 R12
      170 JUMPIFNOT                        R31 ; [+1]
      171 NOT                              R31 R11
      172 SETTABLEKS                       R31 R30 K34 ["bg-shift-200"]
      174 SETTABLEKS                       R11 R30 K35 ["bg-shift-100"]
      176 SETTABLEKS                       R18 R30 K36 ["stroke-emphasis"]
      178 SETTABLEKS                       R30 R29 K26 ["tag"]
      180 GETIMPORT                        R30 K39 [UDim2.new]
      182 LOADN                            R31 1
      183 LOADN                            R32 0
      184 LOADN                            R33 0
      185 GETTABLEKS                       R34 R25 K27 ["Size"]
      187 GETTABLEKS                       R34 R34 K40 ["Size_600"]
      189 CALL                             R30 4 1
      190 SETTABLEKS                       R30 R29 K27 ["Size"]
      192 JUMPIF                           R11 ; [+2]
      193 MOVE                             R30 R22
      194 JUMP                             ; [+1]
      195 LOADNIL                          R30
      196 SETTABLEKS                       R30 R29 K28 ["onActivated"]
      198 JUMPIF                           R11 ; [+2]
      199 MOVE                             R30 R23
      200 JUMP                             ; [+1]
      201 LOADNIL                          R30
      202 SETTABLEKS                       R30 R29 K29 ["onStateChanged"]
      204 JUMPIFNOT                        R11 ; [+5]
      205 DUPTABLE                         R30 K42 [{"affordance"}]
      206 LOADK                            R31 K43 ["None"]
      207 SETTABLEKS                       R31 R30 K41 ["affordance"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R30
      211 SETTABLEKS                       R30 R29 K30 ["stateLayer"]
      213 DUPTABLE                         R30 K49 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      214 GETUPVAL                         R31 8
      215 GETUPVAL                         R32 6
      216 GETTABLEKS                       R32 R32 K50 ["Image"]
      218 DUPTABLE                         R33 K53 [{"tag", "LayoutOrder", "Image", "imageStyle"}]
      219 LOADK                            R34 K54 ["size-400-400 position-left-center"]
      220 SETTABLEKS                       R34 R33 K26 ["tag"]
      222 MOVE                             R34 R26
      223 CALL                             R34 0 1
      224 SETTABLEKS                       R34 R33 K51 ["LayoutOrder"]
      226 GETTABLEKS                       R34 R20 K55 ["image"]
      228 SETTABLEKS                       R34 R33 K50 ["Image"]
      230 DUPTABLE                         R34 K58 [{"Transparency", "Color3"}]
      231 JUMPIFNOT                        R11 ; [+5]
      232 GETTABLEKS                       R35 R3 K44 ["ClassIcon"]
      234 GETTABLEKS                       R35 R35 K59 ["DisabledTransparency"]
      236 JUMP                             ; [+2]
      237 GETTABLEKS                       R35 R20 K60 ["transparency"]
      239 SETTABLEKS                       R35 R34 K56 ["Transparency"]
      241 GETTABLEKS                       R35 R20 K61 ["color3"]
      243 SETTABLEKS                       R35 R34 K57 ["Color3"]
      245 SETTABLEKS                       R34 R33 K52 ["imageStyle"]
      247 CALL                             R31 2 1
      248 SETTABLEKS                       R31 R30 K44 ["ClassIcon"]
      250 GETUPVAL                         R31 8
      251 GETUPVAL                         R32 6
      252 GETTABLEKS                       R32 R32 K62 ["Text"]
      254 DUPTABLE                         R33 K64 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      255 NEWTABLE                         R34 4 0
      257 LOADB                            R35 1
      258 SETTABLEKS                       R35 R34 K65 ["size-0-full shrink auto-x align-x-left text-label-small padding-left-xsmall text-align-x-left"]
      260 SETTABLEKS                       R12 R34 K66 ["content-action-emphasis"]
      262 NOT                              R35 R10
      263 JUMPIFNOT                        R35 ; [+3]
      264 NOT                              R35 R12
      265 JUMPIFNOT                        R35 ; [+1]
      266 NOT                              R35 R11
      267 SETTABLEKS                       R35 R34 K67 ["content-emphasis"]
      269 JUMPIFNOT                        R10 ; [+2]
      270 NOT                              R35 R12
      271 JUMPIF                           R35 ; [+1]
      272 MOVE                             R35 R11
      273 SETTABLEKS                       R35 R34 K68 ["content-muted"]
      275 SETTABLEKS                       R34 R33 K26 ["tag"]
      277 LOADB                            R34 1
      278 SETTABLEKS                       R34 R33 K63 ["ClipsDescendants"]
      280 MOVE                             R34 R26
      281 CALL                             R34 0 1
      282 SETTABLEKS                       R34 R33 K51 ["LayoutOrder"]
      284 SETTABLEKS                       R21 R33 K62 ["Text"]
      286 CALL                             R31 2 1
      287 SETTABLEKS                       R31 R30 K45 ["InstanceName"]
      289 GETUPVAL                         R31 8
      290 GETUPVAL                         R32 6
      291 GETTABLEKS                       R32 R32 K25 ["View"]
      293 DUPTABLE                         R33 K69 [{"tag", "LayoutOrder"}]
      294 LOADK                            R34 K70 ["grow size-0-full"]
      295 SETTABLEKS                       R34 R33 K26 ["tag"]
      297 MOVE                             R34 R26
      298 CALL                             R34 0 1
      299 SETTABLEKS                       R34 R33 K51 ["LayoutOrder"]
      301 CALL                             R31 2 1
      302 SETTABLEKS                       R31 R30 K46 ["Padding"]
      304 GETUPVAL                         R31 8
      305 GETUPVAL                         R32 9
      306 DUPTABLE                         R33 K74 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      307 SETTABLEKS                       R12 R33 K71 ["emphasis"]
      309 SETTABLEKS                       R24 R33 K72 ["onClose"]
      311 MOVE                             R34 R26
      312 CALL                             R34 0 1
      313 SETTABLEKS                       R34 R33 K51 ["LayoutOrder"]
      315 NOT                              R34 R10
      316 JUMPIFNOT                        R34 ; [+3]
      317 NOT                              R34 R12
      318 JUMPIFNOT                        R34 ; [+1]
      319 NOT                              R34 R11
      320 SETTABLEKS                       R34 R33 K73 ["Visible"]
      322 CALL                             R31 2 1
      323 SETTABLEKS                       R31 R30 K47 ["Cancel"]
      325 GETUPVAL                         R31 8
      326 LOADK                            R32 K48 ["UIPadding"]
      327 DUPTABLE                         R33 K76 [{"PaddingLeft"}]
      328 GETIMPORT                        R34 K78 [UDim.new]
      330 LOADN                            R35 0
      331 GETTABLEKS                       R36 R25 K27 ["Size"]
      333 GETTABLEKS                       R36 R36 K79 ["Size_150"]
      335 CALL                             R34 2 1
      336 SETTABLEKS                       R34 R33 K75 ["PaddingLeft"]
      338 CALL                             R31 2 1
      339 SETTABLEKS                       R31 R30 K48 ["UIPadding"]
      341 CALL                             R27 3 -1
      342 RETURN                           R27 -1

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
       30 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K13 ["PropertyViewTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K14 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K15 ["ReactUtils"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K16 ["SignalsReact"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K17 ["Resources"]
       63 GETTABLEKS                       R11 R11 K18 ["Localization"]
       65 GETTABLEKS                       R11 R11 K19 ["Translator"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       72 GETTABLEKS                       R12 R12 K21 ["useStyledClassIcon"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K22 ["useVisualValues"]
       81 CALL                             R12 1 1
       82 GETTABLEKS                       R13 R8 K23 ["createNextOrder"]
       84 GETTABLEKS                       R14 R7 K24 ["useCallback"]
       86 GETTABLEKS                       R15 R7 K25 ["createElement"]
       88 DUPCLOSURE                       R16 K26 [PROTO_5]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R2
       99 RETURN                           R16 1
