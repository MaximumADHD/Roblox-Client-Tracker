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
       89 JUMPIFNOT                        R14 ; [+191]
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
      134 DUPTABLE                         R22 K23 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True}]
      135 GETUPVAL                         R23 8
      136 SETTABLEKS                       R23 R22 K10 ["MinContentSize"]
      138 SETTABLEKS                       R14 R22 K18 ["Size"]
      140 GETTABLEKS                       R23 R0 K24 ["close"]
      142 SETTABLEKS                       R23 R22 K21 ["OnClose"]
      144 DUPTABLE                         R23 K26 [{"OverlayProviderWrapper"}]
      145 GETUPVAL                         R24 5
      146 GETTABLEKS                       R24 R24 K14 ["createElement"]
      148 GETUPVAL                         R25 12
      149 DUPTABLE                         R26 K28 [{"gui"}]
      150 SETTABLEKS                       R17 R26 K27 ["gui"]
      152 DUPTABLE                         R27 K32 [{"StyleLink", "MainContainer", "Overlay"}]
      153 GETUPVAL                         R28 5
      154 GETTABLEKS                       R28 R28 K14 ["createElement"]
      156 LOADK                            R29 K29 ["StyleLink"]
      157 DUPTABLE                         R30 K34 [{"StyleSheet"}]
      158 SETTABLEKS                       R3 R30 K33 ["StyleSheet"]
      160 CALL                             R28 2 1
      161 SETTABLEKS                       R28 R27 K29 ["StyleLink"]
      163 GETUPVAL                         R28 5
      164 GETTABLEKS                       R28 R28 K14 ["createElement"]
      166 GETUPVAL                         R29 13
      167 DUPTABLE                         R30 K39 [{["onAbsoluteSizeChanged"], ["Size"], ["tag"] = "col gap-large padding-left-large", ["LayoutOrder"]}]
      168 NEWCLOSURE                       R31 P2
      169 CAPTURE                          VAL R15
      170 SETTABLEKS                       R31 R30 K35 ["onAbsoluteSizeChanged"]
      172 GETIMPORT                        R31 K42 [UDim2.fromOffset]
      174 GETUPVAL                         R32 9
      175 LOADN                            R33 312
      176 CALL                             R31 2 1
      177 SETTABLEKS                       R31 R30 K18 ["Size"]
      179 NAMECALL                         R31 R16 K43 ["getNextOrder"]
      181 CALL                             R31 1 1
      182 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      184 DUPTABLE                         R31 K46 [{"Title", "ScrollArea", "Footer"}]
      185 GETUPVAL                         R32 5
      186 GETTABLEKS                       R32 R32 K14 ["createElement"]
      188 GETUPVAL                         R33 14
      189 DUPTABLE                         R34 K49 [{["Text"], ["tag"] = "auto-xy padding-top-medium text-title-medium content-emphasis", ["LayoutOrder"]}]
      190 LOADK                            R37 K1 ["DisambiguationMenu"]
      191 LOADK                            R38 K50 ["ConfigureAssetCategory"]
      192 NAMECALL                         R35 R1 K51 ["getText"]
      194 CALL                             R35 3 1
      195 SETTABLEKS                       R35 R34 K47 ["Text"]
      197 NAMECALL                         R35 R16 K43 ["getNextOrder"]
      199 CALL                             R35 1 1
      200 SETTABLEKS                       R35 R34 K38 ["LayoutOrder"]
      202 CALL                             R32 2 1
      203 SETTABLEKS                       R32 R31 K16 ["Title"]
      205 GETUPVAL                         R32 5
      206 GETTABLEKS                       R32 R32 K14 ["createElement"]
      208 GETUPVAL                         R33 15
      209 DUPTABLE                         R34 K61 [{["ambiguousAssets"], ["selections"], ["setSelections"], ["loneMeshParts"], ["loneMeshPartAssignments"], ["addLoneMeshPartAssignment"], ["getAssetTypeLabel"], ["layoutOrder"], ["scrollHeight"] = 204, ["dialogWidth"], ["uniqueKey"]}]
      210 GETTABLEKS                       R35 R0 K9 ["ambiguousAssets"]
      212 SETTABLEKS                       R35 R34 K9 ["ambiguousAssets"]
      214 SETTABLEKS                       R7 R34 K52 ["selections"]
      216 SETTABLEKS                       R8 R34 K53 ["setSelections"]
      218 GETTABLEKS                       R35 R0 K6 ["loneMeshParts"]
      220 SETTABLEKS                       R35 R34 K6 ["loneMeshParts"]
      222 SETTABLEKS                       R9 R34 K54 ["loneMeshPartAssignments"]
      224 SETTABLEKS                       R11 R34 K7 ["addLoneMeshPartAssignment"]
      226 GETUPVAL                         R35 16
      227 SETTABLEKS                       R35 R34 K55 ["getAssetTypeLabel"]
      229 NAMECALL                         R35 R16 K43 ["getNextOrder"]
      231 CALL                             R35 1 1
      232 SETTABLEKS                       R35 R34 K56 ["layoutOrder"]
      234 GETUPVAL                         R35 9
      235 SETTABLEKS                       R35 R34 K59 ["dialogWidth"]
      237 SETTABLEKS                       R13 R34 K60 ["uniqueKey"]
      239 CALL                             R32 2 1
      240 SETTABLEKS                       R32 R31 K44 ["ScrollArea"]
      242 GETUPVAL                         R32 5
      243 GETTABLEKS                       R32 R32 K14 ["createElement"]
      245 GETUPVAL                         R33 17
      246 DUPTABLE                         R34 K65 [{"onSave", "onCancel", "allSelectionsMade", "layoutOrder"}]
      247 SETTABLEKS                       R19 R34 K62 ["onSave"]
      249 GETTABLEKS                       R35 R0 K24 ["close"]
      251 SETTABLEKS                       R35 R34 K63 ["onCancel"]
      253 SETTABLEKS                       R12 R34 K64 ["allSelectionsMade"]
      255 NAMECALL                         R35 R16 K43 ["getNextOrder"]
      257 CALL                             R35 1 1
      258 SETTABLEKS                       R35 R34 K56 ["layoutOrder"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K45 ["Footer"]
      263 CALL                             R28 3 1
      264 SETTABLEKS                       R28 R27 K30 ["MainContainer"]
      266 GETUPVAL                         R28 5
      267 GETTABLEKS                       R28 R28 K14 ["createElement"]
      269 GETUPVAL                         R29 13
      270 DUPTABLE                         R30 K70 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      271 SETTABLEKS                       R18 R30 K67 ["ref"]
      273 CALL                             R28 2 1
      274 SETTABLEKS                       R28 R27 K31 ["Overlay"]
      276 CALL                             R24 3 1
      277 SETTABLEKS                       R24 R23 K25 ["OverlayProviderWrapper"]
      279 CALL                             R20 3 -1
      280 RETURN                           R20 -1
      281 GETUPVAL                         R14 5
      282 GETTABLEKS                       R14 R14 K14 ["createElement"]
      284 GETUPVAL                         R15 18
      285 DUPTABLE                         R16 K75 [{["Style"] = "CancelAccept", ["Title"], ["MinContentSize"], ["Modal"] = True, ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      286 LOADK                            R19 K1 ["DisambiguationMenu"]
      287 LOADK                            R20 K16 ["Title"]
      288 NAMECALL                         R17 R1 K51 ["getText"]
      290 CALL                             R17 3 1
      291 SETTABLEKS                       R17 R16 K16 ["Title"]
      293 GETTABLEKS                       R17 R2 K10 ["MinContentSize"]
      295 SETTABLEKS                       R17 R16 K10 ["MinContentSize"]
      297 NEWTABLE                         R17 0 2
      299 DUPTABLE                         R18 K78 [{["Key"] = "cancel", ["Text"]}]
      300 LOADK                            R21 K1 ["DisambiguationMenu"]
      301 LOADK                            R22 K79 ["Cancel"]
      302 NAMECALL                         R19 R1 K51 ["getText"]
      304 CALL                             R19 3 1
      305 SETTABLEKS                       R19 R18 K47 ["Text"]
      307 DUPTABLE                         R19 K82 [{["Key"] = "ok", ["Text"], ["StyleModifier"]}]
      308 LOADK                            R22 K1 ["DisambiguationMenu"]
      309 LOADK                            R23 K83 ["OK"]
      310 NAMECALL                         R20 R1 K51 ["getText"]
      312 CALL                             R20 3 1
      313 SETTABLEKS                       R20 R19 K47 ["Text"]
      315 JUMPIFNOT                        R12 ; [+2]
      316 LOADNIL                          R20
      317 JUMP                             ; [+3]
      318 GETUPVAL                         R20 19
      319 GETTABLEKS                       R20 R20 K84 ["Disabled"]
      321 SETTABLEKS                       R20 R19 K81 ["StyleModifier"]
      323 SETLIST                          R17 R18 2 [1]
      325 SETTABLEKS                       R17 R16 K73 ["Buttons"]
      327 NEWCLOSURE                       R17 P3
      328 CAPTURE                          VAL R0
      329 CAPTURE                          UPVAL U10
      330 CAPTURE                          VAL R7
      331 CAPTURE                          VAL R9
      332 SETTABLEKS                       R17 R16 K74 ["OnButtonPressed"]
      334 GETTABLEKS                       R17 R0 K24 ["close"]
      336 SETTABLEKS                       R17 R16 K21 ["OnClose"]
      338 GETUPVAL                         R17 5
      339 GETTABLEKS                       R17 R17 K14 ["createElement"]
      341 GETUPVAL                         R18 20
      342 DUPTABLE                         R19 K87 [{"Layout", "Spacing"}]
      343 GETIMPORT                        R20 K91 [Enum.FillDirection.Vertical]
      345 SETTABLEKS                       R20 R19 K85 ["Layout"]
      347 GETTABLEKS                       R20 R2 K92 ["TitleContentsSpacing"]
      349 SETTABLEKS                       R20 R19 K86 ["Spacing"]
      351 DUPTABLE                         R20 K95 [{"CallToAction", "Contents"}]
      352 GETUPVAL                         R21 5
      353 GETTABLEKS                       R21 R21 K14 ["createElement"]
      355 GETUPVAL                         R22 21
      356 NEWTABLE                         R23 16 0
      358 GETIMPORT                        R24 K98 [Enum.AutomaticSize.Y]
      360 SETTABLEKS                       R24 R23 K96 ["AutomaticSize"]
      362 LOADK                            R26 K1 ["DisambiguationMenu"]
      363 LOADK                            R27 K93 ["CallToAction"]
      364 NAMECALL                         R24 R1 K51 ["getText"]
      366 CALL                             R24 3 1
      367 SETTABLEKS                       R24 R23 K47 ["Text"]
      369 GETIMPORT                        R24 K101 [Enum.TextXAlignment.Left]
      371 SETTABLEKS                       R24 R23 K99 ["TextXAlignment"]
      373 GETIMPORT                        R24 K104 [Enum.TextYAlignment.Top]
      375 SETTABLEKS                       R24 R23 K102 ["TextYAlignment"]
      377 LOADB                            R24 1
      378 SETTABLEKS                       R24 R23 K105 ["TextWrapped"]
      380 GETIMPORT                        R24 K107 [UDim2.fromScale]
      382 LOADN                            R25 1
      383 LOADN                            R26 0
      384 CALL                             R24 2 1
      385 SETTABLEKS                       R24 R23 K18 ["Size"]
      387 LOADK                            R24 K16 ["Title"]
      388 SETTABLEKS                       R24 R23 K71 ["Style"]
      390 NAMECALL                         R24 R4 K43 ["getNextOrder"]
      392 CALL                             R24 1 1
      393 SETTABLEKS                       R24 R23 K38 ["LayoutOrder"]
      395 GETUPVAL                         R24 5
      396 GETTABLEKS                       R24 R24 K108 ["Change"]
      398 GETTABLEKS                       R24 R24 K109 ["AbsoluteSize"]
      400 NEWCLOSURE                       R25 P4
      401 CAPTURE                          VAL R6
      402 SETTABLE                         R25 R23 R24
      403 CALL                             R21 2 1
      404 SETTABLEKS                       R21 R20 K93 ["CallToAction"]
      406 GETUPVAL                         R21 5
      407 GETTABLEKS                       R21 R21 K14 ["createElement"]
      409 GETUPVAL                         R22 22
      410 DUPTABLE                         R23 K111 [{"AutomaticCanvasSize", "Size", "LayoutOrder", "Layout", "Spacing"}]
      411 GETIMPORT                        R24 K98 [Enum.AutomaticSize.Y]
      413 SETTABLEKS                       R24 R23 K110 ["AutomaticCanvasSize"]
      415 GETIMPORT                        R24 K112 [UDim2.new]
      417 LOADN                            R25 1
      418 LOADN                            R26 0
      419 LOADN                            R27 1
      420 GETTABLEKS                       R30 R2 K92 ["TitleContentsSpacing"]
      422 ADD                              R29 R5 R30
      423 MINUS                            R28 R29
      424 CALL                             R24 4 1
      425 SETTABLEKS                       R24 R23 K18 ["Size"]
      427 NAMECALL                         R24 R4 K43 ["getNextOrder"]
      429 CALL                             R24 1 1
      430 SETTABLEKS                       R24 R23 K38 ["LayoutOrder"]
      432 GETIMPORT                        R24 K91 [Enum.FillDirection.Vertical]
      434 SETTABLEKS                       R24 R23 K85 ["Layout"]
      436 GETIMPORT                        R24 K114 [UDim.new]
      438 LOADN                            R25 0
      439 GETTABLEKS                       R26 R2 K115 ["VerticalSpacing"]
      441 CALL                             R24 2 1
      442 SETTABLEKS                       R24 R23 K86 ["Spacing"]
      444 GETUPVAL                         R24 10
      445 GETTABLEKS                       R24 R24 K116 ["map"]
      447 GETTABLEKS                       R25 R0 K9 ["ambiguousAssets"]
      449 NEWCLOSURE                       R26 P5
      450 CAPTURE                          UPVAL U5
      451 CAPTURE                          UPVAL U23
      452 CAPTURE                          VAL R13
      453 CAPTURE                          VAL R4
      454 CAPTURE                          VAL R7
      455 CAPTURE                          VAL R8
      456 CALL                             R24 2 1
      457 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      459 LENGTH                           R26 R27
      460 LOADN                            R27 0
      461 JUMPIFNOTLT                      R27 R26 ; [+19]
      463 GETTABLEKS                       R27 R0 K9 ["ambiguousAssets"]
      465 LENGTH                           R26 R27
      466 LOADN                            R27 0
      467 JUMPIFNOTLT                      R27 R26 ; [+13]
      469 GETUPVAL                         R25 5
      470 GETTABLEKS                       R25 R25 K14 ["createElement"]
      472 GETUPVAL                         R26 24
      473 DUPTABLE                         R27 K117 [{"LayoutOrder"}]
      474 NAMECALL                         R28 R4 K43 ["getNextOrder"]
      476 CALL                             R28 1 1
      477 SETTABLEKS                       R28 R27 K38 ["LayoutOrder"]
      479 CALL                             R25 2 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R25
      482 GETUPVAL                         R26 10
      483 GETTABLEKS                       R26 R26 K116 ["map"]
      485 GETTABLEKS                       R27 R0 K6 ["loneMeshParts"]
      487 NEWCLOSURE                       R28 P6
      488 CAPTURE                          UPVAL U5
      489 CAPTURE                          UPVAL U25
      490 CAPTURE                          VAL R13
      491 CAPTURE                          VAL R9
      492 CAPTURE                          VAL R4
      493 CAPTURE                          VAL R11
      494 CALL                             R26 2 -1
      495 CALL                             R21 -1 1
      496 SETTABLEKS                       R21 R20 K94 ["Contents"]
      498 CALL                             R17 3 -1
      499 CALL                             R14 -1 -1
      500 RETURN                           R14 -1

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
      167 LOADN                            R30 500
      168 JUMP                             ; [+1]
      169 LOADN                            R30 400
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
