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
       44 LOADB                            R8 0
       45 GETTABLEKS                       R9 R5 K13 ["extra"]
       47 JUMPIFEQKNIL                     R9 ; [+9]
       49 GETTABLEKS                       R9 R5 K13 ["extra"]
       51 GETTABLEKS                       R9 R9 K14 ["type"]
       53 JUMPIFEQKS                       R9 K15 ["content"] ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       59 LOADK                            R9 K16 ["Did not contain ContentPropertyInfoExtra"]
       60 GETIMPORT                        R7 K4 [assert]
       62 CALL                             R7 2 0
       63 GETTABLEKS                       R7 R5 K13 ["extra"]
       65 GETTABLEKS                       R7 R7 K17 ["assetType"]
       67 GETTABLEKS                       R7 R7 K18 ["Name"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K19 ["useState"]
       72 LOADNIL                          R9
       73 CALL                             R8 1 2
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K20 ["useMemo"]
       77 NEWCLOSURE                       R11 P0
       78 CAPTURE                          VAL R8
       79 CAPTURE                          UPVAL U5
       80 NEWTABLE                         R12 0 1
       82 MOVE                             R13 R8
       83 SETLIST                          R12 R13 1 [1]
       85 CALL                             R10 2 1
       86 GETUPVAL                         R11 6
       87 CALL                             R11 0 1
       88 GETUPVAL                         R12 6
       89 CALL                             R12 0 1
       90 GETUPVAL                         R13 6
       91 CALL                             R13 0 1
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K21 ["useCallback"]
       95 NEWCLOSURE                       R15 P1
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R11
       98 NEWTABLE                         R16 0 0
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K21 ["useCallback"]
      104 NEWCLOSURE                       R16 P2
      105 CAPTURE                          VAL R0
      106 NEWTABLE                         R17 0 3
      108 GETTABLEKS                       R18 R0 K22 ["beginEditingAsync"]
      110 GETTABLEKS                       R19 R0 K23 ["setPart"]
      112 GETTABLEKS                       R20 R0 K24 ["finishEditing"]
      114 SETLIST                          R17 R18 3 [1]
      116 CALL                             R15 2 1
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K21 ["useCallback"]
      120 NEWCLOSURE                       R17 P3
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R15
      125 CAPTURE                          UPVAL U8
      126 NEWTABLE                         R18 0 1
      128 MOVE                             R19 R15
      129 SETLIST                          R18 R19 1 [1]
      131 CALL                             R16 2 1
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R17 R17 K21 ["useCallback"]
      135 NEWCLOSURE                       R18 P4
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R1
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R15
      143 CAPTURE                          UPVAL U8
      144 NEWTABLE                         R19 0 3
      146 MOVE                             R20 R8
      147 GETTABLEKS                       R21 R1 K25 ["shareAccessToAssetsAsync"]
      149 MOVE                             R22 R15
      150 SETLIST                          R19 R20 3 [1]
      152 CALL                             R17 2 1
      153 GETUPVAL                         R18 0
      154 GETTABLEKS                       R18 R18 K21 ["useCallback"]
      156 NEWCLOSURE                       R19 P5
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R15
      159 CAPTURE                          UPVAL U8
      160 CAPTURE                          VAL R17
      161 NEWTABLE                         R20 0 2
      163 MOVE                             R21 R17
      164 MOVE                             R22 R15
      165 SETLIST                          R20 R21 2 [1]
      167 CALL                             R18 2 1
      168 GETUPVAL                         R19 0
      169 GETTABLEKS                       R19 R19 K26 ["useEffect"]
      171 NEWCLOSURE                       R20 P6
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R9
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          VAL R2
      176 NEWTABLE                         R21 0 2
      178 GETTABLEKS                       R22 R6 K12 ["value"]
      180 GETTABLEKS                       R23 R6 K27 ["multiple"]
      182 SETLIST                          R21 R22 2 [1]
      184 CALL                             R19 2 0
      185 GETUPVAL                         R19 10
      186 CALL                             R19 0 1
      187 GETUPVAL                         R20 11
      188 CALL                             R20 0 1
      189 GETUPVAL                         R21 12
      190 GETUPVAL                         R22 13
      191 DUPTABLE                         R23 K31 [{"tag", "stateLayer", "onStateChanged"}]
      192 NEWTABLE                         R24 4 0
      194 LOADB                            R25 1
      195 SETTABLEKS                       R25 R24 K32 ["row size-full-600 radius-small bg-shift-200"]
      197 GETTABLEKS                       R25 R11 K33 ["enabled"]
      199 JUMPIFNOT                        R25 ; [+3]
      200 GETTABLEKS                       R26 R12 K33 ["enabled"]
      202 NOT                              R25 R26
      203 SETTABLEKS                       R25 R24 K34 ["stroke-emphasis"]
      205 GETTABLEKS                       R25 R12 K33 ["enabled"]
      207 SETTABLEKS                       R25 R24 K35 ["stroke-system-emphasis"]
      209 SETTABLEKS                       R24 R23 K28 ["tag"]
      211 DUPTABLE                         R24 K37 [{"affordance"}]
      212 GETUPVAL                         R25 7
      213 GETTABLEKS                       R25 R25 K38 ["Enums"]
      215 GETTABLEKS                       R25 R25 K39 ["StateLayerAffordance"]
      217 GETTABLEKS                       R25 R25 K40 ["None"]
      219 SETTABLEKS                       R25 R24 K36 ["affordance"]
      221 SETTABLEKS                       R24 R23 K29 ["stateLayer"]
      223 SETTABLEKS                       R14 R23 K30 ["onStateChanged"]
      225 DUPTABLE                         R24 K43 [{"PopoverRoot", "ContentEditorContainer"}]
      226 GETUPVAL                         R25 12
      227 GETUPVAL                         R26 14
      228 GETTABLEKS                       R26 R26 K44 ["Root"]
      230 DUPTABLE                         R27 K49 [{["isOpen"], ["LayoutOrder"], ["testId"] = "AssetPicker"}]
      231 GETTABLEKS                       R28 R13 K33 ["enabled"]
      233 SETTABLEKS                       R28 R27 K45 ["isOpen"]
      235 MOVE                             R28 R19
      236 CALL                             R28 0 1
      237 SETTABLEKS                       R28 R27 K46 ["LayoutOrder"]
      239 DUPTABLE                         R28 K52 [{"Anchor", "Content"}]
      240 GETUPVAL                         R29 12
      241 GETUPVAL                         R30 14
      242 GETTABLEKS                       R30 R30 K50 ["Anchor"]
      244 NEWTABLE                         R31 0 0
      246 DUPTABLE                         R32 K55 [{"AssetPickerButton", "SizeConstraint"}]
      247 GETUPVAL                         R33 12
      248 GETUPVAL                         R34 15
      249 DUPTABLE                         R35 K57 [{"onActivated"}]
      250 GETTABLEKS                       R36 R13 K58 ["enable"]
      252 SETTABLEKS                       R36 R35 K56 ["onActivated"]
      254 DUPTABLE                         R36 K60 [{"Icon"}]
      255 GETUPVAL                         R37 12
      256 GETUPVAL                         R38 7
      257 GETTABLEKS                       R38 R38 K61 ["Image"]
      259 DUPTABLE                         R39 K63 [{["tag"] = "position-center-center anchor-center-center size-400 radius-small", ["Image"]}]
      260 MOVE                             R40 R10
      261 JUMPIF                           R40 ; [+5]
      262 GETTABLEKS                       R40 R3 K64 ["getMultipleIcon"]
      264 CALL                             R40 0 1
      265 GETTABLEKS                       R40 R40 K61 ["Image"]
      267 SETTABLEKS                       R40 R39 K61 ["Image"]
      269 CALL                             R37 2 1
      270 SETTABLEKS                       R37 R36 K59 ["Icon"]
      272 CALL                             R33 3 1
      273 SETTABLEKS                       R33 R32 K53 ["AssetPickerButton"]
      275 GETUPVAL                         R33 12
      276 LOADK                            R34 K65 ["UISizeConstraint"]
      277 DUPTABLE                         R35 K67 [{"MaxSize"}]
      278 GETIMPORT                        R37 K70 [Vector2.one]
      280 GETTABLEKS                       R38 R20 K71 ["Size"]
      282 GETTABLEKS                       R38 R38 K72 ["Size_600"]
      284 MUL                              R36 R37 R38
      285 SETTABLEKS                       R36 R35 K66 ["MaxSize"]
      287 CALL                             R33 2 1
      288 SETTABLEKS                       R33 R32 K54 ["SizeConstraint"]
      290 CALL                             R29 3 1
      291 SETTABLEKS                       R29 R28 K50 ["Anchor"]
      293 GETUPVAL                         R29 12
      294 GETUPVAL                         R30 14
      295 GETTABLEKS                       R30 R30 K51 ["Content"]
      297 DUPTABLE                         R31 K78 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      298 GETTABLEKS                       R32 R13 K79 ["disable"]
      300 SETTABLEKS                       R32 R31 K75 ["onPressedOutside"]
      302 DUPTABLE                         R32 K83 [{["position"], ["offset"] = 0}]
      303 GETUPVAL                         R33 7
      304 GETTABLEKS                       R33 R33 K38 ["Enums"]
      306 GETTABLEKS                       R33 R33 K84 ["PopoverAlign"]
      308 GETTABLEKS                       R33 R33 K85 ["Start"]
      310 SETTABLEKS                       R33 R32 K80 ["position"]
      312 SETTABLEKS                       R32 R31 K76 ["align"]
      314 DUPTABLE                         R32 K87 [{["position"], ["offset"] = 8}]
      315 GETUPVAL                         R33 7
      316 GETTABLEKS                       R33 R33 K38 ["Enums"]
      318 GETTABLEKS                       R33 R33 K88 ["PopoverSide"]
      320 GETTABLEKS                       R33 R33 K89 ["Bottom"]
      322 SETTABLEKS                       R33 R32 K80 ["position"]
      324 SETTABLEKS                       R32 R31 K77 ["side"]
      326 DUPTABLE                         R32 K90 [{"AssetPicker"}]
      327 GETTABLEKS                       R34 R13 K33 ["enabled"]
      329 JUMPIFNOT                        R34 ; [+15]
      330 GETUPVAL                         R33 12
      331 GETUPVAL                         R34 16
      332 DUPTABLE                         R35 K93 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      333 SETTABLEKS                       R7 R35 K17 ["assetType"]
      335 SETTABLEKS                       R4 R35 K91 ["gameId"]
      337 SETTABLEKS                       R16 R35 K92 ["onAssetSelected"]
      339 GETTABLEKS                       R36 R1 K25 ["shareAccessToAssetsAsync"]
      341 SETTABLEKS                       R36 R35 K25 ["shareAccessToAssetsAsync"]
      343 CALL                             R33 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R33
      346 SETTABLEKS                       R33 R32 K48 ["AssetPicker"]
      348 CALL                             R29 3 1
      349 SETTABLEKS                       R29 R28 K51 ["Content"]
      351 CALL                             R25 3 1
      352 SETTABLEKS                       R25 R24 K41 ["PopoverRoot"]
      354 GETUPVAL                         R25 12
      355 GETUPVAL                         R26 13
      356 DUPTABLE                         R27 K95 [{["tag"] = "padding-left-xxsmall clip", ["LayoutOrder"], ["Size"]}]
      357 MOVE                             R28 R19
      358 CALL                             R28 0 1
      359 SETTABLEKS                       R28 R27 K46 ["LayoutOrder"]
      361 GETIMPORT                        R28 K98 [UDim2.new]
      363 LOADN                            R29 1
      364 GETTABLEKS                       R31 R20 K71 ["Size"]
      366 GETTABLEKS                       R31 R31 K72 ["Size_600"]
      368 MINUS                            R30 R31
      369 LOADN                            R31 1
      370 LOADN                            R32 0
      371 CALL                             R28 4 1
      372 SETTABLEKS                       R28 R27 K71 ["Size"]
      374 DUPTABLE                         R28 K100 [{"ContentEditor"}]
      375 GETUPVAL                         R29 12
      376 GETUPVAL                         R30 17
      377 DUPTABLE                         R31 K105 [{"asset", "onFocused", "onFocusLost", "submitContent"}]
      378 SETTABLEKS                       R8 R31 K101 ["asset"]
      380 GETTABLEKS                       R32 R12 K58 ["enable"]
      382 SETTABLEKS                       R32 R31 K102 ["onFocused"]
      384 GETTABLEKS                       R32 R12 K79 ["disable"]
      386 SETTABLEKS                       R32 R31 K103 ["onFocusLost"]
      388 SETTABLEKS                       R18 R31 K104 ["submitContent"]
      390 CALL                             R29 2 1
      391 SETTABLEKS                       R29 R28 K99 ["ContentEditor"]
      393 CALL                             R25 3 1
      394 SETTABLEKS                       R25 R24 K42 ["ContentEditorContainer"]
      396 CALL                             R21 3 -1
      397 RETURN                           R21 -1

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
       91 GETTABLEKS                       R13 R0 K4 ["Parent"]
       93 GETTABLEKS                       R13 R13 K21 ["React"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K4 ["Parent"]
      100 GETTABLEKS                       R14 R14 K22 ["ReactUtils"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R1 K23 ["SignalsReact"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K24 ["Resources"]
      112 GETTABLEKS                       R16 R16 K25 ["Localization"]
      114 GETTABLEKS                       R16 R16 K26 ["Translator"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K7 ["Components"]
      121 GETTABLEKS                       R17 R17 K10 ["Exposed"]
      123 GETTABLEKS                       R17 R17 K11 ["AssetPicker"]
      125 GETTABLEKS                       R17 R17 K13 ["Util"]
      127 GETTABLEKS                       R17 R17 K27 ["getAssetThumbnailUri"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R17 R8 K28 ["Popover"]
      132 GETTABLEKS                       R18 R8 K29 ["View"]
      134 GETTABLEKS                       R19 R13 K30 ["createNextOrder"]
      136 GETTABLEKS                       R20 R12 K31 ["createElement"]
      138 GETTABLEKS                       R21 R13 K32 ["useToggleState"]
      140 GETTABLEKS                       R22 R8 K33 ["Hooks"]
      142 GETTABLEKS                       R22 R22 K34 ["useTokens"]
      144 DUPCLOSURE                       R23 K35 [PROTO_10]
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R7
      163 RETURN                           R23 1
