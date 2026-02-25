PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 FASTCALL1                        TONUMBER R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [tonumber]
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+15]
       10 GETTABLEKS                       R4 R1 K3 ["OnAssetPreviewButtonClicked"]
       12 GETTABLEKS                       R5 R1 K4 ["getAssetPreviewDataForStartup"]
       14 MOVE                             R6 R3
       15 GETTABLEKS                       R7 R1 K5 ["TryInsert"]
       17 GETTABLEKS                       R8 R1 K6 ["Localization"]
       19 GETTABLEKS                       R10 R1 K7 ["Network"]
       21 GETTABLEKS                       R9 R10 K8 ["networkInterface"]
       23 MOVE                             R10 R4
       24 CALL                             R5 5 0
       25 GETTABLEKS                       R4 R0 K9 ["onOverallAbsoluteSizeChange"]
       27 CALL                             R4 0 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sizerRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["getSwimlaneWidth"]
       10 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
       12 GETTABLEKS                       R3 R4 K4 ["X"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R5 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R4 R5 K5 ["Y"]
       19 LOADN                            R5 219
       20 JUMPIFLT                         R5 R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 GETTABLEKS                       R4 R0 K6 ["showTopSearchesFullHeight"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+5]
       28 GETTABLEKS                       R4 R0 K7 ["swimlaneWidth"]
       30 JUMPIFEQ                         R2 R4 ; [+11]
       32 DUPTABLE                         R4 K9 [{"absoluteSize", "showTopSearchesFullHeight", "swimlaneWidth"}]
       33 GETTABLEKS                       R5 R1 K8 ["absoluteSize"]
       35 SETTABLEKS                       R5 R4 K8 ["absoluteSize"]
       37 SETTABLEKS                       R3 R4 K6 ["showTopSearchesFullHeight"]
       39 SETTABLEKS                       R2 R4 K7 ["swimlaneWidth"]
       41 RETURN                           R4 1
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"absolutePosition"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["AbsolutePosition"]
        4 SETTABLEKS                       R2 R1 K0 ["absolutePosition"]
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        5 GETTABLEKS                       R3 R1 K2 ["OnClickSubcategory"]
        7 GETTABLEKS                       R4 R1 K3 ["SortName"]
        9 GETTABLEKS                       R5 R1 K4 ["SubcategoryDict"]
       11 GETTABLE                         R6 R5 R0
       12 MOVE                             R7 R3
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 MOVE                             R10 R2
       16 MOVE                             R11 R4
       17 GETTABLEKS                       R12 R6 K5 ["queryParams"]
       19 CALL                             R7 5 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CategoryName"]
        5 GETTABLEKS                       R2 R0 K2 ["SortName"]
        7 GETTABLEKS                       R3 R0 K3 ["SubcategoryDict"]
        9 GETTABLEKS                       R4 R0 K4 ["OnClickSeeAllSubcategories"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 MOVE                             R5 R4
       13 MOVE                             R6 R3
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 CALL                             R5 3 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        5 GETTABLEKS                       R3 R1 K2 ["SortName"]
        7 GETTABLEKS                       R4 R1 K3 ["requestSearchRequest"]
        9 GETTABLEKS                       R5 R1 K4 ["logSearchAnalytics"]
       11 GETTABLEKS                       R7 R1 K5 ["Network"]
       13 GETTABLEKS                       R6 R7 K6 ["networkInterface"]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K0 ["props"]
       18 GETTABLEKS                       R7 R8 K7 ["Settings"]
       20 LOADK                            R9 K8 ["Plugin"]
       21 NAMECALL                         R7 R7 K9 ["get"]
       23 CALL                             R7 2 1
       24 MOVE                             R8 R4
       25 MOVE                             R9 R6
       26 MOVE                             R10 R7
       27 MOVE                             R11 R0
       28 MOVE                             R12 R2
       29 CALL                             R8 4 0
       30 MOVE                             R8 R5
       31 MOVE                             R9 R0
       32 LOADNIL                          R10
       33 CALL                             R8 2 0
       34 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R2 K0 [""]
        1 LOADNIL                          R3
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETTABLEKS                       R4 R1 K1 ["thumbnail"]
        5 JUMPIFNOT                        R4 ; [+19]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["constructAssetThumbnailUrl"]
        9 GETTABLEKS                       R6 R1 K1 ["thumbnail"]
       11 GETTABLEKS                       R5 R6 K3 ["assetId"]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 1
       15 CALL                             R4 3 1
       16 MOVE                             R2 R4
       17 GETIMPORT                        R4 K6 [Color3.fromHex]
       19 GETTABLEKS                       R6 R1 K1 ["thumbnail"]
       21 GETTABLEKS                       R5 R6 K7 ["backgroundColor"]
       23 CALL                             R4 1 1
       24 MOVE                             R3 R4
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K8 ["createElement"]
       28 GETUPVAL                         R5 3
       29 DUPTABLE                         R6 K16 [{"BackgroundColor", "Image", "LayoutOrder", "Key", "OnClick", "Size", "Title"}]
       30 SETTABLEKS                       R3 R6 K9 ["BackgroundColor"]
       32 SETTABLEKS                       R2 R6 K10 ["Image"]
       34 GETTABLEKS                       R7 R1 K17 ["index"]
       36 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       38 GETTABLEKS                       R7 R1 K18 ["name"]
       40 SETTABLEKS                       R7 R6 K12 ["Key"]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R7 R8 K19 ["onClickSubcategory"]
       45 SETTABLEKS                       R7 R6 K13 ["OnClick"]
       47 GETIMPORT                        R7 K22 [UDim2.new]
       49 LOADN                            R8 0
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R9 R10 K23 ["X"]
       53 LOADN                            R10 0
       54 GETUPVAL                         R12 5
       55 GETTABLEKS                       R11 R12 K24 ["Y"]
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K14 ["Size"]
       60 GETTABLEKS                       R7 R1 K25 ["displayName"]
       62 SETTABLEKS                       R7 R6 K15 ["Title"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R1 K2 ["AssetSections"]
        8 GETTABLEKS                       R3 R1 K3 ["CanInsertAsset"]
       10 GETTABLEKS                       R4 R1 K4 ["CategoryName"]
       12 GETTABLEKS                       R5 R1 K5 ["contextualAssets"]
       14 GETTABLEKS                       R6 R1 K6 ["IncludeUnverifiedCreators"]
       16 GETTABLEKS                       R7 R1 K7 ["Localization"]
       18 GETTABLEKS                       R8 R1 K8 ["OnClickSeeAllAssets"]
       20 GETTABLEKS                       R9 R1 K9 ["OnAssetPreviewButtonClicked"]
       22 GETTABLEKS                       R10 R1 K10 ["SortName"]
       24 GETTABLEKS                       R11 R1 K11 ["TopKeywords"]
       26 GETTABLEKS                       R12 R1 K12 ["TryInsert"]
       28 GETTABLEKS                       R13 R1 K13 ["TryOpenAssetConfig"]
       30 GETTABLEKS                       R14 R0 K14 ["swimlaneWidth"]
       32 GETUPVAL                         R16 1
       33 GETTABLEKS                       R15 R16 K15 ["new"]
       35 CALL                             R15 0 1
       36 GETTABLEKS                       R16 R1 K16 ["SubcategoryDict"]
       38 LOADN                            R17 0
       39 JUMPIFNOT                        R16 ; [+8]
       40 GETIMPORT                        R18 K18 [pairs]
       42 MOVE                             R19 R16
       43 CALL                             R18 1 3
       44 FORGPREP_NEXT                    R18
       45 ADDK                             R17 R17 K19 [1]
       46 FORGLOOP                         R18 1 ; [-2]
       48 GETTABLEKS                       R18 R1 K20 ["Stylizer"]
       50 GETTABLEKS                       R19 R18 K21 ["searchList"]
       52 GETTABLEKS                       R20 R18 K22 ["searchPill"]
       54 GETTABLEKS                       R21 R18 K23 ["sectionHeader"]
       56 LOADK                            R24 K24 ["General"]
       57 LOADK                            R25 K25 ["Categories"]
       58 NAMECALL                         R22 R7 K26 ["getText"]
       60 CALL                             R22 3 1
       61 LOADK                            R25 K27 ["HomeView"]
       62 LOADK                            R26 K28 ["TheEssentials"]
       63 NAMECALL                         R23 R7 K26 ["getText"]
       65 CALL                             R23 3 1
       66 LOADK                            R26 K27 ["HomeView"]
       67 LOADK                            R27 K29 ["TopSearches"]
       68 NAMECALL                         R24 R7 K26 ["getText"]
       70 CALL                             R24 3 1
       71 DUPTABLE                         R25 K31 [{"UIListLayout"}]
       72 GETUPVAL                         R27 2
       73 GETTABLEKS                       R26 R27 K32 ["createElement"]
       75 LOADK                            R27 K30 ["UIListLayout"]
       76 DUPTABLE                         R28 K36 [{"FillDirection", "Padding", "SortOrder"}]
       77 GETIMPORT                        R29 K39 [Enum.FillDirection.Vertical]
       79 SETTABLEKS                       R29 R28 K33 ["FillDirection"]
       81 GETIMPORT                        R29 K41 [UDim.new]
       83 LOADN                            R30 0
       84 LOADN                            R31 10
       85 CALL                             R29 2 1
       86 SETTABLEKS                       R29 R28 K34 ["Padding"]
       88 GETIMPORT                        R29 K43 [Enum.SortOrder.LayoutOrder]
       90 SETTABLEKS                       R29 R28 K35 ["SortOrder"]
       92 CALL                             R26 2 1
       93 SETTABLEKS                       R26 R25 K30 ["UIListLayout"]
       95 LENGTH                           R26 R2
       96 GETUPVAL                         R29 0
       97 GETTABLEKS                       R28 R29 K44 ["sizerRef"]
       99 GETTABLEKS                       R27 R28 K45 ["current"]
      101 GETTABLEKS                       R28 R0 K46 ["absoluteSize"]
      103 GETTABLEKS                       R29 R0 K47 ["absolutePosition"]
      105 GETIMPORT                        R30 K18 [pairs]
      107 MOVE                             R31 R2
      108 CALL                             R30 1 3
      109 FORGPREP_NEXT                    R30
      110 JUMPIFEQ                         R33 R26 ; [+81]
      112 LOADK                            R36 K48 ["AssetSwimlane_"]
      113 MOVE                             R37 R33
      114 CONCAT                           R35 R36 R37
      115 GETUPVAL                         R37 2
      116 GETTABLEKS                       R36 R37 K32 ["createElement"]
      118 GETUPVAL                         R37 3
      119 DUPTABLE                         R38 K61 [{"CanInsertAsset", "CategoryName", "IncludeUnverifiedCreators", "InitialPageSize", "LayoutOrder", "LogAssetImpression", "OnClickSeeAllAssets", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsolutePosition", "ParentAbsoluteSize", "QualityFilterData", "SortName", "SearchTerm", "SectionName", "SwimlaneCategory", "SwimlaneWidth", "Title", "TryInsert", "TryOpenAssetConfig", "ZIndex"}]
      120 SETTABLEKS                       R3 R38 K3 ["CanInsertAsset"]
      122 SETTABLEKS                       R4 R38 K4 ["CategoryName"]
      124 SETTABLEKS                       R6 R38 K6 ["IncludeUnverifiedCreators"]
      126 LOADN                            R39 20
      127 SETTABLEKS                       R39 R38 K49 ["InitialPageSize"]
      129 SETTABLEKS                       R33 R38 K42 ["LayoutOrder"]
      131 GETTABLEKS                       R39 R1 K50 ["LogAssetImpression"]
      133 SETTABLEKS                       R39 R38 K50 ["LogAssetImpression"]
      135 SETTABLEKS                       R8 R38 K8 ["OnClickSeeAllAssets"]
      137 SETTABLEKS                       R9 R38 K9 ["OnAssetPreviewButtonClicked"]
      139 GETUPVAL                         R40 4
      140 CALL                             R40 0 1
      141 JUMPIFNOT                        R40 ; [+3]
      142 GETTABLEKS                       R39 R1 K51 ["OnSearchByCreator"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R39
      146 SETTABLEKS                       R39 R38 K51 ["OnSearchByCreator"]
      148 SETTABLEKS                       R29 R38 K52 ["ParentAbsolutePosition"]
      150 SETTABLEKS                       R28 R38 K53 ["ParentAbsoluteSize"]
      152 GETUPVAL                         R40 5
      153 CALL                             R40 0 1
      154 JUMPIFNOT                        R40 ; [+3]
      155 GETTABLEKS                       R39 R1 K62 ["qualityFilterData"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R39
      159 SETTABLEKS                       R39 R38 K54 ["QualityFilterData"]
      161 SETTABLEKS                       R10 R38 K10 ["SortName"]
      163 LOADNIL                          R39
      164 SETTABLEKS                       R39 R38 K55 ["SearchTerm"]
      166 GETTABLEKS                       R39 R34 K63 ["name"]
      168 SETTABLEKS                       R39 R38 K56 ["SectionName"]
      170 GETTABLEKS                       R39 R34 K63 ["name"]
      172 SETTABLEKS                       R39 R38 K57 ["SwimlaneCategory"]
      174 SETTABLEKS                       R14 R38 K58 ["SwimlaneWidth"]
      176 GETTABLEKS                       R39 R34 K64 ["displayName"]
      178 SETTABLEKS                       R39 R38 K59 ["Title"]
      180 SETTABLEKS                       R12 R38 K12 ["TryInsert"]
      182 SETTABLEKS                       R13 R38 K13 ["TryOpenAssetConfig"]
      184 SUB                              R40 R26 R33
      185 ADDK                             R39 R40 K19 [1]
      186 SETTABLEKS                       R39 R38 K60 ["ZIndex"]
      188 CALL                             R36 2 1
      189 SETTABLE                         R36 R25 R35
      190 FORGLOOP                         R30 2 ; [-81]
      192 MOVE                             R30 R11
      193 JUMPIFNOT                        R30 ; [+6]
      194 LENGTH                           R31 R11
      195 LOADN                            R32 0
      196 JUMPIFLT                         R32 R31 ; [+2]
      198 LOADB                            R30 0 +1
      199 LOADB                            R30 1
      200 GETTABLEKS                       R33 R20 K65 ["textSize"]
      202 GETTABLEKS                       R35 R20 K66 ["padding"]
      204 GETTABLEKS                       R34 R35 K67 ["left"]
      206 ADD                              R32 R33 R34
      207 GETTABLEKS                       R34 R20 K66 ["padding"]
      209 GETTABLEKS                       R33 R34 K68 ["right"]
      211 ADD                              R31 R32 R33
      212 LOADN                            R32 1
      213 GETTABLEKS                       R33 R0 K69 ["showTopSearchesFullHeight"]
      215 JUMPIFNOT                        R33 ; [+1]
      216 LOADN                            R32 2
      217 GETTABLEKS                       R37 R20 K65 ["textSize"]
      219 GETTABLEKS                       R39 R20 K66 ["padding"]
      221 GETTABLEKS                       R38 R39 K70 ["top"]
      223 ADD                              R36 R37 R38
      224 GETTABLEKS                       R38 R20 K66 ["padding"]
      226 GETTABLEKS                       R37 R38 K71 ["bottom"]
      228 ADD                              R35 R36 R37
      229 MUL                              R34 R35 R32
      230 GETTABLEKS                       R35 R19 K72 ["buttonSpacing"]
      232 ADD                              R33 R34 R35
      233 GETUPVAL                         R35 2
      234 GETTABLEKS                       R34 R35 K32 ["createElement"]
      236 GETUPVAL                         R35 6
      237 DUPTABLE                         R36 K79 [{"AutomaticSize", "Layout", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      238 GETIMPORT                        R37 K81 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R37 R36 K73 ["AutomaticSize"]
      242 GETIMPORT                        R37 K39 [Enum.FillDirection.Vertical]
      244 SETTABLEKS                       R37 R36 K74 ["Layout"]
      246 GETIMPORT                        R37 K83 [UDim2.new]
      248 LOADN                            R38 1
      249 LOADN                            R39 0
      250 LOADN                            R40 0
      251 LOADN                            R41 0
      252 CALL                             R37 4 1
      253 SETTABLEKS                       R37 R36 K75 ["Size"]
      255 LOADN                            R37 20
      256 SETTABLEKS                       R37 R36 K76 ["Spacing"]
      258 GETIMPORT                        R37 K85 [Enum.HorizontalAlignment.Left]
      260 SETTABLEKS                       R37 R36 K77 ["HorizontalAlignment"]
      262 GETIMPORT                        R37 K87 [Enum.VerticalAlignment.Top]
      264 SETTABLEKS                       R37 R36 K78 ["VerticalAlignment"]
      266 DUPTABLE                         R37 K90 [{"SubcategorySwimlane", "TopKeywords", "AssetSections", "GridHeader"}]
      267 LOADN                            R39 0
      268 JUMPIFNOTLT                      R39 R17 ; [+38]
      270 GETUPVAL                         R39 2
      271 GETTABLEKS                       R38 R39 K32 ["createElement"]
      273 GETUPVAL                         R39 7
      274 DUPTABLE                         R40 K95 [{"Data", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Title", "Total"}]
      275 SETTABLEKS                       R16 R40 K91 ["Data"]
      277 NAMECALL                         R41 R15 K96 ["getNextOrder"]
      279 CALL                             R41 1 1
      280 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      282 GETUPVAL                         R42 0
      283 GETTABLEKS                       R41 R42 K97 ["onClickSeeAllSubcategories"]
      285 SETTABLEKS                       R41 R40 K92 ["OnClickSeeAll"]
      287 GETUPVAL                         R42 0
      288 GETTABLEKS                       R41 R42 K98 ["renderSubcategory"]
      290 SETTABLEKS                       R41 R40 K93 ["OnRenderItem"]
      292 GETIMPORT                        R41 K83 [UDim2.new]
      294 LOADN                            R42 0
      295 MOVE                             R43 R14
      296 LOADN                            R44 0
      297 LOADN                            R45 0
      298 CALL                             R41 4 1
      299 SETTABLEKS                       R41 R40 K75 ["Size"]
      301 SETTABLEKS                       R22 R40 K59 ["Title"]
      303 SETTABLEKS                       R17 R40 K94 ["Total"]
      305 CALL                             R38 2 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R38
      308 SETTABLEKS                       R38 R37 K88 ["SubcategorySwimlane"]
      310 JUMPIFNOT                        R30 ; [+95]
      311 GETUPVAL                         R39 2
      312 GETTABLEKS                       R38 R39 K32 ["createElement"]
      314 GETUPVAL                         R39 6
      315 DUPTABLE                         R40 K99 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      316 GETIMPORT                        R41 K81 [Enum.AutomaticSize.Y]
      318 SETTABLEKS                       R41 R40 K73 ["AutomaticSize"]
      320 GETIMPORT                        R41 K39 [Enum.FillDirection.Vertical]
      322 SETTABLEKS                       R41 R40 K74 ["Layout"]
      324 NAMECALL                         R41 R15 K96 ["getNextOrder"]
      326 CALL                             R41 1 1
      327 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      329 GETIMPORT                        R41 K83 [UDim2.new]
      331 LOADN                            R42 0
      332 MOVE                             R43 R14
      333 LOADN                            R44 0
      334 MOVE                             R45 R33
      335 CALL                             R41 4 1
      336 SETTABLEKS                       R41 R40 K75 ["Size"]
      338 LOADN                            R41 10
      339 SETTABLEKS                       R41 R40 K76 ["Spacing"]
      341 GETIMPORT                        R41 K85 [Enum.HorizontalAlignment.Left]
      343 SETTABLEKS                       R41 R40 K77 ["HorizontalAlignment"]
      345 GETIMPORT                        R41 K87 [Enum.VerticalAlignment.Top]
      347 SETTABLEKS                       R41 R40 K78 ["VerticalAlignment"]
      349 DUPTABLE                         R41 K102 [{"SectionHeader", "SearchList"}]
      350 GETUPVAL                         R43 2
      351 GETTABLEKS                       R42 R43 K32 ["createElement"]
      353 GETUPVAL                         R43 8
      354 DUPTABLE                         R44 K104 [{"OnClickSeeAll", "LayoutOrder", "SeeAllText", "Title"}]
      355 DUPCLOSURE                       R45 K105 [PROTO_9]
      356 SETTABLEKS                       R45 R44 K92 ["OnClickSeeAll"]
      358 NAMECALL                         R45 R15 K96 ["getNextOrder"]
      360 CALL                             R45 1 1
      361 SETTABLEKS                       R45 R44 K42 ["LayoutOrder"]
      363 LOADK                            R45 K106 [""]
      364 SETTABLEKS                       R45 R44 K103 ["SeeAllText"]
      366 SETTABLEKS                       R24 R44 K59 ["Title"]
      368 CALL                             R42 2 1
      369 SETTABLEKS                       R42 R41 K100 ["SectionHeader"]
      371 GETUPVAL                         R43 2
      372 GETTABLEKS                       R42 R43 K32 ["createElement"]
      374 GETUPVAL                         R43 9
      375 DUPTABLE                         R44 K111 [{"Items", "ItemMinWidth", "LayoutOrder", "MaxRowCount", "OnClick"}]
      376 SETTABLEKS                       R11 R44 K107 ["Items"]
      378 GETTABLEKS                       R47 R20 K66 ["padding"]
      380 GETTABLEKS                       R46 R47 K67 ["left"]
      382 GETTABLEKS                       R48 R20 K66 ["padding"]
      384 GETTABLEKS                       R47 R48 K68 ["right"]
      386 ADD                              R45 R46 R47
      387 SETTABLEKS                       R45 R44 K108 ["ItemMinWidth"]
      389 NAMECALL                         R45 R15 K96 ["getNextOrder"]
      391 CALL                             R45 1 1
      392 SETTABLEKS                       R45 R44 K42 ["LayoutOrder"]
      394 SETTABLEKS                       R32 R44 K109 ["MaxRowCount"]
      396 GETUPVAL                         R46 0
      397 GETTABLEKS                       R45 R46 K112 ["onClickSearchPill"]
      399 SETTABLEKS                       R45 R44 K110 ["OnClick"]
      401 CALL                             R42 2 1
      402 SETTABLEKS                       R42 R41 K101 ["SearchList"]
      404 CALL                             R38 3 1
      405 JUMP                             ; [+1]
      406 LOADNIL                          R38
      407 SETTABLEKS                       R38 R37 K11 ["TopKeywords"]
      409 GETUPVAL                         R39 2
      410 GETTABLEKS                       R38 R39 K32 ["createElement"]
      412 LOADK                            R39 K113 ["Frame"]
      413 DUPTABLE                         R40 K115 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
      414 GETIMPORT                        R41 K81 [Enum.AutomaticSize.Y]
      416 SETTABLEKS                       R41 R40 K73 ["AutomaticSize"]
      418 LOADN                            R41 1
      419 SETTABLEKS                       R41 R40 K114 ["BackgroundTransparency"]
      421 NAMECALL                         R41 R15 K96 ["getNextOrder"]
      423 CALL                             R41 1 1
      424 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      426 GETIMPORT                        R41 K83 [UDim2.new]
      428 LOADN                            R42 1
      429 LOADN                            R43 0
      430 LOADN                            R44 0
      431 LOADN                            R45 0
      432 CALL                             R41 4 1
      433 SETTABLEKS                       R41 R40 K75 ["Size"]
      435 MOVE                             R41 R25
      436 CALL                             R38 3 1
      437 SETTABLEKS                       R38 R37 K2 ["AssetSections"]
      439 GETTABLE                         R38 R2 R26
      440 JUMPIFNOT                        R38 ; [+49]
      441 GETUPVAL                         R39 2
      442 GETTABLEKS                       R38 R39 K32 ["createElement"]
      444 LOADK                            R39 K116 ["TextLabel"]
      445 DUPTABLE                         R40 K122 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      446 GETIMPORT                        R41 K124 [Enum.AutomaticSize.XY]
      448 SETTABLEKS                       R41 R40 K73 ["AutomaticSize"]
      450 LOADN                            R41 1
      451 SETTABLEKS                       R41 R40 K114 ["BackgroundTransparency"]
      453 GETTABLEKS                       R41 R21 K125 ["font"]
      455 SETTABLEKS                       R41 R40 K117 ["Font"]
      457 NAMECALL                         R41 R15 K96 ["getNextOrder"]
      459 CALL                             R41 1 1
      460 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      462 GETIMPORT                        R41 K83 [UDim2.new]
      464 LOADN                            R42 1
      465 LOADN                            R43 0
      466 LOADN                            R44 0
      467 GETTABLEKS                       R45 R21 K65 ["textSize"]
      469 CALL                             R41 4 1
      470 SETTABLEKS                       R41 R40 K75 ["Size"]
      472 GETTABLE                         R42 R2 R26
      473 GETTABLEKS                       R41 R42 K64 ["displayName"]
      475 SETTABLEKS                       R41 R40 K118 ["Text"]
      477 GETTABLEKS                       R41 R21 K126 ["textColor"]
      479 SETTABLEKS                       R41 R40 K119 ["TextColor3"]
      481 GETTABLEKS                       R41 R21 K65 ["textSize"]
      483 SETTABLEKS                       R41 R40 K120 ["TextSize"]
      485 GETIMPORT                        R41 K127 [Enum.TextXAlignment.Left]
      487 SETTABLEKS                       R41 R40 K121 ["TextXAlignment"]
      489 CALL                             R38 2 1
      490 SETTABLEKS                       R38 R37 K89 ["GridHeader"]
      492 CALL                             R34 3 -1
      493 RETURN                           R34 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["sizerRef"]
        6 DUPTABLE                         R1 K4 [{"showTopSearchesFullHeight", "swimlaneWidth"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["showTopSearchesFullHeight"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["swimlaneWidth"]
       13 SETTABLEKS                       R1 R0 K5 ["state"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K6 ["onOverallAbsoluteSizeChange"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onAbsolutePositionChange"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onClickSubcategory"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K9 ["onClickSeeAllSubcategories"]
       32 NEWCLOSURE                       R1 P4
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K10 ["onClickSearchPill"]
       36 NEWCLOSURE                       R1 P5
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U5
       43 SETTABLEKS                       R1 R0 K11 ["renderSubcategory"]
       45 NEWCLOSURE                       R1 P6
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          UPVAL U12
       55 CAPTURE                          UPVAL U13
       56 SETTABLEKS                       R1 R0 K12 ["createTopContent"]
       58 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["loading"]
        2 JUMPIFNOT                        R1 ; [+51]
        3 GETTABLEKS                       R2 R0 K1 ["assetIds"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+47]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["createElement"]
       11 LOADK                            R2 K4 ["Frame"]
       12 DUPTABLE                         R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K10 ["backgroundColor"]
       16 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       21 GETUPVAL                         R4 3
       22 SETTABLEKS                       R4 R3 K7 ["Position"]
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K8 ["Size"]
       27 DUPTABLE                         R4 K12 [{"LoadingIndicator"}]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K3 ["createElement"]
       31 GETUPVAL                         R6 5
       32 DUPTABLE                         R7 K14 [{"AnchorPoint", "Position"}]
       33 GETIMPORT                        R8 K17 [Vector2.new]
       35 LOADK                            R9 K18 [0.5]
       36 LOADK                            R10 K18 [0.5]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K13 ["AnchorPoint"]
       40 GETIMPORT                        R8 K20 [UDim2.new]
       42 LOADK                            R9 K18 [0.5]
       43 LOADN                            R10 0
       44 LOADK                            R11 K18 [0.5]
       45 LOADN                            R12 0
       46 CALL                             R8 4 1
       47 SETTABLEKS                       R8 R7 K7 ["Position"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K11 ["LoadingIndicator"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1
       54 GETUPVAL                         R1 6
       55 DUPTABLE                         R2 K31 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "LogAssetImpression", "TryInsert", "TryOpenAssetConfig"}]
       56 GETTABLEKS                       R3 R0 K1 ["assetIds"]
       58 SETTABLEKS                       R3 R2 K21 ["AssetIds"]
       60 GETTABLEKS                       R3 R0 K32 ["assetMap"]
       62 SETTABLEKS                       R3 R2 K22 ["AssetMap"]
       64 GETUPVAL                         R3 2
       65 SETTABLEKS                       R3 R2 K6 ["LayoutOrder"]
       67 GETUPVAL                         R3 3
       68 SETTABLEKS                       R3 R2 K7 ["Position"]
       70 GETUPVAL                         R3 7
       71 SETTABLEKS                       R3 R2 K23 ["RenderTopContent"]
       73 GETTABLEKS                       R3 R0 K33 ["fetchNextPage"]
       75 SETTABLEKS                       R3 R2 K24 ["RequestNextPage"]
       77 GETUPVAL                         R3 4
       78 SETTABLEKS                       R3 R2 K8 ["Size"]
       80 GETUPVAL                         R3 8
       81 SETTABLEKS                       R3 R2 K25 ["CanInsertAsset"]
       83 GETUPVAL                         R3 9
       84 SETTABLEKS                       R3 R2 K26 ["OnAssetPreviewButtonClicked"]
       86 GETUPVAL                         R4 10
       87 CALL                             R4 0 1
       88 JUMPIFNOT                        R4 ; [+4]
       89 GETUPVAL                         R4 11
       90 GETTABLEKS                       R3 R4 K27 ["OnSearchByCreator"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R3
       94 SETTABLEKS                       R3 R2 K27 ["OnSearchByCreator"]
       96 GETUPVAL                         R4 11
       97 GETTABLEKS                       R3 R4 K28 ["LogAssetImpression"]
       99 SETTABLEKS                       R3 R2 K28 ["LogAssetImpression"]
      101 GETUPVAL                         R3 12
      102 SETTABLEKS                       R3 R2 K29 ["TryInsert"]
      104 GETUPVAL                         R3 13
      105 SETTABLEKS                       R3 R2 K30 ["TryOpenAssetConfig"]
      107 CALL                             R1 1 -1
      108 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        4 GETTABLEKS                       R3 R1 K2 ["IncludeUnverifiedCreators"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["SortName"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETTABLEKS                       R9 R1 K8 ["AssetSections"]
       18 GETTABLEKS                       R10 R1 K9 ["SubcategoryDict"]
       20 LENGTH                           R13 R9
       21 GETTABLE                         R12 R9 R13
       22 JUMPIFNOT                        R12 ; [+5]
       23 LENGTH                           R13 R9
       24 GETTABLE                         R12 R9 R13
       25 GETTABLEKS                       R11 R12 K10 ["name"]
       27 JUMPIF                           R11 ; [+1]
       28 LOADNIL                          R11
       29 GETIMPORT                        R13 K12 [next]
       31 MOVE                             R14 R10
       32 CALL                             R13 1 1
       33 JUMPIFNOTEQKNIL                  R13 ; [+2]
       35 LOADB                            R12 0 +1
       36 LOADB                            R12 1
       37 LOADB                            R13 0
       38 LENGTH                           R14 R9
       39 JUMPIFNOTEQKN                    R14 K13 [1] ; [+22]
       41 NOT                              R13 R12
       42 JUMPIFNOT                        R13 ; [+19]
       43 LENGTH                           R14 R9
       44 GETTABLE                         R13 R9 R14
       45 JUMPIFNOT                        R13 ; [+16]
       46 LENGTH                           R16 R9
       47 GETTABLE                         R15 R9 R16
       48 GETTABLEKS                       R14 R15 K14 ["subcategory"]
       50 NOT                              R13 R14
       51 JUMPIFNOT                        R13 ; [+10]
       52 GETTABLEKS                       R13 R1 K15 ["TopKeywords"]
       54 JUMPIFNOT                        R13 ; [+7]
       55 GETTABLEKS                       R15 R1 K15 ["TopKeywords"]
       57 LENGTH                           R14 R15
       58 JUMPIFEQKN                       R14 K16 [0] ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 GETTABLEKS                       R14 R1 K17 ["CanInsertAsset"]
       64 GETTABLEKS                       R15 R1 K18 ["OnAssetPreviewButtonClicked"]
       66 GETTABLEKS                       R16 R1 K19 ["TryInsert"]
       68 GETTABLEKS                       R17 R1 K20 ["TryOpenAssetConfig"]
       70 JUMPIFNOT                        R13 ; [+2]
       71 LOADNIL                          R18
       72 JUMP                             ; [+3]
       73 GETTABLEKS                       R18 R0 K21 ["createTopContent"]
       75 CALL                             R18 0 1
       76 NEWCLOSURE                       R19 P0
       77 CAPTURE                          VAL R18
       78 GETTABLEKS                       R20 R1 K22 ["hasTutorialLimits"]
       80 JUMPIFNOT                        R20 ; [+8]
       81 GETUPVAL                         R21 0
       82 GETTABLEKS                       R20 R21 K23 ["createElement"]
       84 GETUPVAL                         R21 1
       85 NEWTABLE                         R22 0 0
       87 CALL                             R20 2 -1
       88 RETURN                           R20 -1
       89 GETUPVAL                         R21 0
       90 GETTABLEKS                       R20 R21 K23 ["createElement"]
       92 LOADK                            R21 K24 ["Frame"]
       93 NEWTABLE                         R22 8 0
       95 LOADN                            R23 0
       96 SETTABLEKS                       R23 R22 K25 ["BackgroundTransparency"]
       98 GETIMPORT                        R23 K28 [UDim2.new]
      100 LOADN                            R24 1
      101 LOADN                            R25 0
      102 LOADN                            R26 1
      103 LOADN                            R27 0
      104 CALL                             R23 4 1
      105 SETTABLEKS                       R23 R22 K6 ["Size"]
      107 GETUPVAL                         R24 0
      108 GETTABLEKS                       R23 R24 K29 ["Ref"]
      110 GETTABLEKS                       R24 R0 K30 ["sizerRef"]
      112 SETTABLE                         R24 R22 R23
      113 GETUPVAL                         R25 0
      114 GETTABLEKS                       R24 R25 K31 ["Change"]
      116 GETTABLEKS                       R23 R24 K32 ["AbsoluteSize"]
      118 GETTABLEKS                       R24 R0 K33 ["onOverallAbsoluteSizeChange"]
      120 SETTABLE                         R24 R22 R23
      121 GETUPVAL                         R25 0
      122 GETTABLEKS                       R24 R25 K31 ["Change"]
      124 GETTABLEKS                       R23 R24 K34 ["AbsolutePosition"]
      126 GETTABLEKS                       R24 R0 K35 ["onAbsolutePositionChange"]
      128 SETTABLE                         R24 R22 R23
      129 NEWTABLE                         R23 0 1
      131 GETUPVAL                         R25 2
      132 GETTABLEKS                       R24 R25 K36 ["Generator"]
      134 DUPTABLE                         R25 K47 [{"networkInterface", "categoryName", "sortName", "searchTerm", "queryParams", "sectionName", "initialPageSize", "includeUnverifiedCreators", "qualityFilterData", "render"}]
      135 GETTABLEKS                       R27 R1 K48 ["Network"]
      137 GETTABLEKS                       R26 R27 K37 ["networkInterface"]
      139 SETTABLEKS                       R26 R25 K37 ["networkInterface"]
      141 SETTABLEKS                       R2 R25 K38 ["categoryName"]
      143 SETTABLEKS                       R6 R25 K39 ["sortName"]
      145 LOADNIL                          R26
      146 SETTABLEKS                       R26 R25 K40 ["searchTerm"]
      148 NEWTABLE                         R26 0 0
      150 SETTABLEKS                       R26 R25 K41 ["queryParams"]
      152 SETTABLEKS                       R11 R25 K42 ["sectionName"]
      154 GETUPVAL                         R26 3
      155 SETTABLEKS                       R26 R25 K43 ["initialPageSize"]
      157 SETTABLEKS                       R3 R25 K44 ["includeUnverifiedCreators"]
      159 GETUPVAL                         R27 4
      160 CALL                             R27 0 1
      161 JUMPIFNOT                        R27 ; [+3]
      162 GETTABLEKS                       R26 R1 K45 ["qualityFilterData"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R26
      166 SETTABLEKS                       R26 R25 K45 ["qualityFilterData"]
      168 NEWCLOSURE                       R26 P1
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R7
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U6
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R15
      179 CAPTURE                          UPVAL U7
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R17
      183 SETTABLEKS                       R26 R25 K46 ["render"]
      185 CALL                             R24 1 -1
      186 SETLIST                          R23 R24 -1 [1]
      188 CALL                             R20 3 -1
      189 RETURN                           R20 -1

PROTO_15:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K4 [{"IncludeUnverifiedCreators", "hasTutorialLimits", "qualityFilterData"}]
       11 GETTABLEKS                       R4 R2 K5 ["includeUnverifiedCreators"]
       13 SETTABLEKS                       R4 R3 K1 ["IncludeUnverifiedCreators"]
       15 GETTABLEKS                       R6 R0 K6 ["tutorialLimits"]
       17 GETTABLEKS                       R5 R6 K7 ["assetIds"]
       19 JUMPIFNOTEQKNIL                  R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K2 ["hasTutorialLimits"]
       25 GETUPVAL                         R5 0
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+3]
       28 GETTABLEKS                       R4 R2 K3 ["qualityFilterData"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K3 ["qualityFilterData"]
       34 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 LOADB                            R10 1
        7 CALL                             R5 5 -1
        8 CALL                             R4 -1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 LOADB                            R5 1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K3 [{"getAssetPreviewDataForStartup", "requestSearchRequest", "logSearchAnalytics"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getAssetPreviewDataForStartup"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["requestSearchRequest"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["logSearchAnalytics"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["ToolboxHomeViewInitialPageSize"]
       14 NAMECALL                         R1 R1 K6 ["GetFastInt"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R6 R0 K9 ["Src"]
       21 GETTABLEKS                       R5 R6 K10 ["Util"]
       23 GETTABLEKS                       R4 R5 K11 ["SharedFlags"]
       25 GETTABLEKS                       R3 R4 K12 ["getFFlagToolboxFixInventoryGridSearch"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R6 K13 ["Flags"]
       34 GETTABLEKS                       R4 R5 K14 ["getFFlagQualityFiltersInToolboxSearch"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R0 K15 ["Packages"]
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R6 R4 K16 ["Framework"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K8 [require]
       46 GETTABLEKS                       R7 R4 K17 ["Roact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R8 R4 K18 ["RoactRodux"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K8 [require]
       56 GETTABLEKS                       R9 R4 K19 ["Dash"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R5 K20 ["ContextServices"]
       61 GETTABLEKS                       R10 R9 K21 ["withContext"]
       63 GETIMPORT                        R11 K8 [require]
       65 GETTABLEKS                       R14 R0 K9 ["Src"]
       67 GETTABLEKS                       R13 R14 K20 ["ContextServices"]
       69 GETTABLEKS                       R12 R13 K22 ["Settings"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K8 [require]
       74 GETTABLEKS                       R15 R0 K9 ["Src"]
       76 GETTABLEKS                       R14 R15 K10 ["Util"]
       78 GETTABLEKS                       R13 R14 K23 ["Layouter"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K8 [require]
       83 GETTABLEKS                       R16 R0 K9 ["Src"]
       85 GETTABLEKS                       R15 R16 K20 ["ContextServices"]
       87 GETTABLEKS                       R14 R15 K24 ["NetworkContext"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R15 R5 K10 ["Util"]
       92 GETTABLEKS                       R14 R15 K25 ["LayoutOrderIterator"]
       94 GETTABLEKS                       R16 R5 K26 ["UI"]
       96 GETTABLEKS                       R15 R16 K27 ["LoadingIndicator"]
       98 GETTABLEKS                       R17 R5 K26 ["UI"]
      100 GETTABLEKS                       R16 R17 K28 ["Pane"]
      102 GETIMPORT                        R17 K8 [require]
      104 GETTABLEKS                       R21 R0 K9 ["Src"]
      106 GETTABLEKS                       R20 R21 K29 ["Components"]
      108 GETTABLEKS                       R19 R20 K30 ["Asset"]
      110 GETTABLEKS                       R18 R19 K30 ["Asset"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K8 [require]
      115 GETTABLEKS                       R21 R0 K9 ["Src"]
      117 GETTABLEKS                       R20 R21 K29 ["Components"]
      119 GETTABLEKS                       R19 R20 K31 ["AssetGrid"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K8 [require]
      124 GETTABLEKS                       R22 R0 K9 ["Src"]
      126 GETTABLEKS                       R21 R22 K29 ["Components"]
      128 GETTABLEKS                       R20 R21 K32 ["AssetLogicWrapper"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K8 [require]
      133 GETTABLEKS                       R24 R0 K9 ["Src"]
      135 GETTABLEKS                       R23 R24 K29 ["Components"]
      137 GETTABLEKS                       R22 R23 K33 ["Categorization"]
      139 GETTABLEKS                       R21 R22 K34 ["IconTile"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K8 [require]
      144 GETTABLEKS                       R24 R0 K9 ["Src"]
      146 GETTABLEKS                       R23 R24 K29 ["Components"]
      148 GETTABLEKS                       R22 R23 K35 ["ResultsFetcher"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K8 [require]
      153 GETTABLEKS                       R25 R0 K9 ["Src"]
      155 GETTABLEKS                       R24 R25 K36 ["Types"]
      157 GETTABLEKS                       R23 R24 K37 ["Category"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K8 [require]
      162 GETTABLEKS                       R27 R0 K9 ["Src"]
      164 GETTABLEKS                       R26 R27 K29 ["Components"]
      166 GETTABLEKS                       R25 R26 K33 ["Categorization"]
      168 GETTABLEKS                       R24 R25 K38 ["AssetSwimlane"]
      170 CALL                             R23 1 1
      171 GETIMPORT                        R24 K8 [require]
      173 GETTABLEKS                       R28 R0 K9 ["Src"]
      175 GETTABLEKS                       R27 R28 K29 ["Components"]
      177 GETTABLEKS                       R26 R27 K33 ["Categorization"]
      179 GETTABLEKS                       R25 R26 K39 ["ExpandableTeaser"]
      181 CALL                             R24 1 1
      182 GETIMPORT                        R25 K8 [require]
      184 GETTABLEKS                       R29 R0 K9 ["Src"]
      186 GETTABLEKS                       R28 R29 K29 ["Components"]
      188 GETTABLEKS                       R27 R28 K33 ["Categorization"]
      190 GETTABLEKS                       R26 R27 K40 ["SearchList"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K8 [require]
      195 GETTABLEKS                       R30 R0 K9 ["Src"]
      197 GETTABLEKS                       R29 R30 K29 ["Components"]
      199 GETTABLEKS                       R28 R29 K33 ["Categorization"]
      201 GETTABLEKS                       R27 R28 K41 ["SectionHeader"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K8 [require]
      206 GETTABLEKS                       R31 R0 K9 ["Src"]
      208 GETTABLEKS                       R30 R31 K29 ["Components"]
      210 GETTABLEKS                       R29 R30 K33 ["Categorization"]
      212 GETTABLEKS                       R28 R29 K42 ["Swimlane"]
      214 CALL                             R27 1 1
      215 GETTABLEKS                       R29 R0 K9 ["Src"]
      217 GETTABLEKS                       R28 R29 K10 ["Util"]
      219 GETIMPORT                        R29 K8 [require]
      221 GETTABLEKS                       R30 R28 K43 ["Constants"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K8 [require]
      226 GETTABLEKS                       R31 R28 K44 ["getStartupAssetId"]
      228 CALL                             R30 1 1
      229 GETIMPORT                        R31 K8 [require]
      231 GETTABLEKS                       R32 R28 K45 ["Urls"]
      233 CALL                             R31 1 1
      234 GETIMPORT                        R32 K8 [require]
      236 GETTABLEKS                       R35 R0 K9 ["Src"]
      238 GETTABLEKS                       R34 R35 K46 ["Thunks"]
      240 GETTABLEKS                       R33 R34 K47 ["GetAssetPreviewDataForStartup"]
      242 CALL                             R32 1 1
      243 GETIMPORT                        R33 K8 [require]
      245 GETTABLEKS                       R37 R0 K9 ["Src"]
      247 GETTABLEKS                       R36 R37 K48 ["Networking"]
      249 GETTABLEKS                       R35 R36 K49 ["Requests"]
      251 GETTABLEKS                       R34 R35 K50 ["RequestSearchRequest"]
      253 CALL                             R33 1 1
      254 GETIMPORT                        R34 K8 [require]
      256 GETTABLEKS                       R37 R0 K9 ["Src"]
      258 GETTABLEKS                       R36 R37 K46 ["Thunks"]
      260 GETTABLEKS                       R35 R36 K51 ["LogMarketplaceSearchAnalytics"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K8 [require]
      265 GETTABLEKS                       R38 R0 K9 ["Src"]
      267 GETTABLEKS                       R37 R38 K52 ["Models"]
      269 GETTABLEKS                       R36 R37 K53 ["AssetInfo"]
      271 CALL                             R35 1 1
      272 GETIMPORT                        R36 K8 [require]
      274 GETTABLEKS                       R39 R0 K9 ["Src"]
      276 GETTABLEKS                       R38 R39 K36 ["Types"]
      278 GETTABLEKS                       R37 R38 K54 ["HomeTypes"]
      280 CALL                             R36 1 1
      281 GETIMPORT                        R37 K57 [Vector2.new]
      283 LOADN                            R38 75
      284 LOADN                            R39 90
      285 CALL                             R37 2 1
      286 GETTABLEKS                       R38 R29 K58 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      288 GETTABLEKS                       R39 R6 K59 ["PureComponent"]
      290 LOADK                            R41 K60 ["HomeView"]
      291 NAMECALL                         R39 R39 K61 ["extend"]
      293 CALL                             R39 2 1
      294 DUPTABLE                         R40 K63 [{"Size"}]
      295 GETIMPORT                        R41 K65 [UDim2.new]
      297 LOADN                            R42 1
      298 LOADN                            R43 0
      299 LOADN                            R44 0
      300 LOADN                            R45 0
      301 CALL                             R41 4 1
      302 SETTABLEKS                       R41 R40 K62 ["Size"]
      304 SETTABLEKS                       R40 R39 K66 ["defaultProps"]
      306 DUPCLOSURE                       R40 K67 [PROTO_0]
      307 CAPTURE                          VAL R30
      308 SETTABLEKS                       R40 R39 K68 ["didMount"]
      310 DUPCLOSURE                       R40 K69 [PROTO_11]
      311 CAPTURE                          VAL R6
      312 CAPTURE                          VAL R12
      313 CAPTURE                          VAL R31
      314 CAPTURE                          VAL R38
      315 CAPTURE                          VAL R20
      316 CAPTURE                          VAL R37
      317 CAPTURE                          VAL R14
      318 CAPTURE                          VAL R23
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R3
      321 CAPTURE                          VAL R16
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R26
      324 CAPTURE                          VAL R25
      325 SETTABLEKS                       R40 R39 K70 ["init"]
      327 DUPCLOSURE                       R40 K71 [PROTO_14]
      328 CAPTURE                          VAL R6
      329 CAPTURE                          VAL R16
      330 CAPTURE                          VAL R21
      331 CAPTURE                          VAL R1
      332 CAPTURE                          VAL R3
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R18
      335 CAPTURE                          VAL R2
      336 SETTABLEKS                       R40 R39 K72 ["render"]
      338 DUPCLOSURE                       R40 K73 [PROTO_15]
      339 CAPTURE                          VAL R3
      340 SETGLOBAL                        R40 K74 ["mapStateToProps"]
      342 DUPCLOSURE                       R40 K75 [PROTO_19]
      343 CAPTURE                          VAL R32
      344 CAPTURE                          VAL R33
      345 CAPTURE                          VAL R34
      346 MOVE                             R41 R10
      347 DUPTABLE                         R42 K79 [{"Localization", "Settings", "Stylizer", "Network"}]
      348 GETTABLEKS                       R43 R9 K76 ["Localization"]
      350 SETTABLEKS                       R43 R42 K76 ["Localization"]
      352 SETTABLEKS                       R11 R42 K22 ["Settings"]
      354 GETTABLEKS                       R43 R9 K77 ["Stylizer"]
      356 SETTABLEKS                       R43 R42 K77 ["Stylizer"]
      358 SETTABLEKS                       R13 R42 K78 ["Network"]
      360 CALL                             R41 1 1
      361 MOVE                             R42 R39
      362 CALL                             R41 1 1
      363 MOVE                             R39 R41
      364 GETTABLEKS                       R41 R7 K80 ["connect"]
      366 GETGLOBAL                        R42 K74 ["mapStateToProps"]
      368 MOVE                             R43 R40
      369 CALL                             R41 2 1
      370 MOVE                             R42 R39
      371 CALL                             R41 1 -1
      372 RETURN                           R41 -1
