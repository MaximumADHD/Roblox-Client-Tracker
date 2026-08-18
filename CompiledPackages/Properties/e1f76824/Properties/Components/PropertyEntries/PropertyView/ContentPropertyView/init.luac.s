PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["type"]
        8 JUMPIFNOTEQKS                    R0 K1 ["Local"] ; [+5]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["path"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 LOADK                            R1 K3 ["CreatorContextAsset"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["id"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["enable"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["disable"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["assetId"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["setAssetName"]
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R4 R0 K3 ["displayName"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 2
       14 DUPTABLE                         R3 K8 [{["type"] = "Published", ["id"], ["name"]}]
       15 SETTABLEKS                       R1 R3 K6 ["id"]
       17 GETTABLEKS                       R4 R0 K3 ["displayName"]
       19 SETTABLEKS                       R4 R3 K7 ["name"]
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K9 ["assetUriFromId"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+10]
        7 JUMPIFEQKNIL                     R0 ; [+9]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K5 [{["type"] = "Published", ["id"], ["name"]}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K3 ["id"]
       14 SETTABLEKS                       R0 R2 K4 ["name"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shareAccessToAssetsAsync"]
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
       41 GETUPVAL                         R3 8
       42 GETTABLEKS                       R3 R3 K11 ["assetUriFromId"]
       44 GETUPVAL                         R4 1
       45 CALL                             R3 1 -1
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U7
       22 CALL                             R3 1 0
       23 CLOSEUPVALS                      R1
       24 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["^%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K2 [""]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["hasAssetUriPrefix"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["assetIdFromUri"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["assetIdFromUri"]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 1
       31 JUMPIFEQKNIL                     R2 ; [+5]
       33 GETUPVAL                         R3 3
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 0
       38 DUPTABLE                         R4 K8 [{["type"] = "Local", ["path"]}]
       39 SETTABLEKS                       R0 R4 K7 ["path"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 1
       43 MOVE                             R4 R0
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+9]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K5 [{["type"] = "Published", ["id"], ["name"]}]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K3 ["id"]
       12 SETTABLEKS                       R0 R2 K4 ["name"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["multiple"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["value"]
        7 JUMPIFEQKNIL                     R0 ; [+6]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["value"]
       12 JUMPIFNOTEQKS                    R0 K2 [""] ; [+5]
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K1 ["value"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K3 ["assetIdFromUri"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 JUMPIFEQKNIL                     R1 ; [+9]
       28 GETIMPORT                        R2 K6 [task.spawn]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 1
       37 DUPTABLE                         R3 K10 [{["type"] = "Local", ["path"]}]
       38 SETTABLEKS                       R0 R3 K9 ["path"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["specializedEditingUtils"]
        2 GETTABLEKS                       R1 R1 K1 ["assetPicker"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       10 LOADK                            R4 K2 ["ContentPropertyView: must provide assetpicker utils"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["useContext"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["useContext"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K7 ["use"]
       31 GETTABLEKS                       R5 R1 K8 ["gameIdObservable"]
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K9 ["useSignalState"]
       37 GETTABLEKS                       R6 R0 K10 ["getInfo"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K11 ["parts"]
       42 GETTABLEKS                       R6 R6 K12 ["value"]
       44 GETTABLEKS                       R7 R5 K13 ["extra"]
       46 GETTABLEKS                       R7 R7 K14 ["assetType"]
       48 GETTABLEKS                       R7 R7 K15 ["Name"]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K16 ["useState"]
       53 LOADNIL                          R9
       54 CALL                             R8 1 2
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K17 ["useMemo"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R8
       60 CAPTURE                          UPVAL U5
       61 NEWTABLE                         R12 0 1
       63 MOVE                             R13 R8
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 6
       68 CALL                             R11 0 1
       69 GETUPVAL                         R12 6
       70 CALL                             R12 0 1
       71 GETUPVAL                         R13 6
       72 CALL                             R13 0 1
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R14 R14 K18 ["useCallback"]
       76 NEWCLOSURE                       R15 P1
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R11
       79 NEWTABLE                         R16 0 0
       81 CALL                             R14 2 1
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K18 ["useCallback"]
       85 NEWCLOSURE                       R16 P2
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R17 0 3
       89 GETTABLEKS                       R18 R0 K19 ["beginEditingAsync"]
       91 GETTABLEKS                       R19 R0 K20 ["setPart"]
       93 GETTABLEKS                       R20 R0 K21 ["finishEditing"]
       95 SETLIST                          R17 R18 3 [1]
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K18 ["useCallback"]
      101 NEWCLOSURE                       R17 P3
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R15
      106 CAPTURE                          UPVAL U8
      107 NEWTABLE                         R18 0 1
      109 MOVE                             R19 R15
      110 SETLIST                          R18 R19 1 [1]
      112 CALL                             R16 2 1
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R17 R17 K18 ["useCallback"]
      116 NEWCLOSURE                       R18 P4
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R15
      124 CAPTURE                          UPVAL U8
      125 NEWTABLE                         R19 0 3
      127 MOVE                             R20 R8
      128 GETTABLEKS                       R21 R1 K22 ["shareAccessToAssetsAsync"]
      130 MOVE                             R22 R15
      131 SETLIST                          R19 R20 3 [1]
      133 CALL                             R17 2 1
      134 GETUPVAL                         R18 0
      135 GETTABLEKS                       R18 R18 K18 ["useCallback"]
      137 NEWCLOSURE                       R19 P5
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R15
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R17
      142 NEWTABLE                         R20 0 2
      144 MOVE                             R21 R17
      145 MOVE                             R22 R15
      146 SETLIST                          R20 R21 2 [1]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K23 ["useEffect"]
      152 NEWCLOSURE                       R20 P6
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R9
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R2
      157 NEWTABLE                         R21 0 2
      159 GETTABLEKS                       R22 R6 K12 ["value"]
      161 GETTABLEKS                       R23 R6 K24 ["multiple"]
      163 SETLIST                          R21 R22 2 [1]
      165 CALL                             R19 2 0
      166 GETUPVAL                         R19 10
      167 CALL                             R19 0 1
      168 GETUPVAL                         R20 11
      169 CALL                             R20 0 1
      170 GETUPVAL                         R21 12
      171 GETUPVAL                         R22 13
      172 DUPTABLE                         R23 K28 [{"tag", "stateLayer", "onStateChanged"}]
      173 NEWTABLE                         R24 4 0
      175 LOADB                            R25 1
      176 SETTABLEKS                       R25 R24 K29 ["row size-full-600 radius-small bg-shift-200"]
      178 GETTABLEKS                       R25 R11 K30 ["enabled"]
      180 JUMPIFNOT                        R25 ; [+3]
      181 GETTABLEKS                       R26 R12 K30 ["enabled"]
      183 NOT                              R25 R26
      184 SETTABLEKS                       R25 R24 K31 ["stroke-emphasis"]
      186 GETTABLEKS                       R25 R12 K30 ["enabled"]
      188 SETTABLEKS                       R25 R24 K32 ["stroke-system-emphasis"]
      190 SETTABLEKS                       R24 R23 K25 ["tag"]
      192 DUPTABLE                         R24 K34 [{"affordance"}]
      193 GETUPVAL                         R25 7
      194 GETTABLEKS                       R25 R25 K35 ["Enums"]
      196 GETTABLEKS                       R25 R25 K36 ["StateLayerAffordance"]
      198 GETTABLEKS                       R25 R25 K37 ["None"]
      200 SETTABLEKS                       R25 R24 K33 ["affordance"]
      202 SETTABLEKS                       R24 R23 K26 ["stateLayer"]
      204 SETTABLEKS                       R14 R23 K27 ["onStateChanged"]
      206 DUPTABLE                         R24 K40 [{"PopoverRoot", "ContentEditorContainer"}]
      207 GETUPVAL                         R25 12
      208 GETUPVAL                         R26 14
      209 GETTABLEKS                       R26 R26 K41 ["Root"]
      211 DUPTABLE                         R27 K46 [{["isOpen"], ["LayoutOrder"], ["testId"] = "AssetPicker"}]
      212 GETTABLEKS                       R28 R13 K30 ["enabled"]
      214 SETTABLEKS                       R28 R27 K42 ["isOpen"]
      216 MOVE                             R28 R19
      217 CALL                             R28 0 1
      218 SETTABLEKS                       R28 R27 K43 ["LayoutOrder"]
      220 DUPTABLE                         R28 K49 [{"Anchor", "Content"}]
      221 GETUPVAL                         R29 12
      222 GETUPVAL                         R30 14
      223 GETTABLEKS                       R30 R30 K47 ["Anchor"]
      225 NEWTABLE                         R31 0 0
      227 DUPTABLE                         R32 K52 [{"AssetPickerButton", "SizeConstraint"}]
      228 GETUPVAL                         R33 12
      229 GETUPVAL                         R34 15
      230 DUPTABLE                         R35 K54 [{"onActivated"}]
      231 GETTABLEKS                       R36 R13 K55 ["enable"]
      233 SETTABLEKS                       R36 R35 K53 ["onActivated"]
      235 DUPTABLE                         R36 K57 [{"Icon"}]
      236 GETUPVAL                         R37 12
      237 GETUPVAL                         R38 7
      238 GETTABLEKS                       R38 R38 K58 ["Image"]
      240 DUPTABLE                         R39 K60 [{["tag"] = "position-center-center anchor-center-center size-400 radius-small", ["Image"]}]
      241 MOVE                             R40 R10
      242 JUMPIF                           R40 ; [+5]
      243 GETTABLEKS                       R40 R3 K61 ["getMultipleIcon"]
      245 CALL                             R40 0 1
      246 GETTABLEKS                       R40 R40 K58 ["Image"]
      248 SETTABLEKS                       R40 R39 K58 ["Image"]
      250 CALL                             R37 2 1
      251 SETTABLEKS                       R37 R36 K56 ["Icon"]
      253 CALL                             R33 3 1
      254 SETTABLEKS                       R33 R32 K50 ["AssetPickerButton"]
      256 GETUPVAL                         R33 12
      257 LOADK                            R34 K62 ["UISizeConstraint"]
      258 DUPTABLE                         R35 K64 [{"MaxSize"}]
      259 GETIMPORT                        R37 K67 [Vector2.one]
      261 GETTABLEKS                       R38 R20 K68 ["Size"]
      263 GETTABLEKS                       R38 R38 K69 ["Size_600"]
      265 MUL                              R36 R37 R38
      266 SETTABLEKS                       R36 R35 K63 ["MaxSize"]
      268 CALL                             R33 2 1
      269 SETTABLEKS                       R33 R32 K51 ["SizeConstraint"]
      271 CALL                             R29 3 1
      272 SETTABLEKS                       R29 R28 K47 ["Anchor"]
      274 GETUPVAL                         R29 12
      275 GETUPVAL                         R30 14
      276 GETTABLEKS                       R30 R30 K48 ["Content"]
      278 DUPTABLE                         R31 K75 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      279 GETTABLEKS                       R32 R13 K76 ["disable"]
      281 SETTABLEKS                       R32 R31 K72 ["onPressedOutside"]
      283 DUPTABLE                         R32 K80 [{["position"], ["offset"] = 0}]
      284 GETUPVAL                         R33 7
      285 GETTABLEKS                       R33 R33 K35 ["Enums"]
      287 GETTABLEKS                       R33 R33 K81 ["PopoverAlign"]
      289 GETTABLEKS                       R33 R33 K82 ["Start"]
      291 SETTABLEKS                       R33 R32 K77 ["position"]
      293 SETTABLEKS                       R32 R31 K73 ["align"]
      295 DUPTABLE                         R32 K84 [{["position"], ["offset"] = 8}]
      296 GETUPVAL                         R33 7
      297 GETTABLEKS                       R33 R33 K35 ["Enums"]
      299 GETTABLEKS                       R33 R33 K85 ["PopoverSide"]
      301 GETTABLEKS                       R33 R33 K86 ["Bottom"]
      303 SETTABLEKS                       R33 R32 K77 ["position"]
      305 SETTABLEKS                       R32 R31 K74 ["side"]
      307 DUPTABLE                         R32 K87 [{"AssetPicker"}]
      308 GETTABLEKS                       R34 R13 K30 ["enabled"]
      310 JUMPIFNOT                        R34 ; [+15]
      311 GETUPVAL                         R33 12
      312 GETUPVAL                         R34 16
      313 DUPTABLE                         R35 K90 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      314 SETTABLEKS                       R7 R35 K14 ["assetType"]
      316 SETTABLEKS                       R4 R35 K88 ["gameId"]
      318 SETTABLEKS                       R16 R35 K89 ["onAssetSelected"]
      320 GETTABLEKS                       R36 R1 K22 ["shareAccessToAssetsAsync"]
      322 SETTABLEKS                       R36 R35 K22 ["shareAccessToAssetsAsync"]
      324 CALL                             R33 2 1
      325 JUMP                             ; [+1]
      326 LOADNIL                          R33
      327 SETTABLEKS                       R33 R32 K45 ["AssetPicker"]
      329 CALL                             R29 3 1
      330 SETTABLEKS                       R29 R28 K48 ["Content"]
      332 CALL                             R25 3 1
      333 SETTABLEKS                       R25 R24 K38 ["PopoverRoot"]
      335 GETUPVAL                         R25 12
      336 GETUPVAL                         R26 13
      337 DUPTABLE                         R27 K92 [{["tag"] = "padding-left-xxsmall clip", ["LayoutOrder"], ["Size"]}]
      338 MOVE                             R28 R19
      339 CALL                             R28 0 1
      340 SETTABLEKS                       R28 R27 K43 ["LayoutOrder"]
      342 GETIMPORT                        R28 K95 [UDim2.new]
      344 LOADN                            R29 1
      345 GETTABLEKS                       R31 R20 K68 ["Size"]
      347 GETTABLEKS                       R31 R31 K69 ["Size_600"]
      349 MINUS                            R30 R31
      350 LOADN                            R31 1
      351 LOADN                            R32 0
      352 CALL                             R28 4 1
      353 SETTABLEKS                       R28 R27 K68 ["Size"]
      355 DUPTABLE                         R28 K97 [{"ContentEditor"}]
      356 GETUPVAL                         R29 12
      357 GETUPVAL                         R30 17
      358 DUPTABLE                         R31 K102 [{"asset", "onFocused", "onFocusLost", "submitContent"}]
      359 SETTABLEKS                       R8 R31 K98 ["asset"]
      361 GETTABLEKS                       R32 R12 K55 ["enable"]
      363 SETTABLEKS                       R32 R31 K99 ["onFocused"]
      365 GETTABLEKS                       R32 R12 K76 ["disable"]
      367 SETTABLEKS                       R32 R31 K100 ["onFocusLost"]
      369 SETTABLEKS                       R18 R31 K101 ["submitContent"]
      371 CALL                             R29 2 1
      372 SETTABLEKS                       R29 R28 K96 ["ContentEditor"]
      374 CALL                             R25 3 1
      375 SETTABLEKS                       R25 R24 K39 ["ContentEditorContainer"]
      377 CALL                             R21 3 -1
      378 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["AssetNameContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K10 ["Exposed"]
       24 GETTABLEKS                       R4 R4 K11 ["AssetPicker"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Components"]
       31 GETTABLEKS                       R5 R5 K10 ["Exposed"]
       33 GETTABLEKS                       R5 R5 K11 ["AssetPicker"]
       35 GETTABLEKS                       R5 R5 K12 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R0 K13 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["AssetUri"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Components"]
       49 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K15 ["ClassIconContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K6 [require]
       56 GETIMPORT                        R8 K1 [script]
       58 GETTABLEKS                       R8 R8 K16 ["ContentEditor"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K4 ["Parent"]
       65 GETTABLEKS                       R9 R9 K17 ["Foundation"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K13 ["Util"]
       72 GETTABLEKS                       R10 R10 K18 ["Observable"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R0 K7 ["Components"]
       79 GETTABLEKS                       R11 R11 K13 ["Util"]
       81 GETTABLEKS                       R11 R11 K19 ["PopoverButton"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R0 K20 ["PropertyEditorTypes"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K21 ["PropertyTypes"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K4 ["Parent"]
       98 GETTABLEKS                       R14 R14 K22 ["React"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K4 ["Parent"]
      105 GETTABLEKS                       R15 R15 K23 ["ReactUtils"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R1 K24 ["SignalsReact"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K25 ["Resources"]
      117 GETTABLEKS                       R17 R17 K26 ["Localization"]
      119 GETTABLEKS                       R17 R17 K27 ["Translator"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R0 K7 ["Components"]
      126 GETTABLEKS                       R18 R18 K10 ["Exposed"]
      128 GETTABLEKS                       R18 R18 K11 ["AssetPicker"]
      130 GETTABLEKS                       R18 R18 K13 ["Util"]
      132 GETTABLEKS                       R18 R18 K28 ["getAssetThumbnailUri"]
      134 CALL                             R17 1 1
      135 GETTABLEKS                       R18 R8 K29 ["Popover"]
      137 GETTABLEKS                       R19 R8 K30 ["View"]
      139 GETTABLEKS                       R20 R14 K31 ["createNextOrder"]
      141 GETTABLEKS                       R21 R13 K32 ["createElement"]
      143 GETTABLEKS                       R22 R14 K33 ["useToggleState"]
      145 GETTABLEKS                       R23 R8 K34 ["Hooks"]
      147 GETTABLEKS                       R23 R23 K35 ["useTokens"]
      149 DUPCLOSURE                       R24 K36 [PROTO_10]
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R7
      168 RETURN                           R24 1
