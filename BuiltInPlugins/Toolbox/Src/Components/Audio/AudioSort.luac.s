PROTO_0:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+35]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["current"]
        5 JUMPIFNOT                        R4 ; [+31]
        6 GETUPVAL                         R4 2
        7 NAMECALL                         R4 R4 K1 ["get"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 3
       11 NAMECALL                         R5 R5 K1 ["get"]
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R6 R5 K2 ["getNavigationContext"]
       16 MOVE                             R7 R4
       17 GETUPVAL                         R8 4
       18 CALL                             R6 2 1
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R0
       21 MOVE                             R9 R3
       22 MOVE                             R10 R1
       23 MOVE                             R11 R2
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R13 R14 K0 ["current"]
       27 GETTABLEKS                       R12 R13 K3 ["AbsoluteSize"]
       29 GETUPVAL                         R15 1
       30 GETTABLEKS                       R14 R15 K0 ["current"]
       32 GETTABLEKS                       R13 R14 K4 ["AbsolutePosition"]
       34 MOVE                             R14 R6
       35 CALL                             R7 7 -1
       36 RETURN                           R7 -1
       37 LOADNIL                          R4
       38 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["AudioSection"]
        6 GETTABLEKS                       R2 R3 K2 ["ResultsState"]
        8 GETTABLEKS                       R5 R0 K1 ["AudioSection"]
       10 GETTABLEKS                       R4 R5 K3 ["Section"]
       12 GETTABLEKS                       R3 R4 K4 ["name"]
       14 GETUPVAL                         R4 1
       15 NAMECALL                         R4 R4 K5 ["use"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R6 R0 K6 ["AssetLogicWrapperProps"]
       20 GETTABLEKS                       R5 R6 K7 ["LogAssetImpression"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K8 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K5 ["use"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R8 R9 K5 ["use"]
       34 CALL                             R8 0 1
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R9 R10 K9 ["useCallback"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R11 0 1
       46 MOVE                             R12 R5
       47 SETLIST                          R11 R12 1 [1]
       49 CALL                             R9 2 1
       50 DUPTABLE                         R10 K11 [{"Header"}]
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R11 R12 K12 ["createElement"]
       54 GETUPVAL                         R12 5
       55 DUPTABLE                         R13 K16 [{"LayoutOrder", "Title", "OnClickSeeAll"}]
       56 NAMECALL                         R14 R1 K17 ["getNextOrder"]
       58 CALL                             R14 1 1
       59 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       61 GETTABLEKS                       R16 R0 K1 ["AudioSection"]
       63 GETTABLEKS                       R15 R16 K3 ["Section"]
       65 GETTABLEKS                       R14 R15 K18 ["displayName"]
       67 SETTABLEKS                       R14 R13 K14 ["Title"]
       69 GETTABLEKS                       R14 R0 K19 ["OnSeeAllActivated"]
       71 SETTABLEKS                       R14 R13 K15 ["OnClickSeeAll"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K10 ["Header"]
       76 JUMPIFNOT                        R2 ; [+79]
       77 GETTABLEKS                       R11 R2 K20 ["loading"]
       79 JUMPIF                           R11 ; [+76]
       80 GETTABLEKS                       R12 R2 K21 ["assets"]
       82 LENGTH                           R11 R12
       83 LOADN                            R12 0
       84 JUMPIFNOTLT                      R12 R11 ; [+46]
       86 GETUPVAL                         R12 6
       87 GETTABLEKS                       R11 R12 K22 ["Generator"]
       89 DUPTABLE                         R12 K30 [{"LayoutOrder", "Assets", "LogImpression", "CanInsertAsset", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig", "SwimlaneName"}]
       90 NAMECALL                         R13 R1 K17 ["getNextOrder"]
       92 CALL                             R13 1 1
       93 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       95 GETTABLEKS                       R13 R2 K21 ["assets"]
       97 SETTABLEKS                       R13 R12 K23 ["Assets"]
       99 SETTABLEKS                       R9 R12 K24 ["LogImpression"]
      101 GETTABLEKS                       R14 R0 K6 ["AssetLogicWrapperProps"]
      103 GETTABLEKS                       R13 R14 K25 ["CanInsertAsset"]
      105 SETTABLEKS                       R13 R12 K25 ["CanInsertAsset"]
      107 GETTABLEKS                       R14 R0 K6 ["AssetLogicWrapperProps"]
      109 GETTABLEKS                       R13 R14 K26 ["OnAssetPreviewButtonClicked"]
      111 SETTABLEKS                       R13 R12 K26 ["OnAssetPreviewButtonClicked"]
      113 GETTABLEKS                       R14 R0 K6 ["AssetLogicWrapperProps"]
      115 GETTABLEKS                       R13 R14 K27 ["TryInsert"]
      117 SETTABLEKS                       R13 R12 K27 ["TryInsert"]
      119 GETTABLEKS                       R14 R0 K6 ["AssetLogicWrapperProps"]
      121 GETTABLEKS                       R13 R14 K28 ["TryOpenAssetConfig"]
      123 SETTABLEKS                       R13 R12 K28 ["TryOpenAssetConfig"]
      125 SETTABLEKS                       R3 R12 K29 ["SwimlaneName"]
      127 CALL                             R11 1 1
      128 SETTABLEKS                       R11 R10 K31 ["AudioTable"]
      130 JUMP                             ; [+38]
      131 GETTABLEKS                       R13 R0 K1 ["AudioSection"]
      133 GETTABLEKS                       R12 R13 K3 ["Section"]
      135 GETTABLEKS                       R11 R12 K4 ["name"]
      137 GETUPVAL                         R13 7
      138 GETTABLEKS                       R12 R13 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
      140 JUMPIFNOTEQ                      R11 R12 ; [+28]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R11 R12 K12 ["createElement"]
      145 GETUPVAL                         R12 8
      146 DUPTABLE                         R13 K33 [{"LayoutOrder"}]
      147 NAMECALL                         R14 R1 K17 ["getNextOrder"]
      149 CALL                             R14 1 1
      150 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K34 ["NoSceneSuggestions"]
      155 JUMP                             ; [+13]
      156 GETUPVAL                         R12 2
      157 GETTABLEKS                       R11 R12 K12 ["createElement"]
      159 GETUPVAL                         R12 9
      160 DUPTABLE                         R13 K33 [{"LayoutOrder"}]
      161 NAMECALL                         R14 R1 K17 ["getNextOrder"]
      163 CALL                             R14 1 1
      164 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K35 ["Loading"]
      169 GETUPVAL                         R12 2
      170 GETTABLEKS                       R11 R12 K12 ["createElement"]
      172 GETUPVAL                         R12 10
      173 DUPTABLE                         R13 K42 [{"LayoutOrder", "Size", "AutomaticSize", "BackgroundTransparency", "Layout", "Spacing", "ref"}]
      174 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
      176 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      178 GETIMPORT                        R14 K45 [UDim2.fromScale]
      180 LOADN                            R15 1
      181 LOADN                            R16 0
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K36 ["Size"]
      185 GETIMPORT                        R14 K48 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R14 R13 K37 ["AutomaticSize"]
      189 LOADN                            R14 1
      190 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      192 GETIMPORT                        R14 K51 [Enum.FillDirection.Vertical]
      194 SETTABLEKS                       R14 R13 K39 ["Layout"]
      196 GETTABLEKS                       R14 R4 K52 ["spacingUnit"]
      198 SETTABLEKS                       R14 R13 K40 ["Spacing"]
      200 SETTABLEKS                       R6 R13 K41 ["ref"]
      202 MOVE                             R14 R10
      203 CALL                             R11 3 -1
      204 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K9 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["Categorization"]
       38 GETTABLEKS                       R5 R6 K14 ["SectionHeader"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K9 ["Src"]
       45 GETTABLEKS                       R8 R9 K12 ["Components"]
       47 GETTABLEKS                       R7 R8 K15 ["Audio"]
       49 GETTABLEKS                       R6 R7 K16 ["AudioTable"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K9 ["Src"]
       56 GETTABLEKS                       R8 R9 K12 ["Components"]
       58 GETTABLEKS                       R7 R8 K17 ["NoSceneSuggestions"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R10 R0 K9 ["Src"]
       65 GETTABLEKS                       R9 R10 K18 ["Types"]
       67 GETTABLEKS                       R8 R9 K19 ["AudioTypes"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Src"]
       74 GETTABLEKS                       R10 R11 K18 ["Types"]
       76 GETTABLEKS                       R9 R10 K20 ["AssetLogicTypes"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R12 R0 K9 ["Src"]
       83 GETTABLEKS                       R11 R12 K10 ["Util"]
       85 GETTABLEKS                       R10 R11 K21 ["LayoutOrderIterator"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R13 R0 K9 ["Src"]
       92 GETTABLEKS                       R12 R13 K22 ["ContextServices"]
       94 GETTABLEKS                       R11 R12 K23 ["NavigationContext"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R15 R0 K9 ["Src"]
      101 GETTABLEKS                       R14 R15 K10 ["Util"]
      103 GETTABLEKS                       R13 R14 K24 ["Analytics"]
      105 GETTABLEKS                       R12 R13 K25 ["AssetAnalyticsContextItem"]
      107 CALL                             R11 1 1
      108 GETTABLEKS                       R13 R2 K22 ["ContextServices"]
      110 GETTABLEKS                       R12 R13 K26 ["Stylizer"]
      112 GETTABLEKS                       R14 R2 K27 ["UI"]
      114 GETTABLEKS                       R13 R14 K28 ["LoadingIndicator"]
      116 GETTABLEKS                       R15 R2 K27 ["UI"]
      118 GETTABLEKS                       R14 R15 K29 ["Pane"]
      120 DUPCLOSURE                       R15 K30 [PROTO_1]
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 RETURN                           R15 1
