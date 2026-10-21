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
        1 GETTABLEKS                       R1 R1 K0 ["editProperty"]
        3 DUPTABLE                         R2 K4 [{["type"] = "Edit", ["part"]}]
        4 DUPTABLE                         R3 K7 [{["name"] = "value", ["value"]}]
        5 SETTABLEKS                       R0 R3 K6 ["value"]
        7 SETTABLEKS                       R3 R2 K3 ["part"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
      106 NEWTABLE                         R17 0 1
      108 GETTABLEKS                       R18 R0 K22 ["editProperty"]
      110 SETLIST                          R17 R18 1 [1]
      112 CALL                             R15 2 1
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R16 R16 K21 ["useCallback"]
      116 NEWCLOSURE                       R17 P3
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R15
      121 CAPTURE                          UPVAL U8
      122 NEWTABLE                         R18 0 1
      124 MOVE                             R19 R15
      125 SETLIST                          R18 R19 1 [1]
      127 CALL                             R16 2 1
      128 GETUPVAL                         R17 0
      129 GETTABLEKS                       R17 R17 K21 ["useCallback"]
      131 NEWCLOSURE                       R18 P4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R15
      139 CAPTURE                          UPVAL U8
      140 NEWTABLE                         R19 0 3
      142 MOVE                             R20 R8
      143 GETTABLEKS                       R21 R1 K23 ["shareAccessToAssetsAsync"]
      145 MOVE                             R22 R15
      146 SETLIST                          R19 R20 3 [1]
      148 CALL                             R17 2 1
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R18 R18 K21 ["useCallback"]
      152 NEWCLOSURE                       R19 P5
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R15
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R17
      157 NEWTABLE                         R20 0 2
      159 MOVE                             R21 R17
      160 MOVE                             R22 R15
      161 SETLIST                          R20 R21 2 [1]
      163 CALL                             R18 2 1
      164 GETUPVAL                         R19 0
      165 GETTABLEKS                       R19 R19 K24 ["useEffect"]
      167 NEWCLOSURE                       R20 P6
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R9
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R2
      172 NEWTABLE                         R21 0 2
      174 GETTABLEKS                       R22 R6 K12 ["value"]
      176 GETTABLEKS                       R23 R6 K25 ["multiple"]
      178 SETLIST                          R21 R22 2 [1]
      180 CALL                             R19 2 0
      181 GETUPVAL                         R19 10
      182 CALL                             R19 0 1
      183 GETUPVAL                         R20 11
      184 CALL                             R20 0 1
      185 GETUPVAL                         R21 12
      186 GETUPVAL                         R22 13
      187 DUPTABLE                         R23 K29 [{"tag", "stateLayer", "onStateChanged"}]
      188 NEWTABLE                         R24 4 0
      190 LOADB                            R25 1
      191 SETTABLEKS                       R25 R24 K30 ["row size-full-600 radius-small bg-shift-200"]
      193 GETTABLEKS                       R25 R11 K31 ["enabled"]
      195 JUMPIFNOT                        R25 ; [+3]
      196 GETTABLEKS                       R26 R12 K31 ["enabled"]
      198 NOT                              R25 R26
      199 SETTABLEKS                       R25 R24 K32 ["stroke-emphasis"]
      201 GETTABLEKS                       R25 R12 K31 ["enabled"]
      203 SETTABLEKS                       R25 R24 K33 ["stroke-system-emphasis"]
      205 SETTABLEKS                       R24 R23 K26 ["tag"]
      207 DUPTABLE                         R24 K35 [{"affordance"}]
      208 GETUPVAL                         R25 7
      209 GETTABLEKS                       R25 R25 K36 ["Enums"]
      211 GETTABLEKS                       R25 R25 K37 ["StateLayerAffordance"]
      213 GETTABLEKS                       R25 R25 K38 ["None"]
      215 SETTABLEKS                       R25 R24 K34 ["affordance"]
      217 SETTABLEKS                       R24 R23 K27 ["stateLayer"]
      219 SETTABLEKS                       R14 R23 K28 ["onStateChanged"]
      221 DUPTABLE                         R24 K41 [{"PopoverRoot", "ContentEditorContainer"}]
      222 GETUPVAL                         R25 12
      223 GETUPVAL                         R26 14
      224 GETTABLEKS                       R26 R26 K42 ["Root"]
      226 DUPTABLE                         R27 K47 [{["isOpen"], ["LayoutOrder"], ["testId"] = "AssetPicker"}]
      227 GETTABLEKS                       R28 R13 K31 ["enabled"]
      229 SETTABLEKS                       R28 R27 K43 ["isOpen"]
      231 MOVE                             R28 R19
      232 CALL                             R28 0 1
      233 SETTABLEKS                       R28 R27 K44 ["LayoutOrder"]
      235 DUPTABLE                         R28 K50 [{"Anchor", "Content"}]
      236 GETUPVAL                         R29 12
      237 GETUPVAL                         R30 14
      238 GETTABLEKS                       R30 R30 K48 ["Anchor"]
      240 NEWTABLE                         R31 0 0
      242 DUPTABLE                         R32 K53 [{"AssetPickerButton", "SizeConstraint"}]
      243 GETUPVAL                         R33 12
      244 GETUPVAL                         R34 15
      245 DUPTABLE                         R35 K55 [{"onActivated"}]
      246 GETTABLEKS                       R36 R13 K56 ["enable"]
      248 SETTABLEKS                       R36 R35 K54 ["onActivated"]
      250 DUPTABLE                         R36 K58 [{"Icon"}]
      251 GETUPVAL                         R37 12
      252 GETUPVAL                         R38 7
      253 GETTABLEKS                       R38 R38 K59 ["Image"]
      255 DUPTABLE                         R39 K61 [{["tag"] = "position-center-center anchor-center-center size-400 radius-small", ["Image"]}]
      256 MOVE                             R40 R10
      257 JUMPIF                           R40 ; [+5]
      258 GETTABLEKS                       R40 R3 K62 ["getMultipleIcon"]
      260 CALL                             R40 0 1
      261 GETTABLEKS                       R40 R40 K59 ["Image"]
      263 SETTABLEKS                       R40 R39 K59 ["Image"]
      265 CALL                             R37 2 1
      266 SETTABLEKS                       R37 R36 K57 ["Icon"]
      268 CALL                             R33 3 1
      269 SETTABLEKS                       R33 R32 K51 ["AssetPickerButton"]
      271 GETUPVAL                         R33 12
      272 LOADK                            R34 K63 ["UISizeConstraint"]
      273 DUPTABLE                         R35 K65 [{"MaxSize"}]
      274 GETIMPORT                        R37 K68 [Vector2.one]
      276 GETTABLEKS                       R38 R20 K69 ["Size"]
      278 GETTABLEKS                       R38 R38 K70 ["Size_600"]
      280 MUL                              R36 R37 R38
      281 SETTABLEKS                       R36 R35 K64 ["MaxSize"]
      283 CALL                             R33 2 1
      284 SETTABLEKS                       R33 R32 K52 ["SizeConstraint"]
      286 CALL                             R29 3 1
      287 SETTABLEKS                       R29 R28 K48 ["Anchor"]
      289 GETUPVAL                         R29 12
      290 GETUPVAL                         R30 14
      291 GETTABLEKS                       R30 R30 K49 ["Content"]
      293 DUPTABLE                         R31 K76 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      294 GETTABLEKS                       R32 R13 K77 ["disable"]
      296 SETTABLEKS                       R32 R31 K73 ["onPressedOutside"]
      298 DUPTABLE                         R32 K81 [{["position"], ["offset"] = 0}]
      299 GETUPVAL                         R33 7
      300 GETTABLEKS                       R33 R33 K36 ["Enums"]
      302 GETTABLEKS                       R33 R33 K82 ["PopoverAlign"]
      304 GETTABLEKS                       R33 R33 K83 ["Start"]
      306 SETTABLEKS                       R33 R32 K78 ["position"]
      308 SETTABLEKS                       R32 R31 K74 ["align"]
      310 DUPTABLE                         R32 K85 [{["position"], ["offset"] = 8}]
      311 GETUPVAL                         R33 7
      312 GETTABLEKS                       R33 R33 K36 ["Enums"]
      314 GETTABLEKS                       R33 R33 K86 ["PopoverSide"]
      316 GETTABLEKS                       R33 R33 K87 ["Bottom"]
      318 SETTABLEKS                       R33 R32 K78 ["position"]
      320 SETTABLEKS                       R32 R31 K75 ["side"]
      322 DUPTABLE                         R32 K88 [{"AssetPicker"}]
      323 GETTABLEKS                       R34 R13 K31 ["enabled"]
      325 JUMPIFNOT                        R34 ; [+15]
      326 GETUPVAL                         R33 12
      327 GETUPVAL                         R34 16
      328 DUPTABLE                         R35 K91 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      329 SETTABLEKS                       R7 R35 K17 ["assetType"]
      331 SETTABLEKS                       R4 R35 K89 ["gameId"]
      333 SETTABLEKS                       R16 R35 K90 ["onAssetSelected"]
      335 GETTABLEKS                       R36 R1 K23 ["shareAccessToAssetsAsync"]
      337 SETTABLEKS                       R36 R35 K23 ["shareAccessToAssetsAsync"]
      339 CALL                             R33 2 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R33
      342 SETTABLEKS                       R33 R32 K46 ["AssetPicker"]
      344 CALL                             R29 3 1
      345 SETTABLEKS                       R29 R28 K49 ["Content"]
      347 CALL                             R25 3 1
      348 SETTABLEKS                       R25 R24 K39 ["PopoverRoot"]
      350 GETUPVAL                         R25 12
      351 GETUPVAL                         R26 13
      352 DUPTABLE                         R27 K93 [{["tag"] = "padding-left-xxsmall clip", ["LayoutOrder"], ["Size"]}]
      353 MOVE                             R28 R19
      354 CALL                             R28 0 1
      355 SETTABLEKS                       R28 R27 K44 ["LayoutOrder"]
      357 GETIMPORT                        R28 K96 [UDim2.new]
      359 LOADN                            R29 1
      360 GETTABLEKS                       R31 R20 K69 ["Size"]
      362 GETTABLEKS                       R31 R31 K70 ["Size_600"]
      364 MINUS                            R30 R31
      365 LOADN                            R31 1
      366 LOADN                            R32 0
      367 CALL                             R28 4 1
      368 SETTABLEKS                       R28 R27 K69 ["Size"]
      370 DUPTABLE                         R28 K98 [{"ContentEditor"}]
      371 GETUPVAL                         R29 12
      372 GETUPVAL                         R30 17
      373 DUPTABLE                         R31 K103 [{"asset", "onFocused", "onFocusLost", "submitContent"}]
      374 SETTABLEKS                       R8 R31 K99 ["asset"]
      376 GETTABLEKS                       R32 R12 K56 ["enable"]
      378 SETTABLEKS                       R32 R31 K100 ["onFocused"]
      380 GETTABLEKS                       R32 R12 K77 ["disable"]
      382 SETTABLEKS                       R32 R31 K101 ["onFocusLost"]
      384 SETTABLEKS                       R18 R31 K102 ["submitContent"]
      386 CALL                             R29 2 1
      387 SETTABLEKS                       R29 R28 K97 ["ContentEditor"]
      389 CALL                             R25 3 1
      390 SETTABLEKS                       R25 R24 K40 ["ContentEditorContainer"]
      392 CALL                             R21 3 -1
      393 RETURN                           R21 -1

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
