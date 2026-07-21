PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Settings"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["Network"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K0 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["Network"]
       15 GETTABLEKS                       R1 R1 K3 ["networkInterface"]
       17 GETTABLEKS                       R2 R0 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K1 ["Settings"]
       21 LOADK                            R4 K4 ["Plugin"]
       22 NAMECALL                         R2 R2 K5 ["get"]
       24 CALL                             R2 2 1
       25 NAMECALL                         R3 R2 K6 ["loadInitialSettings"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K0 ["props"]
       30 GETTABLEKS                       R4 R4 K7 ["hasTutorialLimits"]
       32 JUMPIFNOT                        R4 ; [+1]
       33 RETURN                           R0 0
       34 LOADNIL                          R4
       35 GETUPVAL                         R5 0
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+10]
       38 NAMECALL                         R5 R2 K8 ["getLayoutMode"]
       40 CALL                             R5 1 1
       41 MOVE                             R4 R5
       42 GETTABLEKS                       R5 R0 K0 ["props"]
       44 GETTABLEKS                       R5 R5 K9 ["setLayoutMode"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 0
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K10 ["getBackgroundForStudioTheme"]
       53 CALL                             R7 0 1
       54 LOADN                            R5 1
       55 LOADK                            R6 K11 [""]
       56 GETTABLEKS                       R8 R3 K12 ["categoryName"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K13 ["getTabForCategoryName"]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 1
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R10 R10 K14 ["setInitialToolboxTab"]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K15 ["getTabKeyForCategoryName"]
       69 MOVE                             R12 R8
       70 CALL                             R11 1 -1
       71 CALL                             R10 -1 0
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R10 R10 K16 ["MARKETPLACE"]
       75 JUMPIFNOTEQ                      R9 R10 ; [+5]
       77 GETUPVAL                         R10 3
       78 GETTABLEKS                       R10 R10 K17 ["onStoreTabOpened"]
       80 CALL                             R10 0 0
       81 GETUPVAL                         R10 4
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+20]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K18 ["CREATIONS"]
       87 JUMPIFNOTEQ                      R9 R10 ; [+16]
       89 GETUPVAL                         R10 5
       90 CALL                             R10 0 1
       91 JUMPIFNOT                        R10 ; [+4]
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R9 R10 K19 ["DEFAULT_TAB"]
       95 JUMP                             ; [+3]
       96 GETUPVAL                         R10 2
       97 GETTABLEKS                       R9 R10 K20 ["INVENTORY"]
       99 GETUPVAL                         R10 2
      100 GETTABLEKS                       R10 R10 K21 ["DEFAULT"]
      102 GETTABLEKS                       R8 R10 K22 ["name"]
      104 DUPTABLE                         R10 K31 [{["categories"], ["categoryName"], ["creator"], ["searchTerm"], ["sortIndex"], ["targetPage"] = 1, ["selectedBackgroundIndex"], ["requestReason"]}]
      105 SETTABLEKS                       R9 R10 K23 ["categories"]
      107 SETTABLEKS                       R8 R10 K12 ["categoryName"]
      109 GETTABLEKS                       R11 R3 K24 ["creator"]
      111 SETTABLEKS                       R11 R10 K24 ["creator"]
      113 SETTABLEKS                       R6 R10 K25 ["searchTerm"]
      115 SETTABLEKS                       R5 R10 K26 ["sortIndex"]
      117 SETTABLEKS                       R7 R10 K29 ["selectedBackgroundIndex"]
      119 GETUPVAL                         R11 6
      120 GETTABLEKS                       R11 R11 K32 ["InitLoad"]
      122 SETTABLEKS                       R11 R10 K30 ["requestReason"]
      124 LOADB                            R11 1
      125 GETUPVAL                         R12 2
      126 GETTABLEKS                       R12 R12 K20 ["INVENTORY"]
      128 JUMPIFEQ                         R9 R12 ; [+8]
      130 GETUPVAL                         R12 2
      131 GETTABLEKS                       R12 R12 K18 ["CREATIONS"]
      133 JUMPIFEQ                         R9 R12 ; [+2]
      135 LOADB                            R11 0 +1
      136 LOADB                            R11 1
      137 JUMPIFNOT                        R11 ; [+8]
      138 GETTABLEKS                       R12 R0 K0 ["props"]
      140 GETTABLEKS                       R12 R12 K33 ["getToolboxManageableGroups"]
      142 MOVE                             R13 R1
      143 MOVE                             R14 R2
      144 MOVE                             R15 R10
      145 CALL                             R12 3 0
      146 GETUPVAL                         R12 7
      147 GETTABLEKS                       R13 R0 K0 ["props"]
      149 GETTABLEKS                       R13 R13 K34 ["IXP"]
      151 CALL                             R12 1 1
      152 JUMPIFNOT                        R12 ; [+18]
      153 LOADB                            R12 0
      154 GETUPVAL                         R13 8
      155 GETTABLEKS                       R13 R13 K35 ["ListView"]
      157 JUMPIFNOTEQ                      R4 R13 ; [+13]
      159 GETUPVAL                         R13 2
      160 GETTABLEKS                       R13 R13 K13 ["getTabForCategoryName"]
      162 MOVE                             R14 R8
      163 CALL                             R13 1 1
      164 GETUPVAL                         R14 2
      165 GETTABLEKS                       R14 R14 K20 ["INVENTORY"]
      167 JUMPIFEQ                         R13 R14 ; [+2]
      169 LOADB                            R12 0 +1
      170 LOADB                            R12 1
      171 JUMPIF                           R12 ; [+8]
      172 GETTABLEKS                       R13 R0 K0 ["props"]
      174 GETTABLEKS                       R13 R13 K36 ["updatePageInfo"]
      176 MOVE                             R14 R1
      177 MOVE                             R15 R2
      178 MOVE                             R16 R10
      179 CALL                             R13 3 0
      180 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
        4 NAMECALL                         R1 R1 K2 ["isAvailable"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K3 ["isWebViewEnabled"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["setToolboxInitTimestamp"]
       15 GETTABLEKS                       R3 R0 K3 ["isWebViewEnabled"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["onToolboxMounted"]
       21 GETTABLEKS                       R3 R0 K3 ["isWebViewEnabled"]
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K6 ["setAnalyticsSid"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K7 ["toolboxSid"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R3 R1 K1 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["TOOLBOX_MIN_WIDTH"]
        7 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["state"]
       15 GETTABLEKS                       R3 R3 K7 ["toolboxWidth"]
       17 JUMPIFEQ                         R3 R2 ; [+8]
       19 GETUPVAL                         R3 1
       20 DUPTABLE                         R5 K8 [{"toolboxWidth"}]
       21 SETTABLEKS                       R2 R5 K7 ["toolboxWidth"]
       23 NAMECALL                         R3 R3 K9 ["setState"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K6 ["state"]
       29 GETTABLEKS                       R3 R3 K10 ["hasValidSize"]
       31 JUMPIF                           R3 ; [+55]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K11 ["prevSize"]
       35 JUMPIFEQ                         R3 R1 ; [+51]
       37 GETTABLEKS                       R3 R1 K1 ["X"]
       39 LOADN                            R4 0
       40 JUMPIFNOTLT                      R4 R3 ; [+11]
       42 GETTABLEKS                       R3 R1 K12 ["Y"]
       44 LOADN                            R4 0
       45 JUMPIFNOTLT                      R4 R3 ; [+6]
       47 GETUPVAL                         R3 1
       48 DUPTABLE                         R5 K14 [{["hasValidSize"] = True}]
       49 NAMECALL                         R3 R3 K9 ["setState"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K11 ["prevSize"]
       55 JUMPIFNOT                        R4 ; [+6]
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K11 ["prevSize"]
       59 GETTABLEKS                       R3 R3 K1 ["X"]
       61 JUMP                             ; [+1]
       62 LOADN                            R3 0
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K11 ["prevSize"]
       66 JUMPIFNOT                        R5 ; [+6]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K11 ["prevSize"]
       70 GETTABLEKS                       R4 R4 K12 ["Y"]
       72 JUMP                             ; [+1]
       73 LOADN                            R4 0
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K15 ["onToolboxInitialSizing"]
       77 MOVE                             R6 R3
       78 MOVE                             R7 R4
       79 GETTABLEKS                       R8 R1 K1 ["X"]
       81 GETTABLEKS                       R9 R1 K12 ["Y"]
       83 CALL                             R5 4 0
       84 GETUPVAL                         R5 1
       85 SETTABLEKS                       R1 R5 K11 ["prevSize"]
       87 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["showSearchOptions"]
        5 JUMPIF                           R0 ; [+30]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["categoryName"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["getCategoryByName"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["getTabKeyForCategoryName"]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R2 ; [+7]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["ToolboxAssetTypeToEngine"]
       25 GETTABLEKS                       R6 R2 K7 ["assetType"]
       27 GETTABLE                         R4 R5 R6
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K8 ["MarketplaceSearchFilterOpened"]
       33 MOVE                             R6 R4
       34 MOVE                             R7 R3
       35 CALL                             R5 2 0
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K2 ["props"]
       39 GETTABLEKS                       R1 R1 K9 ["Modal"]
       41 GETTABLEKS                       R2 R1 K10 ["onSearchOptionsToggled"]
       43 NOT                              R3 R0
       44 CALL                             R2 1 0
       45 GETUPVAL                         R2 0
       46 DUPTABLE                         R4 K11 [{"showSearchOptions"}]
       47 NOT                              R5 R0
       48 SETTABLEKS                       R5 R4 K1 ["showSearchOptions"]
       50 NAMECALL                         R2 R2 K12 ["setState"]
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CREATIONS_KEY"]
        3 JUMPIFNOTEQ                      R2 R0 ; [+21]
        5 GETIMPORT                        R2 K2 [ipairs]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 MOVE                             R7 R6
       11 JUMPIFNOT                        R7 ; [+7]
       12 LOADB                            R7 1
       13 GETTABLEKS                       R8 R6 K3 ["selectable"]
       15 JUMPIFEQKNIL                     R8 ; [+3]
       17 GETTABLEKS                       R7 R6 K3 ["selectable"]
       19 JUMPIFNOT                        R7 ; [+3]
       20 GETTABLEKS                       R8 R6 K4 ["name"]
       22 RETURN                           R8 1
       23 FORGLOOP                         R2 2 [inext] ; [-14]
       25 GETTABLEN                        R2 R1 1
       26 GETTABLEKS                       R2 R2 K4 ["name"]
       28 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["MARKETPLACE_KEY"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+5]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["CREATOR_ROBLOX"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCategories"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["props"]
        7 GETTABLEKS                       R4 R4 K2 ["roles"]
        9 GETUPVAL                         R6 2
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+6]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["props"]
       15 GETTABLEKS                       R5 R5 K3 ["IXP"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["Dictionary"]
       23 GETTABLEKS                       R3 R3 K5 ["join"]
       25 DUPTABLE                         R4 K14 [{["categoryName"], ["creator"], ["searchTerm"] = "", ["sortIndex"] = 1, ["groupIndex"] = 0}]
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R0
       28 MOVE                             R7 R2
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["categoryName"]
       32 GETUPVAL                         R6 5
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+9]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K15 ["MARKETPLACE_KEY"]
       38 JUMPIFNOTEQ                      R0 R6 ; [+5]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K16 ["CREATOR_ROBLOX"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K7 ["creator"]
       47 MOVE                             R5 R1
       48 JUMPIF                           R5 ; [+2]
       49 NEWTABLE                         R5 0 0
       51 CALL                             R3 2 1
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K1 ["props"]
       55 GETTABLEKS                       R4 R4 K17 ["Settings"]
       57 LOADK                            R6 K18 ["Plugin"]
       58 NAMECALL                         R4 R4 K19 ["get"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K1 ["props"]
       64 GETTABLEKS                       R5 R5 K20 ["Network"]
       66 GETTABLEKS                       R5 R5 K21 ["networkInterface"]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K22 ["isWebViewEnabled"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K1 ["props"]
       74 GETTABLEKS                       R7 R7 K6 ["categoryName"]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K23 ["getTabKeyForCategoryName"]
       79 MOVE                             R9 R7
       80 CALL                             R8 1 1
       81 GETUPVAL                         R9 6
       82 GETTABLEKS                       R9 R9 K24 ["onToolboxTabChanged"]
       84 MOVE                             R10 R8
       85 MOVE                             R11 R0
       86 CALL                             R9 2 0
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K15 ["MARKETPLACE_KEY"]
       90 JUMPIFNOTEQ                      R0 R9 ; [+5]
       92 GETUPVAL                         R9 6
       93 GETTABLEKS                       R9 R9 K25 ["onStoreTabOpened"]
       95 CALL                             R9 0 0
       96 JUMPIFNOT                        R6 ; [+58]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K26 ["state"]
      100 GETTABLEKS                       R9 R9 K27 ["webViewLoadingStatus"]
      102 GETUPVAL                         R10 7
      103 GETTABLEKS                       R10 R10 K28 ["WebViewLoadingStatus"]
      105 GETTABLEKS                       R10 R10 K29 ["PASSED"]
      107 JUMPIFNOTEQ                      R9 R10 ; [+47]
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R9 R9 K15 ["MARKETPLACE_KEY"]
      112 JUMPIFNOTEQ                      R8 R9 ; [+20]
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K15 ["MARKETPLACE_KEY"]
      117 JUMPIFNOTEQ                      R0 R9 ; [+15]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K1 ["props"]
      122 GETTABLEKS                       R9 R9 K30 ["WebViewManagerContext"]
      124 NAMECALL                         R9 R9 K31 ["reloadBrowser"]
      126 CALL                             R9 1 0
      127 GETUPVAL                         R9 1
      128 DUPTABLE                         R11 K34 [{["webViewReloading"] = True}]
      129 NAMECALL                         R9 R9 K35 ["setState"]
      131 CALL                             R9 2 0
      132 JUMP                             ; [+22]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K15 ["MARKETPLACE_KEY"]
      136 JUMPIFNOTEQ                      R0 R9 ; [+10]
      138 GETUPVAL                         R9 1
      139 GETTABLEKS                       R9 R9 K1 ["props"]
      141 GETTABLEKS                       R9 R9 K30 ["WebViewManagerContext"]
      143 NAMECALL                         R9 R9 K36 ["showBrowser"]
      145 CALL                             R9 1 0
      146 JUMP                             ; [+8]
      147 GETUPVAL                         R9 1
      148 GETTABLEKS                       R9 R9 K1 ["props"]
      150 GETTABLEKS                       R9 R9 K30 ["WebViewManagerContext"]
      152 NAMECALL                         R9 R9 K37 ["hideBrowser"]
      154 CALL                             R9 1 0
      155 GETUPVAL                         R9 1
      156 GETTABLEKS                       R9 R9 K1 ["props"]
      158 GETTABLEKS                       R9 R9 K38 ["changeMarketplaceTab"]
      160 MOVE                             R10 R5
      161 MOVE                             R11 R0
      162 MOVE                             R12 R2
      163 MOVE                             R13 R4
      164 MOVE                             R14 R3
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K1 ["props"]
      168 GETTABLEKS                       R15 R15 K3 ["IXP"]
      170 GETUPVAL                         R16 1
      171 GETTABLEKS                       R16 R16 K22 ["isWebViewEnabled"]
      173 GETUPVAL                         R17 1
      174 GETTABLEKS                       R17 R17 K26 ["state"]
      176 GETTABLEKS                       R17 R17 K27 ["webViewLoadingStatus"]
      178 CALL                             R9 8 0
      179 GETUPVAL                         R9 8
      180 GETTABLEKS                       R9 R9 K39 ["getCategory"]
      182 GETUPVAL                         R10 1
      183 GETTABLEKS                       R10 R10 K1 ["props"]
      185 GETTABLEKS                       R10 R10 K6 ["categoryName"]
      187 CALL                             R9 1 1
      188 GETUPVAL                         R10 8
      189 GETTABLEKS                       R10 R10 K39 ["getCategory"]
      191 GETTABLEKS                       R11 R3 K6 ["categoryName"]
      193 CALL                             R10 1 1
      194 GETUPVAL                         R11 6
      195 GETTABLEKS                       R11 R11 K40 ["onCategorySelected"]
      197 MOVE                             R12 R9
      198 MOVE                             R13 R10
      199 CALL                             R11 2 0
      200 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["categoryName"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["getTabKeyForCategoryName"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["changeMarketplaceTab"]
       13 MOVE                             R3 R1
       14 DUPTABLE                         R4 K4 [{"categoryName"}]
       15 SETTABLEKS                       R0 R4 K1 ["categoryName"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Settings"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["Network"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["props"]
       16 GETTABLEKS                       R1 R1 K2 ["Network"]
       18 GETTABLEKS                       R1 R1 K3 ["networkInterface"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["props"]
       23 GETTABLEKS                       R2 R2 K1 ["Settings"]
       25 LOADK                            R4 K4 ["Plugin"]
       26 NAMECALL                         R2 R2 K5 ["get"]
       28 CALL                             R2 2 1
       29 DUPTABLE                         R3 K7 [{"searchTerm"}]
       30 SETTABLEKS                       R0 R3 K6 ["searchTerm"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K0 ["props"]
       35 GETTABLEKS                       R4 R4 K8 ["updatePageInfo"]
       37 MOVE                             R5 R1
       38 MOVE                             R6 R2
       39 MOVE                             R7 R3
       40 CALL                             R4 3 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTabKeyForCategoryName"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["categoryName"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["MARKETPLACE_KEY"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["props"]
       20 GETTABLEKS                       R1 R1 K4 ["WebViewManagerContext"]
       22 NAMECALL                         R1 R1 K5 ["showBrowser"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K1 ["props"]
       29 GETTABLEKS                       R1 R1 K4 ["WebViewManagerContext"]
       31 NAMECALL                         R1 R1 K6 ["hideBrowser"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["webViewLoadingStatus"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["WebViewLoadingStatus"]
        8 GETTABLEKS                       R1 R1 K3 ["FAILED"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["state"]
       16 GETTABLEKS                       R0 R0 K4 ["webViewReloading"]
       18 JUMPIFNOT                        R0 ; [+15]
       19 GETUPVAL                         R0 0
       20 DUPTABLE                         R2 K9 [{["webViewError"], ["webViewReloading"] = False, ["webViewRetryAttempt"] = 0}]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K10 ["None"]
       24 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       26 NAMECALL                         R0 R0 K11 ["setState"]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K12 ["showOrHideWebView"]
       32 CALL                             R0 0 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K0 ["state"]
       37 GETTABLEKS                       R0 R0 K13 ["hasWebViewEverLoaded"]
       39 JUMPIF                           R0 ; [+25]
       40 GETUPVAL                         R0 0
       41 DUPTABLE                         R2 K15 [{["webViewLoadingStatus"], ["webViewError"], ["webViewRetryAttempt"] = 0, ["hasWebViewEverLoaded"] = True, ["webViewReloading"] = False}]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K2 ["WebViewLoadingStatus"]
       45 GETTABLEKS                       R3 R3 K16 ["PASSED"]
       47 SETTABLEKS                       R3 R2 K1 ["webViewLoadingStatus"]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K10 ["None"]
       52 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       54 NAMECALL                         R0 R0 K11 ["setState"]
       56 CALL                             R0 2 0
       57 GETUPVAL                         R0 3
       58 GETTABLEKS                       R0 R0 K17 ["onWebViewInit"]
       60 CALL                             R0 0 0
       61 GETUPVAL                         R0 0
       62 GETTABLEKS                       R0 R0 K12 ["showOrHideWebView"]
       64 CALL                             R0 0 0
       65 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["webViewLoadingStatus"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["WebViewLoadingStatus"]
        8 GETTABLEKS                       R2 R2 K3 ["FAILED"]
       10 JUMPIFEQ                         R1 R2 ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["isMounted"]
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["state"]
       19 GETTABLEKS                       R1 R1 K5 ["hasWebViewEverLoaded"]
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K6 ["onFallbackToLuaUi"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 3
       29 CALL                             R1 0 1
       30 JUMPIFNOT                        R1 ; [+28]
       31 GETUPVAL                         R1 0
       32 DUPTABLE                         R3 K11 [{["showFallbackAnnouncement"], ["webViewLoadingStatus"], ["webViewError"], ["webViewRetryAttempt"] = 0}]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K12 ["GetService"]
       36 LOADK                            R5 K13 ["RunService"]
       37 CALL                             R4 1 1
       38 NAMECALL                         R4 R4 K14 ["IsEdit"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K7 ["showFallbackAnnouncement"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K2 ["WebViewLoadingStatus"]
       46 GETTABLEKS                       R4 R4 K3 ["FAILED"]
       48 SETTABLEKS                       R4 R3 K1 ["webViewLoadingStatus"]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R4 R4 K15 ["None"]
       53 SETTABLEKS                       R4 R3 K8 ["webViewError"]
       55 NAMECALL                         R1 R1 K16 ["setState"]
       57 CALL                             R1 2 0
       58 JUMP                             ; [+17]
       59 GETUPVAL                         R1 0
       60 DUPTABLE                         R3 K17 [{["webViewLoadingStatus"], ["webViewError"], ["webViewRetryAttempt"] = 0}]
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R4 R4 K2 ["WebViewLoadingStatus"]
       64 GETTABLEKS                       R4 R4 K3 ["FAILED"]
       66 SETTABLEKS                       R4 R3 K1 ["webViewLoadingStatus"]
       68 GETUPVAL                         R4 5
       69 GETTABLEKS                       R4 R4 K15 ["None"]
       71 SETTABLEKS                       R4 R3 K8 ["webViewError"]
       73 NAMECALL                         R1 R1 K16 ["setState"]
       75 CALL                             R1 2 0
       76 GETUPVAL                         R1 0
       77 NAMECALL                         R1 R1 K18 ["connectAllSignals"]
       79 CALL                             R1 1 0
       80 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
        5 NAMECALL                         R1 R1 K2 ["hideBrowser"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K5 [string.find]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K6 ["WEBVIEW_LOAD_FAILED"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+24]
       14 GETIMPORT                        R1 K5 [string.find]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K7 ["WEBVIEW_INVALID_WIDGET"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+18]
       20 GETIMPORT                        R1 K5 [string.find]
       22 MOVE                             R2 R0
       23 LOADK                            R3 K8 ["WEBVIEW_INVALID_PARENT"]
       24 CALL                             R1 2 1
       25 JUMPIF                           R1 ; [+12]
       26 GETIMPORT                        R1 K5 [string.find]
       28 MOVE                             R2 R0
       29 LOADK                            R3 K9 ["WEBVIEW_INVALID_CHILD"]
       30 CALL                             R1 2 1
       31 JUMPIF                           R1 ; [+6]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K10 ["state"]
       35 GETTABLEKS                       R1 R1 K11 ["hasWebViewEverLoaded"]
       37 JUMPIFNOT                        R1 ; [+8]
       38 GETUPVAL                         R1 0
       39 DUPTABLE                         R3 K13 [{"webViewError"}]
       40 SETTABLEKS                       R0 R3 K12 ["webViewError"]
       42 NAMECALL                         R1 R1 K14 ["setState"]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K15 ["handleFallBackToLuaUI"]
       49 MOVE                             R2 R0
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isWebViewEnabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["webViewError"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K1 ["state"]
       17 GETTABLEKS                       R1 R1 K3 ["webViewLoadingStatus"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["WebViewLoadingStatus"]
       22 GETTABLEKS                       R2 R2 K5 ["PASSED"]
       24 JUMPIFEQ                         R1 R2 ; [+15]
       26 JUMPIF                           R0 ; [+13]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K6 ["isMounted"]
       30 JUMPIFNOT                        R1 ; [+9]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K7 ["handleFallBackToLuaUI"]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K8 ["WebViewErrors"]
       37 GETTABLEKS                       R2 R2 K9 ["LOAD_TIMEOUT"]
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R2 R0 K0 ["handleWebViewInit"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+13]
        6 GETTABLEKS                       R3 R0 K1 ["isWebViewEnabled"]
        8 NOT                              R2 R3
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["GetService"]
       13 LOADK                            R3 K3 ["RunService"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R2 R2 K4 ["IsEdit"]
       17 CALL                             R2 1 1
       18 JUMP                             ; [+1]
       19 LOADB                            R2 0
       20 DUPTABLE                         R3 K17 [{["hasValidSize"] = False, ["toolboxWidth"], ["showSearchOptions"] = False, ["webViewError"] = , ["webViewLoadingStatus"], ["webViewRetryAttempt"] = 0, ["showFallbackAnnouncement"], ["hasWebViewEverLoaded"] = False, ["webViewReloading"] = False}]
       21 GETTABLEKS                       R6 R1 K18 ["initialWidth"]
       23 ORK                              R5 R6 K13 [0]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K19 ["TOOLBOX_MIN_WIDTH"]
       27 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       29 GETIMPORT                        R4 K22 [math.max]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K7 ["toolboxWidth"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K23 ["WebViewLoadingStatus"]
       37 GETTABLEKS                       R4 R4 K24 ["WAITING"]
       39 SETTABLEKS                       R4 R3 K11 ["webViewLoadingStatus"]
       41 SETTABLEKS                       R2 R3 K14 ["showFallbackAnnouncement"]
       43 SETTABLEKS                       R3 R0 K25 ["state"]
       45 LOADB                            R3 1
       46 SETTABLEKS                       R3 R0 K26 ["isMounted"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R0 K27 ["prevSize"]
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U4
       55 SETTABLEKS                       R3 R0 K28 ["onAbsoluteSizeChange"]
       57 NAMECALL                         R3 R0 K29 ["handleInitialSettings"]
       59 CALL                             R3 1 0
       60 NAMECALL                         R3 R0 K30 ["setUpToolboxManagerComponent"]
       62 CALL                             R3 1 0
       63 NEWCLOSURE                       R3 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U4
       67 SETTABLEKS                       R3 R0 K31 ["toggleSearchOptions"]
       69 DUPCLOSURE                       R3 K32 [PROTO_4]
       70 CAPTURE                          UPVAL U5
       71 DUPCLOSURE                       R4 K33 [PROTO_5]
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U5
       74 NEWCLOSURE                       R5 P4
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U9
       84 SETTABLEKS                       R5 R0 K34 ["changeMarketplaceTab"]
       86 NEWCLOSURE                       R5 P5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U5
       89 SETTABLEKS                       R5 R0 K35 ["onBackToHome"]
       91 NEWCLOSURE                       R5 P6
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R5 R0 K36 ["updatePageInfoWithSearchTerm"]
       95 NEWCLOSURE                       R5 P7
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R5 R0 K37 ["showOrHideWebView"]
      100 NEWCLOSURE                       R5 P8
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          UPVAL U4
      105 SETTABLEKS                       R5 R0 K38 ["handleWebViewLoaded"]
      107 NEWCLOSURE                       R5 P9
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          UPVAL U0
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          UPVAL U10
      114 SETTABLEKS                       R5 R0 K39 ["handleFallBackToLuaUI"]
      116 NEWCLOSURE                       R5 P10
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R5 R0 K40 ["handleWebViewError"]
      120 NEWCLOSURE                       R5 P11
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U3
      123 SETTABLEKS                       R5 R0 K41 ["startInitCheck"]
      125 GETTABLEKS                       R5 R0 K1 ["isWebViewEnabled"]
      127 JUMPIFNOT                        R5 ; [+15]
      128 GETTABLEKS                       R6 R0 K25 ["state"]
      130 GETTABLEKS                       R6 R6 K5 ["hasValidSize"]
      132 JUMPIFNOT                        R6 ; [+7]
      133 GETIMPORT                        R5 K44 [task.delay]
      135 GETUPVAL                         R6 11
      136 GETTABLEKS                       R7 R0 K41 ["startInitCheck"]
      138 CALL                             R5 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R5
      141 SETTABLEKS                       R5 R0 K45 ["initCheckTimer"]
      143 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["searchId"]
        4 GETTABLEKS                       R5 R3 K1 ["searchId"]
        6 JUMPIFEQ                         R4 R5 ; [+8]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K2 ["logSearchAnalytics"]
       12 GETTABLEKS                       R5 R3 K3 ["searchTerm"]
       14 CALL                             R4 1 0
       15 GETTABLEKS                       R4 R0 K4 ["initCheckTimer"]
       17 JUMPIFNOTEQKNIL                  R4 ; [+17]
       19 GETTABLEKS                       R4 R0 K5 ["state"]
       21 GETTABLEKS                       R4 R4 K6 ["hasValidSize"]
       23 JUMPIFNOT                        R4 ; [+11]
       24 GETTABLEKS                       R4 R2 K6 ["hasValidSize"]
       26 JUMPIF                           R4 ; [+8]
       27 GETIMPORT                        R4 K9 [task.delay]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R6 R0 K10 ["startInitCheck"]
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R0 K4 ["initCheckTimer"]
       35 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_toolboxManagerComponent"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["plugin"]
        8 JUMPIF                           R1 ; [+5]
        9 GETTABLEKS                       R2 R0 K3 ["handleFallBackToLuaUI"]
       11 LOADK                            R3 K4 ["Unable to find Plugin"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 LOADK                            R4 K5 ["ToolboxManager"]
       15 NAMECALL                         R2 R1 K6 ["GetPluginComponent"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R0 K0 ["_toolboxManagerComponent"]
       20 GETTABLEKS                       R2 R0 K0 ["_toolboxManagerComponent"]
       22 JUMPIF                           R2 ; [+4]
       23 GETTABLEKS                       R2 R0 K3 ["handleFallBackToLuaUI"]
       25 LOADK                            R3 K7 ["Unable to find ToolboxManager component"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WHITELISTED_PLUGINS"]
        3 GETTABLEKS                       R0 R0 K1 ["name"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["changeMarketplaceTab"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["MARKETPLACE_KEY"]
       11 DUPTABLE                         R3 K5 [{"categoryName"}]
       12 SETTABLEKS                       R0 R3 K4 ["categoryName"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K6 ["openedFromPluginManagement"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["changeMarketplaceTab"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MARKETPLACE_KEY"]
        6 DUPTABLE                         R3 K4 [{"categoryName", "searchTerm"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["FREE_MODELS"]
       10 GETTABLEKS                       R4 R4 K6 ["name"]
       12 SETTABLEKS                       R4 R3 K2 ["categoryName"]
       14 SETTABLEKS                       R0 R3 K3 ["searchTerm"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R2 K2 [Enum.AssetType]
        2 GETTABLE                         R1 R2 R0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["getMarketplaceCategoryByAssetType"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["changeMarketplaceTab"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["MARKETPLACE_KEY"]
       14 DUPTABLE                         R5 K7 [{"categoryName"}]
       15 GETTABLEKS                       R6 R2 K8 ["name"]
       17 SETTABLEKS                       R6 R5 K6 ["categoryName"]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K9 ["openedExternallyByAssetType"]
       23 MOVE                             R4 R0
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_showPluginsTabConnection"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+27]
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["pluginLoaderContext"]
        8 JUMPIFNOT                        R1 ; [+21]
        9 GETTABLEKS                       R2 R0 K1 ["props"]
       11 GETTABLEKS                       R2 R2 K2 ["pluginLoaderContext"]
       13 GETTABLEKS                       R2 R2 K3 ["signals"]
       15 LOADK                            R4 K4 ["MemStorageService."]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
       19 CONCAT                           R3 R4 R5
       20 GETTABLE                         R1 R2 R3
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NAMECALL                         R1 R1 K6 ["Connect"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K0 ["_showPluginsTabConnection"]
       30 GETTABLEKS                       R1 R0 K7 ["_performSearchConnection"]
       32 JUMPIFNOTEQKNIL                  R1 ; [+26]
       34 GETTABLEKS                       R1 R0 K1 ["props"]
       36 GETTABLEKS                       R1 R1 K2 ["pluginLoaderContext"]
       38 JUMPIFNOT                        R1 ; [+20]
       39 GETTABLEKS                       R2 R0 K1 ["props"]
       41 GETTABLEKS                       R2 R2 K2 ["pluginLoaderContext"]
       43 GETTABLEKS                       R2 R2 K3 ["signals"]
       45 LOADK                            R4 K4 ["MemStorageService."]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K8 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
       49 CONCAT                           R3 R4 R5
       50 GETTABLE                         R1 R2 R3
       51 NEWCLOSURE                       R3 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 NAMECALL                         R1 R1 K6 ["Connect"]
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K7 ["_performSearchConnection"]
       59 GETTABLEKS                       R1 R0 K9 ["_changeMarketplaceTabConnection"]
       61 JUMPIFNOTEQKNIL                  R1 ; [+27]
       63 GETTABLEKS                       R1 R0 K1 ["props"]
       65 GETTABLEKS                       R1 R1 K2 ["pluginLoaderContext"]
       67 JUMPIFNOT                        R1 ; [+21]
       68 GETTABLEKS                       R2 R0 K1 ["props"]
       70 GETTABLEKS                       R2 R2 K2 ["pluginLoaderContext"]
       72 GETTABLEKS                       R2 R2 K3 ["signals"]
       74 LOADK                            R4 K4 ["MemStorageService."]
       75 GETUPVAL                         R5 3
       76 GETTABLEKS                       R5 R5 K10 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
       78 CONCAT                           R3 R4 R5
       79 GETTABLE                         R1 R2 R3
       80 NEWCLOSURE                       R3 P2
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U2
       84 NAMECALL                         R1 R1 K6 ["Connect"]
       86 CALL                             R1 2 1
       87 SETTABLEKS                       R1 R0 K9 ["_changeMarketplaceTabConnection"]
       89 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_showPluginsTabConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_showPluginsTabConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_showPluginsTabConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_performSearchConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_performSearchConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_performSearchConnection"]
       22 GETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       33 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["setRoles"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Network"]
        8 GETTABLEKS                       R2 R2 K3 ["networkInterface"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K0 ["props"]
       13 GETTABLEKS                       R1 R1 K4 ["getRobuxBalance"]
       15 GETTABLEKS                       R2 R0 K0 ["props"]
       17 GETTABLEKS                       R2 R2 K2 ["Network"]
       19 GETTABLEKS                       R2 R2 K3 ["networkInterface"]
       21 CALL                             R1 1 0
       22 GETTABLEKS                       R1 R0 K5 ["isWebViewEnabled"]
       24 JUMPIF                           R1 ; [+3]
       25 NAMECALL                         R1 R0 K6 ["connectAllSignals"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["initCheckTimer"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_24:
        0 NAMECALL                         R1 R0 K0 ["disconnectAllSignals"]
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_toolboxManagerComponent"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["isMounted"]
        9 GETTABLEKS                       R1 R0 K3 ["initCheckTimer"]
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETIMPORT                        R1 K5 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K3 ["initCheckTimer"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K6 ["onToolboxUnmounted"]
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["logFirstLuaAssetImpression"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["webViewRetryAttempt"]
        6 JUMPIFNOTLE                      R0 R1 ; [+42]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["state"]
       11 GETTABLEKS                       R1 R1 K2 ["hasWebViewEverLoaded"]
       13 JUMPIF                           R1 ; [+35]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["state"]
       17 GETTABLEKS                       R3 R3 K3 ["webViewError"]
       19 FASTCALL1                        TYPEOF R3 ; [+2]
       20 GETIMPORT                        R2 K5 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+14]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K7 ["WebViewErrors"]
       28 GETTABLEKS                       R2 R2 K8 ["MAX_MANUAL_RETRIES"]
       30 LOADK                            R3 K9 ["_"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K0 ["state"]
       34 GETTABLEKS                       R4 R4 K3 ["webViewError"]
       36 CONCAT                           R1 R2 R4
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R1 R1 K7 ["WebViewErrors"]
       41 GETTABLEKS                       R1 R1 K8 ["MAX_MANUAL_RETRIES"]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K10 ["handleFallBackToLuaUI"]
       46 MOVE                             R3 R1
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K0 ["state"]
       52 GETTABLEKS                       R2 R2 K1 ["webViewRetryAttempt"]
       54 ADDK                             R1 R2 K11 [1]
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R2 R2 K12 ["onWebViewRetryClicked"]
       58 MOVE                             R3 R1
       59 MOVE                             R4 R0
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K0 ["state"]
       63 GETTABLEKS                       R5 R5 K3 ["webViewError"]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K0 ["state"]
       68 GETTABLEKS                       R6 R6 K13 ["webViewLoadingStatus"]
       70 CALL                             R2 4 0
       71 GETUPVAL                         R2 1
       72 DUPTABLE                         R4 K15 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R5 R5 K16 ["None"]
       76 SETTABLEKS                       R5 R4 K3 ["webViewError"]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K0 ["state"]
       81 GETTABLEKS                       R6 R6 K13 ["webViewLoadingStatus"]
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K17 ["WebViewLoadingStatus"]
       86 GETTABLEKS                       R7 R7 K18 ["PASSED"]
       88 JUMPIFEQ                         R6 R7 ; [+2]
       90 LOADB                            R5 0 +1
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K14 ["webViewReloading"]
       94 SETTABLEKS                       R1 R4 K1 ["webViewRetryAttempt"]
       96 NAMECALL                         R2 R2 K19 ["setState"]
       98 CALL                             R2 2 0
       99 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["toolboxWidth"]
        6 GETTABLEKS                       R4 R2 K3 ["showSearchOptions"]
        8 GETTABLEKS                       R5 R1 K4 ["backgrounds"]
       10 GETTABLEKS                       R6 R1 K5 ["creator"]
       12 GETTABLEKS                       R7 R1 K6 ["searchTerm"]
       14 GETTABLEKS                       R8 R1 K7 ["suggestions"]
       16 JUMPIF                           R8 ; [+2]
       17 NEWTABLE                         R8 0 0
       19 GETTABLEKS                       R9 R1 K8 ["categoryName"]
       21 GETTABLEKS                       R10 R1 K9 ["audioSearchInfo"]
       23 GETTABLEKS                       R11 R1 K10 ["additionalAudioSearchInfo"]
       25 GETTABLEKS                       R12 R1 K11 ["uiSortIntent"]
       27 GETUPVAL                         R13 0
       28 GETTABLEKS                       R13 R13 K12 ["getTabKeyForCategoryName"]
       30 MOVE                             R14 R9
       31 CALL                             R13 1 1
       32 GETTABLEKS                       R14 R1 K13 ["tryOpenAssetConfig"]
       34 GETTABLEKS                       R15 R1 K14 ["pluginGui"]
       36 GETTABLEKS                       R16 R0 K0 ["props"]
       38 GETTABLEKS                       R16 R16 K15 ["Size"]
       40 GETTABLEKS                       R17 R0 K0 ["props"]
       42 GETTABLEKS                       R17 R17 K16 ["Stylizer"]
       44 GETTABLEKS                       R18 R1 K17 ["Localization"]
       46 GETTABLEKS                       R19 R1 K17 ["Localization"]
       48 GETTABLEKS                       R19 R19 K18 ["locale"]
       50 GETTABLEKS                       R20 R0 K19 ["onAbsoluteSizeChange"]
       52 GETUPVAL                         R21 1
       53 GETTABLEKS                       R21 R21 K20 ["TAB_WIDGET_HEIGHT"]
       55 LOADB                            R22 0
       56 NEWTABLE                         R23 0 0
       58 GETUPVAL                         R24 0
       59 GETTABLEKS                       R24 R24 K21 ["getEngineAssetType"]
       61 GETUPVAL                         R25 0
       62 GETTABLEKS                       R25 R25 K22 ["getCategoryByName"]
       64 MOVE                             R26 R9
       65 CALL                             R25 1 1
       66 GETTABLEKS                       R25 R25 K23 ["assetType"]
       68 CALL                             R24 1 1
       69 GETUPVAL                         R26 2
       70 CALL                             R26 0 1
       71 JUMPIFNOT                        R26 ; [+11]
       72 GETUPVAL                         R26 3
       73 CALL                             R26 0 1
       74 JUMPIFEQKNIL                     R26 ; [+8]
       76 GETIMPORT                        R25 K26 [string.split]
       78 GETUPVAL                         R26 3
       79 CALL                             R26 0 1
       80 LOADK                            R27 K27 [";"]
       81 CALL                             R25 2 1
       82 JUMP                             ; [+2]
       83 NEWTABLE                         R25 0 0
       85 GETUPVAL                         R26 0
       86 GETTABLEKS                       R26 R26 K28 ["MARKETPLACE_KEY"]
       88 JUMPIFNOTEQ                      R13 R26 ; [+56]
       90 JUMPIFNOT                        R6 ; [+2]
       91 JUMPIFNOTEQKS                    R6 K29 [""] ; [+53]
       93 JUMPIFNOTEQKS                    R7 K29 [""] ; [+51]
       95 JUMPIFNOTEQKNIL                  R10 ; [+49]
       97 JUMPIFNOTEQKNIL                  R11 ; [+47]
       99 JUMPIFNOTEQKNIL                  R12 ; [+45]
      101 GETUPVAL                         R26 2
      102 CALL                             R26 0 1
      103 JUMPIFNOT                        R26 ; [+19]
      104 GETIMPORT                        R26 K31 [ipairs]
      106 MOVE                             R27 R25
      107 CALL                             R26 1 3
      108 FORGPREP_INEXT                   R26
      109 GETIMPORT                        R32 K34 [Enum.AssetType]
      111 GETTABLE                         R31 R32 R30
      112 JUMPIFNOT                        R31 ; [+7]
      113 FASTCALL2                        TABLE_INSERT R23 R31 ; [+5]
      115 MOVE                             R33 R23
      116 MOVE                             R34 R31
      117 GETIMPORT                        R32 K37 [table.insert]
      119 CALL                             R32 2 0
      120 FORGLOOP                         R26 2 [inext] ; [-12]
      122 JUMP                             ; [+16]
      123 GETIMPORT                        R28 K39 [Enum.AssetType.Model]
      125 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      127 MOVE                             R27 R23
      128 GETIMPORT                        R26 K37 [table.insert]
      130 CALL                             R26 2 0
      131 GETIMPORT                        R28 K41 [Enum.AssetType.Audio]
      133 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      135 MOVE                             R27 R23
      136 GETIMPORT                        R26 K37 [table.insert]
      138 CALL                             R26 2 0
      139 GETIMPORT                        R26 K43 [table.find]
      141 MOVE                             R27 R23
      142 MOVE                             R28 R24
      143 CALL                             R26 2 1
      144 MOVE                             R22 R26
      145 LOADNIL                          R26
      146 GETUPVAL                         R27 4
      147 CALL                             R27 0 1
      148 JUMPIFNOT                        R27 ; [+56]
      149 GETUPVAL                         R28 0
      150 GETTABLEKS                       R28 R28 K44 ["getTabForCategoryName"]
      152 MOVE                             R29 R9
      153 CALL                             R28 1 1
      154 GETUPVAL                         R29 0
      155 GETTABLEKS                       R29 R29 K45 ["INVENTORY"]
      157 JUMPIFEQ                         R28 R29 ; [+2]
      159 LOADB                            R27 0 +1
      160 LOADB                            R27 1
      161 JUMPIFNOT                        R4 ; [+57]
      162 JUMPIFNOT                        R27 ; [+12]
      163 GETUPVAL                         R28 5
      164 GETTABLEKS                       R28 R28 K46 ["createElement"]
      166 GETUPVAL                         R29 6
      167 DUPTABLE                         R30 K48 [{"OnClose"}]
      168 GETTABLEKS                       R31 R0 K49 ["toggleSearchOptions"]
      170 SETTABLEKS                       R31 R30 K47 ["OnClose"]
      172 CALL                             R28 2 1
      173 MOVE                             R26 R28
      174 JUMP                             ; [+44]
      175 GETUPVAL                         R28 0
      176 GETTABLEKS                       R28 R28 K50 ["categoryIsAudio"]
      178 MOVE                             R29 R9
      179 CALL                             R28 1 1
      180 JUMPIFNOT                        R28 ; [+12]
      181 GETUPVAL                         R28 5
      182 GETTABLEKS                       R28 R28 K46 ["createElement"]
      184 GETUPVAL                         R29 7
      185 DUPTABLE                         R30 K48 [{"OnClose"}]
      186 GETTABLEKS                       R31 R0 K49 ["toggleSearchOptions"]
      188 SETTABLEKS                       R31 R30 K47 ["OnClose"]
      190 CALL                             R28 2 1
      191 MOVE                             R26 R28
      192 JUMP                             ; [+26]
      193 GETUPVAL                         R28 5
      194 GETTABLEKS                       R28 R28 K46 ["createElement"]
      196 GETUPVAL                         R29 8
      197 DUPTABLE                         R30 K48 [{"OnClose"}]
      198 GETTABLEKS                       R31 R0 K49 ["toggleSearchOptions"]
      200 SETTABLEKS                       R31 R30 K47 ["OnClose"]
      202 CALL                             R28 2 1
      203 MOVE                             R26 R28
      204 JUMP                             ; [+14]
      205 JUMPIFNOT                        R4 ; [+12]
      206 GETUPVAL                         R27 5
      207 GETTABLEKS                       R27 R27 K46 ["createElement"]
      209 GETUPVAL                         R28 9
      210 DUPTABLE                         R29 K52 [{"onSearchOptionsToggled"}]
      211 GETTABLEKS                       R30 R0 K49 ["toggleSearchOptions"]
      213 SETTABLEKS                       R30 R29 K51 ["onSearchOptionsToggled"]
      215 CALL                             R27 2 1
      216 MOVE                             R26 R27
      217 JUMP                             ; [+1]
      218 LOADNIL                          R26
      219 GETTABLEKS                       R27 R0 K53 ["isWebViewEnabled"]
      221 MOVE                             R28 R27
      222 JUMPIFNOT                        R28 ; [+7]
      223 GETUPVAL                         R29 0
      224 GETTABLEKS                       R29 R29 K28 ["MARKETPLACE_KEY"]
      226 JUMPIFEQ                         R13 R29 ; [+2]
      228 LOADB                            R28 0 +1
      229 LOADB                            R28 1
      230 MOVE                             R29 R28
      231 JUMPIFNOT                        R29 ; [+13]
      232 GETTABLEKS                       R30 R0 K1 ["state"]
      234 GETTABLEKS                       R30 R30 K54 ["webViewLoadingStatus"]
      236 GETUPVAL                         R31 10
      237 GETTABLEKS                       R31 R31 K55 ["WebViewLoadingStatus"]
      239 GETTABLEKS                       R31 R31 K56 ["PASSED"]
      241 JUMPIFEQ                         R30 R31 ; [+2]
      243 LOADB                            R29 0 +1
      244 LOADB                            R29 1
      245 MOVE                             R30 R28
      246 JUMPIFNOT                        R30 ; [+28]
      247 LOADB                            R30 1
      248 GETTABLEKS                       R31 R0 K1 ["state"]
      250 GETTABLEKS                       R31 R31 K54 ["webViewLoadingStatus"]
      252 GETUPVAL                         R32 10
      253 GETTABLEKS                       R32 R32 K55 ["WebViewLoadingStatus"]
      255 GETTABLEKS                       R32 R32 K57 ["WAITING"]
      257 JUMPIFEQ                         R31 R32 ; [+17]
      259 LOADB                            R30 0
      260 GETTABLEKS                       R31 R0 K1 ["state"]
      262 GETTABLEKS                       R31 R31 K54 ["webViewLoadingStatus"]
      264 GETUPVAL                         R32 10
      265 GETTABLEKS                       R32 R32 K55 ["WebViewLoadingStatus"]
      267 GETTABLEKS                       R32 R32 K56 ["PASSED"]
      269 JUMPIFNOTEQ                      R31 R32 ; [+5]
      271 GETTABLEKS                       R30 R0 K1 ["state"]
      273 GETTABLEKS                       R30 R30 K58 ["webViewReloading"]
      275 JUMPIF                           R30 ; [+2]
      276 MOVE                             R31 R29
      277 JUMPIFNOT                        R31 ; [+8]
      278 GETTABLEKS                       R32 R0 K1 ["state"]
      280 GETTABLEKS                       R32 R32 K59 ["webViewError"]
      282 JUMPIFNOTEQKNIL                  R32 ; [+2]
      284 LOADB                            R31 0 +1
      285 LOADB                            R31 1
      286 GETUPVAL                         R32 5
      287 GETTABLEKS                       R32 R32 K46 ["createElement"]
      289 LOADK                            R33 K60 ["Frame"]
      290 NEWTABLE                         R34 8 0
      292 GETIMPORT                        R35 K63 [UDim2.new]
      294 LOADN                            R36 0
      295 LOADN                            R37 0
      296 LOADN                            R38 0
      297 LOADN                            R39 0
      298 CALL                             R35 4 1
      299 SETTABLEKS                       R35 R34 K64 ["Position"]
      301 SETTABLEKS                       R16 R34 K15 ["Size"]
      303 LOADN                            R35 0
      304 SETTABLEKS                       R35 R34 K65 ["BorderSizePixel"]
      306 GETTABLEKS                       R35 R17 K66 ["backgroundColor"]
      308 SETTABLEKS                       R35 R34 K67 ["BackgroundColor3"]
      310 GETUPVAL                         R35 5
      311 GETTABLEKS                       R35 R35 K68 ["Change"]
      313 GETTABLEKS                       R35 R35 K69 ["AbsoluteSize"]
      315 SETTABLE                         R20 R34 R35
      316 GETUPVAL                         R35 5
      317 GETTABLEKS                       R35 R35 K70 ["Event"]
      319 GETTABLEKS                       R35 R35 K71 ["MouseEnter"]
      321 GETTABLEKS                       R36 R1 K72 ["onMouseEnter"]
      323 SETTABLE                         R36 R34 R35
      324 DUPTABLE                         R35 K80 [{"AnnouncementDialogContainer", "Tabs", "Header", "WebViewConnector", "MainView", "SearchOptions", "AudioPreview"}]
      325 GETUPVAL                         R36 5
      326 GETTABLEKS                       R36 R36 K46 ["createElement"]
      328 GETUPVAL                         R37 11
      329 DUPTABLE                         R38 K84 [{"checkUserInIXP", "shouldIgnoreDateAndIXPChecks", "onCloseDialog"}]
      330 GETUPVAL                         R39 12
      331 SETTABLEKS                       R39 R38 K81 ["checkUserInIXP"]
      333 GETUPVAL                         R40 13
      334 CALL                             R40 0 1
      335 JUMPIFNOT                        R40 ; [+5]
      336 GETTABLEKS                       R39 R0 K1 ["state"]
      338 GETTABLEKS                       R39 R39 K85 ["showFallbackAnnouncement"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R39
      342 SETTABLEKS                       R39 R38 K82 ["shouldIgnoreDateAndIXPChecks"]
      344 GETUPVAL                         R40 13
      345 CALL                             R40 0 1
      346 JUMPIFNOT                        R40 ; [+3]
      347 NEWCLOSURE                       R39 P0
      348 CAPTURE                          VAL R0
      349 JUMP                             ; [+1]
      350 LOADNIL                          R39
      351 SETTABLEKS                       R39 R38 K83 ["onCloseDialog"]
      353 CALL                             R36 2 1
      354 SETTABLEKS                       R36 R35 K73 ["AnnouncementDialogContainer"]
      356 GETUPVAL                         R36 5
      357 GETTABLEKS                       R36 R36 K46 ["createElement"]
      359 GETUPVAL                         R37 14
      360 DUPTABLE                         R38 K89 [{"Disabled", "Size", "Tabs", "CurrentTab", "onTabSelected"}]
      361 GETTABLEKS                       R39 R1 K90 ["hasTutorialLimits"]
      363 SETTABLEKS                       R39 R38 K86 ["Disabled"]
      365 GETIMPORT                        R39 K63 [UDim2.new]
      367 LOADN                            R40 1
      368 LOADN                            R41 0
      369 LOADN                            R42 0
      370 GETUPVAL                         R43 1
      371 GETTABLEKS                       R43 R43 K20 ["TAB_WIDGET_HEIGHT"]
      373 CALL                             R39 4 1
      374 SETTABLEKS                       R39 R38 K15 ["Size"]
      376 GETUPVAL                         R40 15
      377 CALL                             R40 0 1
      378 JUMPIFNOT                        R40 ; [+8]
      379 GETUPVAL                         R39 16
      380 MOVE                             R40 R18
      381 GETTABLEKS                       R41 R1 K91 ["roles"]
      383 GETTABLEKS                       R42 R1 K92 ["IXP"]
      385 CALL                             R39 3 1
      386 JUMP                             ; [+3]
      387 GETUPVAL                         R39 16
      388 MOVE                             R40 R18
      389 CALL                             R39 1 1
      390 SETTABLEKS                       R39 R38 K74 ["Tabs"]
      392 SETTABLEKS                       R13 R38 K87 ["CurrentTab"]
      394 GETTABLEKS                       R39 R0 K93 ["changeMarketplaceTab"]
      396 SETTABLEKS                       R39 R38 K88 ["onTabSelected"]
      398 CALL                             R36 2 1
      399 SETTABLEKS                       R36 R35 K74 ["Tabs"]
      401 JUMPIF                           R30 ; [+2]
      402 JUMPIF                           R31 ; [+1]
      403 JUMPIFNOT                        R29 ; [+2]
      404 LOADNIL                          R36
      405 JUMP                             ; [+23]
      406 GETUPVAL                         R36 5
      407 GETTABLEKS                       R36 R36 K46 ["createElement"]
      409 GETUPVAL                         R37 17
      410 DUPTABLE                         R38 K95 [{"Position", "maxWidth", "onSearchOptionsToggled", "pluginGui"}]
      411 GETIMPORT                        R39 K63 [UDim2.new]
      413 LOADN                            R40 0
      414 LOADN                            R41 0
      415 LOADN                            R42 0
      416 MOVE                             R43 R21
      417 CALL                             R39 4 1
      418 SETTABLEKS                       R39 R38 K64 ["Position"]
      420 SETTABLEKS                       R3 R38 K94 ["maxWidth"]
      422 GETTABLEKS                       R39 R0 K49 ["toggleSearchOptions"]
      424 SETTABLEKS                       R39 R38 K51 ["onSearchOptionsToggled"]
      426 SETTABLEKS                       R15 R38 K14 ["pluginGui"]
      428 CALL                             R36 2 1
      429 SETTABLEKS                       R36 R35 K75 ["Header"]
      431 JUMPIFNOT                        R27 ; [+57]
      432 GETUPVAL                         R36 5
      433 GETTABLEKS                       R36 R36 K46 ["createElement"]
      435 GETUPVAL                         R37 18
      436 DUPTABLE                         R38 K104 [{"hasValidSize", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "ChangeMarketplaceTab", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck", "Plugin", "PluginLoaderContext", "hasWebViewEverLoaded"}]
      437 GETTABLEKS                       R39 R0 K1 ["state"]
      439 GETTABLEKS                       R39 R39 K96 ["hasValidSize"]
      441 SETTABLEKS                       R39 R38 K96 ["hasValidSize"]
      443 GETTABLEKS                       R39 R0 K1 ["state"]
      445 GETTABLEKS                       R39 R39 K54 ["webViewLoadingStatus"]
      447 SETTABLEKS                       R39 R38 K54 ["webViewLoadingStatus"]
      449 GETTABLEKS                       R39 R0 K1 ["state"]
      451 GETTABLEKS                       R39 R39 K59 ["webViewError"]
      453 SETTABLEKS                       R39 R38 K59 ["webViewError"]
      455 GETTABLEKS                       R39 R0 K1 ["state"]
      457 GETTABLEKS                       R39 R39 K105 ["webViewRetryAttempt"]
      459 SETTABLEKS                       R39 R38 K97 ["manualRetryAttempt"]
      461 GETTABLEKS                       R39 R0 K93 ["changeMarketplaceTab"]
      463 SETTABLEKS                       R39 R38 K98 ["ChangeMarketplaceTab"]
      465 GETTABLEKS                       R39 R0 K106 ["handleWebViewError"]
      467 SETTABLEKS                       R39 R38 K99 ["HandleFailedInitCheck"]
      469 GETTABLEKS                       R39 R0 K107 ["handleWebViewLoaded"]
      471 SETTABLEKS                       R39 R38 K100 ["HandlePassedInitAndLoadingCheck"]
      473 GETTABLEKS                       R39 R1 K108 ["plugin"]
      475 SETTABLEKS                       R39 R38 K101 ["Plugin"]
      477 GETTABLEKS                       R39 R1 K109 ["pluginLoaderContext"]
      479 SETTABLEKS                       R39 R38 K102 ["PluginLoaderContext"]
      481 GETTABLEKS                       R39 R0 K1 ["state"]
      483 GETTABLEKS                       R39 R39 K103 ["hasWebViewEverLoaded"]
      485 SETTABLEKS                       R39 R38 K103 ["hasWebViewEverLoaded"]
      487 CALL                             R36 2 1
      488 JUMP                             ; [+1]
      489 LOADNIL                          R36
      490 SETTABLEKS                       R36 R35 K76 ["WebViewConnector"]
      492 JUMPIFNOT                        R31 ; [+21]
      493 GETUPVAL                         R36 5
      494 GETTABLEKS                       R36 R36 K46 ["createElement"]
      496 GETUPVAL                         R37 19
      497 DUPTABLE                         R38 K112 [{"reason", "OnRetryClicked"}]
      498 GETTABLEKS                       R39 R0 K1 ["state"]
      500 GETTABLEKS                       R39 R39 K59 ["webViewError"]
      502 SETTABLEKS                       R39 R38 K110 ["reason"]
      504 NEWCLOSURE                       R39 P1
      505 CAPTURE                          UPVAL U20
      506 CAPTURE                          VAL R0
      507 CAPTURE                          UPVAL U10
      508 CAPTURE                          UPVAL U21
      509 CAPTURE                          UPVAL U5
      510 SETTABLEKS                       R39 R38 K111 ["OnRetryClicked"]
      512 CALL                             R36 2 1
      513 JUMP                             ; [+129]
      514 JUMPIFNOT                        R30 ; [+30]
      515 GETUPVAL                         R36 5
      516 GETTABLEKS                       R36 R36 K46 ["createElement"]
      518 GETUPVAL                         R37 22
      519 DUPTABLE                         R38 K114 [{"Size", "AnchorPoint", "Position"}]
      520 GETIMPORT                        R39 K63 [UDim2.new]
      522 LOADN                            R40 0
      523 LOADN                            R41 100
      524 LOADN                            R42 0
      525 LOADN                            R43 100
      526 CALL                             R39 4 1
      527 SETTABLEKS                       R39 R38 K15 ["Size"]
      529 GETIMPORT                        R39 K116 [Vector2.new]
      531 LOADK                            R40 K117 [0.5]
      532 LOADK                            R41 K117 [0.5]
      533 CALL                             R39 2 1
      534 SETTABLEKS                       R39 R38 K113 ["AnchorPoint"]
      536 GETIMPORT                        R39 K119 [UDim2.fromScale]
      538 LOADK                            R40 K117 [0.5]
      539 LOADK                            R41 K117 [0.5]
      540 CALL                             R39 2 1
      541 SETTABLEKS                       R39 R38 K64 ["Position"]
      543 CALL                             R36 2 1
      544 JUMP                             ; [+98]
      545 JUMPIFNOT                        R29 ; [+2]
      546 LOADNIL                          R36
      547 JUMP                             ; [+95]
      548 JUMPIFNOT                        R22 ; [+51]
      549 GETUPVAL                         R36 5
      550 GETTABLEKS                       R36 R36 K46 ["createElement"]
      552 GETUPVAL                         R37 23
      553 DUPTABLE                         R38 K125 [{"AssetType", "CategoryName", "Locale", "Position", "Size", "SortName", "TryOpenAssetConfig", "EnabledAssetTypes"}]
      554 SETTABLEKS                       R24 R38 K33 ["AssetType"]
      556 SETTABLEKS                       R9 R38 K120 ["CategoryName"]
      558 SETTABLEKS                       R19 R38 K121 ["Locale"]
      560 GETIMPORT                        R39 K63 [UDim2.new]
      562 LOADN                            R40 0
      563 LOADN                            R41 0
      564 LOADN                            R42 0
      565 GETUPVAL                         R45 1
      566 GETTABLEKS                       R45 R45 K127 ["HEADER_HEIGHT"]
      568 ADD                              R44 R21 R45
      569 ADDK                             R43 R44 K126 [1]
      570 CALL                             R39 4 1
      571 SETTABLEKS                       R39 R38 K64 ["Position"]
      573 GETIMPORT                        R39 K63 [UDim2.new]
      575 LOADN                            R40 1
      576 LOADN                            R41 0
      577 LOADN                            R42 1
      578 GETUPVAL                         R46 1
      579 GETTABLEKS                       R46 R46 K127 ["HEADER_HEIGHT"]
      581 ADD                              R45 R46 R21
      582 ADDK                             R44 R45 K128 [2]
      583 MINUS                            R43 R44
      584 CALL                             R39 4 1
      585 SETTABLEKS                       R39 R38 K15 ["Size"]
      587 GETUPVAL                         R39 24
      588 GETTABLEKS                       R39 R39 K129 ["getDefaultSortNameForCategory"]
      590 MOVE                             R40 R9
      591 CALL                             R39 1 1
      592 SETTABLEKS                       R39 R38 K122 ["SortName"]
      594 SETTABLEKS                       R14 R38 K123 ["TryOpenAssetConfig"]
      596 SETTABLEKS                       R23 R38 K124 ["EnabledAssetTypes"]
      598 CALL                             R36 2 1
      599 JUMP                             ; [+43]
      600 GETUPVAL                         R36 5
      601 GETTABLEKS                       R36 R36 K46 ["createElement"]
      603 GETUPVAL                         R37 25
      604 DUPTABLE                         R38 K131 [{"Position", "Size", "maxWidth", "suggestions", "tryOpenAssetConfig", "onBackToHome"}]
      605 GETIMPORT                        R39 K63 [UDim2.new]
      607 LOADN                            R40 0
      608 LOADN                            R41 0
      609 LOADN                            R42 0
      610 GETUPVAL                         R45 1
      611 GETTABLEKS                       R45 R45 K127 ["HEADER_HEIGHT"]
      613 ADD                              R44 R21 R45
      614 ADDK                             R43 R44 K126 [1]
      615 CALL                             R39 4 1
      616 SETTABLEKS                       R39 R38 K64 ["Position"]
      618 GETIMPORT                        R39 K63 [UDim2.new]
      620 LOADN                            R40 1
      621 LOADN                            R41 0
      622 LOADN                            R42 1
      623 GETUPVAL                         R46 1
      624 GETTABLEKS                       R46 R46 K127 ["HEADER_HEIGHT"]
      626 ADD                              R45 R46 R21
      627 ADDK                             R44 R45 K128 [2]
      628 MINUS                            R43 R44
      629 CALL                             R39 4 1
      630 SETTABLEKS                       R39 R38 K15 ["Size"]
      632 SETTABLEKS                       R3 R38 K94 ["maxWidth"]
      634 SETTABLEKS                       R8 R38 K7 ["suggestions"]
      636 SETTABLEKS                       R14 R38 K13 ["tryOpenAssetConfig"]
      638 GETTABLEKS                       R39 R0 K130 ["onBackToHome"]
      640 SETTABLEKS                       R39 R38 K130 ["onBackToHome"]
      642 CALL                             R36 2 1
      643 SETTABLEKS                       R36 R35 K77 ["MainView"]
      645 JUMPIF                           R30 ; [+1]
      646 JUMPIFNOT                        R29 ; [+2]
      647 LOADNIL                          R36
      648 JUMP                             ; [+1]
      649 MOVE                             R36 R26
      650 SETTABLEKS                       R36 R35 K78 ["SearchOptions"]
      652 JUMPIF                           R30 ; [+1]
      653 JUMPIFNOT                        R29 ; [+2]
      654 LOADNIL                          R36
      655 JUMP                             ; [+5]
      656 GETUPVAL                         R36 5
      657 GETTABLEKS                       R36 R36 K46 ["createElement"]
      659 GETUPVAL                         R37 26
      660 CALL                             R36 1 1
      661 SETTABLEKS                       R36 R35 K79 ["AudioPreview"]
      663 CALL                             R32 3 -1
      664 RETURN                           R32 -1

PROTO_28:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K11 [{"categoryName", "creator", "audioSearchInfo", "additionalAudioSearchInfo", "roles", "searchId", "searchTerm", "sorts", "uiSortIntent", "hasTutorialLimits"}]
       11 GETTABLEKS                       R4 R2 K1 ["categoryName"]
       13 JUMPIF                           R4 ; [+5]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K12 ["DEFAULT"]
       17 GETTABLEKS                       R4 R4 K13 ["name"]
       19 SETTABLEKS                       R4 R3 K1 ["categoryName"]
       21 GETTABLEKS                       R4 R2 K2 ["creator"]
       23 SETTABLEKS                       R4 R3 K2 ["creator"]
       25 GETTABLEKS                       R4 R2 K3 ["audioSearchInfo"]
       27 SETTABLEKS                       R4 R3 K3 ["audioSearchInfo"]
       29 GETTABLEKS                       R4 R2 K4 ["additionalAudioSearchInfo"]
       31 SETTABLEKS                       R4 R3 K4 ["additionalAudioSearchInfo"]
       33 GETTABLEKS                       R4 R0 K5 ["roles"]
       35 JUMPIF                           R4 ; [+2]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K5 ["roles"]
       40 GETTABLEKS                       R5 R2 K6 ["searchId"]
       42 ORK                              R4 R5 K14 [""]
       43 SETTABLEKS                       R4 R3 K6 ["searchId"]
       45 GETTABLEKS                       R5 R2 K7 ["searchTerm"]
       47 ORK                              R4 R5 K14 [""]
       48 SETTABLEKS                       R4 R3 K7 ["searchTerm"]
       50 GETTABLEKS                       R4 R2 K8 ["sorts"]
       52 JUMPIF                           R4 ; [+2]
       53 NEWTABLE                         R4 0 0
       55 SETTABLEKS                       R4 R3 K8 ["sorts"]
       57 GETTABLEKS                       R5 R2 K9 ["uiSortIntent"]
       59 JUMPIFNOT                        R5 ; [+10]
       60 GETTABLEKS                       R5 R2 K9 ["uiSortIntent"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K15 ["None"]
       65 JUMPIFEQ                         R5 R6 ; [+4]
       67 GETTABLEKS                       R4 R2 K9 ["uiSortIntent"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R4
       71 SETTABLEKS                       R4 R3 K9 ["uiSortIntent"]
       73 GETTABLEKS                       R5 R0 K16 ["tutorialLimits"]
       75 GETTABLEKS                       R5 R5 K17 ["assetIds"]
       77 JUMPIFNOTEQKNIL                  R5 ; [+2]
       79 LOADB                            R4 0 +1
       80 LOADB                            R4 1
       81 SETTABLEKS                       R4 R3 K10 ["hasTutorialLimits"]
       83 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 MOVE                             R10 R0
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 CALL                             R9 8 -1
       11 CALL                             R8 -1 0
       12 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K7 [{"setRoles", "updatePageInfo", "changeMarketplaceTab", "getRobuxBalance", "getToolboxManageableGroups", "logSearchAnalytics", "setLayoutMode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["setRoles"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R1 K1 ["updatePageInfo"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R2 R1 K2 ["changeMarketplaceTab"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 SETTABLEKS                       R2 R1 K3 ["getRobuxBalance"]
       23 NEWCLOSURE                       R2 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U6
       26 SETTABLEKS                       R2 R1 K4 ["getToolboxManageableGroups"]
       28 NEWCLOSURE                       R2 P5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U7
       31 SETTABLEKS                       R2 R1 K5 ["logSearchAnalytics"]
       33 GETUPVAL                         R3 8
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+4]
       36 NEWCLOSURE                       R2 P6
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U9
       39 JUMP                             ; [+1]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K6 ["setLayoutMode"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       17 GETTABLEKS                       R2 R2 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       28 GETTABLEKS                       R3 R3 K9 ["getFFlagToolboxFixDefaultTabForCreations"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K6 ["Util"]
       37 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       39 GETTABLEKS                       R4 R4 K10 ["getFFlagEnablePluginHomeview"]
       41 CALL                             R3 1 1
       42 GETTABLEKS                       R4 R0 K11 ["Packages"]
       44 GETIMPORT                        R5 K4 [require]
       46 GETTABLEKS                       R6 R4 K12 ["Cryo"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R4 K13 ["Roact"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R4 K14 ["RoactRodux"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K4 [require]
       61 GETTABLEKS                       R9 R4 K15 ["Framework"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K4 [require]
       66 GETTABLEKS                       R10 R0 K5 ["Src"]
       68 GETTABLEKS                       R10 R10 K6 ["Util"]
       70 GETTABLEKS                       R10 R10 K16 ["ToolboxUtilities"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R9 R9 K17 ["showRobloxCreatedAssets"]
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R11 R0 K5 ["Src"]
       79 GETTABLEKS                       R11 R11 K6 ["Util"]
       81 GETTABLEKS                       R11 R11 K16 ["ToolboxUtilities"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R10 R10 K18 ["getHomeViewEnabledAssetTypes"]
       86 GETIMPORT                        R11 K4 [require]
       88 GETTABLEKS                       R12 R0 K5 ["Src"]
       90 GETTABLEKS                       R12 R12 K6 ["Util"]
       92 GETTABLEKS                       R12 R12 K19 ["getIsWebViewEnabled"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K4 [require]
       97 GETTABLEKS                       R13 R0 K20 ["SharedPluginConstants"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R0 K5 ["Src"]
      102 GETTABLEKS                       R13 R13 K6 ["Util"]
      104 GETIMPORT                        R14 K4 [require]
      106 GETTABLEKS                       R15 R13 K21 ["Constants"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K4 [require]
      111 GETTABLEKS                       R16 R13 K22 ["PageInfoHelper"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K4 [require]
      116 GETTABLEKS                       R17 R13 K23 ["getTabs"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R18 R13 K24 ["Analytics"]
      123 GETTABLEKS                       R18 R18 K24 ["Analytics"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K4 [require]
      128 GETTABLEKS                       R19 R13 K25 ["isInSemanticSearchIXP"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K4 [require]
      133 GETTABLEKS                       R20 R13 K26 ["Services"]
      135 CALL                             R19 1 1
      136 GETTABLEKS                       R20 R0 K5 ["Src"]
      138 GETTABLEKS                       R20 R20 K27 ["Types"]
      140 GETIMPORT                        R21 K4 [require]
      142 GETTABLEKS                       R22 R20 K28 ["Sort"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K4 [require]
      147 GETTABLEKS                       R23 R20 K29 ["Category"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K4 [require]
      152 GETTABLEKS                       R24 R20 K30 ["RequestReason"]
      154 CALL                             R23 1 1
      155 GETTABLEKS                       R24 R0 K5 ["Src"]
      157 GETTABLEKS                       R24 R24 K31 ["Components"]
      159 GETIMPORT                        R25 K4 [require]
      161 GETTABLEKS                       R26 R24 K32 ["AnnouncementDialog"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K4 [require]
      166 GETTABLEKS                       R27 R24 K33 ["TabSet"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K4 [require]
      171 GETTABLEKS                       R28 R24 K34 ["Header"]
      173 CALL                             R27 1 1
      174 GETIMPORT                        R28 K4 [require]
      176 GETTABLEKS                       R29 R24 K35 ["MainView"]
      178 GETTABLEKS                       R29 R29 K35 ["MainView"]
      180 CALL                             R28 1 1
      181 GETIMPORT                        R29 K4 [require]
      183 GETTABLEKS                       R30 R24 K36 ["WebView"]
      185 GETTABLEKS                       R30 R30 K37 ["WebViewError"]
      187 CALL                             R29 1 1
      188 GETIMPORT                        R30 K4 [require]
      190 GETTABLEKS                       R31 R24 K38 ["SoundPreviewComponent"]
      192 CALL                             R30 1 1
      193 GETIMPORT                        R31 K4 [require]
      195 GETTABLEKS                       R32 R24 K39 ["Home"]
      197 GETTABLEKS                       R32 R32 K40 ["HomeWrapper"]
      199 CALL                             R31 1 1
      200 MOVE                             R33 R1
      201 CALL                             R33 0 1
      202 JUMPIFNOT                        R33 ; [+2]
      203 LOADNIL                          R32
      204 JUMP                             ; [+11]
      205 GETIMPORT                        R32 K4 [require]
      207 GETTABLEKS                       R33 R0 K5 ["Src"]
      209 GETTABLEKS                       R33 R33 K31 ["Components"]
      211 GETTABLEKS                       R33 R33 K41 ["SearchOptions"]
      213 GETTABLEKS                       R33 R33 K41 ["SearchOptions"]
      215 CALL                             R32 1 1
      216 GETIMPORT                        R33 K4 [require]
      218 GETTABLEKS                       R34 R0 K5 ["Src"]
      220 GETTABLEKS                       R34 R34 K31 ["Components"]
      222 GETTABLEKS                       R34 R34 K41 ["SearchOptions"]
      224 GETTABLEKS                       R34 R34 K42 ["SearchOptionWrappers"]
      226 GETTABLEKS                       R34 R34 K43 ["AudioMarketplaceSearchOptions"]
      228 CALL                             R33 1 1
      229 MOVE                             R35 R1
      230 CALL                             R35 0 1
      231 JUMPIFNOT                        R35 ; [+14]
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R35 R0 K5 ["Src"]
      236 GETTABLEKS                       R35 R35 K31 ["Components"]
      238 GETTABLEKS                       R35 R35 K41 ["SearchOptions"]
      240 GETTABLEKS                       R35 R35 K42 ["SearchOptionWrappers"]
      242 GETTABLEKS                       R35 R35 K44 ["MarketplaceSearchOptions"]
      244 CALL                             R34 1 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R34
      247 MOVE                             R36 R1
      248 CALL                             R36 0 1
      249 JUMPIFNOT                        R36 ; [+14]
      250 GETIMPORT                        R35 K4 [require]
      252 GETTABLEKS                       R36 R0 K5 ["Src"]
      254 GETTABLEKS                       R36 R36 K31 ["Components"]
      256 GETTABLEKS                       R36 R36 K41 ["SearchOptions"]
      258 GETTABLEKS                       R36 R36 K42 ["SearchOptionWrappers"]
      260 GETTABLEKS                       R36 R36 K45 ["InventorySearchOptions"]
      262 CALL                             R35 1 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R35
      265 GETTABLEKS                       R36 R8 K46 ["UI"]
      267 GETTABLEKS                       R36 R36 K47 ["LoadingIndicator"]
      269 GETTABLEKS                       R37 R0 K5 ["Src"]
      271 GETTABLEKS                       R37 R37 K48 ["Networking"]
      273 GETTABLEKS                       R37 R37 K49 ["Requests"]
      275 GETIMPORT                        R38 K4 [require]
      277 GETTABLEKS                       R39 R37 K50 ["UpdatePageInfoAndSendRequest"]
      279 CALL                             R38 1 1
      280 GETIMPORT                        R39 K4 [require]
      282 GETTABLEKS                       R40 R37 K51 ["ChangeMarketplaceTab"]
      284 CALL                             R39 1 1
      285 GETIMPORT                        R40 K4 [require]
      287 GETTABLEKS                       R41 R37 K52 ["GetToolboxManageableGroupsRequest"]
      289 CALL                             R40 1 1
      290 GETIMPORT                        R41 K4 [require]
      292 GETTABLEKS                       R42 R37 K53 ["GetRolesRequest"]
      294 CALL                             R41 1 1
      295 GETIMPORT                        R42 K4 [require]
      297 GETTABLEKS                       R43 R37 K54 ["GetRolesDebugRequest"]
      299 CALL                             R42 1 1
      300 GETIMPORT                        R43 K4 [require]
      302 GETTABLEKS                       R44 R37 K55 ["GetRobuxBalance"]
      304 CALL                             R43 1 1
      305 GETIMPORT                        R44 K4 [require]
      307 GETTABLEKS                       R45 R0 K5 ["Src"]
      309 GETTABLEKS                       R45 R45 K56 ["ContextServices"]
      311 GETTABLEKS                       R45 R45 K57 ["IXPContext"]
      313 CALL                             R44 1 1
      314 GETTABLEKS                       R45 R8 K56 ["ContextServices"]
      316 GETTABLEKS                       R46 R45 K58 ["withContext"]
      318 GETIMPORT                        R47 K4 [require]
      320 GETTABLEKS                       R48 R0 K5 ["Src"]
      322 GETTABLEKS                       R48 R48 K56 ["ContextServices"]
      324 GETTABLEKS                       R48 R48 K59 ["Settings"]
      326 CALL                             R47 1 1
      327 GETIMPORT                        R48 K4 [require]
      329 GETTABLEKS                       R49 R0 K5 ["Src"]
      331 GETTABLEKS                       R49 R49 K56 ["ContextServices"]
      333 GETTABLEKS                       R49 R49 K60 ["ModalContext"]
      335 CALL                             R48 1 1
      336 GETIMPORT                        R49 K4 [require]
      338 GETTABLEKS                       R50 R0 K5 ["Src"]
      340 GETTABLEKS                       R50 R50 K56 ["ContextServices"]
      342 GETTABLEKS                       R50 R50 K61 ["NetworkContext"]
      344 CALL                             R49 1 1
      345 GETIMPORT                        R50 K4 [require]
      347 GETTABLEKS                       R51 R0 K5 ["Src"]
      349 GETTABLEKS                       R51 R51 K62 ["Actions"]
      351 GETTABLEKS                       R51 R51 K63 ["SetLayoutMode"]
      353 CALL                             R50 1 1
      354 GETIMPORT                        R51 K4 [require]
      356 GETTABLEKS                       R52 R0 K5 ["Src"]
      358 GETTABLEKS                       R52 R52 K64 ["Thunks"]
      360 GETTABLEKS                       R52 R52 K65 ["LogMarketplaceSearchAnalytics"]
      362 CALL                             R51 1 1
      363 GETIMPORT                        R52 K67 [game]
      365 LOADK                            R54 K68 ["DebugToolboxGetRolesRequest"]
      366 NAMECALL                         R52 R52 K69 ["GetFastFlag"]
      368 CALL                             R52 2 1
      369 GETIMPORT                        R53 K4 [require]
      371 GETTABLEKS                       R54 R0 K5 ["Src"]
      373 GETTABLEKS                       R54 R54 K6 ["Util"]
      375 GETTABLEKS                       R54 R54 K7 ["SharedFlags"]
      377 GETTABLEKS                       R54 R54 K70 ["getFFlagToolboxContentManagementCombineTabs"]
      379 CALL                             R53 1 1
      380 GETIMPORT                        R54 K4 [require]
      382 GETTABLEKS                       R55 R0 K5 ["Src"]
      384 GETTABLEKS                       R55 R55 K6 ["Util"]
      386 GETTABLEKS                       R55 R55 K7 ["SharedFlags"]
      388 GETTABLEKS                       R55 R55 K71 ["getFFlagToolboxEnableAssetRows"]
      390 CALL                             R54 1 1
      391 GETIMPORT                        R55 K4 [require]
      393 GETTABLEKS                       R56 R0 K5 ["Src"]
      395 GETTABLEKS                       R56 R56 K6 ["Util"]
      397 GETTABLEKS                       R56 R56 K7 ["SharedFlags"]
      399 GETTABLEKS                       R56 R56 K72 ["getIsIXPEnabledForListView"]
      401 CALL                             R55 1 1
      402 GETIMPORT                        R56 K67 [game]
      404 LOADK                            R58 K73 ["ToolboxWVInitTimeoutSeconds"]
      405 NAMECALL                         R56 R56 K74 ["GetFastInt"]
      407 CALL                             R56 2 1
      408 GETIMPORT                        R57 K67 [game]
      410 LOADK                            R59 K75 ["ToolboxMaxManualRetryAttempts"]
      411 NAMECALL                         R57 R57 K74 ["GetFastInt"]
      413 CALL                             R57 2 1
      414 GETIMPORT                        R58 K4 [require]
      416 GETTABLEKS                       R59 R13 K7 ["SharedFlags"]
      418 GETTABLEKS                       R59 R59 K76 ["getFFlagToolboxFallbackAnnouncement"]
      420 CALL                             R58 1 1
      421 GETIMPORT                        R59 K4 [require]
      423 GETTABLEKS                       R60 R0 K5 ["Src"]
      425 GETTABLEKS                       R60 R60 K27 ["Types"]
      427 GETTABLEKS                       R60 R60 K77 ["LayoutMode"]
      429 CALL                             R59 1 1
      430 GETIMPORT                        R60 K4 [require]
      432 GETTABLEKS                       R61 R0 K5 ["Src"]
      434 GETTABLEKS                       R61 R61 K27 ["Types"]
      436 GETTABLEKS                       R61 R61 K78 ["Background"]
      438 CALL                             R60 1 1
      439 GETIMPORT                        R61 K4 [require]
      441 GETTABLEKS                       R62 R0 K5 ["Src"]
      443 GETTABLEKS                       R62 R62 K31 ["Components"]
      445 GETTABLEKS                       R62 R62 K36 ["WebView"]
      447 GETTABLEKS                       R62 R62 K79 ["WebViewTypes"]
      449 CALL                             R61 1 1
      450 GETIMPORT                        R62 K4 [require]
      452 GETTABLEKS                       R63 R0 K5 ["Src"]
      454 GETTABLEKS                       R63 R63 K31 ["Components"]
      456 GETTABLEKS                       R63 R63 K36 ["WebView"]
      458 GETTABLEKS                       R63 R63 K80 ["ToolboxWebViewConnector"]
      460 CALL                             R62 1 1
      461 GETIMPORT                        R63 K4 [require]
      463 GETTABLEKS                       R64 R4 K36 ["WebView"]
      465 CALL                             R63 1 1
      466 GETTABLEKS                       R64 R63 K24 ["Analytics"]
      468 GETTABLEKS                       R65 R63 K81 ["WebViewManagerContext"]
      470 GETTABLEKS                       R66 R6 K82 ["PureComponent"]
      472 LOADK                            R68 K83 ["Toolbox"]
      473 NAMECALL                         R66 R66 K84 ["extend"]
      475 CALL                             R66 2 1
      476 DUPTABLE                         R67 K86 [{"Size"}]
      477 GETIMPORT                        R68 K89 [UDim2.new]
      479 LOADN                            R69 1
      480 LOADN                            R70 0
      481 LOADN                            R71 1
      482 LOADN                            R72 0
      483 CALL                             R68 4 1
      484 SETTABLEKS                       R68 R67 K85 ["Size"]
      486 SETTABLEKS                       R67 R66 K90 ["defaultProps"]
      488 DUPCLOSURE                       R67 K91 [PROTO_0]
      489 CAPTURE                          VAL R54
      490 CAPTURE                          VAL R60
      491 CAPTURE                          VAL R22
      492 CAPTURE                          VAL R17
      493 CAPTURE                          VAL R53
      494 CAPTURE                          VAL R2
      495 CAPTURE                          VAL R23
      496 CAPTURE                          VAL R55
      497 CAPTURE                          VAL R59
      498 SETTABLEKS                       R67 R66 K92 ["handleInitialSettings"]
      500 DUPCLOSURE                       R67 K93 [PROTO_1]
      501 CAPTURE                          VAL R11
      502 CAPTURE                          VAL R17
      503 CAPTURE                          VAL R64
      504 SETTABLEKS                       R67 R66 K94 ["handleWebViewInit"]
      506 DUPCLOSURE                       R67 K95 [PROTO_14]
      507 CAPTURE                          VAL R58
      508 CAPTURE                          VAL R19
      509 CAPTURE                          VAL R14
      510 CAPTURE                          VAL R61
      511 CAPTURE                          VAL R17
      512 CAPTURE                          VAL R22
      513 CAPTURE                          VAL R9
      514 CAPTURE                          VAL R53
      515 CAPTURE                          VAL R5
      516 CAPTURE                          VAL R15
      517 CAPTURE                          VAL R6
      518 CAPTURE                          VAL R56
      519 SETTABLEKS                       R67 R66 K96 ["init"]
      521 DUPCLOSURE                       R67 K97 [PROTO_15]
      522 CAPTURE                          VAL R56
      523 SETTABLEKS                       R67 R66 K98 ["didUpdate"]
      525 DUPCLOSURE                       R67 K99 [PROTO_16]
      526 SETTABLEKS                       R67 R66 K100 ["setUpToolboxManagerComponent"]
      528 DUPCLOSURE                       R67 K101 [PROTO_20]
      529 CAPTURE                          VAL R12
      530 CAPTURE                          VAL R22
      531 CAPTURE                          VAL R17
      532 CAPTURE                          VAL R14
      533 SETTABLEKS                       R67 R66 K102 ["connectAllSignals"]
      535 DUPCLOSURE                       R67 K103 [PROTO_21]
      536 SETTABLEKS                       R67 R66 K104 ["disconnectAllSignals"]
      538 DUPCLOSURE                       R67 K105 [PROTO_22]
      539 SETTABLEKS                       R67 R66 K106 ["didMount"]
      541 DUPCLOSURE                       R67 K107 [PROTO_24]
      542 CAPTURE                          VAL R17
      543 SETTABLEKS                       R67 R66 K108 ["willUnmount"]
      545 DUPCLOSURE                       R67 K109 [PROTO_27]
      546 CAPTURE                          VAL R22
      547 CAPTURE                          VAL R14
      548 CAPTURE                          VAL R3
      549 CAPTURE                          VAL R10
      550 CAPTURE                          VAL R1
      551 CAPTURE                          VAL R6
      552 CAPTURE                          VAL R35
      553 CAPTURE                          VAL R33
      554 CAPTURE                          VAL R34
      555 CAPTURE                          VAL R32
      556 CAPTURE                          VAL R61
      557 CAPTURE                          VAL R25
      558 CAPTURE                          VAL R18
      559 CAPTURE                          VAL R58
      560 CAPTURE                          VAL R26
      561 CAPTURE                          VAL R53
      562 CAPTURE                          VAL R16
      563 CAPTURE                          VAL R27
      564 CAPTURE                          VAL R62
      565 CAPTURE                          VAL R29
      566 CAPTURE                          VAL R57
      567 CAPTURE                          VAL R17
      568 CAPTURE                          VAL R36
      569 CAPTURE                          VAL R31
      570 CAPTURE                          VAL R21
      571 CAPTURE                          VAL R28
      572 CAPTURE                          VAL R30
      573 SETTABLEKS                       R67 R66 K110 ["render"]
      575 MOVE                             R67 R46
      576 DUPTABLE                         R68 K116 [{"IXP", "Stylizer", "Localization", "Settings", "Modal", "Network", "WebViewManagerContext"}]
      577 MOVE                             R70 R53
      578 CALL                             R70 0 1
      579 JUMPIF                           R70 ; [+6]
      580 MOVE                             R70 R54
      581 CALL                             R70 0 1
      582 JUMPIF                           R70 ; [+3]
      583 MOVE                             R70 R55
      584 CALL                             R70 0 1
      585 JUMPIFNOT                        R70 ; [+2]
      586 MOVE                             R69 R44
      587 JUMP                             ; [+1]
      588 LOADNIL                          R69
      589 SETTABLEKS                       R69 R68 K111 ["IXP"]
      591 GETTABLEKS                       R69 R45 K112 ["Stylizer"]
      593 SETTABLEKS                       R69 R68 K112 ["Stylizer"]
      595 GETTABLEKS                       R69 R45 K113 ["Localization"]
      597 SETTABLEKS                       R69 R68 K113 ["Localization"]
      599 SETTABLEKS                       R47 R68 K59 ["Settings"]
      601 SETTABLEKS                       R48 R68 K114 ["Modal"]
      603 SETTABLEKS                       R49 R68 K115 ["Network"]
      605 SETTABLEKS                       R65 R68 K81 ["WebViewManagerContext"]
      607 CALL                             R67 1 1
      608 MOVE                             R68 R66
      609 CALL                             R67 1 1
      610 MOVE                             R66 R67
      611 DUPCLOSURE                       R67 K117 [PROTO_28]
      612 CAPTURE                          VAL R22
      613 CAPTURE                          VAL R5
      614 DUPCLOSURE                       R68 K118 [PROTO_36]
      615 CAPTURE                          VAL R52
      616 CAPTURE                          VAL R42
      617 CAPTURE                          VAL R41
      618 CAPTURE                          VAL R38
      619 CAPTURE                          VAL R39
      620 CAPTURE                          VAL R43
      621 CAPTURE                          VAL R40
      622 CAPTURE                          VAL R51
      623 CAPTURE                          VAL R54
      624 CAPTURE                          VAL R50
      625 GETTABLEKS                       R69 R7 K119 ["connect"]
      627 MOVE                             R70 R67
      628 MOVE                             R71 R68
      629 CALL                             R69 2 1
      630 MOVE                             R70 R66
      631 CALL                             R69 1 -1
      632 RETURN                           R69 -1
