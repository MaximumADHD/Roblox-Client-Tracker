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
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADK                            R4 K6 ["MakeupAsset"]
       23 RETURN                           R4 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETIMPORT                        R4 K9 [table.find]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K10 ["CLOTHING_ASSET_TYPES"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["meshPart"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K2 ["assign"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["values"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["close"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["collectArray"]
       10 GETUPVAL                         R2 2
       11 DUPCLOSURE                       R3 K3 [PROTO_6]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K4 ["assign"]
       16 MOVE                             R3 R1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["values"]
       20 GETUPVAL                         R5 3
       21 CALL                             R4 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"key", "AmbiguousAsset", "LayoutOrder", "AssignedPalette", "SetAssignedPalette"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R6 R0 K7 ["worldModel"]
        8 GETTABLEKS                       R5 R6 K8 ["Name"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K0 ["use"]
       15 CALL                             R3 0 1
       16 NAMECALL                         R3 R3 K2 ["get"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K3 ["new"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R5 R6 K4 ["useState"]
       28 LOADN                            R6 0
       29 CALL                             R5 1 2
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R7 R8 K4 ["useState"]
       33 NEWTABLE                         R8 0 0
       35 CALL                             R7 1 2
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R9 R10 K4 ["useState"]
       39 NEWTABLE                         R10 0 0
       41 CALL                             R9 1 2
       42 GETUPVAL                         R12 5
       43 GETTABLEKS                       R11 R12 K5 ["useCallback"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          VAL R10
       47 NEWTABLE                         R13 0 0
       49 CALL                             R11 2 1
       50 GETUPVAL                         R12 6
       51 CALL                             R12 0 1
       52 JUMPIFNOT                        R12 ; [+9]
       53 GETUPVAL                         R12 7
       54 DUPTABLE                         R13 K8 [{"loneMeshParts", "addLoneMeshPartAssignment"}]
       55 GETTABLEKS                       R14 R0 K6 ["loneMeshParts"]
       57 SETTABLEKS                       R14 R13 K6 ["loneMeshParts"]
       59 SETTABLEKS                       R11 R13 K7 ["addLoneMeshPartAssignment"]
       61 CALL                             R12 1 0
       62 LOADB                            R12 1
       63 GETTABLEKS                       R13 R0 K9 ["ambiguousAssets"]
       65 LOADNIL                          R14
       66 LOADNIL                          R15
       67 FORGPREP                         R13
       68 GETTABLE                         R18 R7 R17
       69 JUMPIFNOTEQKNIL                  R18 ; [+3]
       71 LOADB                            R12 0
       72 JUMP                             ; [+2]
       73 FORGLOOP                         R13 2 ; [-6]
       75 JUMPIFNOT                        R12 ; [+12]
       76 GETTABLEKS                       R13 R0 K6 ["loneMeshParts"]
       78 LOADNIL                          R14
       79 LOADNIL                          R15
       80 FORGPREP                         R13
       81 GETTABLE                         R18 R9 R17
       82 JUMPIFNOTEQKNIL                  R18 ; [+3]
       84 LOADB                            R12 0
       85 JUMP                             ; [+2]
       86 FORGLOOP                         R13 2 ; [-6]
       88 GETUPVAL                         R13 8
       89 CALL                             R13 0 1
       90 GETUPVAL                         R14 2
       91 CALL                             R14 0 1
       92 JUMPIFNOT                        R14 ; [+215]
       93 GETUPVAL                         R15 5
       94 GETTABLEKS                       R14 R15 K4 ["useState"]
       96 GETTABLEKS                       R15 R2 K10 ["MinContentSize"]
       98 CALL                             R14 1 2
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R16 R17 K3 ["new"]
      102 CALL                             R16 0 1
      103 GETIMPORT                        R17 K12 [Vector2.new]
      105 LOADN                            R18 144
      106 LOADN                            R19 56
      107 CALL                             R17 2 1
      108 SETUPVAL                         R17 9
      109 GETUPVAL                         R18 5
      110 GETTABLEKS                       R17 R18 K4 ["useState"]
      112 LOADNIL                          R18
      113 CALL                             R17 1 2
      114 GETUPVAL                         R20 5
      115 GETTABLEKS                       R19 R20 K5 ["useCallback"]
      117 NEWCLOSURE                       R20 P1
      118 CAPTURE                          UPVAL U10
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R9
      122 NEWTABLE                         R21 0 3
      124 MOVE                             R22 R7
      125 MOVE                             R23 R9
      126 GETTABLEKS                       R24 R0 K13 ["assign"]
      128 SETLIST                          R21 R22 3 [1]
      130 CALL                             R19 2 1
      131 GETUPVAL                         R21 5
      132 GETTABLEKS                       R20 R21 K14 ["createElement"]
      134 GETUPVAL                         R22 11
      135 GETTABLEKS                       R21 R22 K15 ["Dialog"]
      137 DUPTABLE                         R22 K21 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
      138 LOADK                            R23 K22 [""]
      139 SETTABLEKS                       R23 R22 K16 ["Title"]
      141 GETUPVAL                         R23 9
      142 SETTABLEKS                       R23 R22 K10 ["MinContentSize"]
      144 SETTABLEKS                       R14 R22 K17 ["Size"]
      146 LOADB                            R23 1
      147 SETTABLEKS                       R23 R22 K18 ["Modal"]
      149 GETTABLEKS                       R23 R0 K23 ["close"]
      151 SETTABLEKS                       R23 R22 K19 ["OnClose"]
      153 LOADB                            R23 1
      154 SETTABLEKS                       R23 R22 K20 ["Enabled"]
      156 DUPTABLE                         R23 K25 [{"OverlayProviderWrapper"}]
      157 GETUPVAL                         R25 5
      158 GETTABLEKS                       R24 R25 K14 ["createElement"]
      160 GETUPVAL                         R25 12
      161 DUPTABLE                         R26 K27 [{"gui"}]
      162 SETTABLEKS                       R17 R26 K26 ["gui"]
      164 DUPTABLE                         R27 K31 [{"StyleLink", "MainContainer", "Overlay"}]
      165 GETUPVAL                         R29 5
      166 GETTABLEKS                       R28 R29 K14 ["createElement"]
      168 LOADK                            R29 K28 ["StyleLink"]
      169 DUPTABLE                         R30 K33 [{"StyleSheet"}]
      170 SETTABLEKS                       R3 R30 K32 ["StyleSheet"]
      172 CALL                             R28 2 1
      173 SETTABLEKS                       R28 R27 K28 ["StyleLink"]
      175 GETUPVAL                         R29 5
      176 GETTABLEKS                       R28 R29 K14 ["createElement"]
      178 GETUPVAL                         R29 13
      179 DUPTABLE                         R30 K37 [{"onAbsoluteSizeChanged", "Size", "tag", "LayoutOrder"}]
      180 NEWCLOSURE                       R31 P2
      181 CAPTURE                          VAL R15
      182 SETTABLEKS                       R31 R30 K34 ["onAbsoluteSizeChanged"]
      184 GETIMPORT                        R31 K40 [UDim2.fromOffset]
      186 LOADN                            R32 144
      187 LOADN                            R33 56
      188 CALL                             R31 2 1
      189 SETTABLEKS                       R31 R30 K17 ["Size"]
      191 LOADK                            R31 K41 ["col padding-left-large gap-large"]
      192 SETTABLEKS                       R31 R30 K35 ["tag"]
      194 NAMECALL                         R31 R16 K42 ["getNextOrder"]
      196 CALL                             R31 1 1
      197 SETTABLEKS                       R31 R30 K36 ["LayoutOrder"]
      199 DUPTABLE                         R31 K45 [{"Title", "ScrollArea", "Footer"}]
      200 GETUPVAL                         R33 5
      201 GETTABLEKS                       R32 R33 K14 ["createElement"]
      203 GETUPVAL                         R33 14
      204 DUPTABLE                         R34 K47 [{"Text", "tag", "LayoutOrder"}]
      205 LOADK                            R37 K1 ["DisambiguationMenu"]
      206 LOADK                            R38 K48 ["ConfigureAssetCategory"]
      207 NAMECALL                         R35 R1 K49 ["getText"]
      209 CALL                             R35 3 1
      210 SETTABLEKS                       R35 R34 K46 ["Text"]
      212 LOADK                            R35 K50 ["text-title-medium font-weight-bold auto-xy content-emphasis padding-top-medium"]
      213 SETTABLEKS                       R35 R34 K35 ["tag"]
      215 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      217 CALL                             R35 1 1
      218 SETTABLEKS                       R35 R34 K36 ["LayoutOrder"]
      220 CALL                             R32 2 1
      221 SETTABLEKS                       R32 R31 K16 ["Title"]
      223 GETUPVAL                         R33 5
      224 GETTABLEKS                       R32 R33 K14 ["createElement"]
      226 GETUPVAL                         R33 15
      227 DUPTABLE                         R34 K59 [{"ambiguousAssets", "selections", "setSelections", "loneMeshParts", "loneMeshPartAssignments", "addLoneMeshPartAssignment", "getAssetTypeLabel", "layoutOrder", "scrollHeight", "dialogWidth", "uniqueKey"}]
      228 GETTABLEKS                       R35 R0 K9 ["ambiguousAssets"]
      230 SETTABLEKS                       R35 R34 K9 ["ambiguousAssets"]
      232 SETTABLEKS                       R7 R34 K51 ["selections"]
      234 SETTABLEKS                       R8 R34 K52 ["setSelections"]
      236 GETTABLEKS                       R35 R0 K6 ["loneMeshParts"]
      238 SETTABLEKS                       R35 R34 K6 ["loneMeshParts"]
      240 SETTABLEKS                       R9 R34 K53 ["loneMeshPartAssignments"]
      242 SETTABLEKS                       R11 R34 K7 ["addLoneMeshPartAssignment"]
      244 GETUPVAL                         R35 16
      245 SETTABLEKS                       R35 R34 K54 ["getAssetTypeLabel"]
      247 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      249 CALL                             R35 1 1
      250 SETTABLEKS                       R35 R34 K55 ["layoutOrder"]
      252 LOADN                            R35 204
      253 SETTABLEKS                       R35 R34 K56 ["scrollHeight"]
      255 LOADN                            R35 144
      256 SETTABLEKS                       R35 R34 K57 ["dialogWidth"]
      258 SETTABLEKS                       R13 R34 K58 ["uniqueKey"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K43 ["ScrollArea"]
      263 GETUPVAL                         R33 5
      264 GETTABLEKS                       R32 R33 K14 ["createElement"]
      266 GETUPVAL                         R33 17
      267 DUPTABLE                         R34 K63 [{"onSave", "onCancel", "allSelectionsMade", "layoutOrder"}]
      268 SETTABLEKS                       R19 R34 K60 ["onSave"]
      270 GETTABLEKS                       R35 R0 K23 ["close"]
      272 SETTABLEKS                       R35 R34 K61 ["onCancel"]
      274 SETTABLEKS                       R12 R34 K62 ["allSelectionsMade"]
      276 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      278 CALL                             R35 1 1
      279 SETTABLEKS                       R35 R34 K55 ["layoutOrder"]
      281 CALL                             R32 2 1
      282 SETTABLEKS                       R32 R31 K44 ["Footer"]
      284 CALL                             R28 3 1
      285 SETTABLEKS                       R28 R27 K29 ["MainContainer"]
      287 GETUPVAL                         R29 5
      288 GETTABLEKS                       R28 R29 K14 ["createElement"]
      290 GETUPVAL                         R29 13
      291 DUPTABLE                         R30 K66 [{"tag", "ref", "ZIndex"}]
      292 LOADK                            R31 K67 ["size-full"]
      293 SETTABLEKS                       R31 R30 K35 ["tag"]
      295 SETTABLEKS                       R18 R30 K64 ["ref"]
      297 LOADN                            R31 100
      298 SETTABLEKS                       R31 R30 K65 ["ZIndex"]
      300 CALL                             R28 2 1
      301 SETTABLEKS                       R28 R27 K30 ["Overlay"]
      303 CALL                             R24 3 1
      304 SETTABLEKS                       R24 R23 K24 ["OverlayProviderWrapper"]
      306 CALL                             R20 3 -1
      307 RETURN                           R20 -1
      308 GETUPVAL                         R15 5
      309 GETTABLEKS                       R14 R15 K14 ["createElement"]
      311 GETUPVAL                         R15 18
      312 DUPTABLE                         R16 K71 [{"Style", "Title", "MinContentSize", "Modal", "Buttons", "OnButtonPressed", "OnClose"}]
      313 LOADK                            R17 K72 ["CancelAccept"]
      314 SETTABLEKS                       R17 R16 K68 ["Style"]
      316 LOADK                            R19 K1 ["DisambiguationMenu"]
      317 LOADK                            R20 K16 ["Title"]
      318 NAMECALL                         R17 R1 K49 ["getText"]
      320 CALL                             R17 3 1
      321 SETTABLEKS                       R17 R16 K16 ["Title"]
      323 GETTABLEKS                       R17 R2 K10 ["MinContentSize"]
      325 SETTABLEKS                       R17 R16 K10 ["MinContentSize"]
      327 LOADB                            R17 1
      328 SETTABLEKS                       R17 R16 K18 ["Modal"]
      330 NEWTABLE                         R17 0 2
      332 DUPTABLE                         R18 K74 [{"Key", "Text"}]
      333 LOADK                            R19 K75 ["cancel"]
      334 SETTABLEKS                       R19 R18 K73 ["Key"]
      336 LOADK                            R21 K1 ["DisambiguationMenu"]
      337 LOADK                            R22 K76 ["Cancel"]
      338 NAMECALL                         R19 R1 K49 ["getText"]
      340 CALL                             R19 3 1
      341 SETTABLEKS                       R19 R18 K46 ["Text"]
      343 DUPTABLE                         R19 K78 [{"Key", "Text", "StyleModifier"}]
      344 LOADK                            R20 K79 ["ok"]
      345 SETTABLEKS                       R20 R19 K73 ["Key"]
      347 LOADK                            R22 K1 ["DisambiguationMenu"]
      348 LOADK                            R23 K80 ["OK"]
      349 NAMECALL                         R20 R1 K49 ["getText"]
      351 CALL                             R20 3 1
      352 SETTABLEKS                       R20 R19 K46 ["Text"]
      354 JUMPIFNOT                        R12 ; [+2]
      355 LOADNIL                          R20
      356 JUMP                             ; [+3]
      357 GETUPVAL                         R21 19
      358 GETTABLEKS                       R20 R21 K81 ["Disabled"]
      360 SETTABLEKS                       R20 R19 K77 ["StyleModifier"]
      362 SETLIST                          R17 R18 2 [1]
      364 SETTABLEKS                       R17 R16 K69 ["Buttons"]
      366 NEWCLOSURE                       R17 P3
      367 CAPTURE                          VAL R0
      368 CAPTURE                          UPVAL U10
      369 CAPTURE                          VAL R7
      370 CAPTURE                          VAL R9
      371 SETTABLEKS                       R17 R16 K70 ["OnButtonPressed"]
      373 GETTABLEKS                       R17 R0 K23 ["close"]
      375 SETTABLEKS                       R17 R16 K19 ["OnClose"]
      377 GETUPVAL                         R18 5
      378 GETTABLEKS                       R17 R18 K14 ["createElement"]
      380 GETUPVAL                         R18 20
      381 DUPTABLE                         R19 K84 [{"Layout", "Spacing"}]
      382 GETIMPORT                        R20 K88 [Enum.FillDirection.Vertical]
      384 SETTABLEKS                       R20 R19 K82 ["Layout"]
      386 GETTABLEKS                       R20 R2 K89 ["TitleContentsSpacing"]
      388 SETTABLEKS                       R20 R19 K83 ["Spacing"]
      390 DUPTABLE                         R20 K92 [{"CallToAction", "Contents"}]
      391 GETUPVAL                         R22 5
      392 GETTABLEKS                       R21 R22 K14 ["createElement"]
      394 GETUPVAL                         R22 21
      395 NEWTABLE                         R23 16 0
      397 GETIMPORT                        R24 K95 [Enum.AutomaticSize.Y]
      399 SETTABLEKS                       R24 R23 K93 ["AutomaticSize"]
      401 LOADK                            R26 K1 ["DisambiguationMenu"]
      402 LOADK                            R27 K90 ["CallToAction"]
      403 NAMECALL                         R24 R1 K49 ["getText"]
      405 CALL                             R24 3 1
      406 SETTABLEKS                       R24 R23 K46 ["Text"]
      408 GETIMPORT                        R24 K98 [Enum.TextXAlignment.Left]
      410 SETTABLEKS                       R24 R23 K96 ["TextXAlignment"]
      412 GETIMPORT                        R24 K101 [Enum.TextYAlignment.Top]
      414 SETTABLEKS                       R24 R23 K99 ["TextYAlignment"]
      416 LOADB                            R24 1
      417 SETTABLEKS                       R24 R23 K102 ["TextWrapped"]
      419 GETIMPORT                        R24 K104 [UDim2.fromScale]
      421 LOADN                            R25 1
      422 LOADN                            R26 0
      423 CALL                             R24 2 1
      424 SETTABLEKS                       R24 R23 K17 ["Size"]
      426 LOADK                            R24 K16 ["Title"]
      427 SETTABLEKS                       R24 R23 K68 ["Style"]
      429 NAMECALL                         R24 R4 K42 ["getNextOrder"]
      431 CALL                             R24 1 1
      432 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      434 GETUPVAL                         R26 5
      435 GETTABLEKS                       R25 R26 K105 ["Change"]
      437 GETTABLEKS                       R24 R25 K106 ["AbsoluteSize"]
      439 NEWCLOSURE                       R25 P4
      440 CAPTURE                          VAL R6
      441 SETTABLE                         R25 R23 R24
      442 CALL                             R21 2 1
      443 SETTABLEKS                       R21 R20 K90 ["CallToAction"]
      445 GETUPVAL                         R22 5
      446 GETTABLEKS                       R21 R22 K14 ["createElement"]
      448 GETUPVAL                         R22 22
      449 DUPTABLE                         R23 K108 [{"AutomaticCanvasSize", "Size", "LayoutOrder", "Layout", "Spacing"}]
      450 GETIMPORT                        R24 K95 [Enum.AutomaticSize.Y]
      452 SETTABLEKS                       R24 R23 K107 ["AutomaticCanvasSize"]
      454 GETIMPORT                        R24 K109 [UDim2.new]
      456 LOADN                            R25 1
      457 LOADN                            R26 0
      458 LOADN                            R27 1
      459 GETTABLEKS                       R30 R2 K89 ["TitleContentsSpacing"]
      461 ADD                              R29 R5 R30
      462 MINUS                            R28 R29
      463 CALL                             R24 4 1
      464 SETTABLEKS                       R24 R23 K17 ["Size"]
      466 NAMECALL                         R24 R4 K42 ["getNextOrder"]
      468 CALL                             R24 1 1
      469 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      471 GETIMPORT                        R24 K88 [Enum.FillDirection.Vertical]
      473 SETTABLEKS                       R24 R23 K82 ["Layout"]
      475 GETIMPORT                        R24 K111 [UDim.new]
      477 LOADN                            R25 0
      478 GETTABLEKS                       R26 R2 K112 ["VerticalSpacing"]
      480 CALL                             R24 2 1
      481 SETTABLEKS                       R24 R23 K83 ["Spacing"]
      483 GETUPVAL                         R25 10
      484 GETTABLEKS                       R24 R25 K113 ["map"]
      486 GETTABLEKS                       R25 R0 K9 ["ambiguousAssets"]
      488 NEWCLOSURE                       R26 P5
      489 CAPTURE                          UPVAL U5
      490 CAPTURE                          UPVAL U23
      491 CAPTURE                          VAL R13
      492 CAPTURE                          VAL R4
      493 CAPTURE                          VAL R7
      494 CAPTURE                          VAL R8
      495 CALL                             R24 2 1
      496 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      498 LENGTH                           R26 R27
      499 LOADN                            R27 0
      500 JUMPIFNOTLT                      R27 R26 ; [+19]
      502 GETTABLEKS                       R27 R0 K9 ["ambiguousAssets"]
      504 LENGTH                           R26 R27
      505 LOADN                            R27 0
      506 JUMPIFNOTLT                      R27 R26 ; [+13]
      508 GETUPVAL                         R26 5
      509 GETTABLEKS                       R25 R26 K14 ["createElement"]
      511 GETUPVAL                         R26 24
      512 DUPTABLE                         R27 K114 [{"LayoutOrder"}]
      513 NAMECALL                         R28 R4 K42 ["getNextOrder"]
      515 CALL                             R28 1 1
      516 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      518 CALL                             R25 2 1
      519 JUMP                             ; [+1]
      520 LOADNIL                          R25
      521 GETUPVAL                         R27 10
      522 GETTABLEKS                       R26 R27 K113 ["map"]
      524 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      526 NEWCLOSURE                       R28 P6
      527 CAPTURE                          UPVAL U5
      528 CAPTURE                          UPVAL U25
      529 CAPTURE                          VAL R13
      530 CAPTURE                          VAL R9
      531 CAPTURE                          VAL R4
      532 CAPTURE                          VAL R11
      533 CALL                             R26 2 -1
      534 CALL                             R21 -1 1
      535 SETTABLEKS                       R21 R20 K91 ["Contents"]
      537 CALL                             R17 3 -1
      538 CALL                             R14 -1 -1
      539 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["AmbiguousAssetEntry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["LoneMeshPartEntry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R7 R8 K12 ["DisambiguationMenuFooter"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R8 R9 K13 ["DisambiguationMenuScrollContent"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K14 ["Src"]
       60 GETTABLEKS                       R10 R11 K15 ["Util"]
       62 GETTABLEKS                       R9 R10 K16 ["Constants"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Src"]
       69 GETTABLEKS                       R11 R12 K17 ["Resources"]
       71 GETTABLEKS                       R10 R11 K18 ["Theme"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R12 K19 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K14 ["Src"]
       85 GETTABLEKS                       R13 R14 K15 ["Util"]
       87 GETTABLEKS                       R12 R13 K20 ["createUniqueKey"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R15 R0 K14 ["Src"]
       94 GETTABLEKS                       R14 R15 K21 ["Flags"]
       96 GETTABLEKS                       R13 R14 K22 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K14 ["Src"]
      103 GETTABLEKS                       R15 R16 K21 ["Flags"]
      105 GETTABLEKS                       R14 R15 K23 ["getFFlagFixLayeredClothingAssignment"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R18 R0 K14 ["Src"]
      112 GETTABLEKS                       R17 R18 K24 ["Components"]
      114 GETTABLEKS                       R16 R17 K25 ["DisambiguationMenu"]
      116 GETTABLEKS                       R15 R16 K26 ["useInferLoneMeshPartAssignment"]
      118 CALL                             R14 1 1
      119 GETTABLEKS                       R15 R3 K27 ["UI"]
      121 GETTABLEKS                       R16 R15 K28 ["Pane"]
      123 GETTABLEKS                       R17 R15 K29 ["ScrollingFrame"]
      125 GETTABLEKS                       R18 R15 K30 ["Separator"]
      127 GETTABLEKS                       R19 R15 K31 ["StyledDialog"]
      129 GETTABLEKS                       R20 R15 K32 ["TextLabel"]
      131 GETTABLEKS                       R22 R3 K33 ["ContextServices"]
      133 GETTABLEKS                       R21 R22 K34 ["Localization"]
      135 GETTABLEKS                       R23 R3 K33 ["ContextServices"]
      137 GETTABLEKS                       R22 R23 K35 ["Stylizer"]
      139 GETTABLEKS                       R24 R3 K33 ["ContextServices"]
      141 GETTABLEKS                       R23 R24 K36 ["Design"]
      143 GETTABLEKS                       R25 R3 K15 ["Util"]
      145 GETTABLEKS                       R24 R25 K37 ["LayoutOrderIterator"]
      147 GETTABLEKS                       R26 R3 K15 ["Util"]
      149 GETTABLEKS                       R25 R26 K38 ["StyleModifier"]
      151 GETIMPORT                        R26 K5 [require]
      153 GETTABLEKS                       R28 R0 K7 ["Packages"]
      155 GETTABLEKS                       R27 R28 K39 ["Foundation"]
      157 CALL                             R26 1 1
      158 GETTABLEKS                       R27 R26 K40 ["OverlayProvider"]
      160 GETTABLEKS                       R28 R26 K41 ["Text"]
      162 GETTABLEKS                       R29 R26 K42 ["View"]
      164 LOADNIL                          R30
      165 DUPCLOSURE                       R31 K43 [PROTO_0]
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R8
      168 NEWCLOSURE                       R32 P1
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R11
      178 CAPTURE                          REF R30
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R29
      183 CAPTURE                          VAL R28
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R31
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R4
      195 CLOSEUPVALS                      R30
      196 RETURN                           R32 1
