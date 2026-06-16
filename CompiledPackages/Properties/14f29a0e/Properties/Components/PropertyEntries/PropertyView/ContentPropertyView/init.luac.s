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
       14 DUPTABLE                         R3 K7 [{"type", "id", "name"}]
       15 LOADK                            R4 K8 ["Published"]
       16 SETTABLEKS                       R4 R3 K4 ["type"]
       18 SETTABLEKS                       R1 R3 K5 ["id"]
       20 GETTABLEKS                       R4 R0 K3 ["displayName"]
       22 SETTABLEKS                       R4 R3 K6 ["name"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K9 ["assetUriFromId"]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 -1
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+13]
        7 JUMPIFEQKNIL                     R0 ; [+12]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"type", "id", "name"}]
       11 LOADK                            R3 K5 ["Published"]
       12 SETTABLEKS                       R3 R2 K1 ["type"]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K2 ["id"]
       17 SETTABLEKS                       R0 R2 K3 ["name"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
       38 DUPTABLE                         R4 K7 [{"type", "path"}]
       39 LOADK                            R5 K8 ["Local"]
       40 SETTABLEKS                       R5 R4 K5 ["type"]
       42 SETTABLEKS                       R0 R4 K6 ["path"]
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 1
       46 MOVE                             R4 R0
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K4 [{"type", "id", "name"}]
        9 LOADK                            R3 K5 ["Published"]
       10 SETTABLEKS                       R3 R2 K1 ["type"]
       12 GETUPVAL                         R3 1
       13 SETTABLEKS                       R3 R2 K2 ["id"]
       15 SETTABLEKS                       R0 R2 K3 ["name"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

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
       37 DUPTABLE                         R3 K9 [{"type", "path"}]
       38 LOADK                            R4 K10 ["Local"]
       39 SETTABLEKS                       R4 R3 K7 ["type"]
       41 SETTABLEKS                       R0 R3 K8 ["path"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_10:
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
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K6 ["useContext"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K7 ["Context"]
       30 CALL                             R1 1 1
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["useContext"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K7 ["Context"]
       37 CALL                             R2 1 1
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K8 ["use"]
       41 GETTABLEKS                       R4 R0 K0 ["gameIdObservable"]
       43 CALL                             R3 1 1
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K9 ["useSignalState"]
       47 GETTABLEKS                       R5 R0 K10 ["getInfo"]
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R5 R4 K11 ["parts"]
       52 GETTABLEKS                       R5 R5 K12 ["value"]
       54 GETTABLEKS                       R6 R4 K13 ["extra"]
       56 GETTABLEKS                       R6 R6 K14 ["assetType"]
       58 GETTABLEKS                       R6 R6 K15 ["Name"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K16 ["useState"]
       63 LOADNIL                          R8
       64 CALL                             R7 1 2
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K17 ["useMemo"]
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
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K18 ["useCallback"]
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R15 0 0
       91 CALL                             R13 2 1
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K18 ["useCallback"]
       95 NEWCLOSURE                       R15 P2
       96 CAPTURE                          VAL R0
       97 NEWTABLE                         R16 0 3
       99 GETTABLEKS                       R17 R0 K19 ["beginEditingAsync"]
      101 GETTABLEKS                       R18 R0 K20 ["setPart"]
      103 GETTABLEKS                       R19 R0 K21 ["finishEditing"]
      105 SETLIST                          R16 R17 3 [1]
      107 CALL                             R14 2 1
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K18 ["useCallback"]
      111 NEWCLOSURE                       R16 P3
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R14
      116 CAPTURE                          UPVAL U8
      117 NEWTABLE                         R17 0 1
      119 MOVE                             R18 R14
      120 SETLIST                          R17 R18 1 [1]
      122 CALL                             R15 2 1
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K18 ["useCallback"]
      126 NEWCLOSURE                       R17 P4
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R14
      134 CAPTURE                          UPVAL U8
      135 NEWTABLE                         R18 0 3
      137 MOVE                             R19 R7
      138 GETTABLEKS                       R20 R0 K4 ["shareAccessToAssetsAsync"]
      140 MOVE                             R21 R14
      141 SETLIST                          R18 R19 3 [1]
      143 CALL                             R16 2 1
      144 GETUPVAL                         R17 0
      145 GETTABLEKS                       R17 R17 K18 ["useCallback"]
      147 NEWCLOSURE                       R18 P5
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R14
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R16
      152 NEWTABLE                         R19 0 2
      154 MOVE                             R20 R16
      155 MOVE                             R21 R14
      156 SETLIST                          R19 R20 2 [1]
      158 CALL                             R17 2 1
      159 GETUPVAL                         R18 0
      160 GETTABLEKS                       R18 R18 K22 ["useEffect"]
      162 NEWCLOSURE                       R19 P6
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R8
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          VAL R1
      167 NEWTABLE                         R20 0 2
      169 GETTABLEKS                       R21 R5 K12 ["value"]
      171 GETTABLEKS                       R22 R5 K23 ["multiple"]
      173 SETLIST                          R20 R21 2 [1]
      175 CALL                             R18 2 0
      176 GETUPVAL                         R18 10
      177 CALL                             R18 0 1
      178 GETUPVAL                         R19 11
      179 CALL                             R19 0 1
      180 GETUPVAL                         R20 12
      181 GETUPVAL                         R21 13
      182 DUPTABLE                         R22 K27 [{"tag", "stateLayer", "onStateChanged"}]
      183 NEWTABLE                         R23 4 0
      185 LOADB                            R24 1
      186 SETTABLEKS                       R24 R23 K28 ["size-full-600 bg-shift-200 row radius-small"]
      188 GETTABLEKS                       R24 R10 K29 ["enabled"]
      190 JUMPIFNOT                        R24 ; [+3]
      191 GETTABLEKS                       R25 R11 K29 ["enabled"]
      193 NOT                              R24 R25
      194 SETTABLEKS                       R24 R23 K30 ["stroke-emphasis"]
      196 GETTABLEKS                       R24 R11 K29 ["enabled"]
      198 SETTABLEKS                       R24 R23 K31 ["stroke-system-emphasis"]
      200 SETTABLEKS                       R23 R22 K24 ["tag"]
      202 DUPTABLE                         R23 K33 [{"affordance"}]
      203 GETUPVAL                         R24 7
      204 GETTABLEKS                       R24 R24 K34 ["Enums"]
      206 GETTABLEKS                       R24 R24 K35 ["StateLayerAffordance"]
      208 GETTABLEKS                       R24 R24 K36 ["None"]
      210 SETTABLEKS                       R24 R23 K32 ["affordance"]
      212 SETTABLEKS                       R23 R22 K25 ["stateLayer"]
      214 SETTABLEKS                       R13 R22 K26 ["onStateChanged"]
      216 DUPTABLE                         R23 K39 [{"PopoverRoot", "ContentEditorContainer"}]
      217 GETUPVAL                         R24 12
      218 GETUPVAL                         R25 14
      219 GETTABLEKS                       R25 R25 K40 ["Root"]
      221 DUPTABLE                         R26 K44 [{"isOpen", "LayoutOrder", "testId"}]
      222 GETTABLEKS                       R27 R12 K29 ["enabled"]
      224 SETTABLEKS                       R27 R26 K41 ["isOpen"]
      226 MOVE                             R27 R18
      227 CALL                             R27 0 1
      228 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      230 LOADK                            R27 K45 ["AssetPicker"]
      231 SETTABLEKS                       R27 R26 K43 ["testId"]
      233 DUPTABLE                         R27 K48 [{"Anchor", "Content"}]
      234 GETUPVAL                         R28 12
      235 GETUPVAL                         R29 14
      236 GETTABLEKS                       R29 R29 K46 ["Anchor"]
      238 NEWTABLE                         R30 0 0
      240 DUPTABLE                         R31 K51 [{"AssetPickerButton", "SizeConstraint"}]
      241 GETUPVAL                         R32 12
      242 GETUPVAL                         R33 15
      243 DUPTABLE                         R34 K53 [{"onActivated"}]
      244 GETTABLEKS                       R35 R12 K54 ["enable"]
      246 SETTABLEKS                       R35 R34 K52 ["onActivated"]
      248 DUPTABLE                         R35 K56 [{"Icon"}]
      249 GETUPVAL                         R36 12
      250 GETUPVAL                         R37 7
      251 GETTABLEKS                       R37 R37 K57 ["Image"]
      253 DUPTABLE                         R38 K58 [{"tag", "Image"}]
      254 LOADK                            R39 K59 ["size-400 anchor-center-center position-center-center radius-small"]
      255 SETTABLEKS                       R39 R38 K24 ["tag"]
      257 MOVE                             R39 R9
      258 JUMPIF                           R39 ; [+5]
      259 GETTABLEKS                       R39 R2 K60 ["getMultipleIcon"]
      261 CALL                             R39 0 1
      262 GETTABLEKS                       R39 R39 K57 ["Image"]
      264 SETTABLEKS                       R39 R38 K57 ["Image"]
      266 CALL                             R36 2 1
      267 SETTABLEKS                       R36 R35 K55 ["Icon"]
      269 CALL                             R32 3 1
      270 SETTABLEKS                       R32 R31 K49 ["AssetPickerButton"]
      272 GETUPVAL                         R32 12
      273 LOADK                            R33 K61 ["UISizeConstraint"]
      274 DUPTABLE                         R34 K63 [{"MaxSize"}]
      275 GETIMPORT                        R36 K66 [Vector2.one]
      277 GETTABLEKS                       R37 R19 K67 ["Size"]
      279 GETTABLEKS                       R37 R37 K68 ["Size_600"]
      281 MUL                              R35 R36 R37
      282 SETTABLEKS                       R35 R34 K62 ["MaxSize"]
      284 CALL                             R32 2 1
      285 SETTABLEKS                       R32 R31 K50 ["SizeConstraint"]
      287 CALL                             R28 3 1
      288 SETTABLEKS                       R28 R27 K46 ["Anchor"]
      290 GETUPVAL                         R28 12
      291 GETUPVAL                         R29 14
      292 GETTABLEKS                       R29 R29 K47 ["Content"]
      294 DUPTABLE                         R30 K73 [{"hasArrow", "onPressedOutside", "align", "side"}]
      295 LOADB                            R31 0
      296 SETTABLEKS                       R31 R30 K69 ["hasArrow"]
      298 GETTABLEKS                       R31 R12 K74 ["disable"]
      300 SETTABLEKS                       R31 R30 K70 ["onPressedOutside"]
      302 DUPTABLE                         R31 K77 [{"position", "offset"}]
      303 GETUPVAL                         R32 7
      304 GETTABLEKS                       R32 R32 K34 ["Enums"]
      306 GETTABLEKS                       R32 R32 K78 ["PopoverAlign"]
      308 GETTABLEKS                       R32 R32 K79 ["Start"]
      310 SETTABLEKS                       R32 R31 K75 ["position"]
      312 LOADN                            R32 0
      313 SETTABLEKS                       R32 R31 K76 ["offset"]
      315 SETTABLEKS                       R31 R30 K71 ["align"]
      317 DUPTABLE                         R31 K77 [{"position", "offset"}]
      318 GETUPVAL                         R32 7
      319 GETTABLEKS                       R32 R32 K34 ["Enums"]
      321 GETTABLEKS                       R32 R32 K80 ["PopoverSide"]
      323 GETTABLEKS                       R32 R32 K81 ["Bottom"]
      325 SETTABLEKS                       R32 R31 K75 ["position"]
      327 LOADN                            R32 8
      328 SETTABLEKS                       R32 R31 K76 ["offset"]
      330 SETTABLEKS                       R31 R30 K72 ["side"]
      332 DUPTABLE                         R31 K82 [{"AssetPicker"}]
      333 GETTABLEKS                       R33 R12 K29 ["enabled"]
      335 JUMPIFNOT                        R33 ; [+15]
      336 GETUPVAL                         R32 12
      337 GETUPVAL                         R33 16
      338 DUPTABLE                         R34 K85 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      339 SETTABLEKS                       R6 R34 K14 ["assetType"]
      341 SETTABLEKS                       R3 R34 K83 ["gameId"]
      343 SETTABLEKS                       R15 R34 K84 ["onAssetSelected"]
      345 GETTABLEKS                       R35 R0 K4 ["shareAccessToAssetsAsync"]
      347 SETTABLEKS                       R35 R34 K4 ["shareAccessToAssetsAsync"]
      349 CALL                             R32 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R32
      352 SETTABLEKS                       R32 R31 K45 ["AssetPicker"]
      354 CALL                             R28 3 1
      355 SETTABLEKS                       R28 R27 K47 ["Content"]
      357 CALL                             R24 3 1
      358 SETTABLEKS                       R24 R23 K37 ["PopoverRoot"]
      360 GETUPVAL                         R24 12
      361 GETUPVAL                         R25 13
      362 DUPTABLE                         R26 K86 [{"tag", "LayoutOrder", "Size"}]
      363 LOADK                            R27 K87 ["clip padding-left-xxsmall"]
      364 SETTABLEKS                       R27 R26 K24 ["tag"]
      366 MOVE                             R27 R18
      367 CALL                             R27 0 1
      368 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      370 GETIMPORT                        R27 K90 [UDim2.new]
      372 LOADN                            R28 1
      373 GETTABLEKS                       R30 R19 K67 ["Size"]
      375 GETTABLEKS                       R30 R30 K68 ["Size_600"]
      377 MINUS                            R29 R30
      378 LOADN                            R30 1
      379 LOADN                            R31 0
      380 CALL                             R27 4 1
      381 SETTABLEKS                       R27 R26 K67 ["Size"]
      383 DUPTABLE                         R27 K92 [{"ContentEditor"}]
      384 GETUPVAL                         R28 12
      385 GETUPVAL                         R29 17
      386 DUPTABLE                         R30 K97 [{"asset", "onFocused", "onFocusLost", "submitContent"}]
      387 SETTABLEKS                       R7 R30 K93 ["asset"]
      389 GETTABLEKS                       R31 R11 K54 ["enable"]
      391 SETTABLEKS                       R31 R30 K94 ["onFocused"]
      393 GETTABLEKS                       R31 R11 K74 ["disable"]
      395 SETTABLEKS                       R31 R30 K95 ["onFocusLost"]
      397 SETTABLEKS                       R17 R30 K96 ["submitContent"]
      399 CALL                             R28 2 1
      400 SETTABLEKS                       R28 R27 K91 ["ContentEditor"]
      402 CALL                             R24 3 1
      403 SETTABLEKS                       R24 R23 K38 ["ContentEditorContainer"]
      405 CALL                             R20 3 -1
      406 RETURN                           R20 -1

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
       86 GETTABLEKS                       R12 R0 K20 ["PropertyTypes"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETIMPORT                        R13 K1 [script]
       93 GETTABLEKS                       R13 R13 K4 ["Parent"]
       95 GETTABLEKS                       R13 R13 K21 ["PropertyViewTypes"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K6 [require]
      100 GETTABLEKS                       R14 R0 K4 ["Parent"]
      102 GETTABLEKS                       R14 R14 K22 ["React"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K6 [require]
      107 GETTABLEKS                       R15 R0 K4 ["Parent"]
      109 GETTABLEKS                       R15 R15 K23 ["ReactUtils"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R1 K24 ["SignalsReact"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K25 ["Resources"]
      121 GETTABLEKS                       R17 R17 K26 ["Localization"]
      123 GETTABLEKS                       R17 R17 K27 ["Translator"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K6 [require]
      128 GETTABLEKS                       R18 R0 K7 ["Components"]
      130 GETTABLEKS                       R18 R18 K10 ["Exposed"]
      132 GETTABLEKS                       R18 R18 K11 ["AssetPicker"]
      134 GETTABLEKS                       R18 R18 K13 ["Util"]
      136 GETTABLEKS                       R18 R18 K28 ["getAssetThumbnailUri"]
      138 CALL                             R17 1 1
      139 GETTABLEKS                       R18 R8 K29 ["Popover"]
      141 GETTABLEKS                       R19 R8 K30 ["View"]
      143 GETTABLEKS                       R20 R14 K31 ["createNextOrder"]
      145 GETTABLEKS                       R21 R13 K32 ["createElement"]
      147 GETTABLEKS                       R22 R14 K33 ["useToggleState"]
      149 GETTABLEKS                       R23 R8 K34 ["Hooks"]
      151 GETTABLEKS                       R23 R23 K35 ["useTokens"]
      153 DUPCLOSURE                       R24 K36 [PROTO_10]
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
