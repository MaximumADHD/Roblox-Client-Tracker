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
       89 JUMPIFNOT                        R14 ; [+215]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K4 ["useState"]
       93 GETTABLEKS                       R15 R2 K10 ["MinContentSize"]
       95 CALL                             R14 1 2
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K3 ["new"]
       99 CALL                             R16 0 1
      100 GETIMPORT                        R17 K12 [Vector2.new]
      102 GETUPVAL                         R18 9
      103 LOADN                            R19 56
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
      134 DUPTABLE                         R22 K21 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
      135 LOADK                            R23 K22 [""]
      136 SETTABLEKS                       R23 R22 K16 ["Title"]
      138 GETUPVAL                         R23 8
      139 SETTABLEKS                       R23 R22 K10 ["MinContentSize"]
      141 SETTABLEKS                       R14 R22 K17 ["Size"]
      143 LOADB                            R23 1
      144 SETTABLEKS                       R23 R22 K18 ["Modal"]
      146 GETTABLEKS                       R23 R0 K23 ["close"]
      148 SETTABLEKS                       R23 R22 K19 ["OnClose"]
      150 LOADB                            R23 1
      151 SETTABLEKS                       R23 R22 K20 ["Enabled"]
      153 DUPTABLE                         R23 K25 [{"OverlayProviderWrapper"}]
      154 GETUPVAL                         R24 5
      155 GETTABLEKS                       R24 R24 K14 ["createElement"]
      157 GETUPVAL                         R25 12
      158 DUPTABLE                         R26 K27 [{"gui"}]
      159 SETTABLEKS                       R17 R26 K26 ["gui"]
      161 DUPTABLE                         R27 K31 [{"StyleLink", "MainContainer", "Overlay"}]
      162 GETUPVAL                         R28 5
      163 GETTABLEKS                       R28 R28 K14 ["createElement"]
      165 LOADK                            R29 K28 ["StyleLink"]
      166 DUPTABLE                         R30 K33 [{"StyleSheet"}]
      167 SETTABLEKS                       R3 R30 K32 ["StyleSheet"]
      169 CALL                             R28 2 1
      170 SETTABLEKS                       R28 R27 K28 ["StyleLink"]
      172 GETUPVAL                         R28 5
      173 GETTABLEKS                       R28 R28 K14 ["createElement"]
      175 GETUPVAL                         R29 13
      176 DUPTABLE                         R30 K37 [{"onAbsoluteSizeChanged", "Size", "tag", "LayoutOrder"}]
      177 NEWCLOSURE                       R31 P2
      178 CAPTURE                          VAL R15
      179 SETTABLEKS                       R31 R30 K34 ["onAbsoluteSizeChanged"]
      181 GETIMPORT                        R31 K40 [UDim2.fromOffset]
      183 GETUPVAL                         R32 9
      184 LOADN                            R33 56
      185 CALL                             R31 2 1
      186 SETTABLEKS                       R31 R30 K17 ["Size"]
      188 LOADK                            R31 K41 ["col padding-left-large gap-large"]
      189 SETTABLEKS                       R31 R30 K35 ["tag"]
      191 NAMECALL                         R31 R16 K42 ["getNextOrder"]
      193 CALL                             R31 1 1
      194 SETTABLEKS                       R31 R30 K36 ["LayoutOrder"]
      196 DUPTABLE                         R31 K45 [{"Title", "ScrollArea", "Footer"}]
      197 GETUPVAL                         R32 5
      198 GETTABLEKS                       R32 R32 K14 ["createElement"]
      200 GETUPVAL                         R33 14
      201 DUPTABLE                         R34 K47 [{"Text", "tag", "LayoutOrder"}]
      202 LOADK                            R37 K1 ["DisambiguationMenu"]
      203 LOADK                            R38 K48 ["ConfigureAssetCategory"]
      204 NAMECALL                         R35 R1 K49 ["getText"]
      206 CALL                             R35 3 1
      207 SETTABLEKS                       R35 R34 K46 ["Text"]
      209 LOADK                            R35 K50 ["text-title-medium font-weight-bold auto-xy content-emphasis padding-top-medium"]
      210 SETTABLEKS                       R35 R34 K35 ["tag"]
      212 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      214 CALL                             R35 1 1
      215 SETTABLEKS                       R35 R34 K36 ["LayoutOrder"]
      217 CALL                             R32 2 1
      218 SETTABLEKS                       R32 R31 K16 ["Title"]
      220 GETUPVAL                         R32 5
      221 GETTABLEKS                       R32 R32 K14 ["createElement"]
      223 GETUPVAL                         R33 15
      224 DUPTABLE                         R34 K59 [{"ambiguousAssets", "selections", "setSelections", "loneMeshParts", "loneMeshPartAssignments", "addLoneMeshPartAssignment", "getAssetTypeLabel", "layoutOrder", "scrollHeight", "dialogWidth", "uniqueKey"}]
      225 GETTABLEKS                       R35 R0 K9 ["ambiguousAssets"]
      227 SETTABLEKS                       R35 R34 K9 ["ambiguousAssets"]
      229 SETTABLEKS                       R7 R34 K51 ["selections"]
      231 SETTABLEKS                       R8 R34 K52 ["setSelections"]
      233 GETTABLEKS                       R35 R0 K6 ["loneMeshParts"]
      235 SETTABLEKS                       R35 R34 K6 ["loneMeshParts"]
      237 SETTABLEKS                       R9 R34 K53 ["loneMeshPartAssignments"]
      239 SETTABLEKS                       R11 R34 K7 ["addLoneMeshPartAssignment"]
      241 GETUPVAL                         R35 16
      242 SETTABLEKS                       R35 R34 K54 ["getAssetTypeLabel"]
      244 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      246 CALL                             R35 1 1
      247 SETTABLEKS                       R35 R34 K55 ["layoutOrder"]
      249 LOADN                            R35 204
      250 SETTABLEKS                       R35 R34 K56 ["scrollHeight"]
      252 GETUPVAL                         R35 9
      253 SETTABLEKS                       R35 R34 K57 ["dialogWidth"]
      255 SETTABLEKS                       R13 R34 K58 ["uniqueKey"]
      257 CALL                             R32 2 1
      258 SETTABLEKS                       R32 R31 K43 ["ScrollArea"]
      260 GETUPVAL                         R32 5
      261 GETTABLEKS                       R32 R32 K14 ["createElement"]
      263 GETUPVAL                         R33 17
      264 DUPTABLE                         R34 K63 [{"onSave", "onCancel", "allSelectionsMade", "layoutOrder"}]
      265 SETTABLEKS                       R19 R34 K60 ["onSave"]
      267 GETTABLEKS                       R35 R0 K23 ["close"]
      269 SETTABLEKS                       R35 R34 K61 ["onCancel"]
      271 SETTABLEKS                       R12 R34 K62 ["allSelectionsMade"]
      273 NAMECALL                         R35 R16 K42 ["getNextOrder"]
      275 CALL                             R35 1 1
      276 SETTABLEKS                       R35 R34 K55 ["layoutOrder"]
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K44 ["Footer"]
      281 CALL                             R28 3 1
      282 SETTABLEKS                       R28 R27 K29 ["MainContainer"]
      284 GETUPVAL                         R28 5
      285 GETTABLEKS                       R28 R28 K14 ["createElement"]
      287 GETUPVAL                         R29 13
      288 DUPTABLE                         R30 K66 [{"tag", "ref", "ZIndex"}]
      289 LOADK                            R31 K67 ["size-full"]
      290 SETTABLEKS                       R31 R30 K35 ["tag"]
      292 SETTABLEKS                       R18 R30 K64 ["ref"]
      294 LOADN                            R31 100
      295 SETTABLEKS                       R31 R30 K65 ["ZIndex"]
      297 CALL                             R28 2 1
      298 SETTABLEKS                       R28 R27 K30 ["Overlay"]
      300 CALL                             R24 3 1
      301 SETTABLEKS                       R24 R23 K24 ["OverlayProviderWrapper"]
      303 CALL                             R20 3 -1
      304 RETURN                           R20 -1
      305 GETUPVAL                         R14 5
      306 GETTABLEKS                       R14 R14 K14 ["createElement"]
      308 GETUPVAL                         R15 18
      309 DUPTABLE                         R16 K71 [{"Style", "Title", "MinContentSize", "Modal", "Buttons", "OnButtonPressed", "OnClose"}]
      310 LOADK                            R17 K72 ["CancelAccept"]
      311 SETTABLEKS                       R17 R16 K68 ["Style"]
      313 LOADK                            R19 K1 ["DisambiguationMenu"]
      314 LOADK                            R20 K16 ["Title"]
      315 NAMECALL                         R17 R1 K49 ["getText"]
      317 CALL                             R17 3 1
      318 SETTABLEKS                       R17 R16 K16 ["Title"]
      320 GETTABLEKS                       R17 R2 K10 ["MinContentSize"]
      322 SETTABLEKS                       R17 R16 K10 ["MinContentSize"]
      324 LOADB                            R17 1
      325 SETTABLEKS                       R17 R16 K18 ["Modal"]
      327 NEWTABLE                         R17 0 2
      329 DUPTABLE                         R18 K74 [{"Key", "Text"}]
      330 LOADK                            R19 K75 ["cancel"]
      331 SETTABLEKS                       R19 R18 K73 ["Key"]
      333 LOADK                            R21 K1 ["DisambiguationMenu"]
      334 LOADK                            R22 K76 ["Cancel"]
      335 NAMECALL                         R19 R1 K49 ["getText"]
      337 CALL                             R19 3 1
      338 SETTABLEKS                       R19 R18 K46 ["Text"]
      340 DUPTABLE                         R19 K78 [{"Key", "Text", "StyleModifier"}]
      341 LOADK                            R20 K79 ["ok"]
      342 SETTABLEKS                       R20 R19 K73 ["Key"]
      344 LOADK                            R22 K1 ["DisambiguationMenu"]
      345 LOADK                            R23 K80 ["OK"]
      346 NAMECALL                         R20 R1 K49 ["getText"]
      348 CALL                             R20 3 1
      349 SETTABLEKS                       R20 R19 K46 ["Text"]
      351 JUMPIFNOT                        R12 ; [+2]
      352 LOADNIL                          R20
      353 JUMP                             ; [+3]
      354 GETUPVAL                         R20 19
      355 GETTABLEKS                       R20 R20 K81 ["Disabled"]
      357 SETTABLEKS                       R20 R19 K77 ["StyleModifier"]
      359 SETLIST                          R17 R18 2 [1]
      361 SETTABLEKS                       R17 R16 K69 ["Buttons"]
      363 NEWCLOSURE                       R17 P3
      364 CAPTURE                          VAL R0
      365 CAPTURE                          UPVAL U10
      366 CAPTURE                          VAL R7
      367 CAPTURE                          VAL R9
      368 SETTABLEKS                       R17 R16 K70 ["OnButtonPressed"]
      370 GETTABLEKS                       R17 R0 K23 ["close"]
      372 SETTABLEKS                       R17 R16 K19 ["OnClose"]
      374 GETUPVAL                         R17 5
      375 GETTABLEKS                       R17 R17 K14 ["createElement"]
      377 GETUPVAL                         R18 20
      378 DUPTABLE                         R19 K84 [{"Layout", "Spacing"}]
      379 GETIMPORT                        R20 K88 [Enum.FillDirection.Vertical]
      381 SETTABLEKS                       R20 R19 K82 ["Layout"]
      383 GETTABLEKS                       R20 R2 K89 ["TitleContentsSpacing"]
      385 SETTABLEKS                       R20 R19 K83 ["Spacing"]
      387 DUPTABLE                         R20 K92 [{"CallToAction", "Contents"}]
      388 GETUPVAL                         R21 5
      389 GETTABLEKS                       R21 R21 K14 ["createElement"]
      391 GETUPVAL                         R22 21
      392 NEWTABLE                         R23 16 0
      394 GETIMPORT                        R24 K95 [Enum.AutomaticSize.Y]
      396 SETTABLEKS                       R24 R23 K93 ["AutomaticSize"]
      398 LOADK                            R26 K1 ["DisambiguationMenu"]
      399 LOADK                            R27 K90 ["CallToAction"]
      400 NAMECALL                         R24 R1 K49 ["getText"]
      402 CALL                             R24 3 1
      403 SETTABLEKS                       R24 R23 K46 ["Text"]
      405 GETIMPORT                        R24 K98 [Enum.TextXAlignment.Left]
      407 SETTABLEKS                       R24 R23 K96 ["TextXAlignment"]
      409 GETIMPORT                        R24 K101 [Enum.TextYAlignment.Top]
      411 SETTABLEKS                       R24 R23 K99 ["TextYAlignment"]
      413 LOADB                            R24 1
      414 SETTABLEKS                       R24 R23 K102 ["TextWrapped"]
      416 GETIMPORT                        R24 K104 [UDim2.fromScale]
      418 LOADN                            R25 1
      419 LOADN                            R26 0
      420 CALL                             R24 2 1
      421 SETTABLEKS                       R24 R23 K17 ["Size"]
      423 LOADK                            R24 K16 ["Title"]
      424 SETTABLEKS                       R24 R23 K68 ["Style"]
      426 NAMECALL                         R24 R4 K42 ["getNextOrder"]
      428 CALL                             R24 1 1
      429 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      431 GETUPVAL                         R24 5
      432 GETTABLEKS                       R24 R24 K105 ["Change"]
      434 GETTABLEKS                       R24 R24 K106 ["AbsoluteSize"]
      436 NEWCLOSURE                       R25 P4
      437 CAPTURE                          VAL R6
      438 SETTABLE                         R25 R23 R24
      439 CALL                             R21 2 1
      440 SETTABLEKS                       R21 R20 K90 ["CallToAction"]
      442 GETUPVAL                         R21 5
      443 GETTABLEKS                       R21 R21 K14 ["createElement"]
      445 GETUPVAL                         R22 22
      446 DUPTABLE                         R23 K108 [{"AutomaticCanvasSize", "Size", "LayoutOrder", "Layout", "Spacing"}]
      447 GETIMPORT                        R24 K95 [Enum.AutomaticSize.Y]
      449 SETTABLEKS                       R24 R23 K107 ["AutomaticCanvasSize"]
      451 GETIMPORT                        R24 K109 [UDim2.new]
      453 LOADN                            R25 1
      454 LOADN                            R26 0
      455 LOADN                            R27 1
      456 GETTABLEKS                       R30 R2 K89 ["TitleContentsSpacing"]
      458 ADD                              R29 R5 R30
      459 MINUS                            R28 R29
      460 CALL                             R24 4 1
      461 SETTABLEKS                       R24 R23 K17 ["Size"]
      463 NAMECALL                         R24 R4 K42 ["getNextOrder"]
      465 CALL                             R24 1 1
      466 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      468 GETIMPORT                        R24 K88 [Enum.FillDirection.Vertical]
      470 SETTABLEKS                       R24 R23 K82 ["Layout"]
      472 GETIMPORT                        R24 K111 [UDim.new]
      474 LOADN                            R25 0
      475 GETTABLEKS                       R26 R2 K112 ["VerticalSpacing"]
      477 CALL                             R24 2 1
      478 SETTABLEKS                       R24 R23 K83 ["Spacing"]
      480 GETUPVAL                         R24 10
      481 GETTABLEKS                       R24 R24 K113 ["map"]
      483 GETTABLEKS                       R25 R0 K9 ["ambiguousAssets"]
      485 NEWCLOSURE                       R26 P5
      486 CAPTURE                          UPVAL U5
      487 CAPTURE                          UPVAL U23
      488 CAPTURE                          VAL R13
      489 CAPTURE                          VAL R4
      490 CAPTURE                          VAL R7
      491 CAPTURE                          VAL R8
      492 CALL                             R24 2 1
      493 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      495 LENGTH                           R26 R27
      496 LOADN                            R27 0
      497 JUMPIFNOTLT                      R27 R26 ; [+19]
      499 GETTABLEKS                       R27 R0 K9 ["ambiguousAssets"]
      501 LENGTH                           R26 R27
      502 LOADN                            R27 0
      503 JUMPIFNOTLT                      R27 R26 ; [+13]
      505 GETUPVAL                         R25 5
      506 GETTABLEKS                       R25 R25 K14 ["createElement"]
      508 GETUPVAL                         R26 24
      509 DUPTABLE                         R27 K114 [{"LayoutOrder"}]
      510 NAMECALL                         R28 R4 K42 ["getNextOrder"]
      512 CALL                             R28 1 1
      513 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      515 CALL                             R25 2 1
      516 JUMP                             ; [+1]
      517 LOADNIL                          R25
      518 GETUPVAL                         R26 10
      519 GETTABLEKS                       R26 R26 K113 ["map"]
      521 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      523 NEWCLOSURE                       R28 P6
      524 CAPTURE                          UPVAL U5
      525 CAPTURE                          UPVAL U25
      526 CAPTURE                          VAL R13
      527 CAPTURE                          VAL R9
      528 CAPTURE                          VAL R4
      529 CAPTURE                          VAL R11
      530 CALL                             R26 2 -1
      531 CALL                             R21 -1 1
      532 SETTABLEKS                       R21 R20 K91 ["Contents"]
      534 CALL                             R17 3 -1
      535 CALL                             R14 -1 -1
      536 RETURN                           R14 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["LoneMeshPartEntry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K7 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K12 ["DisambiguationMenuFooter"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K13 ["DisambiguationMenuScrollContent"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["Constants"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Src"]
       69 GETTABLEKS                       R10 R10 K17 ["Resources"]
       71 GETTABLEKS                       R10 R10 K18 ["Theme"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R11 K19 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K14 ["Src"]
       85 GETTABLEKS                       R12 R12 K15 ["Util"]
       87 GETTABLEKS                       R12 R12 K20 ["createUniqueKey"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K14 ["Src"]
       94 GETTABLEKS                       R13 R13 K21 ["Flags"]
       96 GETTABLEKS                       R13 R13 K22 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K14 ["Src"]
      103 GETTABLEKS                       R14 R14 K21 ["Flags"]
      105 GETTABLEKS                       R14 R14 K23 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K14 ["Src"]
      112 GETTABLEKS                       R15 R15 K24 ["Components"]
      114 GETTABLEKS                       R15 R15 K25 ["DisambiguationMenu"]
      116 GETTABLEKS                       R15 R15 K26 ["useInferLoneMeshPartAssignment"]
      118 CALL                             R14 1 1
      119 GETTABLEKS                       R15 R3 K27 ["UI"]
      121 GETTABLEKS                       R16 R15 K28 ["Pane"]
      123 GETTABLEKS                       R17 R15 K29 ["ScrollingFrame"]
      125 GETTABLEKS                       R18 R15 K30 ["Separator"]
      127 GETTABLEKS                       R19 R15 K31 ["StyledDialog"]
      129 GETTABLEKS                       R20 R15 K32 ["TextLabel"]
      131 GETTABLEKS                       R21 R3 K33 ["ContextServices"]
      133 GETTABLEKS                       R21 R21 K34 ["Localization"]
      135 GETTABLEKS                       R22 R3 K33 ["ContextServices"]
      137 GETTABLEKS                       R22 R22 K35 ["Stylizer"]
      139 GETTABLEKS                       R23 R3 K33 ["ContextServices"]
      141 GETTABLEKS                       R23 R23 K36 ["Design"]
      143 GETTABLEKS                       R24 R3 K15 ["Util"]
      145 GETTABLEKS                       R24 R24 K37 ["LayoutOrderIterator"]
      147 GETTABLEKS                       R25 R3 K15 ["Util"]
      149 GETTABLEKS                       R25 R25 K38 ["StyleModifier"]
      151 GETIMPORT                        R26 K5 [require]
      153 GETTABLEKS                       R27 R0 K7 ["Packages"]
      155 GETTABLEKS                       R27 R27 K39 ["Foundation"]
      157 CALL                             R26 1 1
      158 GETTABLEKS                       R27 R26 K40 ["OverlayProvider"]
      160 GETTABLEKS                       R28 R26 K41 ["Text"]
      162 GETTABLEKS                       R29 R26 K42 ["View"]
      164 MOVE                             R31 R13
      165 CALL                             R31 0 1
      166 JUMPIFNOT                        R31 ; [+2]
      167 LOADN                            R30 244
      168 JUMP                             ; [+1]
      169 LOADN                            R30 144
      170 LOADNIL                          R31
      171 DUPCLOSURE                       R32 K43 [PROTO_0]
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R8
      174 NEWCLOSURE                       R33 P1
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R11
      183 CAPTURE                          REF R31
      184 CAPTURE                          VAL R30
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R29
      189 CAPTURE                          VAL R28
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R32
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R4
      201 CLOSEUPVALS                      R31
      202 RETURN                           R33 1
