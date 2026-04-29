PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 DUPTABLE                         R0 K2 [{"image", "transparency"}]
        3 LOADK                            R1 K3 [""]
        4 SETTABLEKS                       R1 R0 K0 ["image"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["transparency"]
        9 RETURN                           R0 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K4 ["getIconProps"]
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
       44 GETUPVAL                         R2 6
       45 GETTABLEKS                       R1 R2 K8 ["name"]
       47 GETTABLEKS                       R0 R1 K9 ["value"]
       49 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["get"]
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
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R2 R3 K4 ["beginEditingAsync"]
       32 CALL                             R2 0 0
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R2 R3 K5 ["setPart"]
       36 LOADK                            R3 K6 ["value"]
       37 MOVE                             R4 R1
       38 CALL                             R2 2 0
       39 GETUPVAL                         R3 5
       40 GETTABLEKS                       R2 R3 K7 ["finishEditing"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["setPart"]
        7 LOADK                            R1 K2 ["value"]
        8 LOADNIL                          R2
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["finishEditing"]
       13 GETIMPORT                        R1 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["instancePicker"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["must provide an instance picker to use instance properties"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["useSignalState"]
       11 GETTABLEKS                       R2 R0 K5 ["getInfo"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 1
       16 GETTABLEKS                       R3 R1 K6 ["extra"]
       18 GETTABLEKS                       R4 R3 K7 ["className"]
       20 GETTABLEKS                       R5 R1 K8 ["parts"]
       22 GETTABLEKS                       R6 R5 K9 ["value"]
       24 GETTABLEKS                       R7 R6 K9 ["value"]
       26 GETTABLEKS                       R8 R6 K10 ["multiple"]
       28 NOT                              R9 R8
       29 JUMPIFNOT                        R9 ; [+4]
       30 JUMPIFEQKNIL                     R7 ; [+2]
       32 LOADB                            R9 0 +1
       33 LOADB                            R9 1
       34 GETTABLEKS                       R10 R1 K11 ["readonly"]
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R11 R12 K12 ["useState"]
       39 LOADB                            R12 0
       40 CALL                             R11 1 2
       41 GETUPVAL                         R14 2
       42 GETTABLEKS                       R13 R14 K12 ["useState"]
       44 LOADB                            R14 0
       45 CALL                             R13 1 2
       46 GETTABLEKS                       R16 R0 K0 ["instancePicker"]
       48 GETTABLEKS                       R15 R16 K13 ["isActive"]
       50 GETTABLEKS                       R17 R0 K0 ["instancePicker"]
       52 GETTABLEKS                       R16 R17 K14 ["pickInstanceAsync"]
       54 MOVE                             R17 R13
       55 JUMPIFNOT                        R17 ; [+6]
       56 GETTABLEKS                       R18 R15 K15 ["get"]
       58 CALL                             R18 0 1
       59 NOT                              R17 R18
       60 JUMPIFNOT                        R17 ; [+1]
       61 NOT                              R17 R10
       62 GETUPVAL                         R18 3
       63 CALL                             R18 0 1
       64 GETUPVAL                         R20 2
       65 GETTABLEKS                       R19 R20 K16 ["useMemo"]
       67 NEWCLOSURE                       R20 P0
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R18
       70 CAPTURE                          VAL R5
       71 NEWTABLE                         R21 0 5
       73 MOVE                             R22 R9
       74 MOVE                             R23 R8
       75 MOVE                             R24 R7
       76 GETTABLEKS                       R25 R18 K17 ["getIconProps"]
       78 MOVE                             R26 R5
       79 SETLIST                          R21 R22 5 [1]
       81 CALL                             R19 2 1
       82 GETUPVAL                         R21 2
       83 GETTABLEKS                       R20 R21 K16 ["useMemo"]
       85 NEWCLOSURE                       R21 P1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R11
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R17
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R5
       93 NEWTABLE                         R22 0 6
       95 MOVE                             R23 R11
       96 MOVE                             R24 R17
       97 MOVE                             R25 R8
       98 MOVE                             R26 R9
       99 GETTABLEKS                       R28 R5 K18 ["name"]
      101 GETTABLEKS                       R27 R28 K9 ["value"]
      103 MOVE                             R28 R4
      104 SETLIST                          R22 R23 6 [1]
      106 CALL                             R20 2 1
      107 GETUPVAL                         R21 5
      108 NEWCLOSURE                       R22 P2
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 NEWTABLE                         R23 0 7
      117 MOVE                             R24 R11
      118 GETTABLEKS                       R25 R0 K19 ["beginEditingAsync"]
      120 GETTABLEKS                       R26 R0 K20 ["setPart"]
      122 GETTABLEKS                       R27 R0 K21 ["finishEditing"]
      124 MOVE                             R28 R15
      125 MOVE                             R29 R16
      126 MOVE                             R30 R4
      127 SETLIST                          R23 R24 7 [1]
      129 CALL                             R21 2 1
      130 GETUPVAL                         R22 5
      131 NEWCLOSURE                       R23 P3
      132 CAPTURE                          VAL R14
      133 NEWTABLE                         R24 0 0
      135 CALL                             R22 2 1
      136 GETUPVAL                         R23 5
      137 NEWCLOSURE                       R24 P4
      138 CAPTURE                          VAL R0
      139 NEWTABLE                         R25 0 3
      141 GETTABLEKS                       R26 R0 K19 ["beginEditingAsync"]
      143 GETTABLEKS                       R27 R0 K20 ["setPart"]
      145 GETTABLEKS                       R28 R0 K19 ["beginEditingAsync"]
      147 SETLIST                          R25 R26 3 [1]
      149 CALL                             R23 2 1
      150 GETUPVAL                         R26 6
      151 GETTABLEKS                       R25 R26 K22 ["Hooks"]
      153 GETTABLEKS                       R24 R25 K23 ["useTokens"]
      155 CALL                             R24 0 1
      156 GETUPVAL                         R25 7
      157 CALL                             R25 0 1
      158 GETUPVAL                         R26 8
      159 GETUPVAL                         R28 6
      160 GETTABLEKS                       R27 R28 K24 ["View"]
      162 DUPTABLE                         R28 K30 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      163 NEWTABLE                         R29 8 0
      165 LOADB                            R30 1
      166 SETTABLEKS                       R30 R29 K31 ["row align-y-center flex-around radius-small"]
      168 SETTABLEKS                       R11 R29 K32 ["bg-emphasis"]
      170 NOT                              R30 R11
      171 JUMPIFNOT                        R30 ; [+1]
      172 NOT                              R30 R10
      173 SETTABLEKS                       R30 R29 K33 ["bg-shift-200"]
      175 SETTABLEKS                       R10 R29 K34 ["bg-shift-100"]
      177 SETTABLEKS                       R17 R29 K35 ["stroke-emphasis"]
      179 SETTABLEKS                       R29 R28 K25 ["tag"]
      181 GETIMPORT                        R29 K38 [UDim2.new]
      183 LOADN                            R30 1
      184 LOADN                            R31 0
      185 LOADN                            R32 0
      186 GETTABLEKS                       R34 R24 K26 ["Size"]
      188 GETTABLEKS                       R33 R34 K39 ["Size_600"]
      190 CALL                             R29 4 1
      191 SETTABLEKS                       R29 R28 K26 ["Size"]
      193 JUMPIF                           R10 ; [+2]
      194 MOVE                             R29 R21
      195 JUMP                             ; [+1]
      196 LOADNIL                          R29
      197 SETTABLEKS                       R29 R28 K27 ["onActivated"]
      199 JUMPIF                           R10 ; [+2]
      200 MOVE                             R29 R22
      201 JUMP                             ; [+1]
      202 LOADNIL                          R29
      203 SETTABLEKS                       R29 R28 K28 ["onStateChanged"]
      205 JUMPIFNOT                        R10 ; [+5]
      206 DUPTABLE                         R29 K41 [{"affordance"}]
      207 LOADK                            R30 K42 ["None"]
      208 SETTABLEKS                       R30 R29 K40 ["affordance"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R29
      212 SETTABLEKS                       R29 R28 K29 ["stateLayer"]
      214 DUPTABLE                         R29 K48 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      215 GETUPVAL                         R30 8
      216 GETUPVAL                         R32 6
      217 GETTABLEKS                       R31 R32 K49 ["Image"]
      219 DUPTABLE                         R32 K52 [{"tag", "LayoutOrder", "Image", "imageStyle"}]
      220 LOADK                            R33 K53 ["size-400-400 position-left-center"]
      221 SETTABLEKS                       R33 R32 K25 ["tag"]
      223 MOVE                             R33 R25
      224 CALL                             R33 0 1
      225 SETTABLEKS                       R33 R32 K50 ["LayoutOrder"]
      227 GETTABLEKS                       R33 R19 K54 ["image"]
      229 SETTABLEKS                       R33 R32 K49 ["Image"]
      231 DUPTABLE                         R33 K57 [{"Transparency", "Color3"}]
      232 JUMPIFNOT                        R10 ; [+5]
      233 GETTABLEKS                       R35 R2 K43 ["ClassIcon"]
      235 GETTABLEKS                       R34 R35 K58 ["DisabledTransparency"]
      237 JUMP                             ; [+2]
      238 GETTABLEKS                       R34 R19 K59 ["transparency"]
      240 SETTABLEKS                       R34 R33 K55 ["Transparency"]
      242 GETTABLEKS                       R34 R19 K60 ["color3"]
      244 SETTABLEKS                       R34 R33 K56 ["Color3"]
      246 SETTABLEKS                       R33 R32 K51 ["imageStyle"]
      248 CALL                             R30 2 1
      249 SETTABLEKS                       R30 R29 K43 ["ClassIcon"]
      251 GETUPVAL                         R30 8
      252 GETUPVAL                         R32 6
      253 GETTABLEKS                       R31 R32 K61 ["Text"]
      255 DUPTABLE                         R32 K63 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      256 NEWTABLE                         R33 4 0
      258 LOADB                            R34 1
      259 SETTABLEKS                       R34 R33 K64 ["size-0-full shrink auto-x align-x-left text-label-small padding-left-xsmall text-align-x-left"]
      261 SETTABLEKS                       R11 R33 K65 ["content-action-emphasis"]
      263 NOT                              R34 R9
      264 JUMPIFNOT                        R34 ; [+3]
      265 NOT                              R34 R11
      266 JUMPIFNOT                        R34 ; [+1]
      267 NOT                              R34 R10
      268 SETTABLEKS                       R34 R33 K66 ["content-emphasis"]
      270 JUMPIFNOT                        R9 ; [+2]
      271 NOT                              R34 R11
      272 JUMPIF                           R34 ; [+1]
      273 MOVE                             R34 R10
      274 SETTABLEKS                       R34 R33 K67 ["content-muted"]
      276 SETTABLEKS                       R33 R32 K25 ["tag"]
      278 LOADB                            R33 1
      279 SETTABLEKS                       R33 R32 K62 ["ClipsDescendants"]
      281 MOVE                             R33 R25
      282 CALL                             R33 0 1
      283 SETTABLEKS                       R33 R32 K50 ["LayoutOrder"]
      285 SETTABLEKS                       R20 R32 K61 ["Text"]
      287 CALL                             R30 2 1
      288 SETTABLEKS                       R30 R29 K44 ["InstanceName"]
      290 GETUPVAL                         R30 8
      291 GETUPVAL                         R32 6
      292 GETTABLEKS                       R31 R32 K24 ["View"]
      294 DUPTABLE                         R32 K68 [{"tag", "LayoutOrder"}]
      295 LOADK                            R33 K69 ["grow size-0-full"]
      296 SETTABLEKS                       R33 R32 K25 ["tag"]
      298 MOVE                             R33 R25
      299 CALL                             R33 0 1
      300 SETTABLEKS                       R33 R32 K50 ["LayoutOrder"]
      302 CALL                             R30 2 1
      303 SETTABLEKS                       R30 R29 K45 ["Padding"]
      305 GETUPVAL                         R30 8
      306 GETUPVAL                         R31 9
      307 DUPTABLE                         R32 K73 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      308 SETTABLEKS                       R11 R32 K70 ["emphasis"]
      310 SETTABLEKS                       R23 R32 K71 ["onClose"]
      312 MOVE                             R33 R25
      313 CALL                             R33 0 1
      314 SETTABLEKS                       R33 R32 K50 ["LayoutOrder"]
      316 NOT                              R33 R9
      317 JUMPIFNOT                        R33 ; [+3]
      318 NOT                              R33 R11
      319 JUMPIFNOT                        R33 ; [+1]
      320 NOT                              R33 R10
      321 SETTABLEKS                       R33 R32 K72 ["Visible"]
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K46 ["Cancel"]
      326 GETUPVAL                         R30 8
      327 LOADK                            R31 K47 ["UIPadding"]
      328 DUPTABLE                         R32 K75 [{"PaddingLeft"}]
      329 GETIMPORT                        R33 K77 [UDim.new]
      331 LOADN                            R34 0
      332 GETTABLEKS                       R36 R24 K26 ["Size"]
      334 GETTABLEKS                       R35 R36 K78 ["Size_150"]
      336 CALL                             R33 2 1
      337 SETTABLEKS                       R33 R32 K74 ["PaddingLeft"]
      339 CALL                             R30 2 1
      340 SETTABLEKS                       R30 R29 K47 ["UIPadding"]
      342 CALL                             R26 3 -1
      343 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Util"]
       15 GETTABLEKS                       R3 R4 K9 ["CloseAffordance"]
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
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R8 R9 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K13 ["PropertyViewTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K14 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K15 ["SignalsReact"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Resources"]
       58 GETTABLEKS                       R11 R12 K17 ["Localization"]
       60 GETTABLEKS                       R10 R11 K18 ["Translator"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K8 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["createNextOrder"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       74 GETTABLEKS                       R12 R13 K21 ["useStyledClassIcon"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Hooks"]
       81 GETTABLEKS                       R13 R14 K22 ["useVisualValues"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R7 K23 ["useCallback"]
       86 GETTABLEKS                       R14 R7 K24 ["createElement"]
       88 DUPCLOSURE                       R15 K25 [PROTO_5]
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R2
       99 RETURN                           R15 1
