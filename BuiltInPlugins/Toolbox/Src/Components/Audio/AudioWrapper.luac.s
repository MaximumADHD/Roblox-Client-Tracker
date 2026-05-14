PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R4 R2 K2 ["selectedCategory"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R2 K2 ["selectedCategory"]
       11 GETTABLEKS                       R3 R3 K3 ["name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R1 K4 ["LogPageView"]
       17 GETUPVAL                         R5 0
       18 DUPTABLE                         R7 K6 [{"selectedTab", "selectedCategory"}]
       19 SETTABLEKS                       R0 R7 K5 ["selectedTab"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K7 ["None"]
       24 SETTABLEKS                       R8 R7 K2 ["selectedCategory"]
       26 NAMECALL                         R5 R5 K8 ["setState"]
       28 CALL                             R5 2 0
       29 MOVE                             R5 R4
       30 MOVE                             R6 R0
       31 MOVE                             R7 R3
       32 CALL                             R5 2 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 MOVE                             R3 R0
        7 JUMPIF                           R3 ; [+3]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["None"]
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R4 R0 K3 ["name"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 GETTABLEKS                       R5 R2 K4 ["selectedTab"]
       18 GETTABLEKS                       R6 R1 K5 ["LogPageView"]
       20 GETUPVAL                         R7 0
       21 DUPTABLE                         R9 K7 [{"selectedCategory"}]
       22 SETTABLEKS                       R3 R9 K6 ["selectedCategory"]
       24 NAMECALL                         R7 R7 K8 ["setState"]
       26 CALL                             R7 2 0
       27 MOVE                             R7 R6
       28 MOVE                             R8 R5
       29 MOVE                             R9 R4
       30 CALL                             R7 2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["Network"]
        6 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 4
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["Creator"]
       15 GETTABLEKS                       R2 R2 K4 ["Id"]
       17 NAMECALL                         R0 R0 K5 ["onCallToActionBannerClicked"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R1 K2 ["selectedTab"]
        8 GETTABLEKS                       R3 R1 K3 ["audioTabSize"]
       10 GETTABLEKS                       R4 R0 K4 ["Localization"]
       12 GETTABLEKS                       R5 R0 K5 ["Settings"]
       14 LOADK                            R7 K6 ["Plugin"]
       15 NAMECALL                         R5 R5 K7 ["get"]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R6 R0 K8 ["SearchWithOptions"]
       20 GETTABLEKS                       R7 R0 K9 ["AssetAnalytics"]
       22 NAMECALL                         R7 R7 K7 ["get"]
       24 CALL                             R7 1 1
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R7
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K10 ["MUSIC"]
       34 GETTABLEKS                       R10 R10 K11 ["name"]
       36 JUMPIFEQ                         R2 R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K12 ["createElement"]
       43 LOADK                            R11 K13 ["Frame"]
       44 DUPTABLE                         R12 K18 [{"LayoutOrder", "AutomaticSize", "Size", "BackgroundTransparency"}]
       45 LOADN                            R13 1
       46 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       48 GETIMPORT                        R13 K21 [Enum.AutomaticSize.Y]
       50 SETTABLEKS                       R13 R12 K15 ["AutomaticSize"]
       52 GETIMPORT                        R13 K24 [UDim2.new]
       54 LOADN                            R14 1
       55 LOADN                            R15 0
       56 LOADN                            R16 0
       57 LOADN                            R17 0
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K16 ["Size"]
       61 LOADN                            R13 1
       62 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
       64 NEWTABLE                         R13 2 3
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R14 R14 K12 ["createElement"]
       69 LOADK                            R15 K25 ["UIPadding"]
       70 DUPTABLE                         R16 K27 [{"PaddingBottom"}]
       71 GETIMPORT                        R17 K29 [UDim.new]
       73 LOADN                            R18 0
       74 LOADN                            R19 11
       75 CALL                             R17 2 1
       76 SETTABLEKS                       R17 R16 K26 ["PaddingBottom"]
       78 CALL                             R14 2 1
       79 SETLIST                          R13 R14 1 [1]
       81 GETUPVAL                         R17 3
       82 GETTABLEKS                       R17 R17 K12 ["createElement"]
       84 LOADK                            R18 K30 ["UIListLayout"]
       85 DUPTABLE                         R19 K35 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
       86 GETIMPORT                        R20 K37 [Enum.FillDirection.Vertical]
       88 SETTABLEKS                       R20 R19 K31 ["FillDirection"]
       90 GETIMPORT                        R20 K38 [Enum.SortOrder.LayoutOrder]
       92 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
       94 GETIMPORT                        R20 K40 [Enum.HorizontalAlignment.Center]
       96 SETTABLEKS                       R20 R19 K33 ["HorizontalAlignment"]
       98 GETIMPORT                        R20 K29 [UDim.new]
      100 LOADN                            R21 0
      101 LOADN                            R22 10
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K34 ["Padding"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R13 K41 ["Layout"]
      108 GETUPVAL                         R14 3
      109 GETTABLEKS                       R14 R14 K12 ["createElement"]
      111 LOADK                            R15 K13 ["Frame"]
      112 DUPTABLE                         R16 K43 [{"LayoutOrder", "Size", "BackgroundColor3"}]
      113 LOADN                            R17 1
      114 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      116 SETTABLEKS                       R3 R16 K16 ["Size"]
      118 GETTABLEKS                       R17 R0 K44 ["Stylizer"]
      120 GETTABLEKS                       R17 R17 K45 ["audioTabs"]
      122 GETTABLEKS                       R17 R17 K46 ["backgroundButtonColor"]
      124 SETTABLEKS                       R17 R16 K42 ["BackgroundColor3"]
      126 NEWTABLE                         R17 1 1
      128 GETUPVAL                         R19 3
      129 GETTABLEKS                       R19 R19 K12 ["createElement"]
      131 LOADK                            R20 K47 ["UICorner"]
      132 DUPTABLE                         R21 K49 [{"CornerRadius"}]
      133 GETIMPORT                        R22 K29 [UDim.new]
      135 LOADN                            R23 0
      136 LOADN                            R24 5
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K48 ["CornerRadius"]
      140 CALL                             R19 2 1
      141 SETTABLEKS                       R19 R17 K47 ["UICorner"]
      143 GETUPVAL                         R18 3
      144 GETTABLEKS                       R18 R18 K12 ["createElement"]
      146 GETUPVAL                         R19 4
      147 DUPTABLE                         R20 K52 [{"Size", "SelectedTab", "OnTabSelect"}]
      148 GETIMPORT                        R21 K24 [UDim2.new]
      150 LOADN                            R22 1
      151 LOADN                            R23 0
      152 LOADN                            R24 0
      153 LOADN                            R25 30
      154 CALL                             R21 4 1
      155 SETTABLEKS                       R21 R20 K16 ["Size"]
      157 GETUPVAL                         R21 0
      158 GETTABLEKS                       R21 R21 K1 ["state"]
      160 GETTABLEKS                       R21 R21 K2 ["selectedTab"]
      162 SETTABLEKS                       R21 R20 K50 ["SelectedTab"]
      164 GETUPVAL                         R21 0
      165 GETTABLEKS                       R21 R21 K53 ["onTabSelect"]
      167 SETTABLEKS                       R21 R20 K51 ["OnTabSelect"]
      169 CALL                             R18 2 -1
      170 SETLIST                          R17 R18 -1 [1]
      172 CALL                             R14 3 1
      173 SETLIST                          R13 R14 1 [2]
      175 JUMPIFNOT                        R9 ; [+31]
      176 GETUPVAL                         R17 5
      177 GETTABLEKS                       R17 R17 K54 ["Generator"]
      179 DUPTABLE                         R18 K58 [{"LayoutOrder", "Image", "Text", "OnClick"}]
      180 LOADN                            R19 2
      181 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      183 GETUPVAL                         R19 6
      184 GETTABLEKS                       R19 R19 K59 ["MONSTER_CAT_BANNER"]
      186 SETTABLEKS                       R19 R18 K55 ["Image"]
      188 LOADK                            R21 K60 ["Audio"]
      189 LOADK                            R22 K61 ["FindTracks"]
      190 DUPTABLE                         R23 K63 [{"creatorName"}]
      191 GETUPVAL                         R24 1
      192 GETTABLEKS                       R24 R24 K64 ["Creator"]
      194 GETTABLEKS                       R24 R24 K65 ["Name"]
      196 SETTABLEKS                       R24 R23 K62 ["creatorName"]
      198 NAMECALL                         R19 R4 K66 ["getText"]
      200 CALL                             R19 4 1
      201 SETTABLEKS                       R19 R18 K56 ["Text"]
      203 SETTABLEKS                       R8 R18 K57 ["OnClick"]
      205 CALL                             R17 1 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R17
      208 SETTABLEKS                       R17 R13 K67 ["CallToActionBanner"]
      210 GETUPVAL                         R14 3
      211 GETTABLEKS                       R14 R14 K12 ["createElement"]
      213 GETUPVAL                         R15 7
      214 DUPTABLE                         R16 K71 [{"LayoutOrder", "Subcategories", "AudioType", "OnCategorySelect"}]
      215 LOADN                            R17 3
      216 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      218 GETTABLEKS                       R17 R0 K72 ["SubcategoryDict"]
      220 SETTABLEKS                       R17 R16 K68 ["Subcategories"]
      222 SETTABLEKS                       R2 R16 K69 ["AudioType"]
      224 GETUPVAL                         R17 0
      225 GETTABLEKS                       R17 R17 K73 ["onCategorySelect"]
      227 SETTABLEKS                       R17 R16 K70 ["OnCategorySelect"]
      229 CALL                             R14 2 -1
      230 SETLIST                          R13 R14 -1 [3]
      232 CALL                             R10 3 -1
      233 RETURN                           R10 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 LOADN                            R2 119
        5 JUMPIFNOTLT                      R1 R2 ; [+18]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"audioTabSize"}]
        9 GETIMPORT                        R4 K6 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K7 ["AUDIO_TABS_HEIGHT"]
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K2 ["audioTabSize"]
       20 NAMECALL                         R1 R1 K8 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 DUPTABLE                         R3 K3 [{"audioTabSize"}]
       26 GETIMPORT                        R4 K6 [UDim2.new]
       28 LOADN                            R5 0
       29 LOADN                            R6 74
       30 LOADN                            R7 0
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K7 ["AUDIO_TABS_HEIGHT"]
       34 CALL                             R4 4 1
       35 SETTABLEKS                       R4 R3 K2 ["audioTabSize"]
       37 NAMECALL                         R1 R1 K8 ["setState"]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["state"]
        6 GETTABLEKS                       R6 R5 K2 ["selectedTab"]
        8 GETTABLEKS                       R8 R5 K3 ["selectedCategory"]
       10 JUMPIFNOT                        R8 ; [+5]
       11 GETTABLEKS                       R7 R5 K3 ["selectedCategory"]
       13 GETTABLEKS                       R7 R7 K4 ["name"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R7
       17 GETTABLEKS                       R8 R4 K5 ["LogAssetImpression"]
       19 JUMPIFNOT                        R8 ; [+17]
       20 GETTABLEKS                       R8 R4 K5 ["LogAssetImpression"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R3
       24 MOVE                             R11 R1
       25 MOVE                             R12 R2
       26 GETTABLEKS                       R13 R4 K6 ["AbsoluteSize"]
       28 GETTABLEKS                       R14 R4 K7 ["AbsolutePosition"]
       30 DUPTABLE                         R15 K10 [{"audioType", "categoryName"}]
       31 SETTABLEKS                       R6 R15 K8 ["audioType"]
       33 SETTABLEKS                       R7 R15 K9 ["categoryName"]
       35 CALL                             R8 7 -1
       36 RETURN                           R8 -1
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["sizerRef"]
        6 DUPTABLE                         R2 K4 [{"selectedTab", "audioTabSize"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K5 ["SOUND_EFFECTS"]
       10 GETTABLEKS                       R3 R3 K6 ["name"]
       12 SETTABLEKS                       R3 R2 K2 ["selectedTab"]
       14 GETIMPORT                        R3 K9 [UDim2.new]
       16 LOADN                            R4 0
       17 LOADN                            R5 74
       18 LOADN                            R6 0
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K10 ["AUDIO_TABS_HEIGHT"]
       22 CALL                             R3 4 1
       23 SETTABLEKS                       R3 R2 K3 ["audioTabSize"]
       25 SETTABLEKS                       R2 R0 K11 ["state"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R2 R0 K12 ["onTabSelect"]
       32 NEWCLOSURE                       R2 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R2 R0 K13 ["onCategorySelect"]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 SETTABLEKS                       R2 R0 K14 ["renderTopContent"]
       48 NEWCLOSURE                       R2 P3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U2
       51 SETTABLEKS                       R2 R0 K15 ["onAbsoluteSizeChanged"]
       53 NEWCLOSURE                       R2 P4
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K16 ["logImpression"]
       57 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 FASTCALL1                        TONUMBER R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [tonumber]
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+17]
       10 GETTABLEKS                       R4 R1 K3 ["OnAssetPreviewButtonClicked"]
       12 GETTABLEKS                       R5 R1 K4 ["getAssetPreviewDataForStartup"]
       14 MOVE                             R6 R3
       15 GETTABLEKS                       R7 R1 K5 ["TryInsert"]
       17 GETTABLEKS                       R8 R1 K6 ["Localization"]
       19 GETTABLEKS                       R9 R0 K0 ["props"]
       21 GETTABLEKS                       R9 R9 K7 ["Network"]
       23 GETTABLEKS                       R9 R9 K8 ["networkInterface"]
       25 MOVE                             R10 R4
       26 CALL                             R5 5 0
       27 GETTABLEKS                       R4 R0 K9 ["sizerRef"]
       29 GETTABLEKS                       R4 R4 K10 ["current"]
       31 JUMPIFNOT                        R4 ; [+7]
       32 GETTABLEKS                       R4 R0 K11 ["onAbsoluteSizeChanged"]
       34 GETTABLEKS                       R5 R0 K9 ["sizerRef"]
       36 GETTABLEKS                       R5 R5 K10 ["current"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Generator"]
        3 DUPTABLE                         R2 K13 [{"Assets", "Loading", "Total", "FetchNextPage", "TryInsert", "CanInsertAsset", "RenderTopContent", "AudioType", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
        4 GETTABLEKS                       R3 R0 K14 ["assets"]
        6 SETTABLEKS                       R3 R2 K1 ["Assets"]
        8 GETTABLEKS                       R3 R0 K15 ["loading"]
       10 SETTABLEKS                       R3 R2 K2 ["Loading"]
       12 GETTABLEKS                       R3 R0 K16 ["total"]
       14 SETTABLEKS                       R3 R2 K3 ["Total"]
       16 GETTABLEKS                       R3 R0 K17 ["fetchNextPage"]
       18 SETTABLEKS                       R3 R2 K4 ["FetchNextPage"]
       20 GETUPVAL                         R3 1
       21 SETTABLEKS                       R3 R2 K5 ["TryInsert"]
       23 GETUPVAL                         R3 2
       24 SETTABLEKS                       R3 R2 K6 ["CanInsertAsset"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K18 ["renderTopContent"]
       29 SETTABLEKS                       R3 R2 K7 ["RenderTopContent"]
       31 GETUPVAL                         R3 4
       32 SETTABLEKS                       R3 R2 K8 ["AudioType"]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K19 ["logImpression"]
       37 SETTABLEKS                       R3 R2 K9 ["LogImpression"]
       39 GETUPVAL                         R3 5
       40 GETTABLEKS                       R3 R3 K10 ["OnAssetPreviewButtonClicked"]
       42 SETTABLEKS                       R3 R2 K10 ["OnAssetPreviewButtonClicked"]
       44 GETUPVAL                         R3 5
       45 GETTABLEKS                       R3 R3 K20 ["AbsoluteSize"]
       47 SETTABLEKS                       R3 R2 K11 ["ParentAbsoluteSize"]
       49 GETUPVAL                         R3 5
       50 GETTABLEKS                       R3 R3 K12 ["TryOpenAssetConfig"]
       52 SETTABLEKS                       R3 R2 K12 ["TryOpenAssetConfig"]
       54 CALL                             R1 1 -1
       55 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetSections"]
        6 GETTABLEKS                       R4 R1 K3 ["CanInsertAsset"]
        8 GETTABLEKS                       R5 R1 K4 ["SortName"]
       10 GETTABLEKS                       R6 R1 K5 ["TryInsert"]
       12 LENGTH                           R9 R3
       13 GETTABLE                         R8 R3 R9
       14 JUMPIFNOT                        R8 ; [+5]
       15 LENGTH                           R8 R3
       16 GETTABLE                         R7 R3 R8
       17 GETTABLEKS                       R7 R7 K6 ["name"]
       19 JUMPIF                           R7 ; [+1]
       20 LOADNIL                          R7
       21 GETTABLEKS                       R8 R2 K7 ["selectedTab"]
       23 GETTABLEKS                       R9 R2 K8 ["selectedCategory"]
       25 GETTABLEKS                       R10 R1 K9 ["Stylizer"]
       27 LOADNIL                          R11
       28 JUMPIFNOT                        R9 ; [+7]
       29 NEWTABLE                         R12 0 1
       31 GETTABLEKS                       R13 R9 K6 ["name"]
       33 SETLIST                          R12 R13 1 [1]
       35 MOVE                             R11 R12
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K10 ["join"]
       39 NEWTABLE                         R13 8 0
       41 LOADN                            R14 0
       42 SETTABLEKS                       R14 R13 K11 ["BackgroundTransparency"]
       44 GETTABLEKS                       R14 R10 K12 ["backgroundColor"]
       46 SETTABLEKS                       R14 R13 K13 ["BackgroundColor3"]
       48 GETIMPORT                        R14 K16 [UDim2.new]
       50 LOADN                            R15 1
       51 LOADN                            R16 0
       52 LOADN                            R17 1
       53 LOADN                            R18 0
       54 CALL                             R14 4 1
       55 SETTABLEKS                       R14 R13 K17 ["Size"]
       57 GETUPVAL                         R14 1
       58 GETTABLEKS                       R14 R14 K18 ["Ref"]
       60 GETTABLEKS                       R15 R0 K19 ["sizerRef"]
       62 SETTABLE                         R15 R13 R14
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K20 ["Change"]
       66 GETTABLEKS                       R14 R14 K21 ["AbsoluteSize"]
       68 GETTABLEKS                       R15 R0 K22 ["onAbsoluteSizeChanged"]
       70 SETTABLE                         R15 R13 R14
       71 GETTABLEKS                       R14 R1 K23 ["WrapperProps"]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K24 ["createElement"]
       77 GETUPVAL                         R14 2
       78 MOVE                             R15 R12
       79 DUPTABLE                         R16 K26 [{"Results"}]
       80 GETUPVAL                         R17 3
       81 GETTABLEKS                       R17 R17 K27 ["Generator"]
       83 DUPTABLE                         R18 K36 [{"networkInterface", "categoryName", "sortName", "queryParams", "sectionName", "initialPageSize", "tags", "render"}]
       84 GETTABLEKS                       R19 R0 K0 ["props"]
       86 GETTABLEKS                       R19 R19 K37 ["Network"]
       88 GETTABLEKS                       R19 R19 K28 ["networkInterface"]
       90 SETTABLEKS                       R19 R18 K28 ["networkInterface"]
       92 SETTABLEKS                       R8 R18 K29 ["categoryName"]
       94 SETTABLEKS                       R5 R18 K30 ["sortName"]
       96 NEWTABLE                         R19 0 0
       98 SETTABLEKS                       R19 R18 K31 ["queryParams"]
      100 SETTABLEKS                       R7 R18 K32 ["sectionName"]
      102 LOADN                            R19 20
      103 SETTABLEKS                       R19 R18 K33 ["initialPageSize"]
      105 SETTABLEKS                       R11 R18 K34 ["tags"]
      107 NEWCLOSURE                       R19 P0
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R19 R18 K35 ["render"]
      116 CALL                             R17 1 1
      117 SETTABLEKS                       R17 R16 K25 ["Results"]
      119 CALL                             R13 3 -1
      120 RETURN                           R13 -1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
        0 DUPTABLE                         R1 K3 [{"SearchWithOptions", "getPageInfoAnalyticsContextInfo", "getAssetPreviewDataForStartup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SearchWithOptions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getPageInfoAnalyticsContextInfo"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["getAssetPreviewDataForStartup"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["ResultsFetcher"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Types"]
       39 GETTABLEKS                       R7 R7 K14 ["AssetLogicTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Src"]
       46 GETTABLEKS                       R8 R8 K13 ["Types"]
       48 GETTABLEKS                       R8 R8 K15 ["HomeTypes"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K10 ["Src"]
       55 GETTABLEKS                       R9 R9 K16 ["Models"]
       57 GETTABLEKS                       R9 R9 K17 ["AssetInfo"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Src"]
       64 GETTABLEKS                       R10 R10 K11 ["Components"]
       66 GETTABLEKS                       R10 R10 K18 ["AssetLogicWrapper"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K10 ["Src"]
       73 GETTABLEKS                       R11 R11 K11 ["Components"]
       75 GETTABLEKS                       R11 R11 K19 ["Audio"]
       77 GETTABLEKS                       R11 R11 K20 ["AudioScroller"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K10 ["Src"]
       84 GETTABLEKS                       R12 R12 K11 ["Components"]
       86 GETTABLEKS                       R12 R12 K19 ["Audio"]
       88 GETTABLEKS                       R12 R12 K21 ["AudioTabs"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETTABLEKS                       R13 R0 K10 ["Src"]
       95 GETTABLEKS                       R13 R13 K13 ["Types"]
       97 GETTABLEKS                       R13 R13 K22 ["Category"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K6 [require]
      102 GETTABLEKS                       R14 R0 K10 ["Src"]
      104 GETTABLEKS                       R14 R14 K23 ["Util"]
      106 GETTABLEKS                       R14 R14 K24 ["Constants"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K6 [require]
      111 GETTABLEKS                       R15 R0 K10 ["Src"]
      113 GETTABLEKS                       R15 R15 K23 ["Util"]
      115 GETTABLEKS                       R15 R15 K25 ["Images"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K6 [require]
      120 GETTABLEKS                       R16 R0 K10 ["Src"]
      122 GETTABLEKS                       R16 R16 K23 ["Util"]
      124 GETTABLEKS                       R16 R16 K26 ["Analytics"]
      126 GETTABLEKS                       R16 R16 K27 ["AssetAnalyticsContextItem"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K6 [require]
      131 GETTABLEKS                       R17 R0 K10 ["Src"]
      133 GETTABLEKS                       R17 R17 K28 ["Thunks"]
      135 GETTABLEKS                       R17 R17 K29 ["GetPageInfoAnalyticsContextInfo"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K6 [require]
      140 GETTABLEKS                       R18 R0 K10 ["Src"]
      142 GETTABLEKS                       R18 R18 K30 ["Networking"]
      144 GETTABLEKS                       R18 R18 K31 ["Requests"]
      146 GETTABLEKS                       R18 R18 K32 ["SearchWithOptions"]
      148 CALL                             R17 1 1
      149 GETIMPORT                        R18 K6 [require]
      151 GETTABLEKS                       R19 R0 K10 ["Src"]
      153 GETTABLEKS                       R19 R19 K33 ["ContextServices"]
      155 GETTABLEKS                       R19 R19 K34 ["Settings"]
      157 CALL                             R18 1 1
      158 GETIMPORT                        R19 K6 [require]
      160 GETTABLEKS                       R20 R0 K10 ["Src"]
      162 GETTABLEKS                       R20 R20 K33 ["ContextServices"]
      164 GETTABLEKS                       R20 R20 K35 ["NetworkContext"]
      166 CALL                             R19 1 1
      167 GETIMPORT                        R20 K6 [require]
      169 GETTABLEKS                       R21 R0 K10 ["Src"]
      171 GETTABLEKS                       R21 R21 K11 ["Components"]
      173 GETTABLEKS                       R21 R21 K36 ["CategoryDropDown"]
      175 GETTABLEKS                       R21 R21 K36 ["CategoryDropDown"]
      177 CALL                             R20 1 1
      178 GETIMPORT                        R21 K6 [require]
      180 GETTABLEKS                       R22 R0 K10 ["Src"]
      182 GETTABLEKS                       R22 R22 K11 ["Components"]
      184 GETTABLEKS                       R22 R22 K37 ["CallToActionBanner"]
      186 GETTABLEKS                       R22 R22 K37 ["CallToActionBanner"]
      188 CALL                             R21 1 1
      189 GETIMPORT                        R22 K6 [require]
      191 GETTABLEKS                       R23 R1 K7 ["Framework"]
      193 CALL                             R22 1 1
      194 GETTABLEKS                       R22 R22 K33 ["ContextServices"]
      196 GETIMPORT                        R23 K6 [require]
      198 GETTABLEKS                       R24 R0 K10 ["Src"]
      200 GETTABLEKS                       R24 R24 K28 ["Thunks"]
      202 GETTABLEKS                       R24 R24 K38 ["GetAssetPreviewDataForStartup"]
      204 CALL                             R23 1 1
      205 GETIMPORT                        R24 K6 [require]
      207 GETTABLEKS                       R25 R0 K10 ["Src"]
      209 GETTABLEKS                       R25 R25 K23 ["Util"]
      211 GETTABLEKS                       R25 R25 K39 ["getStartupAssetId"]
      213 CALL                             R24 1 1
      214 GETTABLEKS                       R25 R22 K40 ["withContext"]
      216 GETIMPORT                        R26 K6 [require]
      218 GETTABLEKS                       R27 R1 K41 ["Dash"]
      220 CALL                             R26 1 1
      221 GETTABLEKS                       R27 R2 K42 ["UI"]
      223 GETTABLEKS                       R27 R27 K43 ["Pane"]
      225 GETTABLEKS                       R28 R2 K44 ["Wrappers"]
      227 GETTABLEKS                       R28 R28 K45 ["withAbsoluteSizeAndPosition"]
      229 GETTABLEKS                       R29 R3 K46 ["PureComponent"]
      231 LOADK                            R31 K47 ["AudioWrapper"]
      232 NAMECALL                         R29 R29 K48 ["extend"]
      234 CALL                             R29 2 1
      235 GETIMPORT                        R30 K51 [table.freeze]
      237 DUPTABLE                         R31 K53 [{"Creator"}]
      238 DUPTABLE                         R32 K56 [{"Id", "Name"}]
      239 LOADK                            R33 K57 [1750384777]
      240 SETTABLEKS                       R33 R32 K54 ["Id"]
      242 LOADK                            R33 K58 ["Monstercat"]
      243 SETTABLEKS                       R33 R32 K55 ["Name"]
      245 SETTABLEKS                       R32 R31 K52 ["Creator"]
      247 CALL                             R30 1 1
      248 DUPCLOSURE                       R31 K59 [PROTO_6]
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R20
      257 SETTABLEKS                       R31 R29 K60 ["init"]
      259 DUPCLOSURE                       R31 K61 [PROTO_7]
      260 CAPTURE                          VAL R24
      261 SETTABLEKS                       R31 R29 K62 ["didMount"]
      263 DUPCLOSURE                       R31 K63 [PROTO_9]
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R3
      266 CAPTURE                          VAL R27
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R10
      269 SETTABLEKS                       R31 R29 K64 ["render"]
      271 DUPCLOSURE                       R31 K65 [PROTO_10]
      272 DUPCLOSURE                       R32 K66 [PROTO_14]
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R23
      276 MOVE                             R33 R25
      277 DUPTABLE                         R34 K71 [{"AssetAnalytics", "Localization", "Settings", "Stylizer", "Network"}]
      278 SETTABLEKS                       R15 R34 K67 ["AssetAnalytics"]
      280 GETTABLEKS                       R35 R22 K68 ["Localization"]
      282 SETTABLEKS                       R35 R34 K68 ["Localization"]
      284 SETTABLEKS                       R18 R34 K34 ["Settings"]
      286 GETTABLEKS                       R35 R22 K69 ["Stylizer"]
      288 SETTABLEKS                       R35 R34 K69 ["Stylizer"]
      290 SETTABLEKS                       R19 R34 K70 ["Network"]
      292 CALL                             R33 1 1
      293 MOVE                             R34 R29
      294 CALL                             R33 1 1
      295 MOVE                             R29 R33
      296 GETTABLEKS                       R33 R4 K72 ["connect"]
      298 MOVE                             R34 R31
      299 MOVE                             R35 R32
      300 CALL                             R33 2 1
      301 MOVE                             R34 R29
      302 CALL                             R33 1 1
      303 MOVE                             R29 R33
      304 MOVE                             R33 R28
      305 MOVE                             R34 R29
      306 CALL                             R33 1 -1
      307 RETURN                           R33 -1
