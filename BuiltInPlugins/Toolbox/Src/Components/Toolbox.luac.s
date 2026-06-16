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
      104 DUPTABLE                         R10 K30 [{"categories", "categoryName", "creator", "searchTerm", "sortIndex", "targetPage", "selectedBackgroundIndex", "requestReason"}]
      105 SETTABLEKS                       R9 R10 K23 ["categories"]
      107 SETTABLEKS                       R8 R10 K12 ["categoryName"]
      109 GETTABLEKS                       R11 R3 K24 ["creator"]
      111 SETTABLEKS                       R11 R10 K24 ["creator"]
      113 SETTABLEKS                       R6 R10 K25 ["searchTerm"]
      115 SETTABLEKS                       R5 R10 K26 ["sortIndex"]
      117 LOADN                            R11 1
      118 SETTABLEKS                       R11 R10 K27 ["targetPage"]
      120 SETTABLEKS                       R7 R10 K28 ["selectedBackgroundIndex"]
      122 GETUPVAL                         R11 6
      123 GETTABLEKS                       R11 R11 K31 ["InitLoad"]
      125 SETTABLEKS                       R11 R10 K29 ["requestReason"]
      127 LOADB                            R11 1
      128 GETUPVAL                         R12 2
      129 GETTABLEKS                       R12 R12 K20 ["INVENTORY"]
      131 JUMPIFEQ                         R9 R12 ; [+8]
      133 GETUPVAL                         R12 2
      134 GETTABLEKS                       R12 R12 K18 ["CREATIONS"]
      136 JUMPIFEQ                         R9 R12 ; [+2]
      138 LOADB                            R11 0 +1
      139 LOADB                            R11 1
      140 JUMPIFNOT                        R11 ; [+8]
      141 GETTABLEKS                       R12 R0 K0 ["props"]
      143 GETTABLEKS                       R12 R12 K32 ["getToolboxManageableGroups"]
      145 MOVE                             R13 R1
      146 MOVE                             R14 R2
      147 MOVE                             R15 R10
      148 CALL                             R12 3 0
      149 GETUPVAL                         R12 7
      150 GETTABLEKS                       R13 R0 K0 ["props"]
      152 GETTABLEKS                       R13 R13 K33 ["IXP"]
      154 CALL                             R12 1 1
      155 JUMPIFNOT                        R12 ; [+18]
      156 LOADB                            R12 0
      157 GETUPVAL                         R13 8
      158 GETTABLEKS                       R13 R13 K34 ["ListView"]
      160 JUMPIFNOTEQ                      R4 R13 ; [+13]
      162 GETUPVAL                         R13 2
      163 GETTABLEKS                       R13 R13 K13 ["getTabForCategoryName"]
      165 MOVE                             R14 R8
      166 CALL                             R13 1 1
      167 GETUPVAL                         R14 2
      168 GETTABLEKS                       R14 R14 K20 ["INVENTORY"]
      170 JUMPIFEQ                         R13 R14 ; [+2]
      172 LOADB                            R12 0 +1
      173 LOADB                            R12 1
      174 JUMPIF                           R12 ; [+8]
      175 GETTABLEKS                       R13 R0 K0 ["props"]
      177 GETTABLEKS                       R13 R13 K35 ["updatePageInfo"]
      179 MOVE                             R14 R1
      180 MOVE                             R15 R2
      181 MOVE                             R16 R10
      182 CALL                             R13 3 0
      183 RETURN                           R0 0

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
       31 JUMPIF                           R3 ; [+58]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K11 ["prevSize"]
       35 JUMPIFEQ                         R3 R1 ; [+54]
       37 GETTABLEKS                       R3 R1 K1 ["X"]
       39 LOADN                            R4 0
       40 JUMPIFNOTLT                      R4 R3 ; [+14]
       42 GETTABLEKS                       R3 R1 K12 ["Y"]
       44 LOADN                            R4 0
       45 JUMPIFNOTLT                      R4 R3 ; [+9]
       47 GETUPVAL                         R3 1
       48 DUPTABLE                         R5 K13 [{"hasValidSize"}]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K10 ["hasValidSize"]
       52 NAMECALL                         R3 R3 K9 ["setState"]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K11 ["prevSize"]
       58 JUMPIFNOT                        R4 ; [+6]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K11 ["prevSize"]
       62 GETTABLEKS                       R3 R3 K1 ["X"]
       64 JUMP                             ; [+1]
       65 LOADN                            R3 0
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K11 ["prevSize"]
       69 JUMPIFNOT                        R5 ; [+6]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K11 ["prevSize"]
       73 GETTABLEKS                       R4 R4 K12 ["Y"]
       75 JUMP                             ; [+1]
       76 LOADN                            R4 0
       77 GETUPVAL                         R5 2
       78 GETTABLEKS                       R5 R5 K14 ["onToolboxInitialSizing"]
       80 MOVE                             R6 R3
       81 MOVE                             R7 R4
       82 GETTABLEKS                       R8 R1 K1 ["X"]
       84 GETTABLEKS                       R9 R1 K12 ["Y"]
       86 CALL                             R5 4 0
       87 GETUPVAL                         R5 1
       88 SETTABLEKS                       R1 R5 K11 ["prevSize"]
       90 RETURN                           R0 0

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
       25 DUPTABLE                         R4 K11 [{"categoryName", "creator", "searchTerm", "sortIndex", "groupIndex"}]
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R0
       28 MOVE                             R7 R2
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["categoryName"]
       32 GETUPVAL                         R6 5
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+9]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K12 ["MARKETPLACE_KEY"]
       38 JUMPIFNOTEQ                      R0 R6 ; [+5]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K13 ["CREATOR_ROBLOX"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K7 ["creator"]
       47 LOADK                            R5 K14 [""]
       48 SETTABLEKS                       R5 R4 K8 ["searchTerm"]
       50 LOADN                            R5 1
       51 SETTABLEKS                       R5 R4 K9 ["sortIndex"]
       53 LOADN                            R5 0
       54 SETTABLEKS                       R5 R4 K10 ["groupIndex"]
       56 MOVE                             R5 R1
       57 JUMPIF                           R5 ; [+2]
       58 NEWTABLE                         R5 0 0
       60 CALL                             R3 2 1
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R4 R4 K1 ["props"]
       64 GETTABLEKS                       R4 R4 K15 ["Settings"]
       66 LOADK                            R6 K16 ["Plugin"]
       67 NAMECALL                         R4 R4 K17 ["get"]
       69 CALL                             R4 2 1
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K1 ["props"]
       73 GETTABLEKS                       R5 R5 K18 ["Network"]
       75 GETTABLEKS                       R5 R5 K19 ["networkInterface"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K20 ["isWebViewEnabled"]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K1 ["props"]
       83 GETTABLEKS                       R7 R7 K6 ["categoryName"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K21 ["getTabKeyForCategoryName"]
       88 MOVE                             R9 R7
       89 CALL                             R8 1 1
       90 GETUPVAL                         R9 6
       91 GETTABLEKS                       R9 R9 K22 ["onToolboxTabChanged"]
       93 MOVE                             R10 R8
       94 MOVE                             R11 R0
       95 CALL                             R9 2 0
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K12 ["MARKETPLACE_KEY"]
       99 JUMPIFNOTEQ                      R0 R9 ; [+5]
      101 GETUPVAL                         R9 6
      102 GETTABLEKS                       R9 R9 K23 ["onStoreTabOpened"]
      104 CALL                             R9 0 0
      105 JUMPIFNOT                        R6 ; [+61]
      106 GETUPVAL                         R9 1
      107 GETTABLEKS                       R9 R9 K24 ["state"]
      109 GETTABLEKS                       R9 R9 K25 ["webViewLoadingStatus"]
      111 GETUPVAL                         R10 7
      112 GETTABLEKS                       R10 R10 K26 ["WebViewLoadingStatus"]
      114 GETTABLEKS                       R10 R10 K27 ["PASSED"]
      116 JUMPIFNOTEQ                      R9 R10 ; [+50]
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K12 ["MARKETPLACE_KEY"]
      121 JUMPIFNOTEQ                      R8 R9 ; [+23]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R9 R9 K12 ["MARKETPLACE_KEY"]
      126 JUMPIFNOTEQ                      R0 R9 ; [+18]
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R9 R9 K1 ["props"]
      131 GETTABLEKS                       R9 R9 K28 ["WebViewManagerContext"]
      133 NAMECALL                         R9 R9 K29 ["reloadBrowser"]
      135 CALL                             R9 1 0
      136 GETUPVAL                         R9 1
      137 DUPTABLE                         R11 K31 [{"webViewReloading"}]
      138 LOADB                            R12 1
      139 SETTABLEKS                       R12 R11 K30 ["webViewReloading"]
      141 NAMECALL                         R9 R9 K32 ["setState"]
      143 CALL                             R9 2 0
      144 JUMP                             ; [+22]
      145 GETUPVAL                         R9 0
      146 GETTABLEKS                       R9 R9 K12 ["MARKETPLACE_KEY"]
      148 JUMPIFNOTEQ                      R0 R9 ; [+10]
      150 GETUPVAL                         R9 1
      151 GETTABLEKS                       R9 R9 K1 ["props"]
      153 GETTABLEKS                       R9 R9 K28 ["WebViewManagerContext"]
      155 NAMECALL                         R9 R9 K33 ["showBrowser"]
      157 CALL                             R9 1 0
      158 JUMP                             ; [+8]
      159 GETUPVAL                         R9 1
      160 GETTABLEKS                       R9 R9 K1 ["props"]
      162 GETTABLEKS                       R9 R9 K28 ["WebViewManagerContext"]
      164 NAMECALL                         R9 R9 K34 ["hideBrowser"]
      166 CALL                             R9 1 0
      167 GETUPVAL                         R9 1
      168 GETTABLEKS                       R9 R9 K1 ["props"]
      170 GETTABLEKS                       R9 R9 K35 ["changeMarketplaceTab"]
      172 MOVE                             R10 R5
      173 MOVE                             R11 R0
      174 MOVE                             R12 R2
      175 MOVE                             R13 R4
      176 MOVE                             R14 R3
      177 GETUPVAL                         R15 1
      178 GETTABLEKS                       R15 R15 K1 ["props"]
      180 GETTABLEKS                       R15 R15 K3 ["IXP"]
      182 GETUPVAL                         R16 1
      183 GETTABLEKS                       R16 R16 K20 ["isWebViewEnabled"]
      185 GETUPVAL                         R17 1
      186 GETTABLEKS                       R17 R17 K24 ["state"]
      188 GETTABLEKS                       R17 R17 K25 ["webViewLoadingStatus"]
      190 CALL                             R9 8 0
      191 GETUPVAL                         R9 8
      192 GETTABLEKS                       R9 R9 K36 ["getCategory"]
      194 GETUPVAL                         R10 1
      195 GETTABLEKS                       R10 R10 K1 ["props"]
      197 GETTABLEKS                       R10 R10 K6 ["categoryName"]
      199 CALL                             R9 1 1
      200 GETUPVAL                         R10 8
      201 GETTABLEKS                       R10 R10 K36 ["getCategory"]
      203 GETTABLEKS                       R11 R3 K6 ["categoryName"]
      205 CALL                             R10 1 1
      206 GETUPVAL                         R11 6
      207 GETTABLEKS                       R11 R11 K37 ["onCategorySelected"]
      209 MOVE                             R12 R9
      210 MOVE                             R13 R10
      211 CALL                             R11 2 0
      212 RETURN                           R0 0

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
       18 JUMPIFNOT                        R0 ; [+21]
       19 GETUPVAL                         R0 0
       20 DUPTABLE                         R2 K7 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["None"]
       24 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K4 ["webViewReloading"]
       29 LOADN                            R3 0
       30 SETTABLEKS                       R3 R2 K6 ["webViewRetryAttempt"]
       32 NAMECALL                         R0 R0 K9 ["setState"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K10 ["showOrHideWebView"]
       38 CALL                             R0 0 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K0 ["state"]
       43 GETTABLEKS                       R0 R0 K11 ["hasWebViewEverLoaded"]
       45 JUMPIF                           R0 ; [+34]
       46 GETUPVAL                         R0 0
       47 DUPTABLE                         R2 K12 [{"webViewLoadingStatus", "webViewError", "webViewRetryAttempt", "hasWebViewEverLoaded", "webViewReloading"}]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K2 ["WebViewLoadingStatus"]
       51 GETTABLEKS                       R3 R3 K13 ["PASSED"]
       53 SETTABLEKS                       R3 R2 K1 ["webViewLoadingStatus"]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K8 ["None"]
       58 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       60 LOADN                            R3 0
       61 SETTABLEKS                       R3 R2 K6 ["webViewRetryAttempt"]
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R2 K11 ["hasWebViewEverLoaded"]
       66 LOADB                            R3 0
       67 SETTABLEKS                       R3 R2 K4 ["webViewReloading"]
       69 NAMECALL                         R0 R0 K9 ["setState"]
       71 CALL                             R0 2 0
       72 GETUPVAL                         R0 3
       73 GETTABLEKS                       R0 R0 K14 ["onWebViewInit"]
       75 CALL                             R0 0 0
       76 GETUPVAL                         R0 0
       77 GETTABLEKS                       R0 R0 K10 ["showOrHideWebView"]
       79 CALL                             R0 0 0
       80 RETURN                           R0 0

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
       30 JUMPIFNOT                        R1 ; [+31]
       31 GETUPVAL                         R1 0
       32 DUPTABLE                         R3 K10 [{"showFallbackAnnouncement", "webViewLoadingStatus", "webViewError", "webViewRetryAttempt"}]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K11 ["GetService"]
       36 LOADK                            R5 K12 ["RunService"]
       37 CALL                             R4 1 1
       38 NAMECALL                         R4 R4 K13 ["IsEdit"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K7 ["showFallbackAnnouncement"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K2 ["WebViewLoadingStatus"]
       46 GETTABLEKS                       R4 R4 K3 ["FAILED"]
       48 SETTABLEKS                       R4 R3 K1 ["webViewLoadingStatus"]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R4 R4 K14 ["None"]
       53 SETTABLEKS                       R4 R3 K8 ["webViewError"]
       55 LOADN                            R4 0
       56 SETTABLEKS                       R4 R3 K9 ["webViewRetryAttempt"]
       58 NAMECALL                         R1 R1 K15 ["setState"]
       60 CALL                             R1 2 0
       61 JUMP                             ; [+20]
       62 GETUPVAL                         R1 0
       63 DUPTABLE                         R3 K16 [{"webViewLoadingStatus", "webViewError", "webViewRetryAttempt"}]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K2 ["WebViewLoadingStatus"]
       67 GETTABLEKS                       R4 R4 K3 ["FAILED"]
       69 SETTABLEKS                       R4 R3 K1 ["webViewLoadingStatus"]
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K14 ["None"]
       74 SETTABLEKS                       R4 R3 K8 ["webViewError"]
       76 LOADN                            R4 0
       77 SETTABLEKS                       R4 R3 K9 ["webViewRetryAttempt"]
       79 NAMECALL                         R1 R1 K15 ["setState"]
       81 CALL                             R1 2 0
       82 GETUPVAL                         R1 0
       83 NAMECALL                         R1 R1 K17 ["connectAllSignals"]
       85 CALL                             R1 1 0
       86 RETURN                           R0 0

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
       20 DUPTABLE                         R3 K14 [{"hasValidSize", "toolboxWidth", "showSearchOptions", "webViewError", "webViewLoadingStatus", "webViewRetryAttempt", "showFallbackAnnouncement", "hasWebViewEverLoaded", "webViewReloading"}]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K5 ["hasValidSize"]
       24 GETTABLEKS                       R6 R1 K16 ["initialWidth"]
       26 ORK                              R5 R6 K15 [0]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K17 ["TOOLBOX_MIN_WIDTH"]
       30 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       32 GETIMPORT                        R4 K20 [math.max]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K6 ["toolboxWidth"]
       37 LOADB                            R4 0
       38 SETTABLEKS                       R4 R3 K7 ["showSearchOptions"]
       40 LOADNIL                          R4
       41 SETTABLEKS                       R4 R3 K8 ["webViewError"]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K21 ["WebViewLoadingStatus"]
       46 GETTABLEKS                       R4 R4 K22 ["WAITING"]
       48 SETTABLEKS                       R4 R3 K9 ["webViewLoadingStatus"]
       50 LOADN                            R4 0
       51 SETTABLEKS                       R4 R3 K10 ["webViewRetryAttempt"]
       53 SETTABLEKS                       R2 R3 K11 ["showFallbackAnnouncement"]
       55 LOADB                            R4 0
       56 SETTABLEKS                       R4 R3 K12 ["hasWebViewEverLoaded"]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R3 K13 ["webViewReloading"]
       61 SETTABLEKS                       R3 R0 K23 ["state"]
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R0 K24 ["isMounted"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R0 K25 ["prevSize"]
       69 NEWCLOSURE                       R3 P0
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U4
       73 SETTABLEKS                       R3 R0 K26 ["onAbsoluteSizeChange"]
       75 NAMECALL                         R3 R0 K27 ["handleInitialSettings"]
       77 CALL                             R3 1 0
       78 NAMECALL                         R3 R0 K28 ["setUpToolboxManagerComponent"]
       80 CALL                             R3 1 0
       81 NEWCLOSURE                       R3 P1
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U4
       85 SETTABLEKS                       R3 R0 K29 ["toggleSearchOptions"]
       87 DUPCLOSURE                       R3 K30 [PROTO_4]
       88 CAPTURE                          UPVAL U5
       89 DUPCLOSURE                       R4 K31 [PROTO_5]
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U5
       92 NEWCLOSURE                       R5 P4
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U9
      102 SETTABLEKS                       R5 R0 K32 ["changeMarketplaceTab"]
      104 NEWCLOSURE                       R5 P5
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U5
      107 SETTABLEKS                       R5 R0 K33 ["onBackToHome"]
      109 NEWCLOSURE                       R5 P6
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R5 R0 K34 ["updatePageInfoWithSearchTerm"]
      113 NEWCLOSURE                       R5 P7
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R5 R0 K35 ["showOrHideWebView"]
      118 NEWCLOSURE                       R5 P8
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          UPVAL U4
      123 SETTABLEKS                       R5 R0 K36 ["handleWebViewLoaded"]
      125 NEWCLOSURE                       R5 P9
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          UPVAL U10
      132 SETTABLEKS                       R5 R0 K37 ["handleFallBackToLuaUI"]
      134 NEWCLOSURE                       R5 P10
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R5 R0 K38 ["handleWebViewError"]
      138 NEWCLOSURE                       R5 P11
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U3
      141 SETTABLEKS                       R5 R0 K39 ["startInitCheck"]
      143 GETTABLEKS                       R5 R0 K1 ["isWebViewEnabled"]
      145 JUMPIFNOT                        R5 ; [+15]
      146 GETTABLEKS                       R6 R0 K23 ["state"]
      148 GETTABLEKS                       R6 R6 K5 ["hasValidSize"]
      150 JUMPIFNOT                        R6 ; [+7]
      151 GETIMPORT                        R5 K42 [task.delay]
      153 GETUPVAL                         R6 11
      154 GETTABLEKS                       R7 R0 K39 ["startInitCheck"]
      156 CALL                             R5 2 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R5
      159 SETTABLEKS                       R5 R0 K43 ["initCheckTimer"]
      161 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"showFallbackAnnouncement"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showFallbackAnnouncement"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
      401 JUMPIF                           R30 ; [+5]
      402 JUMPIF                           R31 ; [+4]
      403 GETUPVAL                         R37 17
      404 CALL                             R37 0 1
      405 JUMPIFNOT                        R37 ; [+3]
      406 JUMPIFNOT                        R29 ; [+2]
      407 LOADNIL                          R36
      408 JUMP                             ; [+23]
      409 GETUPVAL                         R36 5
      410 GETTABLEKS                       R36 R36 K46 ["createElement"]
      412 GETUPVAL                         R37 18
      413 DUPTABLE                         R38 K95 [{"Position", "maxWidth", "onSearchOptionsToggled", "pluginGui"}]
      414 GETIMPORT                        R39 K63 [UDim2.new]
      416 LOADN                            R40 0
      417 LOADN                            R41 0
      418 LOADN                            R42 0
      419 MOVE                             R43 R21
      420 CALL                             R39 4 1
      421 SETTABLEKS                       R39 R38 K64 ["Position"]
      423 SETTABLEKS                       R3 R38 K94 ["maxWidth"]
      425 GETTABLEKS                       R39 R0 K49 ["toggleSearchOptions"]
      427 SETTABLEKS                       R39 R38 K51 ["onSearchOptionsToggled"]
      429 SETTABLEKS                       R15 R38 K14 ["pluginGui"]
      431 CALL                             R36 2 1
      432 SETTABLEKS                       R36 R35 K75 ["Header"]
      434 JUMPIFNOT                        R27 ; [+57]
      435 GETUPVAL                         R36 5
      436 GETTABLEKS                       R36 R36 K46 ["createElement"]
      438 GETUPVAL                         R37 19
      439 DUPTABLE                         R38 K104 [{"hasValidSize", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "ChangeMarketplaceTab", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck", "Plugin", "PluginLoaderContext", "hasWebViewEverLoaded"}]
      440 GETTABLEKS                       R39 R0 K1 ["state"]
      442 GETTABLEKS                       R39 R39 K96 ["hasValidSize"]
      444 SETTABLEKS                       R39 R38 K96 ["hasValidSize"]
      446 GETTABLEKS                       R39 R0 K1 ["state"]
      448 GETTABLEKS                       R39 R39 K54 ["webViewLoadingStatus"]
      450 SETTABLEKS                       R39 R38 K54 ["webViewLoadingStatus"]
      452 GETTABLEKS                       R39 R0 K1 ["state"]
      454 GETTABLEKS                       R39 R39 K59 ["webViewError"]
      456 SETTABLEKS                       R39 R38 K59 ["webViewError"]
      458 GETTABLEKS                       R39 R0 K1 ["state"]
      460 GETTABLEKS                       R39 R39 K105 ["webViewRetryAttempt"]
      462 SETTABLEKS                       R39 R38 K97 ["manualRetryAttempt"]
      464 GETTABLEKS                       R39 R0 K93 ["changeMarketplaceTab"]
      466 SETTABLEKS                       R39 R38 K98 ["ChangeMarketplaceTab"]
      468 GETTABLEKS                       R39 R0 K106 ["handleWebViewError"]
      470 SETTABLEKS                       R39 R38 K99 ["HandleFailedInitCheck"]
      472 GETTABLEKS                       R39 R0 K107 ["handleWebViewLoaded"]
      474 SETTABLEKS                       R39 R38 K100 ["HandlePassedInitAndLoadingCheck"]
      476 GETTABLEKS                       R39 R1 K108 ["plugin"]
      478 SETTABLEKS                       R39 R38 K101 ["Plugin"]
      480 GETTABLEKS                       R39 R1 K109 ["pluginLoaderContext"]
      482 SETTABLEKS                       R39 R38 K102 ["PluginLoaderContext"]
      484 GETTABLEKS                       R39 R0 K1 ["state"]
      486 GETTABLEKS                       R39 R39 K103 ["hasWebViewEverLoaded"]
      488 SETTABLEKS                       R39 R38 K103 ["hasWebViewEverLoaded"]
      490 CALL                             R36 2 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R36
      493 SETTABLEKS                       R36 R35 K76 ["WebViewConnector"]
      495 JUMPIFNOT                        R31 ; [+21]
      496 GETUPVAL                         R36 5
      497 GETTABLEKS                       R36 R36 K46 ["createElement"]
      499 GETUPVAL                         R37 20
      500 DUPTABLE                         R38 K112 [{"reason", "OnRetryClicked"}]
      501 GETTABLEKS                       R39 R0 K1 ["state"]
      503 GETTABLEKS                       R39 R39 K59 ["webViewError"]
      505 SETTABLEKS                       R39 R38 K110 ["reason"]
      507 NEWCLOSURE                       R39 P1
      508 CAPTURE                          UPVAL U21
      509 CAPTURE                          VAL R0
      510 CAPTURE                          UPVAL U10
      511 CAPTURE                          UPVAL U22
      512 CAPTURE                          UPVAL U5
      513 SETTABLEKS                       R39 R38 K111 ["OnRetryClicked"]
      515 CALL                             R36 2 1
      516 JUMP                             ; [+129]
      517 JUMPIFNOT                        R30 ; [+30]
      518 GETUPVAL                         R36 5
      519 GETTABLEKS                       R36 R36 K46 ["createElement"]
      521 GETUPVAL                         R37 23
      522 DUPTABLE                         R38 K114 [{"Size", "AnchorPoint", "Position"}]
      523 GETIMPORT                        R39 K63 [UDim2.new]
      525 LOADN                            R40 0
      526 LOADN                            R41 100
      527 LOADN                            R42 0
      528 LOADN                            R43 100
      529 CALL                             R39 4 1
      530 SETTABLEKS                       R39 R38 K15 ["Size"]
      532 GETIMPORT                        R39 K116 [Vector2.new]
      534 LOADK                            R40 K117 [0.5]
      535 LOADK                            R41 K117 [0.5]
      536 CALL                             R39 2 1
      537 SETTABLEKS                       R39 R38 K113 ["AnchorPoint"]
      539 GETIMPORT                        R39 K119 [UDim2.fromScale]
      541 LOADK                            R40 K117 [0.5]
      542 LOADK                            R41 K117 [0.5]
      543 CALL                             R39 2 1
      544 SETTABLEKS                       R39 R38 K64 ["Position"]
      546 CALL                             R36 2 1
      547 JUMP                             ; [+98]
      548 JUMPIFNOT                        R29 ; [+2]
      549 LOADNIL                          R36
      550 JUMP                             ; [+95]
      551 JUMPIFNOT                        R22 ; [+51]
      552 GETUPVAL                         R36 5
      553 GETTABLEKS                       R36 R36 K46 ["createElement"]
      555 GETUPVAL                         R37 24
      556 DUPTABLE                         R38 K125 [{"AssetType", "CategoryName", "Locale", "Position", "Size", "SortName", "TryOpenAssetConfig", "EnabledAssetTypes"}]
      557 SETTABLEKS                       R24 R38 K33 ["AssetType"]
      559 SETTABLEKS                       R9 R38 K120 ["CategoryName"]
      561 SETTABLEKS                       R19 R38 K121 ["Locale"]
      563 GETIMPORT                        R39 K63 [UDim2.new]
      565 LOADN                            R40 0
      566 LOADN                            R41 0
      567 LOADN                            R42 0
      568 GETUPVAL                         R45 1
      569 GETTABLEKS                       R45 R45 K127 ["HEADER_HEIGHT"]
      571 ADD                              R44 R21 R45
      572 ADDK                             R43 R44 K126 [1]
      573 CALL                             R39 4 1
      574 SETTABLEKS                       R39 R38 K64 ["Position"]
      576 GETIMPORT                        R39 K63 [UDim2.new]
      578 LOADN                            R40 1
      579 LOADN                            R41 0
      580 LOADN                            R42 1
      581 GETUPVAL                         R46 1
      582 GETTABLEKS                       R46 R46 K127 ["HEADER_HEIGHT"]
      584 ADD                              R45 R46 R21
      585 ADDK                             R44 R45 K128 [2]
      586 MINUS                            R43 R44
      587 CALL                             R39 4 1
      588 SETTABLEKS                       R39 R38 K15 ["Size"]
      590 GETUPVAL                         R39 25
      591 GETTABLEKS                       R39 R39 K129 ["getDefaultSortNameForCategory"]
      593 MOVE                             R40 R9
      594 CALL                             R39 1 1
      595 SETTABLEKS                       R39 R38 K122 ["SortName"]
      597 SETTABLEKS                       R14 R38 K123 ["TryOpenAssetConfig"]
      599 SETTABLEKS                       R23 R38 K124 ["EnabledAssetTypes"]
      601 CALL                             R36 2 1
      602 JUMP                             ; [+43]
      603 GETUPVAL                         R36 5
      604 GETTABLEKS                       R36 R36 K46 ["createElement"]
      606 GETUPVAL                         R37 26
      607 DUPTABLE                         R38 K131 [{"Position", "Size", "maxWidth", "suggestions", "tryOpenAssetConfig", "onBackToHome"}]
      608 GETIMPORT                        R39 K63 [UDim2.new]
      610 LOADN                            R40 0
      611 LOADN                            R41 0
      612 LOADN                            R42 0
      613 GETUPVAL                         R45 1
      614 GETTABLEKS                       R45 R45 K127 ["HEADER_HEIGHT"]
      616 ADD                              R44 R21 R45
      617 ADDK                             R43 R44 K126 [1]
      618 CALL                             R39 4 1
      619 SETTABLEKS                       R39 R38 K64 ["Position"]
      621 GETIMPORT                        R39 K63 [UDim2.new]
      623 LOADN                            R40 1
      624 LOADN                            R41 0
      625 LOADN                            R42 1
      626 GETUPVAL                         R46 1
      627 GETTABLEKS                       R46 R46 K127 ["HEADER_HEIGHT"]
      629 ADD                              R45 R46 R21
      630 ADDK                             R44 R45 K128 [2]
      631 MINUS                            R43 R44
      632 CALL                             R39 4 1
      633 SETTABLEKS                       R39 R38 K15 ["Size"]
      635 SETTABLEKS                       R3 R38 K94 ["maxWidth"]
      637 SETTABLEKS                       R8 R38 K7 ["suggestions"]
      639 SETTABLEKS                       R14 R38 K13 ["tryOpenAssetConfig"]
      641 GETTABLEKS                       R39 R0 K130 ["onBackToHome"]
      643 SETTABLEKS                       R39 R38 K130 ["onBackToHome"]
      645 CALL                             R36 2 1
      646 SETTABLEKS                       R36 R35 K77 ["MainView"]
      648 JUMPIF                           R30 ; [+1]
      649 JUMPIFNOT                        R29 ; [+2]
      650 LOADNIL                          R36
      651 JUMP                             ; [+1]
      652 MOVE                             R36 R26
      653 SETTABLEKS                       R36 R35 K78 ["SearchOptions"]
      655 JUMPIF                           R30 ; [+1]
      656 JUMPIFNOT                        R29 ; [+2]
      657 LOADNIL                          R36
      658 JUMP                             ; [+5]
      659 GETUPVAL                         R36 5
      660 GETTABLEKS                       R36 R36 K46 ["createElement"]
      662 GETUPVAL                         R37 27
      663 CALL                             R36 1 1
      664 SETTABLEKS                       R36 R35 K79 ["AudioPreview"]
      666 CALL                             R32 3 -1
      667 RETURN                           R32 -1

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
      423 GETTABLEKS                       R60 R13 K7 ["SharedFlags"]
      425 GETTABLEKS                       R60 R60 K77 ["getFFlagToolboxWVHideLuaHeader"]
      427 CALL                             R59 1 1
      428 GETIMPORT                        R60 K4 [require]
      430 GETTABLEKS                       R61 R0 K5 ["Src"]
      432 GETTABLEKS                       R61 R61 K27 ["Types"]
      434 GETTABLEKS                       R61 R61 K78 ["LayoutMode"]
      436 CALL                             R60 1 1
      437 GETIMPORT                        R61 K4 [require]
      439 GETTABLEKS                       R62 R0 K5 ["Src"]
      441 GETTABLEKS                       R62 R62 K27 ["Types"]
      443 GETTABLEKS                       R62 R62 K79 ["Background"]
      445 CALL                             R61 1 1
      446 GETIMPORT                        R62 K4 [require]
      448 GETTABLEKS                       R63 R0 K5 ["Src"]
      450 GETTABLEKS                       R63 R63 K31 ["Components"]
      452 GETTABLEKS                       R63 R63 K36 ["WebView"]
      454 GETTABLEKS                       R63 R63 K80 ["WebViewTypes"]
      456 CALL                             R62 1 1
      457 GETIMPORT                        R63 K4 [require]
      459 GETTABLEKS                       R64 R0 K5 ["Src"]
      461 GETTABLEKS                       R64 R64 K31 ["Components"]
      463 GETTABLEKS                       R64 R64 K36 ["WebView"]
      465 GETTABLEKS                       R64 R64 K81 ["ToolboxWebViewConnector"]
      467 CALL                             R63 1 1
      468 GETIMPORT                        R64 K4 [require]
      470 GETTABLEKS                       R65 R4 K36 ["WebView"]
      472 CALL                             R64 1 1
      473 GETTABLEKS                       R65 R64 K24 ["Analytics"]
      475 GETTABLEKS                       R66 R64 K82 ["WebViewManagerContext"]
      477 GETTABLEKS                       R67 R6 K83 ["PureComponent"]
      479 LOADK                            R69 K84 ["Toolbox"]
      480 NAMECALL                         R67 R67 K85 ["extend"]
      482 CALL                             R67 2 1
      483 DUPTABLE                         R68 K87 [{"Size"}]
      484 GETIMPORT                        R69 K90 [UDim2.new]
      486 LOADN                            R70 1
      487 LOADN                            R71 0
      488 LOADN                            R72 1
      489 LOADN                            R73 0
      490 CALL                             R69 4 1
      491 SETTABLEKS                       R69 R68 K86 ["Size"]
      493 SETTABLEKS                       R68 R67 K91 ["defaultProps"]
      495 DUPCLOSURE                       R68 K92 [PROTO_0]
      496 CAPTURE                          VAL R54
      497 CAPTURE                          VAL R61
      498 CAPTURE                          VAL R22
      499 CAPTURE                          VAL R17
      500 CAPTURE                          VAL R53
      501 CAPTURE                          VAL R2
      502 CAPTURE                          VAL R23
      503 CAPTURE                          VAL R55
      504 CAPTURE                          VAL R60
      505 SETTABLEKS                       R68 R67 K93 ["handleInitialSettings"]
      507 DUPCLOSURE                       R68 K94 [PROTO_1]
      508 CAPTURE                          VAL R11
      509 CAPTURE                          VAL R17
      510 CAPTURE                          VAL R65
      511 SETTABLEKS                       R68 R67 K95 ["handleWebViewInit"]
      513 DUPCLOSURE                       R68 K96 [PROTO_14]
      514 CAPTURE                          VAL R58
      515 CAPTURE                          VAL R19
      516 CAPTURE                          VAL R14
      517 CAPTURE                          VAL R62
      518 CAPTURE                          VAL R17
      519 CAPTURE                          VAL R22
      520 CAPTURE                          VAL R9
      521 CAPTURE                          VAL R53
      522 CAPTURE                          VAL R5
      523 CAPTURE                          VAL R15
      524 CAPTURE                          VAL R6
      525 CAPTURE                          VAL R56
      526 SETTABLEKS                       R68 R67 K97 ["init"]
      528 DUPCLOSURE                       R68 K98 [PROTO_15]
      529 CAPTURE                          VAL R56
      530 SETTABLEKS                       R68 R67 K99 ["didUpdate"]
      532 DUPCLOSURE                       R68 K100 [PROTO_16]
      533 SETTABLEKS                       R68 R67 K101 ["setUpToolboxManagerComponent"]
      535 DUPCLOSURE                       R68 K102 [PROTO_20]
      536 CAPTURE                          VAL R12
      537 CAPTURE                          VAL R22
      538 CAPTURE                          VAL R17
      539 CAPTURE                          VAL R14
      540 SETTABLEKS                       R68 R67 K103 ["connectAllSignals"]
      542 DUPCLOSURE                       R68 K104 [PROTO_21]
      543 SETTABLEKS                       R68 R67 K105 ["disconnectAllSignals"]
      545 DUPCLOSURE                       R68 K106 [PROTO_22]
      546 SETTABLEKS                       R68 R67 K107 ["didMount"]
      548 DUPCLOSURE                       R68 K108 [PROTO_24]
      549 CAPTURE                          VAL R17
      550 SETTABLEKS                       R68 R67 K109 ["willUnmount"]
      552 DUPCLOSURE                       R68 K110 [PROTO_27]
      553 CAPTURE                          VAL R22
      554 CAPTURE                          VAL R14
      555 CAPTURE                          VAL R3
      556 CAPTURE                          VAL R10
      557 CAPTURE                          VAL R1
      558 CAPTURE                          VAL R6
      559 CAPTURE                          VAL R35
      560 CAPTURE                          VAL R33
      561 CAPTURE                          VAL R34
      562 CAPTURE                          VAL R32
      563 CAPTURE                          VAL R62
      564 CAPTURE                          VAL R25
      565 CAPTURE                          VAL R18
      566 CAPTURE                          VAL R58
      567 CAPTURE                          VAL R26
      568 CAPTURE                          VAL R53
      569 CAPTURE                          VAL R16
      570 CAPTURE                          VAL R59
      571 CAPTURE                          VAL R27
      572 CAPTURE                          VAL R63
      573 CAPTURE                          VAL R29
      574 CAPTURE                          VAL R57
      575 CAPTURE                          VAL R17
      576 CAPTURE                          VAL R36
      577 CAPTURE                          VAL R31
      578 CAPTURE                          VAL R21
      579 CAPTURE                          VAL R28
      580 CAPTURE                          VAL R30
      581 SETTABLEKS                       R68 R67 K111 ["render"]
      583 MOVE                             R68 R46
      584 DUPTABLE                         R69 K117 [{"IXP", "Stylizer", "Localization", "Settings", "Modal", "Network", "WebViewManagerContext"}]
      585 MOVE                             R71 R53
      586 CALL                             R71 0 1
      587 JUMPIF                           R71 ; [+6]
      588 MOVE                             R71 R54
      589 CALL                             R71 0 1
      590 JUMPIF                           R71 ; [+3]
      591 MOVE                             R71 R55
      592 CALL                             R71 0 1
      593 JUMPIFNOT                        R71 ; [+2]
      594 MOVE                             R70 R44
      595 JUMP                             ; [+1]
      596 LOADNIL                          R70
      597 SETTABLEKS                       R70 R69 K112 ["IXP"]
      599 GETTABLEKS                       R70 R45 K113 ["Stylizer"]
      601 SETTABLEKS                       R70 R69 K113 ["Stylizer"]
      603 GETTABLEKS                       R70 R45 K114 ["Localization"]
      605 SETTABLEKS                       R70 R69 K114 ["Localization"]
      607 SETTABLEKS                       R47 R69 K59 ["Settings"]
      609 SETTABLEKS                       R48 R69 K115 ["Modal"]
      611 SETTABLEKS                       R49 R69 K116 ["Network"]
      613 SETTABLEKS                       R66 R69 K82 ["WebViewManagerContext"]
      615 CALL                             R68 1 1
      616 MOVE                             R69 R67
      617 CALL                             R68 1 1
      618 MOVE                             R67 R68
      619 DUPCLOSURE                       R68 K118 [PROTO_28]
      620 CAPTURE                          VAL R22
      621 CAPTURE                          VAL R5
      622 DUPCLOSURE                       R69 K119 [PROTO_36]
      623 CAPTURE                          VAL R52
      624 CAPTURE                          VAL R42
      625 CAPTURE                          VAL R41
      626 CAPTURE                          VAL R38
      627 CAPTURE                          VAL R39
      628 CAPTURE                          VAL R43
      629 CAPTURE                          VAL R40
      630 CAPTURE                          VAL R51
      631 CAPTURE                          VAL R54
      632 CAPTURE                          VAL R50
      633 GETTABLEKS                       R70 R7 K120 ["connect"]
      635 MOVE                             R71 R68
      636 MOVE                             R72 R69
      637 CALL                             R70 2 1
      638 MOVE                             R71 R67
      639 CALL                             R70 1 -1
      640 RETURN                           R70 -1
