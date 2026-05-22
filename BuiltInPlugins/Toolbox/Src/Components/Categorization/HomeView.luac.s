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
       19 GETTABLEKS                       R9 R1 K7 ["Network"]
       21 GETTABLEKS                       R9 R9 K8 ["networkInterface"]
       23 MOVE                             R10 R4
       24 CALL                             R5 5 0
       25 GETTABLEKS                       R4 R0 K9 ["onOverallAbsoluteSizeChange"]
       27 CALL                             R4 0 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sizerRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["getSwimlaneWidth"]
       10 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       12 GETTABLEKS                       R3 R3 K4 ["X"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R4 R4 K5 ["Y"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["AbsolutePosition"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        5 GETTABLEKS                       R3 R1 K2 ["SortName"]
        7 GETTABLEKS                       R4 R1 K3 ["requestSearchRequest"]
        9 GETTABLEKS                       R5 R1 K4 ["logSearchAnalytics"]
       11 GETTABLEKS                       R6 R1 K5 ["Network"]
       13 GETTABLEKS                       R6 R6 K6 ["networkInterface"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["props"]
       18 GETTABLEKS                       R7 R7 K7 ["Settings"]
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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["constructAssetThumbnailUrl"]
        9 GETTABLEKS                       R5 R1 K1 ["thumbnail"]
       11 GETTABLEKS                       R5 R5 K3 ["assetId"]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 1
       15 CALL                             R4 3 1
       16 MOVE                             R2 R4
       17 GETIMPORT                        R4 K6 [Color3.fromHex]
       19 GETTABLEKS                       R5 R1 K1 ["thumbnail"]
       21 GETTABLEKS                       R5 R5 K7 ["backgroundColor"]
       23 CALL                             R4 1 1
       24 MOVE                             R3 R4
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K8 ["createElement"]
       28 GETUPVAL                         R5 3
       29 DUPTABLE                         R6 K16 [{"BackgroundColor", "Image", "LayoutOrder", "Key", "OnClick", "Size", "Title"}]
       30 SETTABLEKS                       R3 R6 K9 ["BackgroundColor"]
       32 SETTABLEKS                       R2 R6 K10 ["Image"]
       34 GETTABLEKS                       R7 R1 K17 ["index"]
       36 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       38 GETTABLEKS                       R7 R1 K18 ["name"]
       40 SETTABLEKS                       R7 R6 K12 ["Key"]
       42 GETUPVAL                         R7 4
       43 GETTABLEKS                       R7 R7 K19 ["onClickSubcategory"]
       45 SETTABLEKS                       R7 R6 K13 ["OnClick"]
       47 GETIMPORT                        R7 K22 [UDim2.new]
       49 LOADN                            R8 0
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K23 ["X"]
       53 LOADN                            R10 0
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R11 R11 K24 ["Y"]
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K14 ["Size"]
       60 GETTABLEKS                       R7 R1 K25 ["displayName"]
       62 SETTABLEKS                       R7 R6 K15 ["Title"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
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
       32 GETUPVAL                         R15 1
       33 GETTABLEKS                       R15 R15 K15 ["new"]
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
       72 GETUPVAL                         R26 2
       73 GETTABLEKS                       R26 R26 K32 ["createElement"]
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
       96 GETUPVAL                         R27 0
       97 GETTABLEKS                       R27 R27 K44 ["sizerRef"]
       99 GETTABLEKS                       R27 R27 K45 ["current"]
      101 GETTABLEKS                       R28 R0 K46 ["absoluteSize"]
      103 GETTABLEKS                       R29 R0 K47 ["absolutePosition"]
      105 GETIMPORT                        R30 K18 [pairs]
      107 MOVE                             R31 R2
      108 CALL                             R30 1 3
      109 FORGPREP_NEXT                    R30
      110 JUMPIFEQ                         R33 R26 ; [+72]
      112 LOADK                            R36 K48 ["AssetSwimlane_"]
      113 MOVE                             R37 R33
      114 CONCAT                           R35 R36 R37
      115 GETUPVAL                         R36 2
      116 GETTABLEKS                       R36 R36 K32 ["createElement"]
      118 GETUPVAL                         R37 3
      119 DUPTABLE                         R38 K60 [{"CanInsertAsset", "CategoryName", "IncludeUnverifiedCreators", "InitialPageSize", "LayoutOrder", "LogAssetImpression", "OnClickSeeAllAssets", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsolutePosition", "ParentAbsoluteSize", "SortName", "SearchTerm", "SectionName", "SwimlaneCategory", "SwimlaneWidth", "Title", "TryInsert", "TryOpenAssetConfig", "ZIndex"}]
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
      152 SETTABLEKS                       R10 R38 K10 ["SortName"]
      154 LOADNIL                          R39
      155 SETTABLEKS                       R39 R38 K54 ["SearchTerm"]
      157 GETTABLEKS                       R39 R34 K61 ["name"]
      159 SETTABLEKS                       R39 R38 K55 ["SectionName"]
      161 GETTABLEKS                       R39 R34 K61 ["name"]
      163 SETTABLEKS                       R39 R38 K56 ["SwimlaneCategory"]
      165 SETTABLEKS                       R14 R38 K57 ["SwimlaneWidth"]
      167 GETTABLEKS                       R39 R34 K62 ["displayName"]
      169 SETTABLEKS                       R39 R38 K58 ["Title"]
      171 SETTABLEKS                       R12 R38 K12 ["TryInsert"]
      173 SETTABLEKS                       R13 R38 K13 ["TryOpenAssetConfig"]
      175 SUB                              R40 R26 R33
      176 ADDK                             R39 R40 K19 [1]
      177 SETTABLEKS                       R39 R38 K59 ["ZIndex"]
      179 CALL                             R36 2 1
      180 SETTABLE                         R36 R25 R35
      181 FORGLOOP                         R30 2 ; [-72]
      183 MOVE                             R30 R11
      184 JUMPIFNOT                        R30 ; [+6]
      185 LENGTH                           R31 R11
      186 LOADN                            R32 0
      187 JUMPIFLT                         R32 R31 ; [+2]
      189 LOADB                            R30 0 +1
      190 LOADB                            R30 1
      191 GETTABLEKS                       R33 R20 K63 ["textSize"]
      193 GETTABLEKS                       R34 R20 K64 ["padding"]
      195 GETTABLEKS                       R34 R34 K65 ["left"]
      197 ADD                              R32 R33 R34
      198 GETTABLEKS                       R33 R20 K64 ["padding"]
      200 GETTABLEKS                       R33 R33 K66 ["right"]
      202 ADD                              R31 R32 R33
      203 LOADN                            R32 1
      204 GETTABLEKS                       R33 R0 K67 ["showTopSearchesFullHeight"]
      206 JUMPIFNOT                        R33 ; [+1]
      207 LOADN                            R32 2
      208 GETTABLEKS                       R37 R20 K63 ["textSize"]
      210 GETTABLEKS                       R38 R20 K64 ["padding"]
      212 GETTABLEKS                       R38 R38 K68 ["top"]
      214 ADD                              R36 R37 R38
      215 GETTABLEKS                       R37 R20 K64 ["padding"]
      217 GETTABLEKS                       R37 R37 K69 ["bottom"]
      219 ADD                              R35 R36 R37
      220 MUL                              R34 R35 R32
      221 GETTABLEKS                       R35 R19 K70 ["buttonSpacing"]
      223 ADD                              R33 R34 R35
      224 GETUPVAL                         R34 2
      225 GETTABLEKS                       R34 R34 K32 ["createElement"]
      227 GETUPVAL                         R35 5
      228 DUPTABLE                         R36 K77 [{"AutomaticSize", "Layout", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      229 GETIMPORT                        R37 K79 [Enum.AutomaticSize.Y]
      231 SETTABLEKS                       R37 R36 K71 ["AutomaticSize"]
      233 GETIMPORT                        R37 K39 [Enum.FillDirection.Vertical]
      235 SETTABLEKS                       R37 R36 K72 ["Layout"]
      237 GETIMPORT                        R37 K81 [UDim2.new]
      239 LOADN                            R38 1
      240 LOADN                            R39 0
      241 LOADN                            R40 0
      242 LOADN                            R41 0
      243 CALL                             R37 4 1
      244 SETTABLEKS                       R37 R36 K73 ["Size"]
      246 LOADN                            R37 20
      247 SETTABLEKS                       R37 R36 K74 ["Spacing"]
      249 GETIMPORT                        R37 K83 [Enum.HorizontalAlignment.Left]
      251 SETTABLEKS                       R37 R36 K75 ["HorizontalAlignment"]
      253 GETIMPORT                        R37 K85 [Enum.VerticalAlignment.Top]
      255 SETTABLEKS                       R37 R36 K76 ["VerticalAlignment"]
      257 DUPTABLE                         R37 K88 [{"SubcategorySwimlane", "TopKeywords", "AssetSections", "GridHeader"}]
      258 LOADN                            R39 0
      259 JUMPIFNOTLT                      R39 R17 ; [+38]
      261 GETUPVAL                         R38 2
      262 GETTABLEKS                       R38 R38 K32 ["createElement"]
      264 GETUPVAL                         R39 6
      265 DUPTABLE                         R40 K93 [{"Data", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Title", "Total"}]
      266 SETTABLEKS                       R16 R40 K89 ["Data"]
      268 NAMECALL                         R41 R15 K94 ["getNextOrder"]
      270 CALL                             R41 1 1
      271 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      273 GETUPVAL                         R41 0
      274 GETTABLEKS                       R41 R41 K95 ["onClickSeeAllSubcategories"]
      276 SETTABLEKS                       R41 R40 K90 ["OnClickSeeAll"]
      278 GETUPVAL                         R41 0
      279 GETTABLEKS                       R41 R41 K96 ["renderSubcategory"]
      281 SETTABLEKS                       R41 R40 K91 ["OnRenderItem"]
      283 GETIMPORT                        R41 K81 [UDim2.new]
      285 LOADN                            R42 0
      286 MOVE                             R43 R14
      287 LOADN                            R44 0
      288 LOADN                            R45 0
      289 CALL                             R41 4 1
      290 SETTABLEKS                       R41 R40 K73 ["Size"]
      292 SETTABLEKS                       R22 R40 K58 ["Title"]
      294 SETTABLEKS                       R17 R40 K92 ["Total"]
      296 CALL                             R38 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R38
      299 SETTABLEKS                       R38 R37 K86 ["SubcategorySwimlane"]
      301 JUMPIFNOT                        R30 ; [+95]
      302 GETUPVAL                         R38 2
      303 GETTABLEKS                       R38 R38 K32 ["createElement"]
      305 GETUPVAL                         R39 5
      306 DUPTABLE                         R40 K97 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      307 GETIMPORT                        R41 K79 [Enum.AutomaticSize.Y]
      309 SETTABLEKS                       R41 R40 K71 ["AutomaticSize"]
      311 GETIMPORT                        R41 K39 [Enum.FillDirection.Vertical]
      313 SETTABLEKS                       R41 R40 K72 ["Layout"]
      315 NAMECALL                         R41 R15 K94 ["getNextOrder"]
      317 CALL                             R41 1 1
      318 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      320 GETIMPORT                        R41 K81 [UDim2.new]
      322 LOADN                            R42 0
      323 MOVE                             R43 R14
      324 LOADN                            R44 0
      325 MOVE                             R45 R33
      326 CALL                             R41 4 1
      327 SETTABLEKS                       R41 R40 K73 ["Size"]
      329 LOADN                            R41 10
      330 SETTABLEKS                       R41 R40 K74 ["Spacing"]
      332 GETIMPORT                        R41 K83 [Enum.HorizontalAlignment.Left]
      334 SETTABLEKS                       R41 R40 K75 ["HorizontalAlignment"]
      336 GETIMPORT                        R41 K85 [Enum.VerticalAlignment.Top]
      338 SETTABLEKS                       R41 R40 K76 ["VerticalAlignment"]
      340 DUPTABLE                         R41 K100 [{"SectionHeader", "SearchList"}]
      341 GETUPVAL                         R42 2
      342 GETTABLEKS                       R42 R42 K32 ["createElement"]
      344 GETUPVAL                         R43 7
      345 DUPTABLE                         R44 K102 [{"OnClickSeeAll", "LayoutOrder", "SeeAllText", "Title"}]
      346 DUPCLOSURE                       R45 K103 [PROTO_9]
      347 SETTABLEKS                       R45 R44 K90 ["OnClickSeeAll"]
      349 NAMECALL                         R45 R15 K94 ["getNextOrder"]
      351 CALL                             R45 1 1
      352 SETTABLEKS                       R45 R44 K42 ["LayoutOrder"]
      354 LOADK                            R45 K104 [""]
      355 SETTABLEKS                       R45 R44 K101 ["SeeAllText"]
      357 SETTABLEKS                       R24 R44 K58 ["Title"]
      359 CALL                             R42 2 1
      360 SETTABLEKS                       R42 R41 K98 ["SectionHeader"]
      362 GETUPVAL                         R42 2
      363 GETTABLEKS                       R42 R42 K32 ["createElement"]
      365 GETUPVAL                         R43 8
      366 DUPTABLE                         R44 K109 [{"Items", "ItemMinWidth", "LayoutOrder", "MaxRowCount", "OnClick"}]
      367 SETTABLEKS                       R11 R44 K105 ["Items"]
      369 GETTABLEKS                       R46 R20 K64 ["padding"]
      371 GETTABLEKS                       R46 R46 K65 ["left"]
      373 GETTABLEKS                       R47 R20 K64 ["padding"]
      375 GETTABLEKS                       R47 R47 K66 ["right"]
      377 ADD                              R45 R46 R47
      378 SETTABLEKS                       R45 R44 K106 ["ItemMinWidth"]
      380 NAMECALL                         R45 R15 K94 ["getNextOrder"]
      382 CALL                             R45 1 1
      383 SETTABLEKS                       R45 R44 K42 ["LayoutOrder"]
      385 SETTABLEKS                       R32 R44 K107 ["MaxRowCount"]
      387 GETUPVAL                         R45 0
      388 GETTABLEKS                       R45 R45 K110 ["onClickSearchPill"]
      390 SETTABLEKS                       R45 R44 K108 ["OnClick"]
      392 CALL                             R42 2 1
      393 SETTABLEKS                       R42 R41 K99 ["SearchList"]
      395 CALL                             R38 3 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R38
      398 SETTABLEKS                       R38 R37 K11 ["TopKeywords"]
      400 GETUPVAL                         R38 2
      401 GETTABLEKS                       R38 R38 K32 ["createElement"]
      403 LOADK                            R39 K111 ["Frame"]
      404 DUPTABLE                         R40 K113 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
      405 GETIMPORT                        R41 K79 [Enum.AutomaticSize.Y]
      407 SETTABLEKS                       R41 R40 K71 ["AutomaticSize"]
      409 LOADN                            R41 1
      410 SETTABLEKS                       R41 R40 K112 ["BackgroundTransparency"]
      412 NAMECALL                         R41 R15 K94 ["getNextOrder"]
      414 CALL                             R41 1 1
      415 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      417 GETIMPORT                        R41 K81 [UDim2.new]
      419 LOADN                            R42 1
      420 LOADN                            R43 0
      421 LOADN                            R44 0
      422 LOADN                            R45 0
      423 CALL                             R41 4 1
      424 SETTABLEKS                       R41 R40 K73 ["Size"]
      426 MOVE                             R41 R25
      427 CALL                             R38 3 1
      428 SETTABLEKS                       R38 R37 K2 ["AssetSections"]
      430 GETTABLE                         R38 R2 R26
      431 JUMPIFNOT                        R38 ; [+49]
      432 GETUPVAL                         R38 2
      433 GETTABLEKS                       R38 R38 K32 ["createElement"]
      435 LOADK                            R39 K114 ["TextLabel"]
      436 DUPTABLE                         R40 K120 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      437 GETIMPORT                        R41 K122 [Enum.AutomaticSize.XY]
      439 SETTABLEKS                       R41 R40 K71 ["AutomaticSize"]
      441 LOADN                            R41 1
      442 SETTABLEKS                       R41 R40 K112 ["BackgroundTransparency"]
      444 GETTABLEKS                       R41 R21 K123 ["font"]
      446 SETTABLEKS                       R41 R40 K115 ["Font"]
      448 NAMECALL                         R41 R15 K94 ["getNextOrder"]
      450 CALL                             R41 1 1
      451 SETTABLEKS                       R41 R40 K42 ["LayoutOrder"]
      453 GETIMPORT                        R41 K81 [UDim2.new]
      455 LOADN                            R42 1
      456 LOADN                            R43 0
      457 LOADN                            R44 0
      458 GETTABLEKS                       R45 R21 K63 ["textSize"]
      460 CALL                             R41 4 1
      461 SETTABLEKS                       R41 R40 K73 ["Size"]
      463 GETTABLE                         R41 R2 R26
      464 GETTABLEKS                       R41 R41 K62 ["displayName"]
      466 SETTABLEKS                       R41 R40 K116 ["Text"]
      468 GETTABLEKS                       R41 R21 K124 ["textColor"]
      470 SETTABLEKS                       R41 R40 K117 ["TextColor3"]
      472 GETTABLEKS                       R41 R21 K63 ["textSize"]
      474 SETTABLEKS                       R41 R40 K118 ["TextSize"]
      476 GETIMPORT                        R41 K125 [Enum.TextXAlignment.Left]
      478 SETTABLEKS                       R41 R40 K119 ["TextXAlignment"]
      480 CALL                             R38 2 1
      481 SETTABLEKS                       R38 R37 K87 ["GridHeader"]
      483 CALL                             R34 3 -1
      484 RETURN                           R34 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
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
       55 SETTABLEKS                       R1 R0 K12 ["createTopContent"]
       57 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["loading"]
        2 JUMPIFNOT                        R1 ; [+51]
        3 GETTABLEKS                       R2 R0 K1 ["assetIds"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+47]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["createElement"]
       11 LOADK                            R2 K4 ["Frame"]
       12 DUPTABLE                         R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K10 ["backgroundColor"]
       16 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       21 GETUPVAL                         R4 3
       22 SETTABLEKS                       R4 R3 K7 ["Position"]
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K8 ["Size"]
       27 DUPTABLE                         R4 K12 [{"LoadingIndicator"}]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K3 ["createElement"]
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
       89 GETUPVAL                         R3 11
       90 GETTABLEKS                       R3 R3 K27 ["OnSearchByCreator"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R3
       94 SETTABLEKS                       R3 R2 K27 ["OnSearchByCreator"]
       96 GETUPVAL                         R3 11
       97 GETTABLEKS                       R3 R3 K28 ["LogAssetImpression"]
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
       23 LENGTH                           R12 R9
       24 GETTABLE                         R11 R9 R12
       25 GETTABLEKS                       R11 R11 K10 ["name"]
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
       46 LENGTH                           R15 R9
       47 GETTABLE                         R14 R9 R15
       48 GETTABLEKS                       R14 R14 K14 ["subcategory"]
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
       81 GETUPVAL                         R20 0
       82 GETTABLEKS                       R20 R20 K23 ["createElement"]
       84 GETUPVAL                         R21 1
       85 NEWTABLE                         R22 0 0
       87 CALL                             R20 2 -1
       88 RETURN                           R20 -1
       89 GETUPVAL                         R20 0
       90 GETTABLEKS                       R20 R20 K23 ["createElement"]
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
      107 GETUPVAL                         R23 0
      108 GETTABLEKS                       R23 R23 K29 ["Ref"]
      110 GETTABLEKS                       R24 R0 K30 ["sizerRef"]
      112 SETTABLE                         R24 R22 R23
      113 GETUPVAL                         R23 0
      114 GETTABLEKS                       R23 R23 K31 ["Change"]
      116 GETTABLEKS                       R23 R23 K32 ["AbsoluteSize"]
      118 GETTABLEKS                       R24 R0 K33 ["onOverallAbsoluteSizeChange"]
      120 SETTABLE                         R24 R22 R23
      121 GETUPVAL                         R23 0
      122 GETTABLEKS                       R23 R23 K31 ["Change"]
      124 GETTABLEKS                       R23 R23 K34 ["AbsolutePosition"]
      126 GETTABLEKS                       R24 R0 K35 ["onAbsolutePositionChange"]
      128 SETTABLE                         R24 R22 R23
      129 NEWTABLE                         R23 0 1
      131 GETUPVAL                         R24 2
      132 GETTABLEKS                       R24 R24 K36 ["Generator"]
      134 DUPTABLE                         R25 K46 [{"networkInterface", "categoryName", "sortName", "searchTerm", "queryParams", "sectionName", "initialPageSize", "includeUnverifiedCreators", "render"}]
      135 GETTABLEKS                       R26 R1 K47 ["Network"]
      137 GETTABLEKS                       R26 R26 K37 ["networkInterface"]
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
      159 NEWCLOSURE                       R26 P1
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R7
      165 CAPTURE                          UPVAL U4
      166 CAPTURE                          UPVAL U5
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 CAPTURE                          UPVAL U6
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R17
      174 SETTABLEKS                       R26 R25 K45 ["render"]
      176 CALL                             R24 1 -1
      177 SETLIST                          R23 R24 -1 [1]
      179 CALL                             R20 3 -1
      180 RETURN                           R20 -1

PROTO_15:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K3 [{"IncludeUnverifiedCreators", "hasTutorialLimits"}]
       11 GETTABLEKS                       R4 R2 K4 ["includeUnverifiedCreators"]
       13 SETTABLEKS                       R4 R3 K1 ["IncludeUnverifiedCreators"]
       15 GETTABLEKS                       R5 R0 K5 ["tutorialLimits"]
       17 GETTABLEKS                       R5 R5 K6 ["assetIds"]
       19 JUMPIFNOTEQKNIL                  R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K2 ["hasTutorialLimits"]
       25 RETURN                           R3 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["ToolboxHomeViewInitialPageSize"]
       14 NAMECALL                         R1 R1 K6 ["GetFastInt"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["SharedFlags"]
       25 GETTABLEKS                       R3 R3 K12 ["getFFlagToolboxFixInventoryGridSearch"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R0 K13 ["Packages"]
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R5 R3 K14 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K8 [require]
       37 GETTABLEKS                       R6 R3 K15 ["Roact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R7 R3 K16 ["RoactRodux"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R8 R3 K17 ["Dash"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R4 K18 ["ContextServices"]
       52 GETTABLEKS                       R9 R8 K19 ["withContext"]
       54 GETIMPORT                        R10 K8 [require]
       56 GETTABLEKS                       R11 R0 K9 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["ContextServices"]
       60 GETTABLEKS                       R11 R11 K20 ["Settings"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K8 [require]
       65 GETTABLEKS                       R12 R0 K9 ["Src"]
       67 GETTABLEKS                       R12 R12 K10 ["Util"]
       69 GETTABLEKS                       R12 R12 K21 ["Layouter"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K8 [require]
       74 GETTABLEKS                       R13 R0 K9 ["Src"]
       76 GETTABLEKS                       R13 R13 K18 ["ContextServices"]
       78 GETTABLEKS                       R13 R13 K22 ["NetworkContext"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R4 K10 ["Util"]
       83 GETTABLEKS                       R13 R13 K23 ["LayoutOrderIterator"]
       85 GETTABLEKS                       R14 R4 K24 ["UI"]
       87 GETTABLEKS                       R14 R14 K25 ["LoadingIndicator"]
       89 GETTABLEKS                       R15 R4 K24 ["UI"]
       91 GETTABLEKS                       R15 R15 K26 ["Pane"]
       93 GETIMPORT                        R16 K8 [require]
       95 GETTABLEKS                       R17 R0 K9 ["Src"]
       97 GETTABLEKS                       R17 R17 K27 ["Components"]
       99 GETTABLEKS                       R17 R17 K28 ["Asset"]
      101 GETTABLEKS                       R17 R17 K28 ["Asset"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K8 [require]
      106 GETTABLEKS                       R18 R0 K9 ["Src"]
      108 GETTABLEKS                       R18 R18 K27 ["Components"]
      110 GETTABLEKS                       R18 R18 K29 ["AssetGrid"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K8 [require]
      115 GETTABLEKS                       R19 R0 K9 ["Src"]
      117 GETTABLEKS                       R19 R19 K27 ["Components"]
      119 GETTABLEKS                       R19 R19 K30 ["AssetLogicWrapper"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K8 [require]
      124 GETTABLEKS                       R20 R0 K9 ["Src"]
      126 GETTABLEKS                       R20 R20 K27 ["Components"]
      128 GETTABLEKS                       R20 R20 K31 ["Categorization"]
      130 GETTABLEKS                       R20 R20 K32 ["IconTile"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K8 [require]
      135 GETTABLEKS                       R21 R0 K9 ["Src"]
      137 GETTABLEKS                       R21 R21 K27 ["Components"]
      139 GETTABLEKS                       R21 R21 K33 ["ResultsFetcher"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K8 [require]
      144 GETTABLEKS                       R22 R0 K9 ["Src"]
      146 GETTABLEKS                       R22 R22 K34 ["Types"]
      148 GETTABLEKS                       R22 R22 K35 ["Category"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K8 [require]
      153 GETTABLEKS                       R23 R0 K9 ["Src"]
      155 GETTABLEKS                       R23 R23 K27 ["Components"]
      157 GETTABLEKS                       R23 R23 K31 ["Categorization"]
      159 GETTABLEKS                       R23 R23 K36 ["AssetSwimlane"]
      161 CALL                             R22 1 1
      162 GETIMPORT                        R23 K8 [require]
      164 GETTABLEKS                       R24 R0 K9 ["Src"]
      166 GETTABLEKS                       R24 R24 K27 ["Components"]
      168 GETTABLEKS                       R24 R24 K31 ["Categorization"]
      170 GETTABLEKS                       R24 R24 K37 ["ExpandableTeaser"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K8 [require]
      175 GETTABLEKS                       R25 R0 K9 ["Src"]
      177 GETTABLEKS                       R25 R25 K27 ["Components"]
      179 GETTABLEKS                       R25 R25 K31 ["Categorization"]
      181 GETTABLEKS                       R25 R25 K38 ["SearchList"]
      183 CALL                             R24 1 1
      184 GETIMPORT                        R25 K8 [require]
      186 GETTABLEKS                       R26 R0 K9 ["Src"]
      188 GETTABLEKS                       R26 R26 K27 ["Components"]
      190 GETTABLEKS                       R26 R26 K31 ["Categorization"]
      192 GETTABLEKS                       R26 R26 K39 ["SectionHeader"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K8 [require]
      197 GETTABLEKS                       R27 R0 K9 ["Src"]
      199 GETTABLEKS                       R27 R27 K27 ["Components"]
      201 GETTABLEKS                       R27 R27 K31 ["Categorization"]
      203 GETTABLEKS                       R27 R27 K40 ["Swimlane"]
      205 CALL                             R26 1 1
      206 GETTABLEKS                       R27 R0 K9 ["Src"]
      208 GETTABLEKS                       R27 R27 K10 ["Util"]
      210 GETIMPORT                        R28 K8 [require]
      212 GETTABLEKS                       R29 R27 K41 ["Constants"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K8 [require]
      217 GETTABLEKS                       R30 R27 K42 ["getStartupAssetId"]
      219 CALL                             R29 1 1
      220 GETIMPORT                        R30 K8 [require]
      222 GETTABLEKS                       R31 R27 K43 ["Urls"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K8 [require]
      227 GETTABLEKS                       R32 R0 K9 ["Src"]
      229 GETTABLEKS                       R32 R32 K44 ["Thunks"]
      231 GETTABLEKS                       R32 R32 K45 ["GetAssetPreviewDataForStartup"]
      233 CALL                             R31 1 1
      234 GETIMPORT                        R32 K8 [require]
      236 GETTABLEKS                       R33 R0 K9 ["Src"]
      238 GETTABLEKS                       R33 R33 K46 ["Networking"]
      240 GETTABLEKS                       R33 R33 K47 ["Requests"]
      242 GETTABLEKS                       R33 R33 K48 ["RequestSearchRequest"]
      244 CALL                             R32 1 1
      245 GETIMPORT                        R33 K8 [require]
      247 GETTABLEKS                       R34 R0 K9 ["Src"]
      249 GETTABLEKS                       R34 R34 K44 ["Thunks"]
      251 GETTABLEKS                       R34 R34 K49 ["LogMarketplaceSearchAnalytics"]
      253 CALL                             R33 1 1
      254 GETIMPORT                        R34 K8 [require]
      256 GETTABLEKS                       R35 R0 K9 ["Src"]
      258 GETTABLEKS                       R35 R35 K50 ["Models"]
      260 GETTABLEKS                       R35 R35 K51 ["AssetInfo"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K8 [require]
      265 GETTABLEKS                       R36 R0 K9 ["Src"]
      267 GETTABLEKS                       R36 R36 K34 ["Types"]
      269 GETTABLEKS                       R36 R36 K52 ["HomeTypes"]
      271 CALL                             R35 1 1
      272 GETIMPORT                        R36 K55 [Vector2.new]
      274 LOADN                            R37 75
      275 LOADN                            R38 90
      276 CALL                             R36 2 1
      277 GETTABLEKS                       R37 R28 K56 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      279 GETTABLEKS                       R38 R5 K57 ["PureComponent"]
      281 LOADK                            R40 K58 ["HomeView"]
      282 NAMECALL                         R38 R38 K59 ["extend"]
      284 CALL                             R38 2 1
      285 DUPTABLE                         R39 K61 [{"Size"}]
      286 GETIMPORT                        R40 K63 [UDim2.new]
      288 LOADN                            R41 1
      289 LOADN                            R42 0
      290 LOADN                            R43 0
      291 LOADN                            R44 0
      292 CALL                             R40 4 1
      293 SETTABLEKS                       R40 R39 K60 ["Size"]
      295 SETTABLEKS                       R39 R38 K64 ["defaultProps"]
      297 DUPCLOSURE                       R39 K65 [PROTO_0]
      298 CAPTURE                          VAL R29
      299 SETTABLEKS                       R39 R38 K66 ["didMount"]
      301 DUPCLOSURE                       R39 K67 [PROTO_11]
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R11
      304 CAPTURE                          VAL R30
      305 CAPTURE                          VAL R37
      306 CAPTURE                          VAL R19
      307 CAPTURE                          VAL R36
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R26
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R24
      315 SETTABLEKS                       R39 R38 K68 ["init"]
      317 DUPCLOSURE                       R39 K69 [PROTO_14]
      318 CAPTURE                          VAL R5
      319 CAPTURE                          VAL R15
      320 CAPTURE                          VAL R20
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R14
      323 CAPTURE                          VAL R17
      324 CAPTURE                          VAL R2
      325 SETTABLEKS                       R39 R38 K70 ["render"]
      327 DUPCLOSURE                       R39 K71 [PROTO_15]
      328 SETGLOBAL                        R39 K72 ["mapStateToProps"]
      330 DUPCLOSURE                       R39 K73 [PROTO_19]
      331 CAPTURE                          VAL R31
      332 CAPTURE                          VAL R32
      333 CAPTURE                          VAL R33
      334 MOVE                             R40 R9
      335 DUPTABLE                         R41 K77 [{"Localization", "Settings", "Stylizer", "Network"}]
      336 GETTABLEKS                       R42 R8 K74 ["Localization"]
      338 SETTABLEKS                       R42 R41 K74 ["Localization"]
      340 SETTABLEKS                       R10 R41 K20 ["Settings"]
      342 GETTABLEKS                       R42 R8 K75 ["Stylizer"]
      344 SETTABLEKS                       R42 R41 K75 ["Stylizer"]
      346 SETTABLEKS                       R12 R41 K76 ["Network"]
      348 CALL                             R40 1 1
      349 MOVE                             R41 R38
      350 CALL                             R40 1 1
      351 MOVE                             R38 R40
      352 GETTABLEKS                       R40 R6 K78 ["connect"]
      354 GETGLOBAL                        R41 K72 ["mapStateToProps"]
      356 MOVE                             R42 R39
      357 CALL                             R40 2 1
      358 MOVE                             R41 R38
      359 CALL                             R40 1 -1
      360 RETURN                           R40 -1
