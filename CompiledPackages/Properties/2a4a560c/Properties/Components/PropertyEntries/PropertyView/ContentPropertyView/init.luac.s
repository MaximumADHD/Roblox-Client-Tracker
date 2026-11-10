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
       74 GETTABLEKS                       R11 R6 K20 ["multiple"]
       76 NOT                              R10 R11
       77 JUMPIFNOT                        R10 ; [+11]
       78 LOADB                            R10 1
       79 GETTABLEKS                       R11 R6 K12 ["value"]
       81 JUMPIFEQKNIL                     R11 ; [+7]
       83 GETTABLEKS                       R11 R6 K12 ["value"]
       85 JUMPIFEQKS                       R11 K21 [""] ; [+2]
       87 LOADB                            R10 0 +1
       88 LOADB                            R10 1
       89 MOVE                             R11 R10
       90 JUMPIFNOT                        R11 ; [+4]
       91 JUMPIFEQKNIL                     R8 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K22 ["useMemo"]
       98 NEWCLOSURE                       R13 P0
       99 CAPTURE                          VAL R8
      100 CAPTURE                          UPVAL U5
      101 NEWTABLE                         R14 0 1
      103 MOVE                             R15 R8
      104 SETLIST                          R14 R15 1 [1]
      106 CALL                             R12 2 1
      107 GETUPVAL                         R13 6
      108 CALL                             R13 0 1
      109 GETUPVAL                         R14 6
      110 CALL                             R14 0 1
      111 GETUPVAL                         R15 6
      112 CALL                             R15 0 1
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R16 R16 K23 ["useCallback"]
      116 NEWCLOSURE                       R17 P1
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R13
      119 NEWTABLE                         R18 0 0
      121 CALL                             R16 2 1
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R17 R17 K23 ["useCallback"]
      125 NEWCLOSURE                       R18 P2
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R19 0 1
      129 GETTABLEKS                       R20 R0 K24 ["editProperty"]
      131 SETLIST                          R19 R20 1 [1]
      133 CALL                             R17 2 1
      134 GETUPVAL                         R18 0
      135 GETTABLEKS                       R18 R18 K23 ["useCallback"]
      137 NEWCLOSURE                       R19 P3
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R17
      142 CAPTURE                          UPVAL U8
      143 NEWTABLE                         R20 0 1
      145 MOVE                             R21 R17
      146 SETLIST                          R20 R21 1 [1]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K23 ["useCallback"]
      152 NEWCLOSURE                       R20 P4
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R1
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R17
      160 CAPTURE                          UPVAL U8
      161 NEWTABLE                         R21 0 3
      163 MOVE                             R22 R8
      164 GETTABLEKS                       R23 R1 K25 ["shareAccessToAssetsAsync"]
      166 MOVE                             R24 R17
      167 SETLIST                          R21 R22 3 [1]
      169 CALL                             R19 2 1
      170 GETUPVAL                         R20 0
      171 GETTABLEKS                       R20 R20 K23 ["useCallback"]
      173 NEWCLOSURE                       R21 P5
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R17
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R19
      178 NEWTABLE                         R22 0 2
      180 MOVE                             R23 R19
      181 MOVE                             R24 R17
      182 SETLIST                          R22 R23 2 [1]
      184 CALL                             R20 2 1
      185 GETUPVAL                         R21 0
      186 GETTABLEKS                       R21 R21 K26 ["useEffect"]
      188 NEWCLOSURE                       R22 P6
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R9
      191 CAPTURE                          UPVAL U8
      192 CAPTURE                          VAL R2
      193 NEWTABLE                         R23 0 2
      195 GETTABLEKS                       R24 R6 K12 ["value"]
      197 GETTABLEKS                       R25 R6 K20 ["multiple"]
      199 SETLIST                          R23 R24 2 [1]
      201 CALL                             R21 2 0
      202 GETUPVAL                         R21 10
      203 CALL                             R21 0 1
      204 GETUPVAL                         R22 11
      205 CALL                             R22 0 1
      206 GETUPVAL                         R23 12
      207 GETUPVAL                         R24 13
      208 DUPTABLE                         R25 K30 [{"tag", "stateLayer", "onStateChanged"}]
      209 NEWTABLE                         R26 4 0
      211 LOADB                            R27 1
      212 SETTABLEKS                       R27 R26 K31 ["row size-full-600 radius-small bg-shift-200"]
      214 GETTABLEKS                       R27 R13 K32 ["enabled"]
      216 JUMPIFNOT                        R27 ; [+3]
      217 GETTABLEKS                       R28 R14 K32 ["enabled"]
      219 NOT                              R27 R28
      220 SETTABLEKS                       R27 R26 K33 ["stroke-emphasis"]
      222 GETTABLEKS                       R27 R14 K32 ["enabled"]
      224 SETTABLEKS                       R27 R26 K34 ["stroke-system-emphasis"]
      226 SETTABLEKS                       R26 R25 K27 ["tag"]
      228 DUPTABLE                         R26 K36 [{"affordance"}]
      229 GETUPVAL                         R27 7
      230 GETTABLEKS                       R27 R27 K37 ["Enums"]
      232 GETTABLEKS                       R27 R27 K38 ["StateLayerAffordance"]
      234 GETTABLEKS                       R27 R27 K39 ["None"]
      236 SETTABLEKS                       R27 R26 K35 ["affordance"]
      238 SETTABLEKS                       R26 R25 K28 ["stateLayer"]
      240 SETTABLEKS                       R16 R25 K29 ["onStateChanged"]
      242 DUPTABLE                         R26 K42 [{"PopoverRoot", "ContentEditorContainer"}]
      243 GETUPVAL                         R27 12
      244 GETUPVAL                         R28 14
      245 GETTABLEKS                       R28 R28 K43 ["Root"]
      247 DUPTABLE                         R29 K48 [{["isOpen"], ["LayoutOrder"], ["testId"] = "AssetPicker"}]
      248 GETTABLEKS                       R30 R15 K32 ["enabled"]
      250 SETTABLEKS                       R30 R29 K44 ["isOpen"]
      252 MOVE                             R30 R21
      253 CALL                             R30 0 1
      254 SETTABLEKS                       R30 R29 K45 ["LayoutOrder"]
      256 DUPTABLE                         R30 K51 [{"Anchor", "Content"}]
      257 GETUPVAL                         R31 12
      258 GETUPVAL                         R32 14
      259 GETTABLEKS                       R32 R32 K49 ["Anchor"]
      261 NEWTABLE                         R33 0 0
      263 DUPTABLE                         R34 K54 [{"AssetPickerButton", "SizeConstraint"}]
      264 GETUPVAL                         R35 12
      265 GETUPVAL                         R36 15
      266 DUPTABLE                         R37 K56 [{"onActivated"}]
      267 GETTABLEKS                       R38 R15 K57 ["enable"]
      269 SETTABLEKS                       R38 R37 K55 ["onActivated"]
      271 DUPTABLE                         R38 K59 [{"Icon"}]
      272 GETUPVAL                         R40 16
      273 CALL                             R40 0 1
      274 JUMPIFNOT                        R40 ; [+6]
      275 JUMPIFNOT                        R11 ; [+5]
      276 GETUPVAL                         R39 12
      277 GETUPVAL                         R40 13
      278 DUPTABLE                         R41 K61 [{["tag"] = "position-center-center anchor-center-center size-400 radius-small bg-shift-400"}]
      279 CALL                             R39 2 1
      280 JUMP                             ; [+15]
      281 GETUPVAL                         R39 12
      282 GETUPVAL                         R40 7
      283 GETTABLEKS                       R40 R40 K62 ["Image"]
      285 DUPTABLE                         R41 K64 [{["tag"] = "position-center-center anchor-center-center size-400 radius-small", ["Image"]}]
      286 MOVE                             R42 R12
      287 JUMPIF                           R42 ; [+5]
      288 GETTABLEKS                       R42 R3 K65 ["getMultipleIcon"]
      290 CALL                             R42 0 1
      291 GETTABLEKS                       R42 R42 K62 ["Image"]
      293 SETTABLEKS                       R42 R41 K62 ["Image"]
      295 CALL                             R39 2 1
      296 SETTABLEKS                       R39 R38 K58 ["Icon"]
      298 CALL                             R35 3 1
      299 SETTABLEKS                       R35 R34 K52 ["AssetPickerButton"]
      301 GETUPVAL                         R35 12
      302 LOADK                            R36 K66 ["UISizeConstraint"]
      303 DUPTABLE                         R37 K68 [{"MaxSize"}]
      304 GETIMPORT                        R39 K71 [Vector2.one]
      306 GETTABLEKS                       R40 R22 K72 ["Size"]
      308 GETTABLEKS                       R40 R40 K73 ["Size_600"]
      310 MUL                              R38 R39 R40
      311 SETTABLEKS                       R38 R37 K67 ["MaxSize"]
      313 CALL                             R35 2 1
      314 SETTABLEKS                       R35 R34 K53 ["SizeConstraint"]
      316 CALL                             R31 3 1
      317 SETTABLEKS                       R31 R30 K49 ["Anchor"]
      319 GETUPVAL                         R31 12
      320 GETUPVAL                         R32 14
      321 GETTABLEKS                       R32 R32 K50 ["Content"]
      323 DUPTABLE                         R33 K79 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      324 GETTABLEKS                       R34 R15 K80 ["disable"]
      326 SETTABLEKS                       R34 R33 K76 ["onPressedOutside"]
      328 DUPTABLE                         R34 K84 [{["position"], ["offset"] = 0}]
      329 GETUPVAL                         R35 7
      330 GETTABLEKS                       R35 R35 K37 ["Enums"]
      332 GETTABLEKS                       R35 R35 K85 ["PopoverAlign"]
      334 GETTABLEKS                       R35 R35 K86 ["Start"]
      336 SETTABLEKS                       R35 R34 K81 ["position"]
      338 SETTABLEKS                       R34 R33 K77 ["align"]
      340 DUPTABLE                         R34 K88 [{["position"], ["offset"] = 8}]
      341 GETUPVAL                         R35 7
      342 GETTABLEKS                       R35 R35 K37 ["Enums"]
      344 GETTABLEKS                       R35 R35 K89 ["PopoverSide"]
      346 GETTABLEKS                       R35 R35 K90 ["Bottom"]
      348 SETTABLEKS                       R35 R34 K81 ["position"]
      350 SETTABLEKS                       R34 R33 K78 ["side"]
      352 DUPTABLE                         R34 K91 [{"AssetPicker"}]
      353 GETTABLEKS                       R36 R15 K32 ["enabled"]
      355 JUMPIFNOT                        R36 ; [+19]
      356 GETUPVAL                         R35 12
      357 GETUPVAL                         R36 17
      358 DUPTABLE                         R37 K95 [{"assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
      359 SETTABLEKS                       R7 R37 K17 ["assetType"]
      361 SETTABLEKS                       R4 R37 K92 ["gameId"]
      363 GETTABLEKS                       R38 R1 K93 ["showNewButton"]
      365 SETTABLEKS                       R38 R37 K93 ["showNewButton"]
      367 SETTABLEKS                       R18 R37 K94 ["onAssetSelected"]
      369 GETTABLEKS                       R38 R1 K25 ["shareAccessToAssetsAsync"]
      371 SETTABLEKS                       R38 R37 K25 ["shareAccessToAssetsAsync"]
      373 CALL                             R35 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R35
      376 SETTABLEKS                       R35 R34 K47 ["AssetPicker"]
      378 CALL                             R31 3 1
      379 SETTABLEKS                       R31 R30 K50 ["Content"]
      381 CALL                             R27 3 1
      382 SETTABLEKS                       R27 R26 K40 ["PopoverRoot"]
      384 GETUPVAL                         R27 12
      385 GETUPVAL                         R28 13
      386 DUPTABLE                         R29 K97 [{["tag"] = "padding-left-xxsmall clip", ["LayoutOrder"], ["Size"]}]
      387 MOVE                             R30 R21
      388 CALL                             R30 0 1
      389 SETTABLEKS                       R30 R29 K45 ["LayoutOrder"]
      391 GETIMPORT                        R30 K100 [UDim2.new]
      393 LOADN                            R31 1
      394 GETTABLEKS                       R33 R22 K72 ["Size"]
      396 GETTABLEKS                       R33 R33 K73 ["Size_600"]
      398 MINUS                            R32 R33
      399 LOADN                            R33 1
      400 LOADN                            R34 0
      401 CALL                             R30 4 1
      402 SETTABLEKS                       R30 R29 K72 ["Size"]
      404 DUPTABLE                         R30 K102 [{"ContentEditor"}]
      405 GETUPVAL                         R31 12
      406 GETUPVAL                         R32 18
      407 DUPTABLE                         R33 K108 [{"asset", "isEmpty", "onFocused", "onFocusLost", "submitContent"}]
      408 SETTABLEKS                       R8 R33 K103 ["asset"]
      410 SETTABLEKS                       R11 R33 K104 ["isEmpty"]
      412 GETTABLEKS                       R34 R14 K57 ["enable"]
      414 SETTABLEKS                       R34 R33 K105 ["onFocused"]
      416 GETTABLEKS                       R34 R14 K80 ["disable"]
      418 SETTABLEKS                       R34 R33 K106 ["onFocusLost"]
      420 SETTABLEKS                       R20 R33 K107 ["submitContent"]
      422 CALL                             R31 2 1
      423 SETTABLEKS                       R31 R30 K101 ["ContentEditor"]
      425 CALL                             R27 3 1
      426 SETTABLEKS                       R27 R26 K41 ["ContentEditorContainer"]
      428 CALL                             R23 3 -1
      429 RETURN                           R23 -1

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
      130 GETIMPORT                        R17 K6 [require]
      132 GETTABLEKS                       R18 R0 K28 ["Flags"]
      134 GETTABLEKS                       R18 R18 K29 ["getFFlagPropertiesContentEmptyState"]
      136 CALL                             R17 1 1
      137 GETTABLEKS                       R18 R8 K30 ["Popover"]
      139 GETTABLEKS                       R19 R8 K31 ["View"]
      141 GETTABLEKS                       R20 R13 K32 ["createNextOrder"]
      143 GETTABLEKS                       R21 R12 K33 ["createElement"]
      145 GETTABLEKS                       R22 R13 K34 ["useToggleState"]
      147 GETTABLEKS                       R23 R8 K35 ["Hooks"]
      149 GETTABLEKS                       R23 R23 K36 ["useTokens"]
      151 DUPCLOSURE                       R24 K37 [PROTO_10]
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R7
      171 RETURN                           R24 1
