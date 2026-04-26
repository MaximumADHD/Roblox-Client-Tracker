PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADK                            R1 K0 ["CreatorContextAsset"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["id"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["assetUriFromId"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["finishEditing"]
       17 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["assetId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["setAssetName"]
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R4 R0 K3 ["displayName"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 2
       14 DUPTABLE                         R3 K6 [{"id", "name"}]
       15 SETTABLEKS                       R1 R3 K4 ["id"]
       17 GETTABLEKS                       R4 R0 K3 ["displayName"]
       19 SETTABLEKS                       R4 R3 K5 ["name"]
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 3
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+10]
        7 JUMPIFEQKNIL                     R0 ; [+9]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K3 [{"id", "name"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K1 ["id"]
       14 SETTABLEKS                       R0 R2 K2 ["name"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shareAccessToAssetsAsync"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 SETLIST                          R1 R2 1 [1]
        8 CALL                             R0 1 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 LENGTH                           R2 R1
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R2 ; [+27]
       14 GETIMPORT                        R2 K2 [warn]
       16 GETUPVAL                         R3 2
       17 LOADK                            R5 K3 ["AssetAccess"]
       18 LOADK                            R6 K4 ["ShareFailed"]
       19 DUPTABLE                         R7 K7 [{"assetType", "assetId"}]
       20 GETUPVAL                         R8 3
       21 SETTABLEKS                       R8 R7 K5 ["assetType"]
       23 GETUPVAL                         R9 1
       24 FASTCALL1                        TOSTRING R9 ; [+2]
       25 GETIMPORT                        R8 K9 [tostring]
       27 CALL                             R8 1 1
       28 SETTABLEKS                       R8 R7 K6 ["assetId"]
       30 NAMECALL                         R3 R3 K10 ["getText"]
       32 CALL                             R3 4 -1
       33 CALL                             R2 -1 0
       34 LOADB                            R2 1
       35 SETUPVAL                         R2 4
       36 GETUPVAL                         R2 5
       37 GETUPVAL                         R3 6
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 7
       41 GETUPVAL                         R3 1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R3 K2 [task.spawn]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R3 1 0
       10 GETIMPORT                        R3 K2 [task.spawn]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          REF R1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U6
       21 CALL                             R3 1 0
       22 CLOSEUPVALS                      R1
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+9]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K3 [{"id", "name"}]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K1 ["id"]
       12 SETTABLEKS                       R0 R2 K2 ["name"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_8:
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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K2 ["assetIdFromUri"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K1 ["value"]
       19 CALL                             R0 1 1
       20 JUMPIFNOTEQKNIL                  R0 ; [+5]
       22 GETUPVAL                         R1 1
       23 LOADNIL                          R2
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R1 K5 [task.spawn]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_9:
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
       54 GETTABLEKS                       R8 R4 K13 ["extra"]
       56 GETTABLEKS                       R7 R8 K14 ["assetType"]
       58 GETTABLEKS                       R6 R7 K15 ["Name"]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K16 ["useState"]
       63 LOADNIL                          R8
       64 CALL                             R7 1 2
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R9 R10 K17 ["useMemo"]
       68 NEWCLOSURE                       R10 P0
       69 CAPTURE                          VAL R7
       70 CAPTURE                          UPVAL U5
       71 NEWTABLE                         R11 0 1
       73 MOVE                             R12 R7
       74 SETLIST                          R11 R12 1 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 6
       78 CALL                             R10 0 1
       79 GETUPVAL                         R11 6
       80 CALL                             R11 0 1
       81 GETUPVAL                         R12 6
       82 CALL                             R12 0 1
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K18 ["useCallback"]
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R15 0 0
       91 CALL                             R13 2 1
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R14 R15 K18 ["useCallback"]
       95 NEWCLOSURE                       R15 P2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U8
       98 NEWTABLE                         R16 0 3
      100 GETTABLEKS                       R17 R0 K19 ["beginEditingAsync"]
      102 GETTABLEKS                       R18 R0 K20 ["setPart"]
      104 GETTABLEKS                       R19 R0 K21 ["finishEditing"]
      106 SETLIST                          R16 R17 3 [1]
      108 CALL                             R14 2 1
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R15 R16 K18 ["useCallback"]
      112 NEWCLOSURE                       R16 P3
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R14
      117 NEWTABLE                         R17 0 1
      119 MOVE                             R18 R14
      120 SETLIST                          R17 R18 1 [1]
      122 CALL                             R15 2 1
      123 GETUPVAL                         R17 0
      124 GETTABLEKS                       R16 R17 K18 ["useCallback"]
      126 NEWCLOSURE                       R17 P4
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R14
      134 NEWTABLE                         R18 0 3
      136 MOVE                             R19 R7
      137 GETTABLEKS                       R20 R0 K4 ["shareAccessToAssetsAsync"]
      139 MOVE                             R21 R14
      140 SETLIST                          R18 R19 3 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R18 0
      144 GETTABLEKS                       R17 R18 K22 ["useEffect"]
      146 NEWCLOSURE                       R18 P5
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R8
      149 CAPTURE                          UPVAL U8
      150 CAPTURE                          VAL R1
      151 NEWTABLE                         R19 0 2
      153 GETTABLEKS                       R20 R5 K12 ["value"]
      155 GETTABLEKS                       R21 R5 K23 ["multiple"]
      157 SETLIST                          R19 R20 2 [1]
      159 CALL                             R17 2 0
      160 GETUPVAL                         R17 10
      161 CALL                             R17 0 1
      162 GETUPVAL                         R18 11
      163 CALL                             R18 0 1
      164 GETUPVAL                         R19 12
      165 GETUPVAL                         R20 13
      166 DUPTABLE                         R21 K27 [{"tag", "stateLayer", "onStateChanged"}]
      167 NEWTABLE                         R22 4 0
      169 LOADB                            R23 1
      170 SETTABLEKS                       R23 R22 K28 ["size-full-600 bg-shift-200 row radius-small"]
      172 GETTABLEKS                       R23 R10 K29 ["enabled"]
      174 JUMPIFNOT                        R23 ; [+3]
      175 GETTABLEKS                       R24 R11 K29 ["enabled"]
      177 NOT                              R23 R24
      178 SETTABLEKS                       R23 R22 K30 ["stroke-emphasis"]
      180 GETTABLEKS                       R23 R11 K29 ["enabled"]
      182 SETTABLEKS                       R23 R22 K31 ["stroke-system-emphasis"]
      184 SETTABLEKS                       R22 R21 K24 ["tag"]
      186 DUPTABLE                         R22 K33 [{"affordance"}]
      187 GETUPVAL                         R26 7
      188 GETTABLEKS                       R25 R26 K34 ["Enums"]
      190 GETTABLEKS                       R24 R25 K35 ["StateLayerAffordance"]
      192 GETTABLEKS                       R23 R24 K36 ["None"]
      194 SETTABLEKS                       R23 R22 K32 ["affordance"]
      196 SETTABLEKS                       R22 R21 K25 ["stateLayer"]
      198 SETTABLEKS                       R13 R21 K26 ["onStateChanged"]
      200 DUPTABLE                         R22 K39 [{"PopoverRoot", "ContentEditorContainer"}]
      201 GETUPVAL                         R23 12
      202 GETUPVAL                         R25 14
      203 GETTABLEKS                       R24 R25 K40 ["Root"]
      205 DUPTABLE                         R25 K44 [{"isOpen", "LayoutOrder", "testId"}]
      206 GETTABLEKS                       R26 R12 K29 ["enabled"]
      208 SETTABLEKS                       R26 R25 K41 ["isOpen"]
      210 MOVE                             R26 R17
      211 CALL                             R26 0 1
      212 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      214 LOADK                            R26 K45 ["AssetPicker"]
      215 SETTABLEKS                       R26 R25 K43 ["testId"]
      217 DUPTABLE                         R26 K48 [{"Anchor", "Content"}]
      218 GETUPVAL                         R27 12
      219 GETUPVAL                         R29 14
      220 GETTABLEKS                       R28 R29 K46 ["Anchor"]
      222 NEWTABLE                         R29 0 0
      224 DUPTABLE                         R30 K51 [{"AssetPickerButton", "SizeConstraint"}]
      225 GETUPVAL                         R31 12
      226 GETUPVAL                         R32 15
      227 DUPTABLE                         R33 K53 [{"onActivated"}]
      228 GETTABLEKS                       R34 R12 K54 ["enable"]
      230 SETTABLEKS                       R34 R33 K52 ["onActivated"]
      232 DUPTABLE                         R34 K56 [{"Icon"}]
      233 GETUPVAL                         R35 12
      234 GETUPVAL                         R37 7
      235 GETTABLEKS                       R36 R37 K57 ["Image"]
      237 DUPTABLE                         R37 K58 [{"tag", "Image"}]
      238 LOADK                            R38 K59 ["size-400 anchor-center-center position-center-center radius-small"]
      239 SETTABLEKS                       R38 R37 K24 ["tag"]
      241 MOVE                             R38 R9
      242 JUMPIF                           R38 ; [+5]
      243 GETTABLEKS                       R39 R2 K60 ["getMultipleIcon"]
      245 CALL                             R39 0 1
      246 GETTABLEKS                       R38 R39 K57 ["Image"]
      248 SETTABLEKS                       R38 R37 K57 ["Image"]
      250 CALL                             R35 2 1
      251 SETTABLEKS                       R35 R34 K55 ["Icon"]
      253 CALL                             R31 3 1
      254 SETTABLEKS                       R31 R30 K49 ["AssetPickerButton"]
      256 GETUPVAL                         R31 12
      257 LOADK                            R32 K61 ["UISizeConstraint"]
      258 DUPTABLE                         R33 K63 [{"MaxSize"}]
      259 GETIMPORT                        R35 K66 [Vector2.one]
      261 GETTABLEKS                       R37 R18 K67 ["Size"]
      263 GETTABLEKS                       R36 R37 K68 ["Size_600"]
      265 MUL                              R34 R35 R36
      266 SETTABLEKS                       R34 R33 K62 ["MaxSize"]
      268 CALL                             R31 2 1
      269 SETTABLEKS                       R31 R30 K50 ["SizeConstraint"]
      271 CALL                             R27 3 1
      272 SETTABLEKS                       R27 R26 K46 ["Anchor"]
      274 GETUPVAL                         R27 12
      275 GETUPVAL                         R29 14
      276 GETTABLEKS                       R28 R29 K47 ["Content"]
      278 DUPTABLE                         R29 K73 [{"hasArrow", "onPressedOutside", "align", "side"}]
      279 LOADB                            R30 0
      280 SETTABLEKS                       R30 R29 K69 ["hasArrow"]
      282 GETTABLEKS                       R30 R12 K74 ["disable"]
      284 SETTABLEKS                       R30 R29 K70 ["onPressedOutside"]
      286 DUPTABLE                         R30 K77 [{"position", "offset"}]
      287 GETUPVAL                         R34 7
      288 GETTABLEKS                       R33 R34 K34 ["Enums"]
      290 GETTABLEKS                       R32 R33 K78 ["PopoverAlign"]
      292 GETTABLEKS                       R31 R32 K79 ["Start"]
      294 SETTABLEKS                       R31 R30 K75 ["position"]
      296 LOADN                            R31 0
      297 SETTABLEKS                       R31 R30 K76 ["offset"]
      299 SETTABLEKS                       R30 R29 K71 ["align"]
      301 DUPTABLE                         R30 K77 [{"position", "offset"}]
      302 GETUPVAL                         R34 7
      303 GETTABLEKS                       R33 R34 K34 ["Enums"]
      305 GETTABLEKS                       R32 R33 K80 ["PopoverSide"]
      307 GETTABLEKS                       R31 R32 K81 ["Bottom"]
      309 SETTABLEKS                       R31 R30 K75 ["position"]
      311 LOADN                            R31 8
      312 SETTABLEKS                       R31 R30 K76 ["offset"]
      314 SETTABLEKS                       R30 R29 K72 ["side"]
      316 DUPTABLE                         R30 K82 [{"AssetPicker"}]
      317 GETTABLEKS                       R32 R12 K29 ["enabled"]
      319 JUMPIFNOT                        R32 ; [+15]
      320 GETUPVAL                         R31 12
      321 GETUPVAL                         R32 16
      322 DUPTABLE                         R33 K85 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      323 SETTABLEKS                       R6 R33 K14 ["assetType"]
      325 SETTABLEKS                       R3 R33 K83 ["gameId"]
      327 SETTABLEKS                       R15 R33 K84 ["onAssetSelected"]
      329 GETTABLEKS                       R34 R0 K4 ["shareAccessToAssetsAsync"]
      331 SETTABLEKS                       R34 R33 K4 ["shareAccessToAssetsAsync"]
      333 CALL                             R31 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R31
      336 SETTABLEKS                       R31 R30 K45 ["AssetPicker"]
      338 CALL                             R27 3 1
      339 SETTABLEKS                       R27 R26 K47 ["Content"]
      341 CALL                             R23 3 1
      342 SETTABLEKS                       R23 R22 K37 ["PopoverRoot"]
      344 GETUPVAL                         R23 12
      345 GETUPVAL                         R24 13
      346 DUPTABLE                         R25 K86 [{"tag", "LayoutOrder", "Size"}]
      347 LOADK                            R26 K87 ["clip padding-left-xxsmall"]
      348 SETTABLEKS                       R26 R25 K24 ["tag"]
      350 MOVE                             R26 R17
      351 CALL                             R26 0 1
      352 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      354 GETIMPORT                        R26 K90 [UDim2.new]
      356 LOADN                            R27 1
      357 GETTABLEKS                       R30 R18 K67 ["Size"]
      359 GETTABLEKS                       R29 R30 K68 ["Size_600"]
      361 MINUS                            R28 R29
      362 LOADN                            R29 1
      363 LOADN                            R30 0
      364 CALL                             R26 4 1
      365 SETTABLEKS                       R26 R25 K67 ["Size"]
      367 DUPTABLE                         R26 K92 [{"ContentEditor"}]
      368 GETUPVAL                         R27 12
      369 GETUPVAL                         R28 17
      370 DUPTABLE                         R29 K97 [{"asset", "onFocused", "onFocusLost", "submitAssetId"}]
      371 SETTABLEKS                       R7 R29 K93 ["asset"]
      373 GETTABLEKS                       R30 R11 K54 ["enable"]
      375 SETTABLEKS                       R30 R29 K94 ["onFocused"]
      377 GETTABLEKS                       R30 R11 K74 ["disable"]
      379 SETTABLEKS                       R30 R29 K95 ["onFocusLost"]
      381 SETTABLEKS                       R16 R29 K96 ["submitAssetId"]
      383 CALL                             R27 2 1
      384 SETTABLEKS                       R27 R26 K91 ["ContentEditor"]
      386 CALL                             R23 3 1
      387 SETTABLEKS                       R23 R22 K38 ["ContentEditorContainer"]
      389 CALL                             R19 3 -1
      390 RETURN                           R19 -1

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
       40 GETTABLEKS                       R7 R0 K13 ["Util"]
       42 GETTABLEKS                       R6 R7 K14 ["AssetUri"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Components"]
       49 GETTABLEKS                       R8 R9 K8 ["Contexts"]
       51 GETTABLEKS                       R7 R8 K15 ["ClassIconContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R8 R9 K16 ["ContentEditor"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R10 R0 K4 ["Parent"]
       65 GETTABLEKS                       R9 R10 K17 ["Foundation"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R11 R0 K13 ["Util"]
       72 GETTABLEKS                       R10 R11 K18 ["Observable"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R13 R0 K7 ["Components"]
       79 GETTABLEKS                       R12 R13 K13 ["Util"]
       81 GETTABLEKS                       R11 R12 K19 ["PopoverButton"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R0 K20 ["PropertyTypes"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R14 R15 K4 ["Parent"]
       95 GETTABLEKS                       R13 R14 K21 ["PropertyViewTypes"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K6 [require]
      100 GETTABLEKS                       R15 R0 K4 ["Parent"]
      102 GETTABLEKS                       R14 R15 K22 ["React"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R16 R0 K4 ["Parent"]
      109 GETTABLEKS                       R15 R16 K23 ["ReactUtils"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R1 K24 ["SignalsReact"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R19 R0 K25 ["Resources"]
      121 GETTABLEKS                       R18 R19 K26 ["Localization"]
      123 GETTABLEKS                       R17 R18 K27 ["Translator"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K6 [require]
      128 GETTABLEKS                       R22 R0 K7 ["Components"]
      130 GETTABLEKS                       R21 R22 K10 ["Exposed"]
      132 GETTABLEKS                       R20 R21 K11 ["AssetPicker"]
      134 GETTABLEKS                       R19 R20 K13 ["Util"]
      136 GETTABLEKS                       R18 R19 K28 ["getAssetThumbnailUri"]
      138 CALL                             R17 1 1
      139 GETTABLEKS                       R18 R8 K29 ["Popover"]
      141 GETTABLEKS                       R19 R8 K30 ["View"]
      143 GETTABLEKS                       R20 R14 K31 ["createNextOrder"]
      145 GETTABLEKS                       R21 R13 K32 ["createElement"]
      147 GETTABLEKS                       R22 R14 K33 ["useToggleState"]
      149 GETTABLEKS                       R24 R8 K34 ["Hooks"]
      151 GETTABLEKS                       R23 R24 K35 ["useTokens"]
      153 DUPCLOSURE                       R24 K36 [PROTO_9]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R7
      172 RETURN                           R24 1
