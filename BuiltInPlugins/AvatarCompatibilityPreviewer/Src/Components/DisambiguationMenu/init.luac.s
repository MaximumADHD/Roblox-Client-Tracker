PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R2 K0 [""]
        4 RETURN                           R2 1
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+5]
        7 GETIMPORT                        R2 K2 [next]
        9 GETTABLEKS                       R3 R0 K3 ["instances"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R2
       13 JUMPIFNOT                        R3 ; [+2]
       14 GETTABLEKS                       R3 R2 K4 ["PublishAssetType"]
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADK                            R4 K6 ["MakeupAsset"]
       23 RETURN                           R4 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETIMPORT                        R4 K9 [table.find]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K10 ["CLOTHING_ASSET_TYPES"]
       30 MOVE                             R6 R3
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADK                            R4 K11 ["Layered"]
       34 RETURN                           R4 1
       35 LOADK                            R4 K12 ["Rigid"]
       36 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["meshPart"]
        8 GETUPVAL                         R2 0
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"createdInstance", "palette", "worldModel"}]
        1 GETTABLEKS                       R4 R0 K4 ["instances"]
        3 GETTABLE                         R3 R4 R1
        4 SETTABLEKS                       R3 R2 K0 ["createdInstance"]
        6 SETTABLEKS                       R1 R2 K1 ["palette"]
        8 GETTABLEKS                       R3 R0 K2 ["worldModel"]
       10 SETTABLEKS                       R3 R2 K2 ["worldModel"]
       12 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K2 ["assign"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["values"]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 -1
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"createdInstance", "palette", "worldModel"}]
        1 GETTABLEKS                       R4 R0 K4 ["instances"]
        3 GETTABLE                         R3 R4 R1
        4 SETTABLEKS                       R3 R2 K0 ["createdInstance"]
        6 SETTABLEKS                       R1 R2 K1 ["palette"]
        8 GETTABLEKS                       R3 R0 K2 ["worldModel"]
       10 SETTABLEKS                       R3 R2 K2 ["worldModel"]
       12 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["cancel"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["close"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["collectArray"]
       10 GETUPVAL                         R2 2
       11 DUPCLOSURE                       R3 K3 [PROTO_6]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["assign"]
       16 MOVE                             R3 R1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["values"]
       20 GETUPVAL                         R5 3
       21 CALL                             R4 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"key", "AmbiguousAsset", "LayoutOrder", "AssignedPalette", "SetAssignedPalette"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R5 R0 K7 ["worldModel"]
        8 GETTABLEKS                       R5 R5 K8 ["Name"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["key"]
       13 SETTABLEKS                       R0 R3 K2 ["AmbiguousAsset"]
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R4 R4 K9 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 GETUPVAL                         R5 4
       22 GETTABLE                         R4 R5 R0
       23 SETTABLEKS                       R4 R3 K4 ["AssignedPalette"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R3 K5 ["SetAssignedPalette"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"key", "Assignment", "LayoutOrder", "MeshPart", "SetAssignment"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R5 R0 K7 ["Name"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["key"]
       11 GETUPVAL                         R5 3
       12 GETTABLE                         R4 R5 R0
       13 SETTABLEKS                       R4 R3 K2 ["Assignment"]
       15 GETUPVAL                         R4 4
       16 NAMECALL                         R4 R4 K8 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 SETTABLEKS                       R0 R3 K4 ["MeshPart"]
       23 GETUPVAL                         R4 5
       24 SETTABLEKS                       R4 R3 K5 ["SetAssignment"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K0 ["use"]
       15 CALL                             R3 0 1
       16 NAMECALL                         R3 R3 K2 ["get"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K3 ["new"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K4 ["useState"]
       28 LOADN                            R6 0
       29 CALL                             R5 1 2
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R7 R7 K4 ["useState"]
       33 NEWTABLE                         R8 0 0
       35 CALL                             R7 1 2
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K4 ["useState"]
       39 NEWTABLE                         R10 0 0
       41 CALL                             R9 1 2
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          VAL R10
       47 NEWTABLE                         R13 0 0
       49 CALL                             R11 2 1
       50 GETUPVAL                         R12 6
       51 DUPTABLE                         R13 K8 [{"loneMeshParts", "addLoneMeshPartAssignment"}]
       52 GETTABLEKS                       R14 R0 K6 ["loneMeshParts"]
       54 SETTABLEKS                       R14 R13 K6 ["loneMeshParts"]
       56 SETTABLEKS                       R11 R13 K7 ["addLoneMeshPartAssignment"]
       58 CALL                             R12 1 0
       59 LOADB                            R12 1
       60 GETTABLEKS                       R13 R0 K9 ["ambiguousAssets"]
       62 LOADNIL                          R14
       63 LOADNIL                          R15
       64 FORGPREP                         R13
       65 GETTABLE                         R18 R7 R17
       66 JUMPIFNOTEQKNIL                  R18 ; [+3]
       68 LOADB                            R12 0
       69 JUMP                             ; [+2]
       70 FORGLOOP                         R13 2 ; [-6]
       72 JUMPIFNOT                        R12 ; [+12]
       73 GETTABLEKS                       R13 R0 K6 ["loneMeshParts"]
       75 LOADNIL                          R14
       76 LOADNIL                          R15
       77 FORGPREP                         R13
       78 GETTABLE                         R18 R9 R17
       79 JUMPIFNOTEQKNIL                  R18 ; [+3]
       81 LOADB                            R12 0
       82 JUMP                             ; [+2]
       83 FORGLOOP                         R13 2 ; [-6]
       85 GETUPVAL                         R13 7
       86 CALL                             R13 0 1
       87 GETUPVAL                         R14 2
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+202]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K4 ["useState"]
       93 GETTABLEKS                       R15 R2 K10 ["MinContentSize"]
       95 CALL                             R14 1 2
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K3 ["new"]
       99 CALL                             R16 0 1
      100 GETIMPORT                        R17 K12 [Vector2.new]
      102 GETUPVAL                         R18 9
      103 LOADN                            R19 312
      104 CALL                             R17 2 1
      105 SETUPVAL                         R17 8
      106 GETUPVAL                         R17 5
      107 GETTABLEKS                       R17 R17 K4 ["useState"]
      109 LOADNIL                          R18
      110 CALL                             R17 1 2
      111 GETUPVAL                         R19 5
      112 GETTABLEKS                       R19 R19 K5 ["useCallback"]
      114 NEWCLOSURE                       R20 P1
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R9
      119 NEWTABLE                         R21 0 3
      121 MOVE                             R22 R7
      122 MOVE                             R23 R9
      123 GETTABLEKS                       R24 R0 K13 ["assign"]
      125 SETLIST                          R21 R22 3 [1]
      127 CALL                             R19 2 1
      128 GETUPVAL                         R20 5
      129 GETTABLEKS                       R20 R20 K14 ["createElement"]
      131 GETUPVAL                         R21 11
      132 GETTABLEKS                       R21 R21 K15 ["Dialog"]
      134 DUPTABLE                         R22 K24 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["PluginDesign"]}]
      135 GETUPVAL                         R23 8
      136 SETTABLEKS                       R23 R22 K10 ["MinContentSize"]
      138 SETTABLEKS                       R14 R22 K18 ["Size"]
      140 GETTABLEKS                       R23 R0 K25 ["close"]
      142 SETTABLEKS                       R23 R22 K21 ["OnClose"]
      144 GETUPVAL                         R24 12
      145 JUMPIFNOT                        R24 ; [+2]
      146 MOVE                             R23 R3
      147 JUMP                             ; [+1]
      148 LOADNIL                          R23
      149 SETTABLEKS                       R23 R22 K23 ["PluginDesign"]
      151 DUPTABLE                         R23 K27 [{"OverlayProviderWrapper"}]
      152 GETUPVAL                         R24 5
      153 GETTABLEKS                       R24 R24 K14 ["createElement"]
      155 GETUPVAL                         R25 13
      156 DUPTABLE                         R26 K29 [{"gui"}]
      157 SETTABLEKS                       R17 R26 K28 ["gui"]
      159 DUPTABLE                         R27 K33 [{"StyleLink", "MainContainer", "Overlay"}]
      160 GETUPVAL                         R29 12
      161 JUMPIF                           R29 ; [+9]
      162 GETUPVAL                         R28 5
      163 GETTABLEKS                       R28 R28 K14 ["createElement"]
      165 LOADK                            R29 K30 ["StyleLink"]
      166 DUPTABLE                         R30 K35 [{"StyleSheet"}]
      167 SETTABLEKS                       R3 R30 K34 ["StyleSheet"]
      169 CALL                             R28 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R28
      172 SETTABLEKS                       R28 R27 K30 ["StyleLink"]
      174 GETUPVAL                         R28 5
      175 GETTABLEKS                       R28 R28 K14 ["createElement"]
      177 GETUPVAL                         R29 14
      178 DUPTABLE                         R30 K40 [{["onAbsoluteSizeChanged"], ["Size"], ["tag"] = "col gap-large padding-left-large", ["LayoutOrder"]}]
      179 NEWCLOSURE                       R31 P2
      180 CAPTURE                          VAL R15
      181 SETTABLEKS                       R31 R30 K36 ["onAbsoluteSizeChanged"]
      183 GETIMPORT                        R31 K43 [UDim2.fromOffset]
      185 GETUPVAL                         R32 9
      186 LOADN                            R33 312
      187 CALL                             R31 2 1
      188 SETTABLEKS                       R31 R30 K18 ["Size"]
      190 NAMECALL                         R31 R16 K44 ["getNextOrder"]
      192 CALL                             R31 1 1
      193 SETTABLEKS                       R31 R30 K39 ["LayoutOrder"]
      195 DUPTABLE                         R31 K47 [{"Title", "ScrollArea", "Footer"}]
      196 GETUPVAL                         R32 5
      197 GETTABLEKS                       R32 R32 K14 ["createElement"]
      199 GETUPVAL                         R33 15
      200 DUPTABLE                         R34 K50 [{["Text"], ["tag"] = "auto-xy padding-top-medium text-title-medium content-emphasis", ["LayoutOrder"]}]
      201 LOADK                            R37 K1 ["DisambiguationMenu"]
      202 LOADK                            R38 K51 ["ConfigureAssetCategory"]
      203 NAMECALL                         R35 R1 K52 ["getText"]
      205 CALL                             R35 3 1
      206 SETTABLEKS                       R35 R34 K48 ["Text"]
      208 NAMECALL                         R35 R16 K44 ["getNextOrder"]
      210 CALL                             R35 1 1
      211 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      213 CALL                             R32 2 1
      214 SETTABLEKS                       R32 R31 K16 ["Title"]
      216 GETUPVAL                         R32 5
      217 GETTABLEKS                       R32 R32 K14 ["createElement"]
      219 GETUPVAL                         R33 16
      220 DUPTABLE                         R34 K62 [{["ambiguousAssets"], ["selections"], ["setSelections"], ["loneMeshParts"], ["loneMeshPartAssignments"], ["addLoneMeshPartAssignment"], ["getAssetTypeLabel"], ["layoutOrder"], ["scrollHeight"] = 204, ["dialogWidth"], ["uniqueKey"]}]
      221 GETTABLEKS                       R35 R0 K9 ["ambiguousAssets"]
      223 SETTABLEKS                       R35 R34 K9 ["ambiguousAssets"]
      225 SETTABLEKS                       R7 R34 K53 ["selections"]
      227 SETTABLEKS                       R8 R34 K54 ["setSelections"]
      229 GETTABLEKS                       R35 R0 K6 ["loneMeshParts"]
      231 SETTABLEKS                       R35 R34 K6 ["loneMeshParts"]
      233 SETTABLEKS                       R9 R34 K55 ["loneMeshPartAssignments"]
      235 SETTABLEKS                       R11 R34 K7 ["addLoneMeshPartAssignment"]
      237 GETUPVAL                         R35 17
      238 SETTABLEKS                       R35 R34 K56 ["getAssetTypeLabel"]
      240 NAMECALL                         R35 R16 K44 ["getNextOrder"]
      242 CALL                             R35 1 1
      243 SETTABLEKS                       R35 R34 K57 ["layoutOrder"]
      245 GETUPVAL                         R35 9
      246 SETTABLEKS                       R35 R34 K60 ["dialogWidth"]
      248 SETTABLEKS                       R13 R34 K61 ["uniqueKey"]
      250 CALL                             R32 2 1
      251 SETTABLEKS                       R32 R31 K45 ["ScrollArea"]
      253 GETUPVAL                         R32 5
      254 GETTABLEKS                       R32 R32 K14 ["createElement"]
      256 GETUPVAL                         R33 18
      257 DUPTABLE                         R34 K66 [{"onSave", "onCancel", "allSelectionsMade", "layoutOrder"}]
      258 SETTABLEKS                       R19 R34 K63 ["onSave"]
      260 GETTABLEKS                       R35 R0 K25 ["close"]
      262 SETTABLEKS                       R35 R34 K64 ["onCancel"]
      264 SETTABLEKS                       R12 R34 K65 ["allSelectionsMade"]
      266 NAMECALL                         R35 R16 K44 ["getNextOrder"]
      268 CALL                             R35 1 1
      269 SETTABLEKS                       R35 R34 K57 ["layoutOrder"]
      271 CALL                             R32 2 1
      272 SETTABLEKS                       R32 R31 K46 ["Footer"]
      274 CALL                             R28 3 1
      275 SETTABLEKS                       R28 R27 K31 ["MainContainer"]
      277 GETUPVAL                         R28 5
      278 GETTABLEKS                       R28 R28 K14 ["createElement"]
      280 GETUPVAL                         R29 14
      281 DUPTABLE                         R30 K71 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      282 SETTABLEKS                       R18 R30 K68 ["ref"]
      284 CALL                             R28 2 1
      285 SETTABLEKS                       R28 R27 K32 ["Overlay"]
      287 CALL                             R24 3 1
      288 SETTABLEKS                       R24 R23 K26 ["OverlayProviderWrapper"]
      290 CALL                             R20 3 -1
      291 RETURN                           R20 -1
      292 GETUPVAL                         R14 5
      293 GETTABLEKS                       R14 R14 K14 ["createElement"]
      295 GETUPVAL                         R15 19
      296 DUPTABLE                         R16 K76 [{["Style"] = "CancelAccept", ["Title"], ["MinContentSize"], ["Modal"] = True, ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      297 LOADK                            R19 K1 ["DisambiguationMenu"]
      298 LOADK                            R20 K16 ["Title"]
      299 NAMECALL                         R17 R1 K52 ["getText"]
      301 CALL                             R17 3 1
      302 SETTABLEKS                       R17 R16 K16 ["Title"]
      304 GETTABLEKS                       R17 R2 K10 ["MinContentSize"]
      306 SETTABLEKS                       R17 R16 K10 ["MinContentSize"]
      308 NEWTABLE                         R17 0 2
      310 DUPTABLE                         R18 K79 [{["Key"] = "cancel", ["Text"]}]
      311 LOADK                            R21 K1 ["DisambiguationMenu"]
      312 LOADK                            R22 K80 ["Cancel"]
      313 NAMECALL                         R19 R1 K52 ["getText"]
      315 CALL                             R19 3 1
      316 SETTABLEKS                       R19 R18 K48 ["Text"]
      318 DUPTABLE                         R19 K83 [{["Key"] = "ok", ["Text"], ["StyleModifier"]}]
      319 LOADK                            R22 K1 ["DisambiguationMenu"]
      320 LOADK                            R23 K84 ["OK"]
      321 NAMECALL                         R20 R1 K52 ["getText"]
      323 CALL                             R20 3 1
      324 SETTABLEKS                       R20 R19 K48 ["Text"]
      326 JUMPIFNOT                        R12 ; [+2]
      327 LOADNIL                          R20
      328 JUMP                             ; [+3]
      329 GETUPVAL                         R20 20
      330 GETTABLEKS                       R20 R20 K85 ["Disabled"]
      332 SETTABLEKS                       R20 R19 K82 ["StyleModifier"]
      334 SETLIST                          R17 R18 2 [1]
      336 SETTABLEKS                       R17 R16 K74 ["Buttons"]
      338 NEWCLOSURE                       R17 P3
      339 CAPTURE                          VAL R0
      340 CAPTURE                          UPVAL U10
      341 CAPTURE                          VAL R7
      342 CAPTURE                          VAL R9
      343 SETTABLEKS                       R17 R16 K75 ["OnButtonPressed"]
      345 GETTABLEKS                       R17 R0 K25 ["close"]
      347 SETTABLEKS                       R17 R16 K21 ["OnClose"]
      349 GETUPVAL                         R17 5
      350 GETTABLEKS                       R17 R17 K14 ["createElement"]
      352 GETUPVAL                         R18 21
      353 DUPTABLE                         R19 K88 [{"Layout", "Spacing"}]
      354 GETIMPORT                        R20 K92 [Enum.FillDirection.Vertical]
      356 SETTABLEKS                       R20 R19 K86 ["Layout"]
      358 GETTABLEKS                       R20 R2 K93 ["TitleContentsSpacing"]
      360 SETTABLEKS                       R20 R19 K87 ["Spacing"]
      362 DUPTABLE                         R20 K96 [{"CallToAction", "Contents"}]
      363 GETUPVAL                         R21 5
      364 GETTABLEKS                       R21 R21 K14 ["createElement"]
      366 GETUPVAL                         R22 22
      367 NEWTABLE                         R23 16 0
      369 GETIMPORT                        R24 K99 [Enum.AutomaticSize.Y]
      371 SETTABLEKS                       R24 R23 K97 ["AutomaticSize"]
      373 LOADK                            R26 K1 ["DisambiguationMenu"]
      374 LOADK                            R27 K94 ["CallToAction"]
      375 NAMECALL                         R24 R1 K52 ["getText"]
      377 CALL                             R24 3 1
      378 SETTABLEKS                       R24 R23 K48 ["Text"]
      380 GETIMPORT                        R24 K102 [Enum.TextXAlignment.Left]
      382 SETTABLEKS                       R24 R23 K100 ["TextXAlignment"]
      384 GETIMPORT                        R24 K105 [Enum.TextYAlignment.Top]
      386 SETTABLEKS                       R24 R23 K103 ["TextYAlignment"]
      388 LOADB                            R24 1
      389 SETTABLEKS                       R24 R23 K106 ["TextWrapped"]
      391 GETIMPORT                        R24 K108 [UDim2.fromScale]
      393 LOADN                            R25 1
      394 LOADN                            R26 0
      395 CALL                             R24 2 1
      396 SETTABLEKS                       R24 R23 K18 ["Size"]
      398 LOADK                            R24 K16 ["Title"]
      399 SETTABLEKS                       R24 R23 K72 ["Style"]
      401 NAMECALL                         R24 R4 K44 ["getNextOrder"]
      403 CALL                             R24 1 1
      404 SETTABLEKS                       R24 R23 K39 ["LayoutOrder"]
      406 GETUPVAL                         R24 5
      407 GETTABLEKS                       R24 R24 K109 ["Change"]
      409 GETTABLEKS                       R24 R24 K110 ["AbsoluteSize"]
      411 NEWCLOSURE                       R25 P4
      412 CAPTURE                          VAL R6
      413 SETTABLE                         R25 R23 R24
      414 CALL                             R21 2 1
      415 SETTABLEKS                       R21 R20 K94 ["CallToAction"]
      417 GETUPVAL                         R21 5
      418 GETTABLEKS                       R21 R21 K14 ["createElement"]
      420 GETUPVAL                         R22 23
      421 DUPTABLE                         R23 K112 [{"AutomaticCanvasSize", "Size", "LayoutOrder", "Layout", "Spacing"}]
      422 GETIMPORT                        R24 K99 [Enum.AutomaticSize.Y]
      424 SETTABLEKS                       R24 R23 K111 ["AutomaticCanvasSize"]
      426 GETIMPORT                        R24 K113 [UDim2.new]
      428 LOADN                            R25 1
      429 LOADN                            R26 0
      430 LOADN                            R27 1
      431 GETTABLEKS                       R30 R2 K93 ["TitleContentsSpacing"]
      433 ADD                              R29 R5 R30
      434 MINUS                            R28 R29
      435 CALL                             R24 4 1
      436 SETTABLEKS                       R24 R23 K18 ["Size"]
      438 NAMECALL                         R24 R4 K44 ["getNextOrder"]
      440 CALL                             R24 1 1
      441 SETTABLEKS                       R24 R23 K39 ["LayoutOrder"]
      443 GETIMPORT                        R24 K92 [Enum.FillDirection.Vertical]
      445 SETTABLEKS                       R24 R23 K86 ["Layout"]
      447 GETIMPORT                        R24 K115 [UDim.new]
      449 LOADN                            R25 0
      450 GETTABLEKS                       R26 R2 K116 ["VerticalSpacing"]
      452 CALL                             R24 2 1
      453 SETTABLEKS                       R24 R23 K87 ["Spacing"]
      455 GETUPVAL                         R24 10
      456 GETTABLEKS                       R24 R24 K117 ["map"]
      458 GETTABLEKS                       R25 R0 K9 ["ambiguousAssets"]
      460 NEWCLOSURE                       R26 P5
      461 CAPTURE                          UPVAL U5
      462 CAPTURE                          UPVAL U24
      463 CAPTURE                          VAL R13
      464 CAPTURE                          VAL R4
      465 CAPTURE                          VAL R7
      466 CAPTURE                          VAL R8
      467 CALL                             R24 2 1
      468 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      470 LENGTH                           R26 R27
      471 LOADN                            R27 0
      472 JUMPIFNOTLT                      R27 R26 ; [+19]
      474 GETTABLEKS                       R27 R0 K9 ["ambiguousAssets"]
      476 LENGTH                           R26 R27
      477 LOADN                            R27 0
      478 JUMPIFNOTLT                      R27 R26 ; [+13]
      480 GETUPVAL                         R25 5
      481 GETTABLEKS                       R25 R25 K14 ["createElement"]
      483 GETUPVAL                         R26 25
      484 DUPTABLE                         R27 K118 [{"LayoutOrder"}]
      485 NAMECALL                         R28 R4 K44 ["getNextOrder"]
      487 CALL                             R28 1 1
      488 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      490 CALL                             R25 2 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R25
      493 GETUPVAL                         R26 10
      494 GETTABLEKS                       R26 R26 K117 ["map"]
      496 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      498 NEWCLOSURE                       R28 P6
      499 CAPTURE                          UPVAL U5
      500 CAPTURE                          UPVAL U26
      501 CAPTURE                          VAL R13
      502 CAPTURE                          VAL R9
      503 CAPTURE                          VAL R4
      504 CAPTURE                          VAL R11
      505 CALL                             R26 2 -1
      506 CALL                             R21 -1 1
      507 SETTABLEKS                       R21 R20 K95 ["Contents"]
      509 CALL                             R17 3 -1
      510 CALL                             R14 -1 -1
      511 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["AmbiguousAssetEntry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["SharedFlags"]
       30 GETTABLEKS                       R4 R4 K11 ["getFFlagDevFrameworkUsePluginDesign"]
       32 CALL                             R4 0 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K12 ["LoneMeshPartEntry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Packages"]
       44 GETTABLEKS                       R7 R7 K13 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K14 ["DisambiguationMenuFooter"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K15 ["DisambiguationMenuScrollContent"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Src"]
       65 GETTABLEKS                       R10 R10 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["Constants"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Src"]
       74 GETTABLEKS                       R11 R11 K19 ["Resources"]
       76 GETTABLEKS                       R11 R11 K20 ["Theme"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K16 ["Src"]
       83 GETTABLEKS                       R12 R12 K21 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K16 ["Src"]
       90 GETTABLEKS                       R13 R13 K17 ["Util"]
       92 GETTABLEKS                       R13 R13 K22 ["createUniqueKey"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K16 ["Src"]
       99 GETTABLEKS                       R14 R14 K23 ["Flags"]
      101 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K16 ["Src"]
      108 GETTABLEKS                       R15 R15 K23 ["Flags"]
      110 GETTABLEKS                       R15 R15 K25 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K16 ["Src"]
      117 GETTABLEKS                       R16 R16 K26 ["Components"]
      119 GETTABLEKS                       R16 R16 K27 ["DisambiguationMenu"]
      121 GETTABLEKS                       R16 R16 K28 ["useInferLoneMeshPartAssignment"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R3 K29 ["UI"]
      126 GETTABLEKS                       R17 R16 K30 ["Pane"]
      128 GETTABLEKS                       R18 R16 K31 ["ScrollingFrame"]
      130 GETTABLEKS                       R19 R16 K32 ["Separator"]
      132 GETTABLEKS                       R20 R16 K33 ["StyledDialog"]
      134 GETTABLEKS                       R21 R16 K34 ["TextLabel"]
      136 GETTABLEKS                       R22 R3 K35 ["ContextServices"]
      138 GETTABLEKS                       R22 R22 K36 ["Localization"]
      140 GETTABLEKS                       R23 R3 K35 ["ContextServices"]
      142 GETTABLEKS                       R23 R23 K37 ["Stylizer"]
      144 GETTABLEKS                       R24 R3 K35 ["ContextServices"]
      146 GETTABLEKS                       R24 R24 K38 ["Design"]
      148 GETTABLEKS                       R25 R3 K17 ["Util"]
      150 GETTABLEKS                       R25 R25 K39 ["LayoutOrderIterator"]
      152 GETTABLEKS                       R26 R3 K17 ["Util"]
      154 GETTABLEKS                       R26 R26 K40 ["StyleModifier"]
      156 GETIMPORT                        R27 K5 [require]
      158 GETTABLEKS                       R28 R0 K7 ["Packages"]
      160 GETTABLEKS                       R28 R28 K41 ["Foundation"]
      162 CALL                             R27 1 1
      163 GETTABLEKS                       R28 R27 K42 ["OverlayProvider"]
      165 GETTABLEKS                       R29 R27 K43 ["Text"]
      167 GETTABLEKS                       R30 R27 K44 ["View"]
      169 MOVE                             R32 R14
      170 CALL                             R32 0 1
      171 JUMPIFNOT                        R32 ; [+2]
      172 LOADN                            R31 500
      173 JUMP                             ; [+1]
      174 LOADN                            R31 400
      175 LOADNIL                          R32
      176 DUPCLOSURE                       R33 K45 [PROTO_0]
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R9
      179 NEWCLOSURE                       R34 P1
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R12
      188 CAPTURE                          REF R32
      189 CAPTURE                          VAL R31
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R28
      194 CAPTURE                          VAL R30
      195 CAPTURE                          VAL R29
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R33
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R5
      207 CLOSEUPVALS                      R32
      208 RETURN                           R34 1
