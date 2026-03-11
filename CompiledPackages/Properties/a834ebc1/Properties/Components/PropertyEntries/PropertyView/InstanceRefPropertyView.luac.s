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
        0 GETTABLEKS                       R4 R0 K0 ["info"]
        2 GETTABLEKS                       R3 R4 K1 ["type"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Type of instance must be well defined."]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K5 ["instancePicker"]
       16 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       18 LOADK                            R3 K6 ["must provide an instance picker to use instance properties"]
       19 GETIMPORT                        R1 K4 [assert]
       21 CALL                             R1 2 0
       22 GETTABLEKS                       R2 R0 K0 ["info"]
       24 GETTABLEKS                       R1 R2 K7 ["extra"]
       26 GETTABLEKS                       R2 R1 K8 ["className"]
       28 GETTABLEKS                       R4 R0 K0 ["info"]
       30 GETTABLEKS                       R3 R4 K9 ["parts"]
       32 GETTABLEKS                       R4 R3 K10 ["value"]
       34 GETTABLEKS                       R5 R4 K10 ["value"]
       36 GETTABLEKS                       R6 R4 K11 ["multiple"]
       38 NOT                              R7 R6
       39 JUMPIFNOT                        R7 ; [+4]
       40 JUMPIFEQKNIL                     R5 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 GETTABLEKS                       R9 R0 K0 ["info"]
       46 GETTABLEKS                       R8 R9 K12 ["readonly"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K13 ["useState"]
       51 LOADB                            R10 0
       52 CALL                             R9 1 2
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R11 R12 K13 ["useState"]
       56 LOADB                            R12 0
       57 CALL                             R11 1 2
       58 GETTABLEKS                       R14 R0 K5 ["instancePicker"]
       60 GETTABLEKS                       R13 R14 K14 ["isActive"]
       62 GETTABLEKS                       R15 R0 K5 ["instancePicker"]
       64 GETTABLEKS                       R14 R15 K15 ["pickInstanceAsync"]
       66 MOVE                             R15 R11
       67 JUMPIFNOT                        R15 ; [+6]
       68 GETTABLEKS                       R16 R13 K16 ["get"]
       70 CALL                             R16 0 1
       71 NOT                              R15 R16
       72 JUMPIFNOT                        R15 ; [+1]
       73 NOT                              R15 R8
       74 GETUPVAL                         R16 1
       75 CALL                             R16 0 1
       76 GETUPVAL                         R18 0
       77 GETTABLEKS                       R17 R18 K17 ["useMemo"]
       79 NEWCLOSURE                       R18 P0
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R3
       83 NEWTABLE                         R19 0 5
       85 MOVE                             R20 R7
       86 MOVE                             R21 R6
       87 MOVE                             R22 R5
       88 GETTABLEKS                       R23 R16 K18 ["getIconProps"]
       90 MOVE                             R24 R3
       91 SETLIST                          R19 R20 5 [1]
       93 CALL                             R17 2 1
       94 GETUPVAL                         R19 0
       95 GETTABLEKS                       R18 R19 K17 ["useMemo"]
       97 NEWCLOSURE                       R19 P1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R20 0 6
      107 MOVE                             R21 R9
      108 MOVE                             R22 R15
      109 MOVE                             R23 R6
      110 MOVE                             R24 R7
      111 GETTABLEKS                       R26 R3 K19 ["name"]
      113 GETTABLEKS                       R25 R26 K10 ["value"]
      115 MOVE                             R26 R2
      116 SETLIST                          R20 R21 6 [1]
      118 CALL                             R18 2 1
      119 GETUPVAL                         R19 3
      120 NEWCLOSURE                       R20 P2
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R21 0 6
      129 MOVE                             R22 R9
      130 GETTABLEKS                       R23 R0 K20 ["beginEditingAsync"]
      132 GETTABLEKS                       R24 R0 K21 ["setPart"]
      134 GETTABLEKS                       R25 R0 K22 ["finishEditing"]
      136 MOVE                             R26 R13
      137 MOVE                             R27 R14
      138 SETLIST                          R21 R22 6 [1]
      140 CALL                             R19 2 1
      141 GETUPVAL                         R20 3
      142 NEWCLOSURE                       R21 P3
      143 CAPTURE                          VAL R12
      144 NEWTABLE                         R22 0 0
      146 CALL                             R20 2 1
      147 GETUPVAL                         R21 3
      148 NEWCLOSURE                       R22 P4
      149 CAPTURE                          VAL R0
      150 NEWTABLE                         R23 0 3
      152 GETTABLEKS                       R24 R0 K20 ["beginEditingAsync"]
      154 GETTABLEKS                       R25 R0 K21 ["setPart"]
      156 GETTABLEKS                       R26 R0 K20 ["beginEditingAsync"]
      158 SETLIST                          R23 R24 3 [1]
      160 CALL                             R21 2 1
      161 GETUPVAL                         R24 4
      162 GETTABLEKS                       R23 R24 K23 ["Hooks"]
      164 GETTABLEKS                       R22 R23 K24 ["useTokens"]
      166 CALL                             R22 0 1
      167 GETUPVAL                         R23 5
      168 CALL                             R23 0 1
      169 GETUPVAL                         R24 6
      170 GETUPVAL                         R26 4
      171 GETTABLEKS                       R25 R26 K25 ["View"]
      173 DUPTABLE                         R26 K31 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      174 NEWTABLE                         R27 8 0
      176 LOADB                            R28 1
      177 SETTABLEKS                       R28 R27 K32 ["row align-y-center flex-around radius-small"]
      179 SETTABLEKS                       R9 R27 K33 ["bg-emphasis"]
      181 NOT                              R28 R9
      182 JUMPIFNOT                        R28 ; [+1]
      183 NOT                              R28 R8
      184 SETTABLEKS                       R28 R27 K34 ["bg-shift-200"]
      186 SETTABLEKS                       R8 R27 K35 ["bg-shift-100"]
      188 SETTABLEKS                       R15 R27 K36 ["stroke-emphasis"]
      190 SETTABLEKS                       R27 R26 K26 ["tag"]
      192 GETIMPORT                        R27 K39 [UDim2.new]
      194 LOADN                            R28 1
      195 LOADN                            R29 0
      196 LOADN                            R30 0
      197 GETTABLEKS                       R32 R22 K27 ["Size"]
      199 GETTABLEKS                       R31 R32 K40 ["Size_600"]
      201 CALL                             R27 4 1
      202 SETTABLEKS                       R27 R26 K27 ["Size"]
      204 JUMPIF                           R8 ; [+2]
      205 MOVE                             R27 R19
      206 JUMP                             ; [+1]
      207 LOADNIL                          R27
      208 SETTABLEKS                       R27 R26 K28 ["onActivated"]
      210 JUMPIF                           R8 ; [+2]
      211 MOVE                             R27 R20
      212 JUMP                             ; [+1]
      213 LOADNIL                          R27
      214 SETTABLEKS                       R27 R26 K29 ["onStateChanged"]
      216 JUMPIFNOT                        R8 ; [+5]
      217 DUPTABLE                         R27 K42 [{"affordance"}]
      218 LOADK                            R28 K43 ["None"]
      219 SETTABLEKS                       R28 R27 K41 ["affordance"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R27
      223 SETTABLEKS                       R27 R26 K30 ["stateLayer"]
      225 DUPTABLE                         R27 K49 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      226 GETUPVAL                         R28 6
      227 GETUPVAL                         R30 4
      228 GETTABLEKS                       R29 R30 K50 ["Image"]
      230 DUPTABLE                         R30 K53 [{"tag", "LayoutOrder", "Image", "imageStyle"}]
      231 LOADK                            R31 K54 ["size-400-400 position-left-center"]
      232 SETTABLEKS                       R31 R30 K26 ["tag"]
      234 MOVE                             R31 R23
      235 CALL                             R31 0 1
      236 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      238 GETTABLEKS                       R31 R17 K55 ["image"]
      240 SETTABLEKS                       R31 R30 K50 ["Image"]
      242 DUPTABLE                         R31 K58 [{"Transparency", "Color3"}]
      243 JUMPIFNOT                        R8 ; [+4]
      244 GETUPVAL                         R33 7
      245 GETTABLEKS                       R32 R33 K59 ["disabledTransparency"]
      247 JUMP                             ; [+2]
      248 GETTABLEKS                       R32 R17 K60 ["transparency"]
      250 SETTABLEKS                       R32 R31 K56 ["Transparency"]
      252 GETTABLEKS                       R32 R17 K61 ["color3"]
      254 SETTABLEKS                       R32 R31 K57 ["Color3"]
      256 SETTABLEKS                       R31 R30 K52 ["imageStyle"]
      258 CALL                             R28 2 1
      259 SETTABLEKS                       R28 R27 K44 ["ClassIcon"]
      261 GETUPVAL                         R28 6
      262 GETUPVAL                         R30 4
      263 GETTABLEKS                       R29 R30 K62 ["Text"]
      265 DUPTABLE                         R30 K64 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      266 NEWTABLE                         R31 4 0
      268 LOADB                            R32 1
      269 SETTABLEKS                       R32 R31 K65 ["size-0-full shrink auto-x align-x-left text-label-small padding-left-xsmall text-align-x-left"]
      271 SETTABLEKS                       R9 R31 K66 ["content-action-emphasis"]
      273 NOT                              R32 R7
      274 JUMPIFNOT                        R32 ; [+3]
      275 NOT                              R32 R9
      276 JUMPIFNOT                        R32 ; [+1]
      277 NOT                              R32 R8
      278 SETTABLEKS                       R32 R31 K67 ["content-emphasis"]
      280 JUMPIFNOT                        R7 ; [+2]
      281 NOT                              R32 R9
      282 JUMPIF                           R32 ; [+1]
      283 MOVE                             R32 R8
      284 SETTABLEKS                       R32 R31 K68 ["content-muted"]
      286 SETTABLEKS                       R31 R30 K26 ["tag"]
      288 LOADB                            R31 1
      289 SETTABLEKS                       R31 R30 K63 ["ClipsDescendants"]
      291 MOVE                             R31 R23
      292 CALL                             R31 0 1
      293 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      295 SETTABLEKS                       R18 R30 K62 ["Text"]
      297 CALL                             R28 2 1
      298 SETTABLEKS                       R28 R27 K45 ["InstanceName"]
      300 GETUPVAL                         R28 6
      301 GETUPVAL                         R30 4
      302 GETTABLEKS                       R29 R30 K25 ["View"]
      304 DUPTABLE                         R30 K69 [{"tag", "LayoutOrder"}]
      305 LOADK                            R31 K70 ["grow size-0-full"]
      306 SETTABLEKS                       R31 R30 K26 ["tag"]
      308 MOVE                             R31 R23
      309 CALL                             R31 0 1
      310 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      312 CALL                             R28 2 1
      313 SETTABLEKS                       R28 R27 K46 ["Padding"]
      315 GETUPVAL                         R28 6
      316 GETUPVAL                         R29 8
      317 DUPTABLE                         R30 K74 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      318 SETTABLEKS                       R9 R30 K71 ["emphasis"]
      320 SETTABLEKS                       R21 R30 K72 ["onClose"]
      322 MOVE                             R31 R23
      323 CALL                             R31 0 1
      324 SETTABLEKS                       R31 R30 K51 ["LayoutOrder"]
      326 NOT                              R31 R7
      327 JUMPIFNOT                        R31 ; [+3]
      328 NOT                              R31 R9
      329 JUMPIFNOT                        R31 ; [+1]
      330 NOT                              R31 R8
      331 SETTABLEKS                       R31 R30 K73 ["Visible"]
      333 CALL                             R28 2 1
      334 SETTABLEKS                       R28 R27 K47 ["Cancel"]
      336 GETUPVAL                         R28 6
      337 LOADK                            R29 K48 ["UIPadding"]
      338 DUPTABLE                         R30 K76 [{"PaddingLeft"}]
      339 GETIMPORT                        R31 K78 [UDim.new]
      341 LOADN                            R32 0
      342 GETTABLEKS                       R34 R22 K27 ["Size"]
      344 GETTABLEKS                       R33 R34 K79 ["Size_150"]
      346 CALL                             R31 2 1
      347 SETTABLEKS                       R31 R30 K75 ["PaddingLeft"]
      349 CALL                             R28 2 1
      350 SETTABLEKS                       R28 R27 K48 ["UIPadding"]
      352 CALL                             R24 3 -1
      353 RETURN                           R24 -1

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
       42 GETTABLEKS                       R9 R0 K4 ["Parent"]
       44 GETTABLEKS                       R8 R9 K14 ["React"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Resources"]
       51 GETTABLEKS                       R10 R11 K16 ["Localization"]
       53 GETTABLEKS                       R9 R10 K17 ["Translator"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Util"]
       60 GETTABLEKS                       R10 R11 K18 ["createNextOrder"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       67 GETTABLEKS                       R11 R12 K20 ["useStyledClassIcon"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R7 K21 ["useCallback"]
       72 GETTABLEKS                       R12 R7 K22 ["createElement"]
       74 DUPCLOSURE                       R13 K23 [PROTO_5]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 RETURN                           R13 1
