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
       14 GETTABLEKS                       R2 R1 K6 ["extra"]
       16 GETTABLEKS                       R3 R2 K7 ["className"]
       18 GETTABLEKS                       R4 R1 K8 ["parts"]
       20 GETTABLEKS                       R5 R4 K9 ["value"]
       22 GETTABLEKS                       R6 R5 K9 ["value"]
       24 GETTABLEKS                       R7 R5 K10 ["multiple"]
       26 NOT                              R8 R7
       27 JUMPIFNOT                        R8 ; [+4]
       28 JUMPIFEQKNIL                     R6 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 GETTABLEKS                       R9 R1 K11 ["readonly"]
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R10 R11 K12 ["useState"]
       37 LOADB                            R11 0
       38 CALL                             R10 1 2
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K12 ["useState"]
       42 LOADB                            R13 0
       43 CALL                             R12 1 2
       44 GETTABLEKS                       R15 R0 K0 ["instancePicker"]
       46 GETTABLEKS                       R14 R15 K13 ["isActive"]
       48 GETTABLEKS                       R16 R0 K0 ["instancePicker"]
       50 GETTABLEKS                       R15 R16 K14 ["pickInstanceAsync"]
       52 MOVE                             R16 R12
       53 JUMPIFNOT                        R16 ; [+6]
       54 GETTABLEKS                       R17 R14 K15 ["get"]
       56 CALL                             R17 0 1
       57 NOT                              R16 R17
       58 JUMPIFNOT                        R16 ; [+1]
       59 NOT                              R16 R9
       60 GETUPVAL                         R17 2
       61 CALL                             R17 0 1
       62 GETUPVAL                         R19 1
       63 GETTABLEKS                       R18 R19 K16 ["useMemo"]
       65 NEWCLOSURE                       R19 P0
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R17
       68 CAPTURE                          VAL R4
       69 NEWTABLE                         R20 0 5
       71 MOVE                             R21 R8
       72 MOVE                             R22 R7
       73 MOVE                             R23 R6
       74 GETTABLEKS                       R24 R17 K17 ["getIconProps"]
       76 MOVE                             R25 R4
       77 SETLIST                          R20 R21 5 [1]
       79 CALL                             R18 2 1
       80 GETUPVAL                         R20 1
       81 GETTABLEKS                       R19 R20 K16 ["useMemo"]
       83 NEWCLOSURE                       R20 P1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 NEWTABLE                         R21 0 6
       93 MOVE                             R22 R10
       94 MOVE                             R23 R16
       95 MOVE                             R24 R7
       96 MOVE                             R25 R8
       97 GETTABLEKS                       R27 R4 K18 ["name"]
       99 GETTABLEKS                       R26 R27 K9 ["value"]
      101 MOVE                             R27 R3
      102 SETLIST                          R21 R22 6 [1]
      104 CALL                             R19 2 1
      105 GETUPVAL                         R20 4
      106 NEWCLOSURE                       R21 P2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R22 0 7
      115 MOVE                             R23 R10
      116 GETTABLEKS                       R24 R0 K19 ["beginEditingAsync"]
      118 GETTABLEKS                       R25 R0 K20 ["setPart"]
      120 GETTABLEKS                       R26 R0 K21 ["finishEditing"]
      122 MOVE                             R27 R14
      123 MOVE                             R28 R15
      124 MOVE                             R29 R3
      125 SETLIST                          R22 R23 7 [1]
      127 CALL                             R20 2 1
      128 GETUPVAL                         R21 4
      129 NEWCLOSURE                       R22 P3
      130 CAPTURE                          VAL R13
      131 NEWTABLE                         R23 0 0
      133 CALL                             R21 2 1
      134 GETUPVAL                         R22 4
      135 NEWCLOSURE                       R23 P4
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R24 0 3
      139 GETTABLEKS                       R25 R0 K19 ["beginEditingAsync"]
      141 GETTABLEKS                       R26 R0 K20 ["setPart"]
      143 GETTABLEKS                       R27 R0 K19 ["beginEditingAsync"]
      145 SETLIST                          R24 R25 3 [1]
      147 CALL                             R22 2 1
      148 GETUPVAL                         R25 5
      149 GETTABLEKS                       R24 R25 K22 ["Hooks"]
      151 GETTABLEKS                       R23 R24 K23 ["useTokens"]
      153 CALL                             R23 0 1
      154 GETUPVAL                         R24 6
      155 CALL                             R24 0 1
      156 GETUPVAL                         R25 7
      157 GETUPVAL                         R27 5
      158 GETTABLEKS                       R26 R27 K24 ["View"]
      160 DUPTABLE                         R27 K30 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      161 NEWTABLE                         R28 8 0
      163 LOADB                            R29 1
      164 SETTABLEKS                       R29 R28 K31 ["row align-y-center flex-around radius-small"]
      166 SETTABLEKS                       R10 R28 K32 ["bg-emphasis"]
      168 NOT                              R29 R10
      169 JUMPIFNOT                        R29 ; [+1]
      170 NOT                              R29 R9
      171 SETTABLEKS                       R29 R28 K33 ["bg-shift-200"]
      173 SETTABLEKS                       R9 R28 K34 ["bg-shift-100"]
      175 SETTABLEKS                       R16 R28 K35 ["stroke-emphasis"]
      177 SETTABLEKS                       R28 R27 K25 ["tag"]
      179 GETIMPORT                        R28 K38 [UDim2.new]
      181 LOADN                            R29 1
      182 LOADN                            R30 0
      183 LOADN                            R31 0
      184 GETTABLEKS                       R33 R23 K26 ["Size"]
      186 GETTABLEKS                       R32 R33 K39 ["Size_600"]
      188 CALL                             R28 4 1
      189 SETTABLEKS                       R28 R27 K26 ["Size"]
      191 JUMPIF                           R9 ; [+2]
      192 MOVE                             R28 R20
      193 JUMP                             ; [+1]
      194 LOADNIL                          R28
      195 SETTABLEKS                       R28 R27 K27 ["onActivated"]
      197 JUMPIF                           R9 ; [+2]
      198 MOVE                             R28 R21
      199 JUMP                             ; [+1]
      200 LOADNIL                          R28
      201 SETTABLEKS                       R28 R27 K28 ["onStateChanged"]
      203 JUMPIFNOT                        R9 ; [+5]
      204 DUPTABLE                         R28 K41 [{"affordance"}]
      205 LOADK                            R29 K42 ["None"]
      206 SETTABLEKS                       R29 R28 K40 ["affordance"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R28
      210 SETTABLEKS                       R28 R27 K29 ["stateLayer"]
      212 DUPTABLE                         R28 K48 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      213 GETUPVAL                         R29 7
      214 GETUPVAL                         R31 5
      215 GETTABLEKS                       R30 R31 K49 ["Image"]
      217 DUPTABLE                         R31 K52 [{"tag", "LayoutOrder", "Image", "imageStyle"}]
      218 LOADK                            R32 K53 ["size-400-400 position-left-center"]
      219 SETTABLEKS                       R32 R31 K25 ["tag"]
      221 MOVE                             R32 R24
      222 CALL                             R32 0 1
      223 SETTABLEKS                       R32 R31 K50 ["LayoutOrder"]
      225 GETTABLEKS                       R32 R18 K54 ["image"]
      227 SETTABLEKS                       R32 R31 K49 ["Image"]
      229 DUPTABLE                         R32 K57 [{"Transparency", "Color3"}]
      230 JUMPIFNOT                        R9 ; [+4]
      231 GETUPVAL                         R34 8
      232 GETTABLEKS                       R33 R34 K58 ["disabledTransparency"]
      234 JUMP                             ; [+2]
      235 GETTABLEKS                       R33 R18 K59 ["transparency"]
      237 SETTABLEKS                       R33 R32 K55 ["Transparency"]
      239 GETTABLEKS                       R33 R18 K60 ["color3"]
      241 SETTABLEKS                       R33 R32 K56 ["Color3"]
      243 SETTABLEKS                       R32 R31 K51 ["imageStyle"]
      245 CALL                             R29 2 1
      246 SETTABLEKS                       R29 R28 K43 ["ClassIcon"]
      248 GETUPVAL                         R29 7
      249 GETUPVAL                         R31 5
      250 GETTABLEKS                       R30 R31 K61 ["Text"]
      252 DUPTABLE                         R31 K63 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      253 NEWTABLE                         R32 4 0
      255 LOADB                            R33 1
      256 SETTABLEKS                       R33 R32 K64 ["size-0-full shrink auto-x align-x-left text-label-small padding-left-xsmall text-align-x-left"]
      258 SETTABLEKS                       R10 R32 K65 ["content-action-emphasis"]
      260 NOT                              R33 R8
      261 JUMPIFNOT                        R33 ; [+3]
      262 NOT                              R33 R10
      263 JUMPIFNOT                        R33 ; [+1]
      264 NOT                              R33 R9
      265 SETTABLEKS                       R33 R32 K66 ["content-emphasis"]
      267 JUMPIFNOT                        R8 ; [+2]
      268 NOT                              R33 R10
      269 JUMPIF                           R33 ; [+1]
      270 MOVE                             R33 R9
      271 SETTABLEKS                       R33 R32 K67 ["content-muted"]
      273 SETTABLEKS                       R32 R31 K25 ["tag"]
      275 LOADB                            R32 1
      276 SETTABLEKS                       R32 R31 K62 ["ClipsDescendants"]
      278 MOVE                             R32 R24
      279 CALL                             R32 0 1
      280 SETTABLEKS                       R32 R31 K50 ["LayoutOrder"]
      282 SETTABLEKS                       R19 R31 K61 ["Text"]
      284 CALL                             R29 2 1
      285 SETTABLEKS                       R29 R28 K44 ["InstanceName"]
      287 GETUPVAL                         R29 7
      288 GETUPVAL                         R31 5
      289 GETTABLEKS                       R30 R31 K24 ["View"]
      291 DUPTABLE                         R31 K68 [{"tag", "LayoutOrder"}]
      292 LOADK                            R32 K69 ["grow size-0-full"]
      293 SETTABLEKS                       R32 R31 K25 ["tag"]
      295 MOVE                             R32 R24
      296 CALL                             R32 0 1
      297 SETTABLEKS                       R32 R31 K50 ["LayoutOrder"]
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K45 ["Padding"]
      302 GETUPVAL                         R29 7
      303 GETUPVAL                         R30 9
      304 DUPTABLE                         R31 K73 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      305 SETTABLEKS                       R10 R31 K70 ["emphasis"]
      307 SETTABLEKS                       R22 R31 K71 ["onClose"]
      309 MOVE                             R32 R24
      310 CALL                             R32 0 1
      311 SETTABLEKS                       R32 R31 K50 ["LayoutOrder"]
      313 NOT                              R32 R8
      314 JUMPIFNOT                        R32 ; [+3]
      315 NOT                              R32 R10
      316 JUMPIFNOT                        R32 ; [+1]
      317 NOT                              R32 R9
      318 SETTABLEKS                       R32 R31 K72 ["Visible"]
      320 CALL                             R29 2 1
      321 SETTABLEKS                       R29 R28 K46 ["Cancel"]
      323 GETUPVAL                         R29 7
      324 LOADK                            R30 K47 ["UIPadding"]
      325 DUPTABLE                         R31 K75 [{"PaddingLeft"}]
      326 GETIMPORT                        R32 K77 [UDim.new]
      328 LOADN                            R33 0
      329 GETTABLEKS                       R35 R23 K26 ["Size"]
      331 GETTABLEKS                       R34 R35 K78 ["Size_150"]
      333 CALL                             R32 2 1
      334 SETTABLEKS                       R32 R31 K74 ["PaddingLeft"]
      336 CALL                             R29 2 1
      337 SETTABLEKS                       R29 R28 K47 ["UIPadding"]
      339 CALL                             R25 3 -1
      340 RETURN                           R25 -1

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
       20 GETTABLEKS                       R5 R0 K8 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["PropertyEditorTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["PropertyTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R9 R10 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K14 ["PropertyViewTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K4 ["Parent"]
       53 GETTABLEKS                       R9 R10 K15 ["React"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R1 K16 ["SignalsReact"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R13 R0 K17 ["Resources"]
       65 GETTABLEKS                       R12 R13 K18 ["Localization"]
       67 GETTABLEKS                       R11 R12 K19 ["Translator"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K8 ["Util"]
       74 GETTABLEKS                       R12 R13 K20 ["createNextOrder"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       81 GETTABLEKS                       R13 R14 K22 ["useStyledClassIcon"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R8 K23 ["useCallback"]
       86 GETTABLEKS                       R14 R8 K24 ["createElement"]
       88 DUPCLOSURE                       R15 K25 [PROTO_5]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R2
       99 RETURN                           R15 1
