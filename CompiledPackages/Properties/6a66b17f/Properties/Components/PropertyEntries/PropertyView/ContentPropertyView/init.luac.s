PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 13
        2 JUMPIFLT                         R1 R2 ; [+11]
        4 LOADN                            R3 1
        5 LOADN                            R4 13
        6 FASTCALL3                        STRING_SUB R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [string.sub]
       11 CALL                             R1 3 1
       12 JUMPIFEQKS                       R1 K3 ["rbxassetid://"] ; [+3]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K4 [14]
       20 GETIMPORT                        R1 K2 [string.sub]
       22 CALL                             R1 2 1
       23 FASTCALL1                        TONUMBER R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K6 [tonumber]
       27 CALL                             R2 1 1
       28 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R2 K2 ["Hover"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["enable"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K4 ["disable"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 DUPTABLE                         R2 K3 [{"id", "name"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["id"]
       10 SETTABLEKS                       R0 R2 K2 ["name"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 13
        2 JUMPIFLT                         R2 R3 ; [+11]
        4 LOADN                            R4 1
        5 LOADN                            R5 13
        6 FASTCALL3                        STRING_SUB R0 R4 R5
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K2 [string.sub]
       11 CALL                             R2 3 1
       12 JUMPIFEQKS                       R2 K3 ["rbxassetid://"] ; [+3]
       14 LOADNIL                          R1
       15 JUMP                             ; [+13]
       16 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       18 MOVE                             R3 R0
       19 LOADK                            R4 K4 [14]
       20 GETIMPORT                        R2 K2 [string.sub]
       22 CALL                             R2 2 1
       23 FASTCALL1                        TONUMBER R2 ; [+3]
       24 MOVE                             R4 R2
       25 GETIMPORT                        R3 K6 [tonumber]
       27 CALL                             R3 1 1
       28 MOVE                             R1 R3
       29 JUMPIFNOTEQKNIL                  R1 ; [+3]
       31 LOADB                            R2 0
       32 RETURN                           R2 1
       33 GETIMPORT                        R2 K9 [task.spawn]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 CALL                             R2 1 0
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["setPart"]
       12 LOADK                            R2 K2 ["value"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K3 ["finishEditing"]
       18 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setAssetName"]
        7 GETTABLEKS                       R2 R0 K2 ["assetId"]
        9 GETTABLEKS                       R3 R0 K3 ["displayName"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K4 ["rbxassetid://%*"]
       14 GETTABLEKS                       R5 R0 K2 ["assetId"]
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["multiple"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["value"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+5]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K1 ["value"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["gameIdObservable"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["ContentPropertyView: no gameIdObservable provided"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R3 R0 K4 ["shareAccessToAssetsAsync"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       20 LOADK                            R3 K5 ["ContentPropertyView: no shareAccessToAssetsAsync function provided"]
       21 GETIMPORT                        R1 K3 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K6 ["useContext"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K7 ["Context"]
       30 CALL                             R1 1 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K6 ["useContext"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K7 ["Context"]
       37 CALL                             R2 1 1
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K8 ["use"]
       41 GETTABLEKS                       R4 R0 K0 ["gameIdObservable"]
       43 CALL                             R3 1 1
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R4 R5 K9 ["useSignalState"]
       47 GETTABLEKS                       R5 R0 K10 ["getInfo"]
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R6 R4 K11 ["parts"]
       52 GETTABLEKS                       R5 R6 K12 ["value"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K13 ["useState"]
       57 LOADNIL                          R7
       58 CALL                             R6 1 2
       59 GETUPVAL                         R8 5
       60 CALL                             R8 0 1
       61 GETUPVAL                         R9 5
       62 CALL                             R9 0 1
       63 GETUPVAL                         R10 5
       64 CALL                             R10 0 1
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K14 ["useCallback"]
       68 NEWCLOSURE                       R12 P0
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R8
       71 NEWTABLE                         R13 0 0
       73 CALL                             R11 2 1
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R12 R13 K14 ["useCallback"]
       77 NEWCLOSURE                       R13 P1
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R14 0 0
       82 CALL                             R12 2 1
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K14 ["useCallback"]
       86 NEWCLOSURE                       R14 P2
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R15 0 4
       91 MOVE                             R16 R12
       92 GETTABLEKS                       R17 R0 K15 ["beginEditingAsync"]
       94 GETTABLEKS                       R18 R0 K16 ["setPart"]
       96 GETTABLEKS                       R19 R0 K17 ["finishEditing"]
       98 SETLIST                          R15 R16 4 [1]
      100 CALL                             R13 2 1
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R14 R15 K14 ["useCallback"]
      104 NEWCLOSURE                       R15 P3
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R13
      108 NEWTABLE                         R16 0 1
      110 MOVE                             R17 R13
      111 SETLIST                          R16 R17 1 [1]
      113 CALL                             R14 2 1
      114 GETUPVAL                         R16 0
      115 GETTABLEKS                       R15 R16 K18 ["useEffect"]
      117 NEWCLOSURE                       R16 P4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R12
      121 NEWTABLE                         R17 0 2
      123 GETTABLEKS                       R18 R5 K12 ["value"]
      125 GETTABLEKS                       R19 R5 K19 ["multiple"]
      127 SETLIST                          R17 R18 2 [1]
      129 CALL                             R15 2 0
      130 GETUPVAL                         R15 7
      131 CALL                             R15 0 1
      132 GETUPVAL                         R16 8
      133 CALL                             R16 0 1
      134 GETUPVAL                         R17 9
      135 GETUPVAL                         R18 10
      136 DUPTABLE                         R19 K23 [{"tag", "stateLayer", "onStateChanged"}]
      137 NEWTABLE                         R20 4 0
      139 LOADB                            R21 1
      140 SETTABLEKS                       R21 R20 K24 ["size-full-600 bg-shift-200 row radius-small"]
      142 GETTABLEKS                       R21 R8 K25 ["enabled"]
      144 JUMPIFNOT                        R21 ; [+3]
      145 GETTABLEKS                       R22 R9 K25 ["enabled"]
      147 NOT                              R21 R22
      148 SETTABLEKS                       R21 R20 K26 ["stroke-emphasis"]
      150 GETTABLEKS                       R21 R9 K25 ["enabled"]
      152 SETTABLEKS                       R21 R20 K27 ["stroke-system-emphasis"]
      154 SETTABLEKS                       R20 R19 K20 ["tag"]
      156 DUPTABLE                         R20 K29 [{"affordance"}]
      157 GETUPVAL                         R24 6
      158 GETTABLEKS                       R23 R24 K30 ["Enums"]
      160 GETTABLEKS                       R22 R23 K31 ["StateLayerAffordance"]
      162 GETTABLEKS                       R21 R22 K32 ["None"]
      164 SETTABLEKS                       R21 R20 K28 ["affordance"]
      166 SETTABLEKS                       R20 R19 K21 ["stateLayer"]
      168 SETTABLEKS                       R11 R19 K22 ["onStateChanged"]
      170 DUPTABLE                         R20 K35 [{"PopoverRoot", "ContentEditorContainer"}]
      171 GETUPVAL                         R21 9
      172 GETUPVAL                         R23 11
      173 GETTABLEKS                       R22 R23 K36 ["Root"]
      175 DUPTABLE                         R23 K40 [{"isOpen", "LayoutOrder", "testId"}]
      176 GETTABLEKS                       R24 R10 K25 ["enabled"]
      178 SETTABLEKS                       R24 R23 K37 ["isOpen"]
      180 MOVE                             R24 R15
      181 CALL                             R24 0 1
      182 SETTABLEKS                       R24 R23 K38 ["LayoutOrder"]
      184 LOADK                            R24 K41 ["AssetPicker"]
      185 SETTABLEKS                       R24 R23 K39 ["testId"]
      187 DUPTABLE                         R24 K44 [{"Anchor", "Content"}]
      188 GETUPVAL                         R25 9
      189 GETUPVAL                         R27 11
      190 GETTABLEKS                       R26 R27 K42 ["Anchor"]
      192 NEWTABLE                         R27 0 0
      194 DUPTABLE                         R28 K47 [{"AssetPickerButton", "SizeConstraint"}]
      195 GETUPVAL                         R29 9
      196 GETUPVAL                         R30 12
      197 DUPTABLE                         R31 K49 [{"onActivated"}]
      198 GETTABLEKS                       R32 R10 K50 ["enable"]
      200 SETTABLEKS                       R32 R31 K48 ["onActivated"]
      202 DUPTABLE                         R32 K52 [{"PlaceholderIcon"}]
      203 GETUPVAL                         R33 9
      204 GETUPVAL                         R35 6
      205 GETTABLEKS                       R34 R35 K53 ["Image"]
      207 DUPTABLE                         R35 K54 [{"tag", "Image"}]
      208 LOADK                            R36 K55 ["size-400 anchor-center-center position-center-center"]
      209 SETTABLEKS                       R36 R35 K20 ["tag"]
      211 GETTABLEKS                       R37 R2 K56 ["getMultipleIcon"]
      213 CALL                             R37 0 1
      214 GETTABLEKS                       R36 R37 K53 ["Image"]
      216 SETTABLEKS                       R36 R35 K53 ["Image"]
      218 CALL                             R33 2 1
      219 SETTABLEKS                       R33 R32 K51 ["PlaceholderIcon"]
      221 CALL                             R29 3 1
      222 SETTABLEKS                       R29 R28 K45 ["AssetPickerButton"]
      224 GETUPVAL                         R29 9
      225 LOADK                            R30 K57 ["UISizeConstraint"]
      226 DUPTABLE                         R31 K59 [{"MaxSize"}]
      227 GETIMPORT                        R33 K62 [Vector2.one]
      229 GETTABLEKS                       R35 R16 K63 ["Size"]
      231 GETTABLEKS                       R34 R35 K64 ["Size_600"]
      233 MUL                              R32 R33 R34
      234 SETTABLEKS                       R32 R31 K58 ["MaxSize"]
      236 CALL                             R29 2 1
      237 SETTABLEKS                       R29 R28 K46 ["SizeConstraint"]
      239 CALL                             R25 3 1
      240 SETTABLEKS                       R25 R24 K42 ["Anchor"]
      242 GETUPVAL                         R25 9
      243 GETUPVAL                         R27 11
      244 GETTABLEKS                       R26 R27 K43 ["Content"]
      246 DUPTABLE                         R27 K69 [{"hasArrow", "onPressedOutside", "align", "side"}]
      247 LOADB                            R28 0
      248 SETTABLEKS                       R28 R27 K65 ["hasArrow"]
      250 GETTABLEKS                       R28 R10 K70 ["disable"]
      252 SETTABLEKS                       R28 R27 K66 ["onPressedOutside"]
      254 DUPTABLE                         R28 K73 [{"position", "offset"}]
      255 GETUPVAL                         R32 6
      256 GETTABLEKS                       R31 R32 K30 ["Enums"]
      258 GETTABLEKS                       R30 R31 K74 ["PopoverAlign"]
      260 GETTABLEKS                       R29 R30 K75 ["Start"]
      262 SETTABLEKS                       R29 R28 K71 ["position"]
      264 LOADN                            R29 0
      265 SETTABLEKS                       R29 R28 K72 ["offset"]
      267 SETTABLEKS                       R28 R27 K67 ["align"]
      269 DUPTABLE                         R28 K73 [{"position", "offset"}]
      270 GETUPVAL                         R32 6
      271 GETTABLEKS                       R31 R32 K30 ["Enums"]
      273 GETTABLEKS                       R30 R31 K76 ["PopoverSide"]
      275 GETTABLEKS                       R29 R30 K77 ["Bottom"]
      277 SETTABLEKS                       R29 R28 K71 ["position"]
      279 LOADN                            R29 8
      280 SETTABLEKS                       R29 R28 K72 ["offset"]
      282 SETTABLEKS                       R28 R27 K68 ["side"]
      284 DUPTABLE                         R28 K78 [{"AssetPicker"}]
      285 GETTABLEKS                       R30 R10 K25 ["enabled"]
      287 JUMPIFNOT                        R30 ; [+21]
      288 GETUPVAL                         R29 9
      289 GETUPVAL                         R30 13
      290 DUPTABLE                         R31 K82 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      291 GETTABLEKS                       R34 R4 K83 ["extra"]
      293 GETTABLEKS                       R33 R34 K79 ["assetType"]
      295 GETTABLEKS                       R32 R33 K84 ["Name"]
      297 SETTABLEKS                       R32 R31 K79 ["assetType"]
      299 SETTABLEKS                       R3 R31 K80 ["gameId"]
      301 SETTABLEKS                       R14 R31 K81 ["onAssetSelected"]
      303 GETTABLEKS                       R32 R0 K4 ["shareAccessToAssetsAsync"]
      305 SETTABLEKS                       R32 R31 K4 ["shareAccessToAssetsAsync"]
      307 CALL                             R29 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R29
      310 SETTABLEKS                       R29 R28 K41 ["AssetPicker"]
      312 CALL                             R25 3 1
      313 SETTABLEKS                       R25 R24 K43 ["Content"]
      315 CALL                             R21 3 1
      316 SETTABLEKS                       R21 R20 K33 ["PopoverRoot"]
      318 GETUPVAL                         R21 9
      319 GETUPVAL                         R22 10
      320 DUPTABLE                         R23 K85 [{"tag", "LayoutOrder", "Size"}]
      321 LOADK                            R24 K86 ["clip padding-left-xxsmall"]
      322 SETTABLEKS                       R24 R23 K20 ["tag"]
      324 MOVE                             R24 R15
      325 CALL                             R24 0 1
      326 SETTABLEKS                       R24 R23 K38 ["LayoutOrder"]
      328 GETIMPORT                        R24 K89 [UDim2.new]
      330 LOADN                            R25 1
      331 GETTABLEKS                       R28 R16 K63 ["Size"]
      333 GETTABLEKS                       R27 R28 K64 ["Size_600"]
      335 MINUS                            R26 R27
      336 LOADN                            R27 1
      337 LOADN                            R28 0
      338 CALL                             R24 4 1
      339 SETTABLEKS                       R24 R23 K63 ["Size"]
      341 DUPTABLE                         R24 K91 [{"ContentEditor"}]
      342 GETUPVAL                         R25 9
      343 GETUPVAL                         R26 14
      344 DUPTABLE                         R27 K96 [{"asset", "onFocused", "onFocusLost", "setContentProperty"}]
      345 SETTABLEKS                       R6 R27 K92 ["asset"]
      347 GETTABLEKS                       R28 R9 K50 ["enable"]
      349 SETTABLEKS                       R28 R27 K93 ["onFocused"]
      351 GETTABLEKS                       R28 R9 K70 ["disable"]
      353 SETTABLEKS                       R28 R27 K94 ["onFocusLost"]
      355 SETTABLEKS                       R13 R27 K95 ["setContentProperty"]
      357 CALL                             R25 2 1
      358 SETTABLEKS                       R25 R24 K90 ["ContentEditor"]
      360 CALL                             R21 3 1
      361 SETTABLEKS                       R21 R20 K34 ["ContentEditorContainer"]
      363 CALL                             R17 3 -1
      364 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetNameContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Components"]
       22 GETTABLEKS                       R5 R6 K10 ["Exposed"]
       24 GETTABLEKS                       R4 R5 K11 ["AssetPicker"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R8 R0 K7 ["Components"]
       31 GETTABLEKS                       R7 R8 K10 ["Exposed"]
       33 GETTABLEKS                       R6 R7 K11 ["AssetPicker"]
       35 GETTABLEKS                       R5 R6 K12 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R8 R0 K7 ["Components"]
       42 GETTABLEKS                       R7 R8 K8 ["Contexts"]
       44 GETTABLEKS                       R6 R7 K13 ["ClassIconContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R7 R8 K14 ["ContentEditor"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETTABLEKS                       R9 R0 K4 ["Parent"]
       58 GETTABLEKS                       R8 R9 K15 ["Foundation"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Util"]
       65 GETTABLEKS                       R9 R10 K17 ["Observable"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R12 R0 K7 ["Components"]
       72 GETTABLEKS                       R11 R12 K16 ["Util"]
       74 GETTABLEKS                       R10 R11 K18 ["PopoverButton"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K19 ["PropertyTypes"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETIMPORT                        R14 K1 [script]
       86 GETTABLEKS                       R13 R14 K4 ["Parent"]
       88 GETTABLEKS                       R12 R13 K20 ["PropertyViewTypes"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETTABLEKS                       R14 R0 K4 ["Parent"]
       95 GETTABLEKS                       R13 R14 K21 ["React"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K6 [require]
      100 GETTABLEKS                       R15 R0 K4 ["Parent"]
      102 GETTABLEKS                       R14 R15 K22 ["ReactUtils"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R1 K23 ["SignalsReact"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R7 K24 ["Popover"]
      112 GETTABLEKS                       R16 R7 K25 ["View"]
      114 GETTABLEKS                       R17 R13 K26 ["createNextOrder"]
      116 GETTABLEKS                       R18 R12 K27 ["createElement"]
      118 GETTABLEKS                       R19 R13 K28 ["useToggleState"]
      120 GETTABLEKS                       R21 R7 K29 ["Hooks"]
      122 GETTABLEKS                       R20 R21 K30 ["useTokens"]
      124 DUPCLOSURE                       R21 K31 [PROTO_0]
      125 DUPCLOSURE                       R22 K32 [PROTO_7]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R6
      141 RETURN                           R22 1
