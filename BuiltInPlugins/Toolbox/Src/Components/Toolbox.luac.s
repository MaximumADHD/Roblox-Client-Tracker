PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Settings"]
        4 LOADK                            R3 K2 ["Plugin"]
        5 NAMECALL                         R1 R1 K3 ["get"]
        7 CALL                             R1 2 1
        8 NAMECALL                         R2 R1 K4 ["getInventoryDeprecationBannerDismissedAt"]
       10 CALL                             R2 1 1
       11 LOADN                            R3 0
       12 JUMPIFNOTLE                      R2 R3 ; [+3]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R6 0
       17 CALL                             R6 0 1
       18 MULK                             R5 R6 K6 [24]
       19 MULK                             R4 R5 K5 [60]
       20 MULK                             R3 R4 K5 [60]
       21 GETIMPORT                        R6 K9 [os.time]
       23 CALL                             R6 0 1
       24 SUB                              R5 R6 R2
       25 JUMPIFLT                         R5 R3 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 RETURN                           R4 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["state"]
        7 GETTABLEKS                       R2 R2 K3 ["deprecationBannerHeight"]
        9 JUMPIFEQ                         R2 R1 ; [+8]
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R4 K4 [{"deprecationBannerHeight"}]
       13 SETTABLEKS                       R1 R4 K3 ["deprecationBannerHeight"]
       15 NAMECALL                         R2 R2 K5 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Settings"]
        5 LOADK                            R2 K2 ["Plugin"]
        6 NAMECALL                         R0 R0 K3 ["get"]
        8 CALL                             R0 2 1
        9 GETIMPORT                        R3 K6 [os.time]
       11 CALL                             R3 0 -1
       12 NAMECALL                         R1 R0 K7 ["setInventoryDeprecationBannerDismissedAt"]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K10 [{["deprecationBannerDismissed"] = True}]
       17 NAMECALL                         R1 R1 K11 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       20 DUPTABLE                         R3 K19 [{["hasValidSize"] = False, ["toolboxWidth"], ["showSearchOptions"] = False, ["webViewError"] = , ["webViewLoadingStatus"], ["webViewRetryAttempt"] = 0, ["showFallbackAnnouncement"], ["hasWebViewEverLoaded"] = False, ["webViewReloading"] = False, ["deprecationBannerHeight"], ["deprecationBannerDismissed"]}]
       21 GETTABLEKS                       R6 R1 K20 ["initialWidth"]
       23 ORK                              R5 R6 K13 [0]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K21 ["TOOLBOX_MIN_WIDTH"]
       27 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       29 GETIMPORT                        R4 K24 [math.max]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K7 ["toolboxWidth"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K25 ["WebViewLoadingStatus"]
       37 GETTABLEKS                       R4 R4 K26 ["WAITING"]
       39 SETTABLEKS                       R4 R3 K11 ["webViewLoadingStatus"]
       41 SETTABLEKS                       R2 R3 K14 ["showFallbackAnnouncement"]
       43 GETUPVAL                         R5 4
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+2]
       46 LOADN                            R4 0
       47 JUMP                             ; [+1]
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K17 ["deprecationBannerHeight"]
       51 GETUPVAL                         R5 4
       52 CALL                             R5 0 1
       53 JUMPIFNOT                        R5 ; [+4]
       54 NAMECALL                         R4 R0 K27 ["isDeprecationBannerDismissed"]
       56 CALL                             R4 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R4
       59 SETTABLEKS                       R4 R3 K18 ["deprecationBannerDismissed"]
       61 SETTABLEKS                       R3 R0 K28 ["state"]
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R0 K29 ["isMounted"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R0 K30 ["prevSize"]
       69 NEWCLOSURE                       R3 P0
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 SETTABLEKS                       R3 R0 K31 ["onAbsoluteSizeChange"]
       75 GETUPVAL                         R4 4
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+3]
       78 NEWCLOSURE                       R3 P1
       79 CAPTURE                          VAL R0
       80 JUMP                             ; [+1]
       81 LOADNIL                          R3
       82 SETTABLEKS                       R3 R0 K32 ["onDeprecationBannerSizeChanged"]
       84 GETUPVAL                         R4 4
       85 CALL                             R4 0 1
       86 JUMPIFNOT                        R4 ; [+3]
       87 NEWCLOSURE                       R3 P2
       88 CAPTURE                          VAL R0
       89 JUMP                             ; [+1]
       90 LOADNIL                          R3
       91 SETTABLEKS                       R3 R0 K33 ["onDeprecationBannerClosed"]
       93 NAMECALL                         R3 R0 K34 ["handleInitialSettings"]
       95 CALL                             R3 1 0
       96 NAMECALL                         R3 R0 K35 ["setUpToolboxManagerComponent"]
       98 CALL                             R3 1 0
       99 NEWCLOSURE                       R3 P3
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U5
      103 SETTABLEKS                       R3 R0 K36 ["toggleSearchOptions"]
      105 DUPCLOSURE                       R3 K37 [PROTO_7]
      106 CAPTURE                          UPVAL U6
      107 DUPCLOSURE                       R4 K38 [PROTO_8]
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          UPVAL U6
      110 NEWCLOSURE                       R5 P6
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          VAL R3
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U5
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          UPVAL U10
      120 SETTABLEKS                       R5 R0 K39 ["changeMarketplaceTab"]
      122 NEWCLOSURE                       R5 P7
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U6
      125 SETTABLEKS                       R5 R0 K40 ["onBackToHome"]
      127 NEWCLOSURE                       R5 P8
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R5 R0 K41 ["updatePageInfoWithSearchTerm"]
      131 NEWCLOSURE                       R5 P9
      132 CAPTURE                          UPVAL U6
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R5 R0 K42 ["showOrHideWebView"]
      136 NEWCLOSURE                       R5 P10
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          UPVAL U5
      141 SETTABLEKS                       R5 R0 K43 ["handleWebViewLoaded"]
      143 NEWCLOSURE                       R5 P11
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          UPVAL U5
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          UPVAL U1
      149 CAPTURE                          UPVAL U11
      150 SETTABLEKS                       R5 R0 K44 ["handleFallBackToLuaUI"]
      152 NEWCLOSURE                       R5 P12
      153 CAPTURE                          VAL R0
      154 SETTABLEKS                       R5 R0 K45 ["handleWebViewError"]
      156 NEWCLOSURE                       R5 P13
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U3
      159 SETTABLEKS                       R5 R0 K46 ["startInitCheck"]
      161 GETTABLEKS                       R5 R0 K1 ["isWebViewEnabled"]
      163 JUMPIFNOT                        R5 ; [+15]
      164 GETTABLEKS                       R6 R0 K28 ["state"]
      166 GETTABLEKS                       R6 R6 K5 ["hasValidSize"]
      168 JUMPIFNOT                        R6 ; [+7]
      169 GETIMPORT                        R5 K49 [task.delay]
      171 GETUPVAL                         R6 12
      172 GETTABLEKS                       R7 R0 K46 ["startInitCheck"]
      174 CALL                             R5 2 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R5
      177 SETTABLEKS                       R5 R0 K50 ["initCheckTimer"]
      179 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["initCheckTimer"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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
       55 GETUPVAL                         R23 2
       56 CALL                             R23 0 1
       57 JUMPIFNOT                        R23 ; [+10]
       58 LOADB                            R22 0
       59 GETUPVAL                         R23 0
       60 GETTABLEKS                       R23 R23 K21 ["MARKETPLACE_KEY"]
       62 JUMPIFEQ                         R13 R23 ; [+6]
       64 GETTABLEKS                       R23 R2 K22 ["deprecationBannerDismissed"]
       66 NOT                              R22 R23
       67 JUMP                             ; [+1]
       68 LOADNIL                          R22
       69 JUMPIFNOT                        R22 ; [+3]
       70 GETTABLEKS                       R23 R2 K23 ["deprecationBannerHeight"]
       72 JUMP                             ; [+1]
       73 LOADN                            R23 0
       74 LOADB                            R24 0
       75 NEWTABLE                         R25 0 0
       77 GETUPVAL                         R26 0
       78 GETTABLEKS                       R26 R26 K24 ["getEngineAssetType"]
       80 GETUPVAL                         R27 0
       81 GETTABLEKS                       R27 R27 K25 ["getCategoryByName"]
       83 MOVE                             R28 R9
       84 CALL                             R27 1 1
       85 GETTABLEKS                       R27 R27 K26 ["assetType"]
       87 CALL                             R26 1 1
       88 GETUPVAL                         R28 3
       89 CALL                             R28 0 1
       90 JUMPIFNOT                        R28 ; [+11]
       91 GETUPVAL                         R28 4
       92 CALL                             R28 0 1
       93 JUMPIFEQKNIL                     R28 ; [+8]
       95 GETIMPORT                        R27 K29 [string.split]
       97 GETUPVAL                         R28 4
       98 CALL                             R28 0 1
       99 LOADK                            R29 K30 [";"]
      100 CALL                             R27 2 1
      101 JUMP                             ; [+2]
      102 NEWTABLE                         R27 0 0
      104 GETUPVAL                         R28 0
      105 GETTABLEKS                       R28 R28 K21 ["MARKETPLACE_KEY"]
      107 JUMPIFNOTEQ                      R13 R28 ; [+56]
      109 JUMPIFNOT                        R6 ; [+2]
      110 JUMPIFNOTEQKS                    R6 K31 [""] ; [+53]
      112 JUMPIFNOTEQKS                    R7 K31 [""] ; [+51]
      114 JUMPIFNOTEQKNIL                  R10 ; [+49]
      116 JUMPIFNOTEQKNIL                  R11 ; [+47]
      118 JUMPIFNOTEQKNIL                  R12 ; [+45]
      120 GETUPVAL                         R28 3
      121 CALL                             R28 0 1
      122 JUMPIFNOT                        R28 ; [+19]
      123 GETIMPORT                        R28 K33 [ipairs]
      125 MOVE                             R29 R27
      126 CALL                             R28 1 3
      127 FORGPREP_INEXT                   R28
      128 GETIMPORT                        R34 K36 [Enum.AssetType]
      130 GETTABLE                         R33 R34 R32
      131 JUMPIFNOT                        R33 ; [+7]
      132 FASTCALL2                        TABLE_INSERT R25 R33 ; [+5]
      134 MOVE                             R35 R25
      135 MOVE                             R36 R33
      136 GETIMPORT                        R34 K39 [table.insert]
      138 CALL                             R34 2 0
      139 FORGLOOP                         R28 2 [inext] ; [-12]
      141 JUMP                             ; [+16]
      142 GETIMPORT                        R30 K41 [Enum.AssetType.Model]
      144 FASTCALL2                        TABLE_INSERT R25 R30 ; [+4]
      146 MOVE                             R29 R25
      147 GETIMPORT                        R28 K39 [table.insert]
      149 CALL                             R28 2 0
      150 GETIMPORT                        R30 K43 [Enum.AssetType.Audio]
      152 FASTCALL2                        TABLE_INSERT R25 R30 ; [+4]
      154 MOVE                             R29 R25
      155 GETIMPORT                        R28 K39 [table.insert]
      157 CALL                             R28 2 0
      158 GETIMPORT                        R28 K45 [table.find]
      160 MOVE                             R29 R25
      161 MOVE                             R30 R26
      162 CALL                             R28 2 1
      163 MOVE                             R24 R28
      164 LOADNIL                          R28
      165 GETUPVAL                         R29 5
      166 CALL                             R29 0 1
      167 JUMPIFNOT                        R29 ; [+56]
      168 GETUPVAL                         R30 0
      169 GETTABLEKS                       R30 R30 K46 ["getTabForCategoryName"]
      171 MOVE                             R31 R9
      172 CALL                             R30 1 1
      173 GETUPVAL                         R31 0
      174 GETTABLEKS                       R31 R31 K47 ["INVENTORY"]
      176 JUMPIFEQ                         R30 R31 ; [+2]
      178 LOADB                            R29 0 +1
      179 LOADB                            R29 1
      180 JUMPIFNOT                        R4 ; [+57]
      181 JUMPIFNOT                        R29 ; [+12]
      182 GETUPVAL                         R30 6
      183 GETTABLEKS                       R30 R30 K48 ["createElement"]
      185 GETUPVAL                         R31 7
      186 DUPTABLE                         R32 K50 [{"OnClose"}]
      187 GETTABLEKS                       R33 R0 K51 ["toggleSearchOptions"]
      189 SETTABLEKS                       R33 R32 K49 ["OnClose"]
      191 CALL                             R30 2 1
      192 MOVE                             R28 R30
      193 JUMP                             ; [+44]
      194 GETUPVAL                         R30 0
      195 GETTABLEKS                       R30 R30 K52 ["categoryIsAudio"]
      197 MOVE                             R31 R9
      198 CALL                             R30 1 1
      199 JUMPIFNOT                        R30 ; [+12]
      200 GETUPVAL                         R30 6
      201 GETTABLEKS                       R30 R30 K48 ["createElement"]
      203 GETUPVAL                         R31 8
      204 DUPTABLE                         R32 K50 [{"OnClose"}]
      205 GETTABLEKS                       R33 R0 K51 ["toggleSearchOptions"]
      207 SETTABLEKS                       R33 R32 K49 ["OnClose"]
      209 CALL                             R30 2 1
      210 MOVE                             R28 R30
      211 JUMP                             ; [+26]
      212 GETUPVAL                         R30 6
      213 GETTABLEKS                       R30 R30 K48 ["createElement"]
      215 GETUPVAL                         R31 9
      216 DUPTABLE                         R32 K50 [{"OnClose"}]
      217 GETTABLEKS                       R33 R0 K51 ["toggleSearchOptions"]
      219 SETTABLEKS                       R33 R32 K49 ["OnClose"]
      221 CALL                             R30 2 1
      222 MOVE                             R28 R30
      223 JUMP                             ; [+14]
      224 JUMPIFNOT                        R4 ; [+12]
      225 GETUPVAL                         R29 6
      226 GETTABLEKS                       R29 R29 K48 ["createElement"]
      228 GETUPVAL                         R30 10
      229 DUPTABLE                         R31 K54 [{"onSearchOptionsToggled"}]
      230 GETTABLEKS                       R32 R0 K51 ["toggleSearchOptions"]
      232 SETTABLEKS                       R32 R31 K53 ["onSearchOptionsToggled"]
      234 CALL                             R29 2 1
      235 MOVE                             R28 R29
      236 JUMP                             ; [+1]
      237 LOADNIL                          R28
      238 GETTABLEKS                       R29 R0 K55 ["isWebViewEnabled"]
      240 MOVE                             R30 R29
      241 JUMPIFNOT                        R30 ; [+7]
      242 GETUPVAL                         R31 0
      243 GETTABLEKS                       R31 R31 K21 ["MARKETPLACE_KEY"]
      245 JUMPIFEQ                         R13 R31 ; [+2]
      247 LOADB                            R30 0 +1
      248 LOADB                            R30 1
      249 MOVE                             R31 R30
      250 JUMPIFNOT                        R31 ; [+13]
      251 GETTABLEKS                       R32 R0 K1 ["state"]
      253 GETTABLEKS                       R32 R32 K56 ["webViewLoadingStatus"]
      255 GETUPVAL                         R33 11
      256 GETTABLEKS                       R33 R33 K57 ["WebViewLoadingStatus"]
      258 GETTABLEKS                       R33 R33 K58 ["PASSED"]
      260 JUMPIFEQ                         R32 R33 ; [+2]
      262 LOADB                            R31 0 +1
      263 LOADB                            R31 1
      264 MOVE                             R32 R30
      265 JUMPIFNOT                        R32 ; [+28]
      266 LOADB                            R32 1
      267 GETTABLEKS                       R33 R0 K1 ["state"]
      269 GETTABLEKS                       R33 R33 K56 ["webViewLoadingStatus"]
      271 GETUPVAL                         R34 11
      272 GETTABLEKS                       R34 R34 K57 ["WebViewLoadingStatus"]
      274 GETTABLEKS                       R34 R34 K59 ["WAITING"]
      276 JUMPIFEQ                         R33 R34 ; [+17]
      278 LOADB                            R32 0
      279 GETTABLEKS                       R33 R0 K1 ["state"]
      281 GETTABLEKS                       R33 R33 K56 ["webViewLoadingStatus"]
      283 GETUPVAL                         R34 11
      284 GETTABLEKS                       R34 R34 K57 ["WebViewLoadingStatus"]
      286 GETTABLEKS                       R34 R34 K58 ["PASSED"]
      288 JUMPIFNOTEQ                      R33 R34 ; [+5]
      290 GETTABLEKS                       R32 R0 K1 ["state"]
      292 GETTABLEKS                       R32 R32 K60 ["webViewReloading"]
      294 JUMPIF                           R32 ; [+2]
      295 MOVE                             R33 R31
      296 JUMPIFNOT                        R33 ; [+8]
      297 GETTABLEKS                       R34 R0 K1 ["state"]
      299 GETTABLEKS                       R34 R34 K61 ["webViewError"]
      301 JUMPIFNOTEQKNIL                  R34 ; [+2]
      303 LOADB                            R33 0 +1
      304 LOADB                            R33 1
      305 GETUPVAL                         R34 6
      306 GETTABLEKS                       R34 R34 K48 ["createElement"]
      308 LOADK                            R35 K62 ["Frame"]
      309 NEWTABLE                         R36 8 0
      311 GETIMPORT                        R37 K65 [UDim2.new]
      313 LOADN                            R38 0
      314 LOADN                            R39 0
      315 LOADN                            R40 0
      316 LOADN                            R41 0
      317 CALL                             R37 4 1
      318 SETTABLEKS                       R37 R36 K66 ["Position"]
      320 SETTABLEKS                       R16 R36 K15 ["Size"]
      322 LOADN                            R37 0
      323 SETTABLEKS                       R37 R36 K67 ["BorderSizePixel"]
      325 GETTABLEKS                       R37 R17 K68 ["backgroundColor"]
      327 SETTABLEKS                       R37 R36 K69 ["BackgroundColor3"]
      329 GETUPVAL                         R37 6
      330 GETTABLEKS                       R37 R37 K70 ["Change"]
      332 GETTABLEKS                       R37 R37 K71 ["AbsoluteSize"]
      334 SETTABLE                         R20 R36 R37
      335 GETUPVAL                         R37 6
      336 GETTABLEKS                       R37 R37 K72 ["Event"]
      338 GETTABLEKS                       R37 R37 K73 ["MouseEnter"]
      340 GETTABLEKS                       R38 R1 K74 ["onMouseEnter"]
      342 SETTABLE                         R38 R36 R37
      343 DUPTABLE                         R37 K83 [{"AnnouncementDialogContainer", "Tabs", "Header", "InventoryDeprecationBanner", "WebViewConnector", "MainView", "SearchOptions", "AudioPreview"}]
      344 GETUPVAL                         R38 6
      345 GETTABLEKS                       R38 R38 K48 ["createElement"]
      347 GETUPVAL                         R39 12
      348 DUPTABLE                         R40 K87 [{"checkUserInIXP", "shouldIgnoreDateAndIXPChecks", "onCloseDialog"}]
      349 GETUPVAL                         R41 13
      350 SETTABLEKS                       R41 R40 K84 ["checkUserInIXP"]
      352 GETUPVAL                         R42 14
      353 CALL                             R42 0 1
      354 JUMPIFNOT                        R42 ; [+5]
      355 GETTABLEKS                       R41 R0 K1 ["state"]
      357 GETTABLEKS                       R41 R41 K88 ["showFallbackAnnouncement"]
      359 JUMP                             ; [+1]
      360 LOADNIL                          R41
      361 SETTABLEKS                       R41 R40 K85 ["shouldIgnoreDateAndIXPChecks"]
      363 GETUPVAL                         R42 14
      364 CALL                             R42 0 1
      365 JUMPIFNOT                        R42 ; [+3]
      366 NEWCLOSURE                       R41 P0
      367 CAPTURE                          VAL R0
      368 JUMP                             ; [+1]
      369 LOADNIL                          R41
      370 SETTABLEKS                       R41 R40 K86 ["onCloseDialog"]
      372 CALL                             R38 2 1
      373 SETTABLEKS                       R38 R37 K75 ["AnnouncementDialogContainer"]
      375 GETUPVAL                         R38 6
      376 GETTABLEKS                       R38 R38 K48 ["createElement"]
      378 GETUPVAL                         R39 15
      379 DUPTABLE                         R40 K92 [{"Disabled", "Size", "Tabs", "CurrentTab", "onTabSelected"}]
      380 GETTABLEKS                       R41 R1 K93 ["hasTutorialLimits"]
      382 SETTABLEKS                       R41 R40 K89 ["Disabled"]
      384 GETIMPORT                        R41 K65 [UDim2.new]
      386 LOADN                            R42 1
      387 LOADN                            R43 0
      388 LOADN                            R44 0
      389 GETUPVAL                         R45 1
      390 GETTABLEKS                       R45 R45 K20 ["TAB_WIDGET_HEIGHT"]
      392 CALL                             R41 4 1
      393 SETTABLEKS                       R41 R40 K15 ["Size"]
      395 GETUPVAL                         R42 16
      396 CALL                             R42 0 1
      397 JUMPIFNOT                        R42 ; [+8]
      398 GETUPVAL                         R41 17
      399 MOVE                             R42 R18
      400 GETTABLEKS                       R43 R1 K94 ["roles"]
      402 GETTABLEKS                       R44 R1 K95 ["IXP"]
      404 CALL                             R41 3 1
      405 JUMP                             ; [+3]
      406 GETUPVAL                         R41 17
      407 MOVE                             R42 R18
      408 CALL                             R41 1 1
      409 SETTABLEKS                       R41 R40 K76 ["Tabs"]
      411 SETTABLEKS                       R13 R40 K90 ["CurrentTab"]
      413 GETTABLEKS                       R41 R0 K96 ["changeMarketplaceTab"]
      415 SETTABLEKS                       R41 R40 K91 ["onTabSelected"]
      417 CALL                             R38 2 1
      418 SETTABLEKS                       R38 R37 K76 ["Tabs"]
      420 JUMPIF                           R32 ; [+2]
      421 JUMPIF                           R33 ; [+1]
      422 JUMPIFNOT                        R31 ; [+2]
      423 LOADNIL                          R38
      424 JUMP                             ; [+23]
      425 GETUPVAL                         R38 6
      426 GETTABLEKS                       R38 R38 K48 ["createElement"]
      428 GETUPVAL                         R39 18
      429 DUPTABLE                         R40 K98 [{"Position", "maxWidth", "onSearchOptionsToggled", "pluginGui"}]
      430 GETIMPORT                        R41 K65 [UDim2.new]
      432 LOADN                            R42 0
      433 LOADN                            R43 0
      434 LOADN                            R44 0
      435 MOVE                             R45 R21
      436 CALL                             R41 4 1
      437 SETTABLEKS                       R41 R40 K66 ["Position"]
      439 SETTABLEKS                       R3 R40 K97 ["maxWidth"]
      441 GETTABLEKS                       R41 R0 K51 ["toggleSearchOptions"]
      443 SETTABLEKS                       R41 R40 K53 ["onSearchOptionsToggled"]
      445 SETTABLEKS                       R15 R40 K14 ["pluginGui"]
      447 CALL                             R38 2 1
      448 SETTABLEKS                       R38 R37 K77 ["Header"]
      450 JUMPIFNOT                        R22 ; [+43]
      451 GETUPVAL                         R38 6
      452 GETTABLEKS                       R38 R38 K48 ["createElement"]
      454 GETUPVAL                         R39 19
      455 DUPTABLE                         R40 K104 [{"Position", "assetType", "categoryName", "groupId", "overlayGui", "onAbsoluteSizeChanged", "onClose", "tabKey"}]
      456 GETIMPORT                        R41 K106 [UDim2.fromOffset]
      458 LOADN                            R42 0
      459 GETUPVAL                         R45 1
      460 GETTABLEKS                       R45 R45 K108 ["HEADER_HEIGHT"]
      462 ADD                              R44 R21 R45
      463 ADDK                             R43 R44 K107 [1]
      464 CALL                             R41 2 1
      465 SETTABLEKS                       R41 R40 K66 ["Position"]
      467 JUMPIFNOT                        R26 ; [+3]
      468 GETTABLEKS                       R41 R26 K109 ["Name"]
      470 JUMP                             ; [+1]
      471 LOADNIL                          R41
      472 SETTABLEKS                       R41 R40 K26 ["assetType"]
      474 SETTABLEKS                       R9 R40 K8 ["categoryName"]
      476 GETTABLEKS                       R41 R1 K99 ["groupId"]
      478 SETTABLEKS                       R41 R40 K99 ["groupId"]
      480 SETTABLEKS                       R15 R40 K100 ["overlayGui"]
      482 GETTABLEKS                       R41 R0 K110 ["onDeprecationBannerSizeChanged"]
      484 SETTABLEKS                       R41 R40 K101 ["onAbsoluteSizeChanged"]
      486 GETTABLEKS                       R41 R0 K111 ["onDeprecationBannerClosed"]
      488 SETTABLEKS                       R41 R40 K102 ["onClose"]
      490 SETTABLEKS                       R13 R40 K103 ["tabKey"]
      492 CALL                             R38 2 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R38
      495 SETTABLEKS                       R38 R37 K78 ["InventoryDeprecationBanner"]
      497 JUMPIFNOT                        R29 ; [+57]
      498 GETUPVAL                         R38 6
      499 GETTABLEKS                       R38 R38 K48 ["createElement"]
      501 GETUPVAL                         R39 20
      502 DUPTABLE                         R40 K120 [{"hasValidSize", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "ChangeMarketplaceTab", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck", "Plugin", "PluginLoaderContext", "hasWebViewEverLoaded"}]
      503 GETTABLEKS                       R41 R0 K1 ["state"]
      505 GETTABLEKS                       R41 R41 K112 ["hasValidSize"]
      507 SETTABLEKS                       R41 R40 K112 ["hasValidSize"]
      509 GETTABLEKS                       R41 R0 K1 ["state"]
      511 GETTABLEKS                       R41 R41 K56 ["webViewLoadingStatus"]
      513 SETTABLEKS                       R41 R40 K56 ["webViewLoadingStatus"]
      515 GETTABLEKS                       R41 R0 K1 ["state"]
      517 GETTABLEKS                       R41 R41 K61 ["webViewError"]
      519 SETTABLEKS                       R41 R40 K61 ["webViewError"]
      521 GETTABLEKS                       R41 R0 K1 ["state"]
      523 GETTABLEKS                       R41 R41 K121 ["webViewRetryAttempt"]
      525 SETTABLEKS                       R41 R40 K113 ["manualRetryAttempt"]
      527 GETTABLEKS                       R41 R0 K96 ["changeMarketplaceTab"]
      529 SETTABLEKS                       R41 R40 K114 ["ChangeMarketplaceTab"]
      531 GETTABLEKS                       R41 R0 K122 ["handleWebViewError"]
      533 SETTABLEKS                       R41 R40 K115 ["HandleFailedInitCheck"]
      535 GETTABLEKS                       R41 R0 K123 ["handleWebViewLoaded"]
      537 SETTABLEKS                       R41 R40 K116 ["HandlePassedInitAndLoadingCheck"]
      539 GETTABLEKS                       R41 R1 K124 ["plugin"]
      541 SETTABLEKS                       R41 R40 K117 ["Plugin"]
      543 GETTABLEKS                       R41 R1 K125 ["pluginLoaderContext"]
      545 SETTABLEKS                       R41 R40 K118 ["PluginLoaderContext"]
      547 GETTABLEKS                       R41 R0 K1 ["state"]
      549 GETTABLEKS                       R41 R41 K119 ["hasWebViewEverLoaded"]
      551 SETTABLEKS                       R41 R40 K119 ["hasWebViewEverLoaded"]
      553 CALL                             R38 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R38
      556 SETTABLEKS                       R38 R37 K79 ["WebViewConnector"]
      558 JUMPIFNOT                        R33 ; [+21]
      559 GETUPVAL                         R38 6
      560 GETTABLEKS                       R38 R38 K48 ["createElement"]
      562 GETUPVAL                         R39 21
      563 DUPTABLE                         R40 K128 [{"reason", "OnRetryClicked"}]
      564 GETTABLEKS                       R41 R0 K1 ["state"]
      566 GETTABLEKS                       R41 R41 K61 ["webViewError"]
      568 SETTABLEKS                       R41 R40 K126 ["reason"]
      570 NEWCLOSURE                       R41 P1
      571 CAPTURE                          UPVAL U22
      572 CAPTURE                          VAL R0
      573 CAPTURE                          UPVAL U11
      574 CAPTURE                          UPVAL U23
      575 CAPTURE                          UPVAL U6
      576 SETTABLEKS                       R41 R40 K127 ["OnRetryClicked"]
      578 CALL                             R38 2 1
      579 JUMP                             ; [+150]
      580 JUMPIFNOT                        R32 ; [+30]
      581 GETUPVAL                         R38 6
      582 GETTABLEKS                       R38 R38 K48 ["createElement"]
      584 GETUPVAL                         R39 24
      585 DUPTABLE                         R40 K130 [{"Size", "AnchorPoint", "Position"}]
      586 GETIMPORT                        R41 K65 [UDim2.new]
      588 LOADN                            R42 0
      589 LOADN                            R43 100
      590 LOADN                            R44 0
      591 LOADN                            R45 100
      592 CALL                             R41 4 1
      593 SETTABLEKS                       R41 R40 K15 ["Size"]
      595 GETIMPORT                        R41 K132 [Vector2.new]
      597 LOADK                            R42 K133 [0.5]
      598 LOADK                            R43 K133 [0.5]
      599 CALL                             R41 2 1
      600 SETTABLEKS                       R41 R40 K129 ["AnchorPoint"]
      602 GETIMPORT                        R41 K135 [UDim2.fromScale]
      604 LOADK                            R42 K133 [0.5]
      605 LOADK                            R43 K133 [0.5]
      606 CALL                             R41 2 1
      607 SETTABLEKS                       R41 R40 K66 ["Position"]
      609 CALL                             R38 2 1
      610 JUMP                             ; [+119]
      611 JUMPIFNOT                        R31 ; [+2]
      612 LOADNIL                          R38
      613 JUMP                             ; [+116]
      614 JUMPIFNOT                        R24 ; [+51]
      615 GETUPVAL                         R38 6
      616 GETTABLEKS                       R38 R38 K48 ["createElement"]
      618 GETUPVAL                         R39 25
      619 DUPTABLE                         R40 K141 [{"AssetType", "CategoryName", "Locale", "Position", "Size", "SortName", "TryOpenAssetConfig", "EnabledAssetTypes"}]
      620 SETTABLEKS                       R26 R40 K35 ["AssetType"]
      622 SETTABLEKS                       R9 R40 K136 ["CategoryName"]
      624 SETTABLEKS                       R19 R40 K137 ["Locale"]
      626 GETIMPORT                        R41 K65 [UDim2.new]
      628 LOADN                            R42 0
      629 LOADN                            R43 0
      630 LOADN                            R44 0
      631 GETUPVAL                         R47 1
      632 GETTABLEKS                       R47 R47 K108 ["HEADER_HEIGHT"]
      634 ADD                              R46 R21 R47
      635 ADDK                             R45 R46 K107 [1]
      636 CALL                             R41 4 1
      637 SETTABLEKS                       R41 R40 K66 ["Position"]
      639 GETIMPORT                        R41 K65 [UDim2.new]
      641 LOADN                            R42 1
      642 LOADN                            R43 0
      643 LOADN                            R44 1
      644 GETUPVAL                         R48 1
      645 GETTABLEKS                       R48 R48 K108 ["HEADER_HEIGHT"]
      647 ADD                              R47 R48 R21
      648 ADDK                             R46 R47 K142 [2]
      649 MINUS                            R45 R46
      650 CALL                             R41 4 1
      651 SETTABLEKS                       R41 R40 K15 ["Size"]
      653 GETUPVAL                         R41 26
      654 GETTABLEKS                       R41 R41 K143 ["getDefaultSortNameForCategory"]
      656 MOVE                             R42 R9
      657 CALL                             R41 1 1
      658 SETTABLEKS                       R41 R40 K138 ["SortName"]
      660 SETTABLEKS                       R14 R40 K139 ["TryOpenAssetConfig"]
      662 SETTABLEKS                       R25 R40 K140 ["EnabledAssetTypes"]
      664 CALL                             R38 2 1
      665 JUMP                             ; [+64]
      666 GETUPVAL                         R38 6
      667 GETTABLEKS                       R38 R38 K48 ["createElement"]
      669 GETUPVAL                         R39 27
      670 DUPTABLE                         R40 K145 [{"Position", "Size", "maxWidth", "suggestions", "tryOpenAssetConfig", "onBackToHome"}]
      671 GETIMPORT                        R41 K65 [UDim2.new]
      673 LOADN                            R42 0
      674 LOADN                            R43 0
      675 LOADN                            R44 0
      676 GETUPVAL                         R46 2
      677 CALL                             R46 0 1
      678 JUMPIFNOT                        R46 ; [+7]
      679 GETUPVAL                         R48 1
      680 GETTABLEKS                       R48 R48 K108 ["HEADER_HEIGHT"]
      682 ADD                              R47 R21 R48
      683 ADDK                             R46 R47 K107 [1]
      684 ADD                              R45 R46 R23
      685 JUMP                             ; [+5]
      686 GETUPVAL                         R47 1
      687 GETTABLEKS                       R47 R47 K108 ["HEADER_HEIGHT"]
      689 ADD                              R46 R21 R47
      690 ADDK                             R45 R46 K107 [1]
      691 CALL                             R41 4 1
      692 SETTABLEKS                       R41 R40 K66 ["Position"]
      694 GETIMPORT                        R41 K65 [UDim2.new]
      696 LOADN                            R42 1
      697 LOADN                            R43 0
      698 LOADN                            R44 1
      699 GETUPVAL                         R46 2
      700 CALL                             R46 0 1
      701 JUMPIFNOT                        R46 ; [+8]
      702 GETUPVAL                         R49 1
      703 GETTABLEKS                       R49 R49 K108 ["HEADER_HEIGHT"]
      705 ADD                              R48 R49 R21
      706 ADDK                             R47 R48 K142 [2]
      707 ADD                              R46 R47 R23
      708 MINUS                            R45 R46
      709 JUMP                             ; [+6]
      710 GETUPVAL                         R48 1
      711 GETTABLEKS                       R48 R48 K108 ["HEADER_HEIGHT"]
      713 ADD                              R47 R48 R21
      714 ADDK                             R46 R47 K142 [2]
      715 MINUS                            R45 R46
      716 CALL                             R41 4 1
      717 SETTABLEKS                       R41 R40 K15 ["Size"]
      719 SETTABLEKS                       R3 R40 K97 ["maxWidth"]
      721 SETTABLEKS                       R8 R40 K7 ["suggestions"]
      723 SETTABLEKS                       R14 R40 K13 ["tryOpenAssetConfig"]
      725 GETTABLEKS                       R41 R0 K144 ["onBackToHome"]
      727 SETTABLEKS                       R41 R40 K144 ["onBackToHome"]
      729 CALL                             R38 2 1
      730 SETTABLEKS                       R38 R37 K80 ["MainView"]
      732 JUMPIF                           R32 ; [+1]
      733 JUMPIFNOT                        R31 ; [+2]
      734 LOADNIL                          R38
      735 JUMP                             ; [+1]
      736 MOVE                             R38 R28
      737 SETTABLEKS                       R38 R37 K81 ["SearchOptions"]
      739 JUMPIF                           R32 ; [+1]
      740 JUMPIFNOT                        R31 ; [+2]
      741 LOADNIL                          R38
      742 JUMP                             ; [+5]
      743 GETUPVAL                         R38 6
      744 GETTABLEKS                       R38 R38 K48 ["createElement"]
      746 GETUPVAL                         R39 28
      747 CALL                             R38 1 1
      748 SETTABLEKS                       R38 R37 K82 ["AudioPreview"]
      750 CALL                             R34 3 -1
      751 RETURN                           R34 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCategoryByName"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETTABLEKS                       R3 R2 K1 ["ownershipType"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["OwnershipType"]
       11 GETTABLEKS                       R4 R4 K3 ["GROUP"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+7]
       15 GETTABLEKS                       R3 R0 K4 ["groups"]
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R3 R0 K5 ["groupIndex"]
       20 JUMPIF                           R3 ; [+2]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K6 ["getGroupIdForPageInfo"]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 LOADN                            R5 0
       29 JUMPIFNOTLT                      R5 R3 ; [+3]
       31 MOVE                             R4 R3
       32 RETURN                           R4 1
       33 LOADNIL                          R4
       34 RETURN                           R4 1

PROTO_32:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R2 K1 ["categoryName"]
       12 JUMPIF                           R3 ; [+5]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["DEFAULT"]
       16 GETTABLEKS                       R3 R3 K3 ["name"]
       18 DUPTABLE                         R4 K14 [{"categoryName", "groupId", "creator", "audioSearchInfo", "additionalAudioSearchInfo", "roles", "searchId", "searchTerm", "sorts", "uiSortIntent", "hasTutorialLimits"}]
       19 SETTABLEKS                       R3 R4 K1 ["categoryName"]
       21 GETUPVAL                         R6 1
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+35]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K15 ["getCategoryByName"]
       27 MOVE                             R7 R3
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+15]
       30 GETTABLEKS                       R7 R6 K16 ["ownershipType"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K17 ["OwnershipType"]
       35 GETTABLEKS                       R8 R8 K18 ["GROUP"]
       37 JUMPIFNOTEQ                      R7 R8 ; [+7]
       39 GETTABLEKS                       R7 R2 K19 ["groups"]
       41 JUMPIFNOT                        R7 ; [+3]
       42 GETTABLEKS                       R7 R2 K20 ["groupIndex"]
       44 JUMPIF                           R7 ; [+2]
       45 LOADNIL                          R5
       46 JUMP                             ; [+13]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K21 ["getGroupIdForPageInfo"]
       50 MOVE                             R8 R2
       51 CALL                             R7 1 1
       52 LOADN                            R8 0
       53 JUMPIFNOTLT                      R8 R7 ; [+3]
       55 MOVE                             R5 R7
       56 JUMP                             ; [+3]
       57 LOADNIL                          R5
       58 JUMP                             ; [+1]
       59 LOADNIL                          R5
       60 SETTABLEKS                       R5 R4 K4 ["groupId"]
       62 GETTABLEKS                       R5 R2 K5 ["creator"]
       64 SETTABLEKS                       R5 R4 K5 ["creator"]
       66 GETTABLEKS                       R5 R2 K6 ["audioSearchInfo"]
       68 SETTABLEKS                       R5 R4 K6 ["audioSearchInfo"]
       70 GETTABLEKS                       R5 R2 K7 ["additionalAudioSearchInfo"]
       72 SETTABLEKS                       R5 R4 K7 ["additionalAudioSearchInfo"]
       74 GETTABLEKS                       R5 R0 K8 ["roles"]
       76 JUMPIF                           R5 ; [+2]
       77 NEWTABLE                         R5 0 0
       79 SETTABLEKS                       R5 R4 K8 ["roles"]
       81 GETTABLEKS                       R6 R2 K9 ["searchId"]
       83 ORK                              R5 R6 K22 [""]
       84 SETTABLEKS                       R5 R4 K9 ["searchId"]
       86 GETTABLEKS                       R6 R2 K10 ["searchTerm"]
       88 ORK                              R5 R6 K22 [""]
       89 SETTABLEKS                       R5 R4 K10 ["searchTerm"]
       91 GETTABLEKS                       R5 R2 K11 ["sorts"]
       93 JUMPIF                           R5 ; [+2]
       94 NEWTABLE                         R5 0 0
       96 SETTABLEKS                       R5 R4 K11 ["sorts"]
       98 GETTABLEKS                       R6 R2 K12 ["uiSortIntent"]
      100 JUMPIFNOT                        R6 ; [+10]
      101 GETTABLEKS                       R6 R2 K12 ["uiSortIntent"]
      103 GETUPVAL                         R7 3
      104 GETTABLEKS                       R7 R7 K23 ["None"]
      106 JUMPIFEQ                         R6 R7 ; [+4]
      108 GETTABLEKS                       R5 R2 K12 ["uiSortIntent"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R5
      112 SETTABLEKS                       R5 R4 K12 ["uiSortIntent"]
      114 GETTABLEKS                       R6 R0 K24 ["tutorialLimits"]
      116 GETTABLEKS                       R6 R6 K25 ["assetIds"]
      118 JUMPIFNOTEQKNIL                  R6 ; [+2]
      120 LOADB                            R5 0 +1
      121 LOADB                            R5 1
      122 SETTABLEKS                       R5 R4 K13 ["hasTutorialLimits"]
      124 RETURN                           R4 1

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_40:
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
       42 GETIMPORT                        R4 K4 [require]
       44 GETTABLEKS                       R5 R0 K5 ["Src"]
       46 GETTABLEKS                       R5 R5 K6 ["Util"]
       48 GETTABLEKS                       R5 R5 K7 ["SharedFlags"]
       50 GETTABLEKS                       R5 R5 K11 ["getFFlagToolboxInventoryDeprecationBanner"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K4 [require]
       55 GETTABLEKS                       R6 R0 K5 ["Src"]
       57 GETTABLEKS                       R6 R6 K12 ["Flags"]
       59 GETTABLEKS                       R6 R6 K13 ["getFFlagToolboxInventoryDeprecationBannerRouteButton"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K4 [require]
       64 GETTABLEKS                       R7 R0 K5 ["Src"]
       66 GETTABLEKS                       R7 R7 K12 ["Flags"]
       68 GETTABLEKS                       R7 R7 K14 ["getFIntToolboxInventoryDeprecationBannerDismissDays"]
       70 CALL                             R6 1 1
       71 GETTABLEKS                       R7 R0 K15 ["Packages"]
       73 GETIMPORT                        R8 K4 [require]
       75 GETTABLEKS                       R9 R7 K16 ["Cryo"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R10 R7 K17 ["Roact"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K4 [require]
       85 GETTABLEKS                       R11 R7 K18 ["RoactRodux"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K4 [require]
       90 GETTABLEKS                       R12 R7 K19 ["Framework"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R13 R0 K5 ["Src"]
       97 GETTABLEKS                       R13 R13 K6 ["Util"]
       99 GETTABLEKS                       R13 R13 K20 ["ToolboxUtilities"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R12 R12 K21 ["showRobloxCreatedAssets"]
      104 GETIMPORT                        R13 K4 [require]
      106 GETTABLEKS                       R14 R0 K5 ["Src"]
      108 GETTABLEKS                       R14 R14 K6 ["Util"]
      110 GETTABLEKS                       R14 R14 K20 ["ToolboxUtilities"]
      112 CALL                             R13 1 1
      113 GETTABLEKS                       R13 R13 K22 ["getHomeViewEnabledAssetTypes"]
      115 GETIMPORT                        R14 K4 [require]
      117 GETTABLEKS                       R15 R0 K5 ["Src"]
      119 GETTABLEKS                       R15 R15 K6 ["Util"]
      121 GETTABLEKS                       R15 R15 K23 ["getIsWebViewEnabled"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K4 [require]
      126 GETTABLEKS                       R16 R0 K24 ["SharedPluginConstants"]
      128 CALL                             R15 1 1
      129 GETTABLEKS                       R16 R0 K5 ["Src"]
      131 GETTABLEKS                       R16 R16 K6 ["Util"]
      133 GETIMPORT                        R17 K4 [require]
      135 GETTABLEKS                       R18 R16 K25 ["Constants"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K4 [require]
      140 GETTABLEKS                       R19 R16 K26 ["PageInfoHelper"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K4 [require]
      145 GETTABLEKS                       R20 R16 K27 ["getTabs"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K4 [require]
      150 GETTABLEKS                       R21 R16 K28 ["Analytics"]
      152 GETTABLEKS                       R21 R21 K28 ["Analytics"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K4 [require]
      157 GETTABLEKS                       R22 R16 K29 ["isInSemanticSearchIXP"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K4 [require]
      162 GETTABLEKS                       R23 R16 K30 ["Services"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R0 K5 ["Src"]
      167 GETTABLEKS                       R23 R23 K31 ["Types"]
      169 GETIMPORT                        R24 K4 [require]
      171 GETTABLEKS                       R25 R23 K32 ["Sort"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K4 [require]
      176 GETTABLEKS                       R26 R23 K33 ["Category"]
      178 CALL                             R25 1 1
      179 GETIMPORT                        R26 K4 [require]
      181 GETTABLEKS                       R27 R23 K34 ["RequestReason"]
      183 CALL                             R26 1 1
      184 GETTABLEKS                       R27 R0 K5 ["Src"]
      186 GETTABLEKS                       R27 R27 K35 ["Components"]
      188 GETIMPORT                        R28 K4 [require]
      190 GETTABLEKS                       R29 R27 K36 ["AnnouncementDialog"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K4 [require]
      195 GETTABLEKS                       R30 R27 K37 ["InventoryDeprecationBanner"]
      197 CALL                             R29 1 1
      198 GETIMPORT                        R30 K4 [require]
      200 GETTABLEKS                       R31 R27 K38 ["TabSet"]
      202 CALL                             R30 1 1
      203 GETIMPORT                        R31 K4 [require]
      205 GETTABLEKS                       R32 R27 K39 ["Header"]
      207 CALL                             R31 1 1
      208 GETIMPORT                        R32 K4 [require]
      210 GETTABLEKS                       R33 R27 K40 ["MainView"]
      212 GETTABLEKS                       R33 R33 K40 ["MainView"]
      214 CALL                             R32 1 1
      215 GETIMPORT                        R33 K4 [require]
      217 GETTABLEKS                       R34 R27 K41 ["WebView"]
      219 GETTABLEKS                       R34 R34 K42 ["WebViewError"]
      221 CALL                             R33 1 1
      222 GETIMPORT                        R34 K4 [require]
      224 GETTABLEKS                       R35 R27 K43 ["SoundPreviewComponent"]
      226 CALL                             R34 1 1
      227 GETIMPORT                        R35 K4 [require]
      229 GETTABLEKS                       R36 R27 K44 ["Home"]
      231 GETTABLEKS                       R36 R36 K45 ["HomeWrapper"]
      233 CALL                             R35 1 1
      234 MOVE                             R37 R1
      235 CALL                             R37 0 1
      236 JUMPIFNOT                        R37 ; [+2]
      237 LOADNIL                          R36
      238 JUMP                             ; [+11]
      239 GETIMPORT                        R36 K4 [require]
      241 GETTABLEKS                       R37 R0 K5 ["Src"]
      243 GETTABLEKS                       R37 R37 K35 ["Components"]
      245 GETTABLEKS                       R37 R37 K46 ["SearchOptions"]
      247 GETTABLEKS                       R37 R37 K46 ["SearchOptions"]
      249 CALL                             R36 1 1
      250 GETIMPORT                        R37 K4 [require]
      252 GETTABLEKS                       R38 R0 K5 ["Src"]
      254 GETTABLEKS                       R38 R38 K35 ["Components"]
      256 GETTABLEKS                       R38 R38 K46 ["SearchOptions"]
      258 GETTABLEKS                       R38 R38 K47 ["SearchOptionWrappers"]
      260 GETTABLEKS                       R38 R38 K48 ["AudioMarketplaceSearchOptions"]
      262 CALL                             R37 1 1
      263 MOVE                             R39 R1
      264 CALL                             R39 0 1
      265 JUMPIFNOT                        R39 ; [+14]
      266 GETIMPORT                        R38 K4 [require]
      268 GETTABLEKS                       R39 R0 K5 ["Src"]
      270 GETTABLEKS                       R39 R39 K35 ["Components"]
      272 GETTABLEKS                       R39 R39 K46 ["SearchOptions"]
      274 GETTABLEKS                       R39 R39 K47 ["SearchOptionWrappers"]
      276 GETTABLEKS                       R39 R39 K49 ["MarketplaceSearchOptions"]
      278 CALL                             R38 1 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R38
      281 MOVE                             R40 R1
      282 CALL                             R40 0 1
      283 JUMPIFNOT                        R40 ; [+14]
      284 GETIMPORT                        R39 K4 [require]
      286 GETTABLEKS                       R40 R0 K5 ["Src"]
      288 GETTABLEKS                       R40 R40 K35 ["Components"]
      290 GETTABLEKS                       R40 R40 K46 ["SearchOptions"]
      292 GETTABLEKS                       R40 R40 K47 ["SearchOptionWrappers"]
      294 GETTABLEKS                       R40 R40 K50 ["InventorySearchOptions"]
      296 CALL                             R39 1 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R39
      299 GETTABLEKS                       R40 R11 K51 ["UI"]
      301 GETTABLEKS                       R40 R40 K52 ["LoadingIndicator"]
      303 GETTABLEKS                       R41 R0 K5 ["Src"]
      305 GETTABLEKS                       R41 R41 K53 ["Networking"]
      307 GETTABLEKS                       R41 R41 K54 ["Requests"]
      309 GETIMPORT                        R42 K4 [require]
      311 GETTABLEKS                       R43 R41 K55 ["UpdatePageInfoAndSendRequest"]
      313 CALL                             R42 1 1
      314 GETIMPORT                        R43 K4 [require]
      316 GETTABLEKS                       R44 R41 K56 ["ChangeMarketplaceTab"]
      318 CALL                             R43 1 1
      319 GETIMPORT                        R44 K4 [require]
      321 GETTABLEKS                       R45 R41 K57 ["GetToolboxManageableGroupsRequest"]
      323 CALL                             R44 1 1
      324 GETIMPORT                        R45 K4 [require]
      326 GETTABLEKS                       R46 R41 K58 ["GetRolesRequest"]
      328 CALL                             R45 1 1
      329 GETIMPORT                        R46 K4 [require]
      331 GETTABLEKS                       R47 R41 K59 ["GetRolesDebugRequest"]
      333 CALL                             R46 1 1
      334 GETIMPORT                        R47 K4 [require]
      336 GETTABLEKS                       R48 R41 K60 ["GetRobuxBalance"]
      338 CALL                             R47 1 1
      339 GETIMPORT                        R48 K4 [require]
      341 GETTABLEKS                       R49 R0 K5 ["Src"]
      343 GETTABLEKS                       R49 R49 K61 ["ContextServices"]
      345 GETTABLEKS                       R49 R49 K62 ["IXPContext"]
      347 CALL                             R48 1 1
      348 GETTABLEKS                       R49 R11 K61 ["ContextServices"]
      350 GETTABLEKS                       R50 R49 K63 ["withContext"]
      352 GETIMPORT                        R51 K4 [require]
      354 GETTABLEKS                       R52 R0 K5 ["Src"]
      356 GETTABLEKS                       R52 R52 K61 ["ContextServices"]
      358 GETTABLEKS                       R52 R52 K64 ["Settings"]
      360 CALL                             R51 1 1
      361 GETIMPORT                        R52 K4 [require]
      363 GETTABLEKS                       R53 R0 K5 ["Src"]
      365 GETTABLEKS                       R53 R53 K61 ["ContextServices"]
      367 GETTABLEKS                       R53 R53 K65 ["ModalContext"]
      369 CALL                             R52 1 1
      370 GETIMPORT                        R53 K4 [require]
      372 GETTABLEKS                       R54 R0 K5 ["Src"]
      374 GETTABLEKS                       R54 R54 K61 ["ContextServices"]
      376 GETTABLEKS                       R54 R54 K66 ["NetworkContext"]
      378 CALL                             R53 1 1
      379 GETIMPORT                        R54 K4 [require]
      381 GETTABLEKS                       R55 R0 K5 ["Src"]
      383 GETTABLEKS                       R55 R55 K67 ["Actions"]
      385 GETTABLEKS                       R55 R55 K68 ["SetLayoutMode"]
      387 CALL                             R54 1 1
      388 GETIMPORT                        R55 K4 [require]
      390 GETTABLEKS                       R56 R0 K5 ["Src"]
      392 GETTABLEKS                       R56 R56 K69 ["Thunks"]
      394 GETTABLEKS                       R56 R56 K70 ["LogMarketplaceSearchAnalytics"]
      396 CALL                             R55 1 1
      397 GETIMPORT                        R56 K72 [game]
      399 LOADK                            R58 K73 ["DebugToolboxGetRolesRequest"]
      400 NAMECALL                         R56 R56 K74 ["GetFastFlag"]
      402 CALL                             R56 2 1
      403 GETIMPORT                        R57 K4 [require]
      405 GETTABLEKS                       R58 R0 K5 ["Src"]
      407 GETTABLEKS                       R58 R58 K6 ["Util"]
      409 GETTABLEKS                       R58 R58 K7 ["SharedFlags"]
      411 GETTABLEKS                       R58 R58 K75 ["getFFlagToolboxContentManagementCombineTabs"]
      413 CALL                             R57 1 1
      414 GETIMPORT                        R58 K4 [require]
      416 GETTABLEKS                       R59 R0 K5 ["Src"]
      418 GETTABLEKS                       R59 R59 K6 ["Util"]
      420 GETTABLEKS                       R59 R59 K7 ["SharedFlags"]
      422 GETTABLEKS                       R59 R59 K76 ["getFFlagToolboxEnableAssetRows"]
      424 CALL                             R58 1 1
      425 GETIMPORT                        R59 K4 [require]
      427 GETTABLEKS                       R60 R0 K5 ["Src"]
      429 GETTABLEKS                       R60 R60 K6 ["Util"]
      431 GETTABLEKS                       R60 R60 K7 ["SharedFlags"]
      433 GETTABLEKS                       R60 R60 K77 ["getIsIXPEnabledForListView"]
      435 CALL                             R59 1 1
      436 GETIMPORT                        R60 K72 [game]
      438 LOADK                            R62 K78 ["ToolboxWVInitTimeoutSeconds"]
      439 NAMECALL                         R60 R60 K79 ["GetFastInt"]
      441 CALL                             R60 2 1
      442 GETIMPORT                        R61 K72 [game]
      444 LOADK                            R63 K80 ["ToolboxMaxManualRetryAttempts"]
      445 NAMECALL                         R61 R61 K79 ["GetFastInt"]
      447 CALL                             R61 2 1
      448 GETIMPORT                        R62 K4 [require]
      450 GETTABLEKS                       R63 R16 K7 ["SharedFlags"]
      452 GETTABLEKS                       R63 R63 K81 ["getFFlagToolboxFallbackAnnouncement"]
      454 CALL                             R62 1 1
      455 GETIMPORT                        R63 K4 [require]
      457 GETTABLEKS                       R64 R0 K5 ["Src"]
      459 GETTABLEKS                       R64 R64 K31 ["Types"]
      461 GETTABLEKS                       R64 R64 K82 ["LayoutMode"]
      463 CALL                             R63 1 1
      464 GETIMPORT                        R64 K4 [require]
      466 GETTABLEKS                       R65 R0 K5 ["Src"]
      468 GETTABLEKS                       R65 R65 K31 ["Types"]
      470 GETTABLEKS                       R65 R65 K83 ["Background"]
      472 CALL                             R64 1 1
      473 GETIMPORT                        R65 K4 [require]
      475 GETTABLEKS                       R66 R0 K5 ["Src"]
      477 GETTABLEKS                       R66 R66 K35 ["Components"]
      479 GETTABLEKS                       R66 R66 K41 ["WebView"]
      481 GETTABLEKS                       R66 R66 K84 ["WebViewTypes"]
      483 CALL                             R65 1 1
      484 GETIMPORT                        R66 K4 [require]
      486 GETTABLEKS                       R67 R0 K5 ["Src"]
      488 GETTABLEKS                       R67 R67 K35 ["Components"]
      490 GETTABLEKS                       R67 R67 K41 ["WebView"]
      492 GETTABLEKS                       R67 R67 K85 ["ToolboxWebViewConnector"]
      494 CALL                             R66 1 1
      495 GETIMPORT                        R67 K4 [require]
      497 GETTABLEKS                       R68 R7 K41 ["WebView"]
      499 CALL                             R67 1 1
      500 GETTABLEKS                       R68 R67 K28 ["Analytics"]
      502 GETTABLEKS                       R69 R67 K86 ["WebViewManagerContext"]
      504 GETTABLEKS                       R70 R9 K87 ["PureComponent"]
      506 LOADK                            R72 K88 ["Toolbox"]
      507 NAMECALL                         R70 R70 K89 ["extend"]
      509 CALL                             R70 2 1
      510 DUPTABLE                         R71 K91 [{"Size"}]
      511 GETIMPORT                        R72 K94 [UDim2.new]
      513 LOADN                            R73 1
      514 LOADN                            R74 0
      515 LOADN                            R75 1
      516 LOADN                            R76 0
      517 CALL                             R72 4 1
      518 SETTABLEKS                       R72 R71 K90 ["Size"]
      520 SETTABLEKS                       R71 R70 K95 ["defaultProps"]
      522 DUPCLOSURE                       R71 K96 [PROTO_0]
      523 CAPTURE                          VAL R6
      524 SETTABLEKS                       R71 R70 K97 ["isDeprecationBannerDismissed"]
      526 DUPCLOSURE                       R71 K98 [PROTO_1]
      527 CAPTURE                          VAL R58
      528 CAPTURE                          VAL R64
      529 CAPTURE                          VAL R25
      530 CAPTURE                          VAL R20
      531 CAPTURE                          VAL R57
      532 CAPTURE                          VAL R2
      533 CAPTURE                          VAL R26
      534 CAPTURE                          VAL R59
      535 CAPTURE                          VAL R63
      536 SETTABLEKS                       R71 R70 K99 ["handleInitialSettings"]
      538 DUPCLOSURE                       R71 K100 [PROTO_2]
      539 CAPTURE                          VAL R14
      540 CAPTURE                          VAL R20
      541 CAPTURE                          VAL R68
      542 SETTABLEKS                       R71 R70 K101 ["handleWebViewInit"]
      544 DUPCLOSURE                       R71 K102 [PROTO_17]
      545 CAPTURE                          VAL R62
      546 CAPTURE                          VAL R22
      547 CAPTURE                          VAL R17
      548 CAPTURE                          VAL R65
      549 CAPTURE                          VAL R4
      550 CAPTURE                          VAL R20
      551 CAPTURE                          VAL R25
      552 CAPTURE                          VAL R12
      553 CAPTURE                          VAL R57
      554 CAPTURE                          VAL R8
      555 CAPTURE                          VAL R18
      556 CAPTURE                          VAL R9
      557 CAPTURE                          VAL R60
      558 SETTABLEKS                       R71 R70 K103 ["init"]
      560 DUPCLOSURE                       R71 K104 [PROTO_18]
      561 CAPTURE                          VAL R60
      562 SETTABLEKS                       R71 R70 K105 ["didUpdate"]
      564 DUPCLOSURE                       R71 K106 [PROTO_19]
      565 SETTABLEKS                       R71 R70 K107 ["setUpToolboxManagerComponent"]
      567 DUPCLOSURE                       R71 K108 [PROTO_23]
      568 CAPTURE                          VAL R15
      569 CAPTURE                          VAL R25
      570 CAPTURE                          VAL R20
      571 CAPTURE                          VAL R17
      572 SETTABLEKS                       R71 R70 K109 ["connectAllSignals"]
      574 DUPCLOSURE                       R71 K110 [PROTO_24]
      575 SETTABLEKS                       R71 R70 K111 ["disconnectAllSignals"]
      577 DUPCLOSURE                       R71 K112 [PROTO_25]
      578 SETTABLEKS                       R71 R70 K113 ["didMount"]
      580 DUPCLOSURE                       R71 K114 [PROTO_27]
      581 CAPTURE                          VAL R20
      582 SETTABLEKS                       R71 R70 K115 ["willUnmount"]
      584 DUPCLOSURE                       R71 K116 [PROTO_30]
      585 CAPTURE                          VAL R25
      586 CAPTURE                          VAL R17
      587 CAPTURE                          VAL R4
      588 CAPTURE                          VAL R3
      589 CAPTURE                          VAL R13
      590 CAPTURE                          VAL R1
      591 CAPTURE                          VAL R9
      592 CAPTURE                          VAL R39
      593 CAPTURE                          VAL R37
      594 CAPTURE                          VAL R38
      595 CAPTURE                          VAL R36
      596 CAPTURE                          VAL R65
      597 CAPTURE                          VAL R28
      598 CAPTURE                          VAL R21
      599 CAPTURE                          VAL R62
      600 CAPTURE                          VAL R30
      601 CAPTURE                          VAL R57
      602 CAPTURE                          VAL R19
      603 CAPTURE                          VAL R31
      604 CAPTURE                          VAL R29
      605 CAPTURE                          VAL R66
      606 CAPTURE                          VAL R33
      607 CAPTURE                          VAL R61
      608 CAPTURE                          VAL R20
      609 CAPTURE                          VAL R40
      610 CAPTURE                          VAL R35
      611 CAPTURE                          VAL R24
      612 CAPTURE                          VAL R32
      613 CAPTURE                          VAL R34
      614 SETTABLEKS                       R71 R70 K117 ["render"]
      616 MOVE                             R71 R50
      617 DUPTABLE                         R72 K123 [{"IXP", "Stylizer", "Localization", "Settings", "Modal", "Network", "WebViewManagerContext"}]
      618 MOVE                             R74 R57
      619 CALL                             R74 0 1
      620 JUMPIF                           R74 ; [+6]
      621 MOVE                             R74 R58
      622 CALL                             R74 0 1
      623 JUMPIF                           R74 ; [+3]
      624 MOVE                             R74 R59
      625 CALL                             R74 0 1
      626 JUMPIFNOT                        R74 ; [+2]
      627 MOVE                             R73 R48
      628 JUMP                             ; [+1]
      629 LOADNIL                          R73
      630 SETTABLEKS                       R73 R72 K118 ["IXP"]
      632 GETTABLEKS                       R73 R49 K119 ["Stylizer"]
      634 SETTABLEKS                       R73 R72 K119 ["Stylizer"]
      636 GETTABLEKS                       R73 R49 K120 ["Localization"]
      638 SETTABLEKS                       R73 R72 K120 ["Localization"]
      640 SETTABLEKS                       R51 R72 K64 ["Settings"]
      642 SETTABLEKS                       R52 R72 K121 ["Modal"]
      644 SETTABLEKS                       R53 R72 K122 ["Network"]
      646 SETTABLEKS                       R69 R72 K86 ["WebViewManagerContext"]
      648 CALL                             R71 1 1
      649 MOVE                             R72 R70
      650 CALL                             R71 1 1
      651 MOVE                             R70 R71
      652 DUPCLOSURE                       R71 K124 [PROTO_31]
      653 CAPTURE                          VAL R25
      654 CAPTURE                          VAL R18
      655 DUPCLOSURE                       R72 K125 [PROTO_32]
      656 CAPTURE                          VAL R25
      657 CAPTURE                          VAL R5
      658 CAPTURE                          VAL R18
      659 CAPTURE                          VAL R8
      660 DUPCLOSURE                       R73 K126 [PROTO_40]
      661 CAPTURE                          VAL R56
      662 CAPTURE                          VAL R46
      663 CAPTURE                          VAL R45
      664 CAPTURE                          VAL R42
      665 CAPTURE                          VAL R43
      666 CAPTURE                          VAL R47
      667 CAPTURE                          VAL R44
      668 CAPTURE                          VAL R55
      669 CAPTURE                          VAL R58
      670 CAPTURE                          VAL R54
      671 GETTABLEKS                       R74 R10 K127 ["connect"]
      673 MOVE                             R75 R72
      674 MOVE                             R76 R73
      675 CALL                             R74 2 1
      676 MOVE                             R75 R70
      677 CALL                             R74 1 -1
      678 RETURN                           R74 -1
