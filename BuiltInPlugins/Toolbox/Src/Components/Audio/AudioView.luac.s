PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnSeeAllActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnSeeAllActivated"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Sections"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["Sections"]
        6 LENGTH                           R2 R3
        7 GETTABLE                         R0 R1 R2
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Section"]
        3 GETTABLEKS                       R1 R1 K1 ["subcategory"]
        5 JUMPIFEQKNIL                     R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K3 ["thumbnail"]
        5 GETTABLEKS                       R1 R1 K4 ["backgroundColor"]
        7 CALL                             R0 1 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSwimlaneTileActivated"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnSwimlaneTileActivated"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETTABLEKS                       R4 R0 K0 ["thumbnail"]
        4 JUMPIFNOT                        R4 ; [+27]
        5 GETTABLEKS                       R4 R0 K0 ["thumbnail"]
        7 GETTABLEKS                       R4 R4 K1 ["assetId"]
        9 JUMPIFNOT                        R4 ; [+11]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["constructAssetThumbnailUrl"]
       13 GETTABLEKS                       R5 R0 K0 ["thumbnail"]
       15 GETTABLEKS                       R5 R5 K1 ["assetId"]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 1
       19 CALL                             R4 3 1
       20 MOVE                             R2 R4
       21 GETTABLEKS                       R4 R0 K0 ["thumbnail"]
       23 GETTABLEKS                       R4 R4 K3 ["backgroundColor"]
       25 JUMPIFNOT                        R4 ; [+6]
       26 GETIMPORT                        R4 K5 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R0
       31 CALL                             R4 1 0
       32 GETTABLEKS                       R5 R1 K6 ["Section"]
       34 GETTABLEKS                       R5 R5 K7 ["name"]
       36 GETUPVAL                         R6 2
       37 JUMPIFEQ                         R5 R6 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 NEWTABLE                         R5 8 0
       43 JUMPIFNOT                        R4 ; [+17]
       44 GETUPVAL                         R6 3
       45 SETTABLEKS                       R6 R5 K8 ["Size"]
       47 LOADB                            R6 1
       48 SETTABLEKS                       R6 R5 K9 ["ContentsLayoutOverride"]
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K10 ["wideIconButtonPadding"]
       53 SETTABLEKS                       R6 R5 K11 ["ContentsPadding"]
       55 GETUPVAL                         R6 5
       56 SETTABLEKS                       R6 R5 K12 ["ImagePosition"]
       58 GETUPVAL                         R6 6
       59 SETTABLEKS                       R6 R5 K13 ["ImageSize"]
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R6 R6 K14 ["createElement"]
       64 GETUPVAL                         R7 8
       65 DUPTABLE                         R8 K21 [{"BackgroundColor", "ContentsLayoutOverride", "ContentsPadding", "Image", "ImagePosition", "ImageSize", "Key", "LayoutOrder", "OnClick", "Size", "Title"}]
       66 SETTABLEKS                       R3 R8 K15 ["BackgroundColor"]
       68 JUMPIFNOT                        R4 ; [+3]
       69 GETTABLEKS                       R9 R5 K9 ["ContentsLayoutOverride"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K9 ["ContentsLayoutOverride"]
       75 JUMPIFNOT                        R4 ; [+3]
       76 GETTABLEKS                       R9 R5 K11 ["ContentsPadding"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K11 ["ContentsPadding"]
       82 SETTABLEKS                       R2 R8 K16 ["Image"]
       84 JUMPIFNOT                        R4 ; [+3]
       85 GETTABLEKS                       R9 R5 K12 ["ImagePosition"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R9
       89 SETTABLEKS                       R9 R8 K12 ["ImagePosition"]
       91 JUMPIFNOT                        R4 ; [+3]
       92 GETTABLEKS                       R9 R5 K13 ["ImageSize"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K13 ["ImageSize"]
       98 GETTABLEKS                       R9 R0 K7 ["name"]
      100 SETTABLEKS                       R9 R8 K17 ["Key"]
      102 GETTABLEKS                       R9 R0 K22 ["index"]
      104 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
      106 NEWCLOSURE                       R9 P1
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 SETTABLEKS                       R9 R8 K19 ["OnClick"]
      112 JUMPIFNOT                        R4 ; [+3]
      113 GETTABLEKS                       R9 R5 K8 ["Size"]
      115 JUMP                             ; [+1]
      116 GETUPVAL                         R9 10
      117 SETTABLEKS                       R9 R8 K8 ["Size"]
      119 GETTABLEKS                       R9 R0 K23 ["displayName"]
      121 SETTABLEKS                       R9 R8 K20 ["Title"]
      123 CALL                             R6 2 -1
      124 CLOSEUPVALS                      R3
      125 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Sections"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["Section"]
       10 GETTABLEKS                       R6 R6 K2 ["subcategory"]
       12 GETTABLEKS                       R7 R5 K3 ["ResultsState"]
       14 JUMPIFNOT                        R7 ; [+4]
       15 GETTABLEKS                       R7 R5 K3 ["ResultsState"]
       17 GETTABLEKS                       R7 R7 K4 ["loading"]
       19 LOADNIL                          R8
       20 GETUPVAL                         R9 1
       21 JUMPIFNOTEQ                      R5 R9 ; [+3]
       23 GETUPVAL                         R9 2
       24 JUMPIF                           R9 ; [+82]
       25 JUMPIFNOT                        R6 ; [+51]
       26 GETTABLEKS                       R9 R6 K5 ["hidden"]
       28 JUMPIF                           R9 ; [+48]
       29 NEWTABLE                         R9 0 0
       31 GETTABLEKS                       R10 R6 K6 ["children"]
       33 LOADNIL                          R11
       34 LOADNIL                          R12
       35 FORGPREP                         R10
       36 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       38 MOVE                             R16 R9
       39 MOVE                             R17 R14
       40 GETIMPORT                        R15 K9 [table.insert]
       42 CALL                             R15 2 0
       43 FORGLOOP                         R10 2 ; [-8]
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K10 ["createElement"]
       48 GETUPVAL                         R11 4
       49 DUPTABLE                         R12 K18 [{["Data"], ["IsLoading"] = False, ["LayoutOrder"], ["OnRenderItem"], ["OnClickSeeAll"], ["Title"]}]
       50 SETTABLEKS                       R9 R12 K11 ["Data"]
       52 GETUPVAL                         R13 5
       53 NAMECALL                         R13 R13 K19 ["getNextOrder"]
       55 CALL                             R13 1 1
       56 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       58 NEWCLOSURE                       R13 P0
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R13 R12 K15 ["OnRenderItem"]
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R13 R12 K16 ["OnClickSeeAll"]
       68 GETTABLEKS                       R13 R5 K1 ["Section"]
       70 GETTABLEKS                       R13 R13 K20 ["displayName"]
       72 SETTABLEKS                       R13 R12 K17 ["Title"]
       74 CALL                             R10 2 1
       75 MOVE                             R8 R10
       76 JUMP                             ; [+25]
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R9 R9 K10 ["createElement"]
       80 GETUPVAL                         R10 8
       81 DUPTABLE                         R11 K24 [{"AssetLogicWrapperProps", "AudioSection", "LayoutOrder", "OnSeeAllActivated"}]
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R12 R12 K21 ["AssetLogicWrapperProps"]
       85 SETTABLEKS                       R12 R11 K21 ["AssetLogicWrapperProps"]
       87 SETTABLEKS                       R5 R11 K22 ["AudioSection"]
       89 GETUPVAL                         R12 5
       90 NAMECALL                         R12 R12 K19 ["getNextOrder"]
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       95 NEWCLOSURE                       R12 P2
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R12 R11 K23 ["OnSeeAllActivated"]
      100 CALL                             R9 2 1
      101 MOVE                             R8 R9
      102 GETTABLEKS                       R9 R5 K1 ["Section"]
      104 GETTABLEKS                       R9 R9 K20 ["displayName"]
      106 SETTABLE                         R8 R0 R9
      107 FORGLOOP                         R1 2 ; [-100]
      109 GETUPVAL                         R1 2
      110 JUMPIFNOT                        R1 ; [+21]
      111 GETUPVAL                         R1 3
      112 GETTABLEKS                       R1 R1 K10 ["createElement"]
      114 GETUPVAL                         R2 9
      115 DUPTABLE                         R3 K26 [{["LayoutOrder"], ["ShowSeeAllText"] = False, ["Title"]}]
      116 GETUPVAL                         R4 5
      117 NAMECALL                         R4 R4 K19 ["getNextOrder"]
      119 CALL                             R4 1 1
      120 SETTABLEKS                       R4 R3 K14 ["LayoutOrder"]
      122 GETUPVAL                         R4 1
      123 GETTABLEKS                       R4 R4 K1 ["Section"]
      125 GETTABLEKS                       R4 R4 K20 ["displayName"]
      127 SETTABLEKS                       R4 R3 K17 ["Title"]
      129 CALL                             R1 2 1
      130 SETTABLEKS                       R1 R0 K27 ["LastSortHeader"]
      132 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"AutomaticSize", "Layout", "Spacing"}]
        5 GETIMPORT                        R3 K7 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
        9 GETIMPORT                        R3 K10 [Enum.FillDirection.Vertical]
       11 SETTABLEKS                       R3 R2 K2 ["Layout"]
       13 GETIMPORT                        R3 K13 [UDim.new]
       15 LOADN                            R4 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K14 ["spacingUnit"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K3 ["Spacing"]
       22 GETUPVAL                         R3 3
       23 CALL                             R0 3 -1
       24 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K3 ["OnSeeAllActivated"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 1
       27 GETTABLEKS                       R7 R0 K5 ["Sections"]
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 1
       39 MOVE                             R8 R4
       40 SETLIST                          R7 R8 1 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       46 NEWCLOSURE                       R7 P3
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U10
       58 NEWTABLE                         R8 0 1
       60 GETTABLEKS                       R9 R0 K6 ["OnSwimlaneTileActivated"]
       62 SETLIST                          R8 R9 1 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       68 NEWCLOSURE                       R8 P4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U11
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          UPVAL U12
       78 CAPTURE                          UPVAL U13
       79 NEWTABLE                         R9 0 6
       81 GETTABLEKS                       R10 R0 K5 ["Sections"]
       83 GETTABLEKS                       R11 R0 K7 ["AssetLogicWrapperProps"]
       85 MOVE                             R12 R4
       86 MOVE                             R13 R5
       87 MOVE                             R14 R6
       88 MOVE                             R15 R3
       89 SETLIST                          R9 R10 6 [1]
       91 CALL                             R7 2 1
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       95 NEWCLOSURE                       R9 P5
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U14
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R7
      100 NEWTABLE                         R10 0 1
      102 MOVE                             R11 R7
      103 SETLIST                          R10 R11 1 [1]
      105 CALL                             R8 2 1
      106 JUMPIFNOT                        R5 ; [+31]
      107 GETTABLEKS                       R9 R4 K8 ["ResultsState"]
      109 JUMPIFNOT                        R9 ; [+79]
      110 GETUPVAL                         R9 2
      111 GETTABLEKS                       R9 R9 K9 ["createElement"]
      113 GETUPVAL                         R10 15
      114 DUPTABLE                         R11 K13 [{"AssetLogicWrapperProps", "PageSize", "RenderTopContent", "ResultsState", "SwimlaneName"}]
      115 GETTABLEKS                       R12 R0 K7 ["AssetLogicWrapperProps"]
      117 SETTABLEKS                       R12 R11 K7 ["AssetLogicWrapperProps"]
      119 GETTABLEKS                       R12 R0 K10 ["PageSize"]
      121 SETTABLEKS                       R12 R11 K10 ["PageSize"]
      123 SETTABLEKS                       R8 R11 K11 ["RenderTopContent"]
      125 GETTABLEKS                       R12 R4 K8 ["ResultsState"]
      127 SETTABLEKS                       R12 R11 K8 ["ResultsState"]
      129 GETTABLEKS                       R12 R4 K14 ["Section"]
      131 GETTABLEKS                       R12 R12 K15 ["name"]
      133 SETTABLEKS                       R12 R11 K12 ["SwimlaneName"]
      135 CALL                             R9 2 -1
      136 RETURN                           R9 -1
      137 JUMP                             ; [+51]
      138 GETUPVAL                         R9 2
      139 GETTABLEKS                       R9 R9 K9 ["createElement"]
      141 GETUPVAL                         R10 14
      142 DUPTABLE                         R11 K17 [{"BackgroundColor"}]
      143 GETTABLEKS                       R12 R1 K18 ["homeView"]
      145 GETTABLEKS                       R12 R12 K19 ["backgroundColor"]
      147 SETTABLEKS                       R12 R11 K16 ["BackgroundColor"]
      149 DUPTABLE                         R12 K21 [{"ScrollingFrame"}]
      150 GETUPVAL                         R13 2
      151 GETTABLEKS                       R13 R13 K9 ["createElement"]
      153 GETUPVAL                         R14 16
      154 DUPTABLE                         R15 K27 [{"AutomaticCanvasSize", "CanvasSize", "Layout", "Padding", "Spacing"}]
      155 GETIMPORT                        R16 K31 [Enum.AutomaticSize.Y]
      157 SETTABLEKS                       R16 R15 K22 ["AutomaticCanvasSize"]
      159 GETIMPORT                        R16 K34 [UDim2.fromScale]
      161 LOADN                            R17 1
      162 LOADN                            R18 0
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K23 ["CanvasSize"]
      166 GETIMPORT                        R16 K37 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R16 R15 K24 ["Layout"]
      170 GETUPVAL                         R16 17
      171 GETTABLEKS                       R16 R16 K38 ["SCROLLING_FRAME_VIEW_PADDING"]
      173 SETTABLEKS                       R16 R15 K25 ["Padding"]
      175 GETIMPORT                        R16 K40 [UDim.new]
      177 LOADN                            R17 0
      178 GETTABLEKS                       R18 R1 K41 ["spacingUnit"]
      180 CALL                             R16 2 1
      181 SETTABLEKS                       R16 R15 K26 ["Spacing"]
      183 MOVE                             R16 R7
      184 CALL                             R13 3 1
      185 SETTABLEKS                       R13 R12 K20 ["ScrollingFrame"]
      187 CALL                             R9 3 -1
      188 RETURN                           R9 -1
      189 LOADNIL                          R9
      190 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Urls"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["LayoutOrderIterator"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Components"]
       54 GETTABLEKS                       R7 R7 K15 ["Categorization"]
       56 GETTABLEKS                       R7 R7 K16 ["Swimlane"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Src"]
       63 GETTABLEKS                       R8 R8 K14 ["Components"]
       65 GETTABLEKS                       R8 R8 K15 ["Categorization"]
       67 GETTABLEKS                       R8 R8 K17 ["IconTile"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K9 ["Src"]
       74 GETTABLEKS                       R9 R9 K14 ["Components"]
       76 GETTABLEKS                       R9 R9 K15 ["Categorization"]
       78 GETTABLEKS                       R9 R9 K18 ["SectionHeader"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K9 ["Src"]
       85 GETTABLEKS                       R10 R10 K14 ["Components"]
       87 GETTABLEKS                       R10 R10 K19 ["Audio"]
       89 GETTABLEKS                       R10 R10 K20 ["AudioScrollerWrapper"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K9 ["Src"]
       96 GETTABLEKS                       R11 R11 K14 ["Components"]
       98 GETTABLEKS                       R11 R11 K19 ["Audio"]
      100 GETTABLEKS                       R11 R11 K21 ["AudioSort"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K5 [require]
      105 GETTABLEKS                       R12 R0 K9 ["Src"]
      107 GETTABLEKS                       R12 R12 K22 ["Types"]
      109 GETTABLEKS                       R12 R12 K23 ["HomeTypes"]
      111 CALL                             R11 1 1
      112 GETIMPORT                        R12 K5 [require]
      114 GETTABLEKS                       R13 R0 K9 ["Src"]
      116 GETTABLEKS                       R13 R13 K22 ["Types"]
      118 GETTABLEKS                       R13 R13 K24 ["AudioTypes"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K9 ["Src"]
      125 GETTABLEKS                       R14 R14 K22 ["Types"]
      127 GETTABLEKS                       R14 R14 K25 ["AssetLogicTypes"]
      129 CALL                             R13 1 1
      130 GETTABLEKS                       R14 R2 K26 ["UI"]
      132 GETTABLEKS                       R14 R14 K27 ["Pane"]
      134 GETTABLEKS                       R15 R2 K26 ["UI"]
      136 GETTABLEKS                       R15 R15 K28 ["ScrollingFrame"]
      138 GETTABLEKS                       R16 R2 K29 ["ContextServices"]
      140 GETTABLEKS                       R16 R16 K30 ["Stylizer"]
      142 GETTABLEKS                       R17 R3 K31 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      144 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      146 LOADN                            R19 100
      147 LOADN                            R20 100
      148 CALL                             R18 2 1
      149 GETIMPORT                        R19 K34 [UDim2.fromOffset]
      151 LOADN                            R20 210
      152 LOADN                            R21 100
      153 CALL                             R19 2 1
      154 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      156 LOADN                            R21 100
      157 LOADN                            R22 80
      158 CALL                             R20 2 1
      159 GETIMPORT                        R21 K34 [UDim2.fromOffset]
      161 LOADN                            R22 100
      162 LOADN                            R23 17
      163 CALL                             R21 2 1
      164 GETTABLEKS                       R22 R3 K35 ["DISCOVER_NEW_AUDIO_SWIMLANE_NAME"]
      166 DUPCLOSURE                       R23 K36 [PROTO_11]
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R3
      185 RETURN                           R23 1
