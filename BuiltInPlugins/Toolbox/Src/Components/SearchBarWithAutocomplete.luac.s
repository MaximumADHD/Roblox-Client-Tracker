PROTO_0:
        0 LOADK                            R4 K0 ["^%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 JUMPIFNOT                        R0 ; [+24]
        6 NAMECALL                         R1 R0 K2 ["get"]
        8 CALL                             R1 1 1
        9 LOADK                            R4 K3 ["RecentSearchesCache"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+10]
       14 LOADK                            R5 K3 ["RecentSearchesCache"]
       15 GETUPVAL                         R6 1
       16 NAMECALL                         R3 R1 K5 ["SetSetting"]
       18 CALL                             R3 3 0
       19 LOADK                            R5 K3 ["RecentSearchesCache"]
       20 NAMECALL                         R3 R1 K4 ["GetSetting"]
       22 CALL                             R3 2 1
       23 MOVE                             R2 R3
       24 JUMPIFNOT                        R2 ; [+2]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1
       27 NEWTABLE                         R3 0 0
       29 RETURN                           R3 1
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isUserInputting"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isUserInputting"]
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+20]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["autocorrectOfferedQuery"]
        9 JUMPIFEQ                         R1 R2 ; [+12]
       11 GETUPVAL                         R2 0
       12 FASTCALL1                        STRING_LEN R2 ; [+2]
       13 GETIMPORT                        R1 K4 [string.len]
       15 CALL                             R1 1 1
       16 LOADN                            R2 0
       17 JUMPIFLT                         R2 R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R0
       23 DUPTABLE                         R1 K7 [{"displayedSearchTerm", "showAutocompleteResults"}]
       24 GETUPVAL                         R2 0
       25 SETTABLEKS                       R2 R1 K5 ["displayedSearchTerm"]
       27 SETTABLEKS                       R0 R1 K6 ["showAutocompleteResults"]
       29 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnTextChanged"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnTextChanged"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["state"]
       13 GETTABLEKS                       R2 R2 K3 ["displayedSearchTerm"]
       15 JUMPIFEQ                         R0 R2 ; [+53]
       17 FASTCALL1                        STRING_LEN R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K6 [string.len]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["state"]
       25 GETTABLEKS                       R4 R4 K3 ["displayedSearchTerm"]
       27 FASTCALL1                        STRING_LEN R4 ; [+2]
       28 GETIMPORT                        R3 K6 [string.len]
       30 CALL                             R3 1 1
       31 JUMPIFNOTLT                      R3 R2 ; [+8]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R3 R2 K7 ["keyCount"]
       36 ADDK                             R3 R3 K8 [1]
       37 SETTABLEKS                       R3 R2 K7 ["keyCount"]
       39 JUMP                             ; [+22]
       40 FASTCALL1                        STRING_LEN R0 ; [+3]
       41 MOVE                             R3 R0
       42 GETIMPORT                        R2 K6 [string.len]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K2 ["state"]
       48 GETTABLEKS                       R4 R4 K3 ["displayedSearchTerm"]
       50 FASTCALL1                        STRING_LEN R4 ; [+2]
       51 GETIMPORT                        R3 K6 [string.len]
       53 CALL                             R3 1 1
       54 JUMPIFNOTLT                      R2 R3 ; [+7]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R3 R2 K9 ["deleteCount"]
       59 ADDK                             R3 R3 K8 [1]
       60 SETTABLEKS                       R3 R2 K9 ["deleteCount"]
       62 GETUPVAL                         R2 0
       63 NEWCLOSURE                       R4 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U0
       66 NAMECALL                         R2 R2 K10 ["setState"]
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["renderRecentSearchesDropdownMenuHeader"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["renderRecentSearchesDropdownMenuItem"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["ShowRecentSearchesInAutoComplete"]
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["onRecentSearchesRenderItem"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["createElement"]
       17 GETUPVAL                         R4 2
       18 DUPTABLE                         R5 K10 [{"FocusedText", "HideSeparator", "LayoutOrder", "OnClick", "Size", "Text"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K11 ["state"]
       22 GETTABLEKS                       R6 R6 K12 ["displayedSearchTerm"]
       24 SETTABLEKS                       R6 R5 K4 ["FocusedText"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["props"]
       29 GETTABLEKS                       R8 R8 K13 ["autocompleteResults"]
       31 LENGTH                           R7 R8
       32 JUMPIFEQ                         R1 R7 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K5 ["HideSeparator"]
       38 SETTABLEKS                       R1 R5 K6 ["LayoutOrder"]
       40 SETTABLEKS                       R2 R5 K7 ["OnClick"]
       42 GETIMPORT                        R6 K16 [UDim2.new]
       44 LOADN                            R7 1
       45 LOADN                            R8 0
       46 LOADN                            R9 0
       47 LOADN                            R10 32
       48 CALL                             R6 4 1
       49 SETTABLEKS                       R6 R5 K8 ["Size"]
       51 SETTABLEKS                       R0 R5 K9 ["Text"]
       53 CALL                             R3 2 -1
       54 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnSearchRequested"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K2 ["ShowRecentSearchesInAutoComplete"]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["MarketplaceRecentSearchClicked"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 JUMP                             ; [+28]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["props"]
       22 GETTABLEKS                       R2 R2 K4 ["logAutocompleteSearchAnalytics"]
       24 MOVE                             R3 R0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["AUTOCOMPLETE_API_NAMES"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K0 ["props"]
       31 GETTABLEKS                       R6 R6 K6 ["categoryName"]
       33 GETTABLE                         R4 R5 R6
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K7 ["state"]
       37 GETTABLEKS                       R5 R5 K8 ["displayedSearchTerm"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K9 ["keyCount"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K10 ["deleteCount"]
       45 LOADB                            R8 1
       46 CALL                             R2 6 0
       47 GETUPVAL                         R2 0
       48 LOADN                            R3 0
       49 SETTABLEKS                       R3 R2 K9 ["keyCount"]
       51 GETUPVAL                         R2 0
       52 LOADN                            R3 0
       53 SETTABLEKS                       R3 R2 K10 ["deleteCount"]
       55 GETUPVAL                         R2 0
       56 DUPTABLE                         R4 K11 [{"displayedSearchTerm"}]
       57 SETTABLEKS                       R0 R4 K8 ["displayedSearchTerm"]
       59 NAMECALL                         R2 R2 K12 ["setState"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateRecentSearches"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R4 K0 ["^%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["getRecentSearches"]
       13 CALL                             R1 0 1
       14 GETIMPORT                        R2 K5 [table.find]
       16 MOVE                             R3 R1
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+13]
       20 LOADN                            R5 1
       21 FASTCALL3                        TABLE_INSERT R1 R5 R0
       23 MOVE                             R4 R1
       24 MOVE                             R6 R0
       25 GETIMPORT                        R3 K7 [table.insert]
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["updateRecentSearches"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getRecentSearches"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.find]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETIMPORT                        R3 K5 [table.remove]
       12 MOVE                             R4 R1
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["updateRecentSearches"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnSearchRequested"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["displayedSearchTerm"]
       12 JUMPIFEQ                         R0 R1 ; [+25]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["props"]
       17 GETTABLEKS                       R1 R1 K4 ["logAutocompleteSearchAnalytics"]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K5 ["AUTOCOMPLETE_API_NAMES"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["props"]
       26 GETTABLEKS                       R5 R5 K6 ["categoryName"]
       28 GETTABLE                         R3 R4 R5
       29 LOADNIL                          R4
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K7 ["keyCount"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K8 ["deleteCount"]
       36 LOADB                            R7 1
       37 CALL                             R1 6 0
       38 GETUPVAL                         R1 0
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R1 K7 ["keyCount"]
       42 GETUPVAL                         R1 0
       43 LOADN                            R2 0
       44 SETTABLEKS                       R2 R1 K8 ["deleteCount"]
       46 GETUPVAL                         R1 0
       47 DUPTABLE                         R3 K11 [{["showAutocompleteResults"] = False}]
       48 NAMECALL                         R1 R1 K12 ["setState"]
       50 CALL                             R1 2 0
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K13 ["tryCacheSearchTerm"]
       54 MOVE                             R2 R0
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 LOADK                            R4 K3 ["RecentSearchesCache"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R1 K4 ["SetSetting"]
       12 CALL                             R2 3 0
       13 LOADNIL                          R2
       14 NEWTABLE                         R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K5 ["Localization"]
       21 LOADK                            R6 K6 ["General"]
       22 LOADK                            R7 K7 ["RecentSearches"]
       23 NAMECALL                         R4 R4 K8 ["getText"]
       25 CALL                             R4 3 -1
       26 SETLIST                          R3 R4 -1 [1]
       28 MOVE                             R2 R3
       29 MOVE                             R3 R0
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       35 MOVE                             R9 R2
       36 MOVE                             R10 R7
       37 GETIMPORT                        R8 K11 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 ; [-8]
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R5 K13 [{"dropdownMenuRenderItems"}]
       44 SETTABLEKS                       R2 R5 K12 ["dropdownMenuRenderItems"]
       46 NAMECALL                         R3 R3 K14 ["setState"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAllRecentSearches"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K11 [{["DisableHover"] = True, ["FocusedText"] = "", ["Size"], ["Text"], ["OnClick"], ["DropdownMenuItemButtonStyle"] = "ToolboxRecentSearchesButton", ["ItemButtonContentOverride"]}]
        5 GETIMPORT                        R4 K14 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 28
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K5 ["Size"]
       14 SETTABLEKS                       R0 R3 K6 ["Text"]
       16 DUPCLOSURE                       R4 K15 [PROTO_16]
       17 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["createElement"]
       22 LOADK                            R5 K16 ["TextButton"]
       23 NEWTABLE                         R6 16 0
       25 LOADN                            R7 1
       26 SETTABLEKS                       R7 R6 K17 ["BackgroundTransparency"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K18 ["props"]
       31 GETTABLEKS                       R7 R7 K19 ["Localization"]
       33 LOADK                            R9 K20 ["General"]
       34 LOADK                            R10 K21 ["SearchResultsClearAll"]
       35 NAMECALL                         R7 R7 K22 ["getText"]
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K6 ["Text"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K18 ["props"]
       43 GETTABLEKS                       R7 R7 K23 ["Stylizer"]
       45 GETTABLEKS                       R7 R7 K24 ["linkButton"]
       47 GETTABLEKS                       R7 R7 K25 ["textColor"]
       49 SETTABLEKS                       R7 R6 K26 ["TextColor3"]
       51 GETIMPORT                        R7 K14 [UDim2.new]
       53 LOADN                            R8 1
       54 LOADN                            R9 -14
       55 LOADK                            R10 K27 [0.5]
       56 LOADN                            R11 0
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K28 ["Position"]
       60 GETIMPORT                        R7 K30 [Vector2.new]
       62 LOADN                            R8 1
       63 LOADK                            R9 K27 [0.5]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K31 ["AnchorPoint"]
       67 LOADN                            R7 3
       68 SETTABLEKS                       R7 R6 K32 ["LayoutOrder"]
       70 GETIMPORT                        R7 K34 [UDim2.fromOffset]
       72 LOADN                            R8 32
       73 LOADN                            R9 20
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K5 ["Size"]
       77 LOADB                            R7 1
       78 SETTABLEKS                       R7 R6 K35 ["TextScaled"]
       80 GETIMPORT                        R7 K39 [Enum.TextYAlignment.Center]
       82 SETTABLEKS                       R7 R6 K37 ["TextYAlignment"]
       84 GETIMPORT                        R7 K42 [Enum.TextXAlignment.Right]
       86 SETTABLEKS                       R7 R6 K40 ["TextXAlignment"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K43 ["Event"]
       91 GETTABLEKS                       R7 R7 K44 ["MouseButton1Click"]
       93 NEWCLOSURE                       R8 P1
       94 CAPTURE                          UPVAL U2
       95 SETTABLE                         R8 R6 R7
       96 CALL                             R4 2 1
       97 SETTABLEKS                       R4 R3 K10 ["ItemButtonContentOverride"]
       99 CALL                             R1 2 -1
      100 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        6 GETTABLEKS                       R1 R1 K2 ["recentSearchesCloseButton"]
        8 GETTABLEKS                       R1 R1 K3 ["hoverColor"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K4 ["rbxasset://textures/StudioToolbox/ClearHover.png"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        6 GETTABLEKS                       R1 R1 K2 ["recentSearchesCloseButton"]
        8 GETTABLEKS                       R1 R1 K3 ["backgroundColor"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K4 ["rbxasset://textures/StudioToolbox/Clear.png"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeSearchTermFromCache"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createBinding"]
        3 LOADK                            R4 K1 ["rbxasset://textures/StudioToolbox/Clear.png"]
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["createBinding"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["props"]
       11 GETTABLEKS                       R6 R6 K3 ["Stylizer"]
       13 GETTABLEKS                       R6 R6 K4 ["recentSearchesCloseButton"]
       15 GETTABLEKS                       R6 R6 K5 ["backgroundColor"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K6 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K19 [{["HideSeparator"] = True, ["EnableClearButton"] = True, ["LayoutOrder"], ["OnClick"], ["Size"], ["Text"], ["DropdownMenuItemButtonStyle"] = "ToolboxRecentSearchesButton", ["OnMouseEnter"], ["OnMouseLeave"], ["ItemButtonContentOverride"]}]
       23 SETTABLEKS                       R1 R9 K10 ["LayoutOrder"]
       25 SETTABLEKS                       R2 R9 K11 ["OnClick"]
       27 GETIMPORT                        R10 K22 [UDim2.new]
       29 LOADN                            R11 1
       30 LOADN                            R12 0
       31 LOADN                            R13 0
       32 LOADN                            R14 28
       33 CALL                             R10 4 1
       34 SETTABLEKS                       R10 R9 K12 ["Size"]
       36 SETTABLEKS                       R0 R9 K13 ["Text"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R6
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R10 R9 K16 ["OnMouseEnter"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R10 R9 K17 ["OnMouseLeave"]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K6 ["createElement"]
       53 LOADK                            R11 K23 ["ImageButton"]
       54 NEWTABLE                         R12 8 0
       56 LOADN                            R13 1
       57 SETTABLEKS                       R13 R12 K24 ["BackgroundTransparency"]
       59 SETTABLEKS                       R3 R12 K25 ["Image"]
       61 GETIMPORT                        R13 K22 [UDim2.new]
       63 LOADN                            R14 1
       64 LOADN                            R15 -14
       65 LOADK                            R16 K26 [0.5]
       66 LOADN                            R17 0
       67 CALL                             R13 4 1
       68 SETTABLEKS                       R13 R12 K27 ["Position"]
       70 GETIMPORT                        R13 K29 [Vector2.new]
       72 LOADN                            R14 1
       73 LOADK                            R15 K26 [0.5]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K30 ["AnchorPoint"]
       77 SETTABLEKS                       R5 R12 K31 ["ImageColor3"]
       79 LOADN                            R13 3
       80 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       82 GETIMPORT                        R13 K33 [UDim2.fromOffset]
       84 LOADN                            R14 14
       85 LOADN                            R15 14
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K12 ["Size"]
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K34 ["Event"]
       92 GETTABLEKS                       R13 R13 K35 ["MouseButton1Click"]
       94 NEWCLOSURE                       R14 P2
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R0
       97 SETTABLE                         R14 R12 R13
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K18 ["ItemButtonContentOverride"]
      101 CALL                             R7 2 -1
      102 RETURN                           R7 -1

PROTO_23:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getRecentSearches"]
        5 DUPTABLE                         R1 K7 [{["showAutocompleteResults"] = False, ["displayedSearchTerm"] = "", ["lastSearchTerm"] = "", ["dropdownMenuRenderItems"]}]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K6 ["dropdownMenuRenderItems"]
        9 SETTABLEKS                       R1 R0 K8 ["state"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K9 ["isUserInputting"]
       14 LOADN                            R1 0
       15 SETTABLEKS                       R1 R0 K10 ["autocompleteTimer"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K11 ["keyCount"]
       20 LOADN                            R1 0
       21 SETTABLEKS                       R1 R0 K12 ["deleteCount"]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K13 ["onInputBegan"]
       27 NEWCLOSURE                       R1 P2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K14 ["onInputEnded"]
       31 NEWCLOSURE                       R1 P3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K15 ["onSearchTextChanged"]
       35 NEWCLOSURE                       R1 P4
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K16 ["onRecentSearchesRenderItem"]
       39 NEWCLOSURE                       R1 P5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 SETTABLEKS                       R1 R0 K17 ["onAutocompleteRenderItem"]
       45 NEWCLOSURE                       R1 P6
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 SETTABLEKS                       R1 R0 K18 ["onItemActivated"]
       51 NEWCLOSURE                       R1 P7
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U0
       54 SETTABLEKS                       R1 R0 K19 ["clearAllRecentSearches"]
       56 NEWCLOSURE                       R1 P8
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K20 ["tryCacheSearchTerm"]
       60 NEWCLOSURE                       R1 P9
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K21 ["removeSearchTermFromCache"]
       64 NEWCLOSURE                       R1 P10
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U4
       67 SETTABLEKS                       R1 R0 K22 ["onSearchRequested"]
       69 NEWCLOSURE                       R1 P11
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K23 ["closeAutocomplete"]
       73 GETTABLEKS                       R1 R0 K24 ["props"]
       75 GETTABLEKS                       R1 R1 K25 ["ShowRecentSearchesInAutoComplete"]
       77 JUMPIFNOT                        R1 ; [+4]
       78 NEWCLOSURE                       R1 P12
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R1 R0 K26 ["onTextBoxFocusGained"]
       82 NEWCLOSURE                       R1 P13
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R1 R0 K27 ["updateRecentSearches"]
       86 NEWCLOSURE                       R1 P14
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R1 R0 K28 ["renderRecentSearchesDropdownMenuHeader"]
       92 NEWCLOSURE                       R1 P15
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U2
       96 SETTABLEKS                       R1 R0 K29 ["renderRecentSearchesDropdownMenuItem"]
       98 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["displayedSearchTerm"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["state"]
        8 GETTABLEKS                       R2 R2 K2 ["showAutocompleteResults"]
       10 JUMPIFNOT                        R2 ; [+60]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["state"]
       14 GETTABLEKS                       R2 R2 K3 ["lastSearchTerm"]
       16 JUMPIFEQ                         R2 R1 ; [+54]
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["autocompleteTimer"]
       22 ADD                              R3 R4 R0
       23 SETTABLEKS                       R3 R2 K4 ["autocompleteTimer"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K5 ["isUserInputting"]
       28 JUMPIFNOT                        R2 ; [+4]
       29 GETUPVAL                         R2 0
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R2 K4 ["autocompleteTimer"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K4 ["autocompleteTimer"]
       36 LOADK                            R3 K6 [0.12]
       37 JUMPIFNOTLT                      R3 R2 ; [+33]
       39 JUMPIFEQKS                       R1 K7 [""] ; [+31]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K8 ["AUTOCOMPLETE_API_NAMES"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K9 ["props"]
       47 GETTABLEKS                       R4 R4 K10 ["categoryName"]
       49 GETTABLE                         R2 R3 R4
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K9 ["props"]
       53 GETTABLEKS                       R3 R3 K11 ["getAutocompleteResults"]
       55 GETUPVAL                         R4 2
       56 MOVE                             R5 R2
       57 MOVE                             R6 R1
       58 GETUPVAL                         R7 3
       59 CALL                             R3 4 0
       60 GETUPVAL                         R3 0
       61 LOADN                            R4 0
       62 SETTABLEKS                       R4 R3 K4 ["autocompleteTimer"]
       64 GETUPVAL                         R3 0
       65 DUPTABLE                         R5 K12 [{"lastSearchTerm"}]
       66 SETTABLEKS                       R1 R5 K3 ["lastSearchTerm"]
       68 NAMECALL                         R3 R3 K13 ["setState"]
       70 CALL                             R3 2 0
       71 JUMPIFNOTEQKS                    R1 K7 [""] ; [+38]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K0 ["state"]
       76 GETTABLEKS                       R2 R2 K3 ["lastSearchTerm"]
       78 JUMPIFEQKS                       R2 K7 [""] ; [+31]
       80 GETUPVAL                         R3 1
       81 GETTABLEKS                       R3 R3 K8 ["AUTOCOMPLETE_API_NAMES"]
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K9 ["props"]
       86 GETTABLEKS                       R4 R4 K10 ["categoryName"]
       88 GETTABLE                         R2 R3 R4
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R3 R3 K9 ["props"]
       92 GETTABLEKS                       R3 R3 K11 ["getAutocompleteResults"]
       94 GETUPVAL                         R4 2
       95 MOVE                             R5 R2
       96 MOVE                             R6 R1
       97 GETUPVAL                         R7 3
       98 CALL                             R3 4 0
       99 GETUPVAL                         R3 0
      100 LOADN                            R4 0
      101 SETTABLEKS                       R4 R3 K4 ["autocompleteTimer"]
      103 GETUPVAL                         R3 0
      104 DUPTABLE                         R5 K12 [{"lastSearchTerm"}]
      105 SETTABLEKS                       R1 R5 K3 ["lastSearchTerm"]
      107 NAMECALL                         R3 R3 K13 ["setState"]
      109 CALL                             R3 2 0
      110 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getShouldDisableAutocomplete"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["ShowRecentSearchesInAutoComplete"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R1 R0 K3 ["updateRecentSearches"]
       13 GETTABLEKS                       R2 R0 K4 ["getRecentSearches"]
       15 CALL                             R2 0 -1
       16 CALL                             R1 -1 0
       17 GETTABLEKS                       R1 R0 K1 ["props"]
       19 GETTABLEKS                       R1 R1 K5 ["Network"]
       21 GETTABLEKS                       R1 R1 K6 ["networkInterface"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K7 ["RenderStepped"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 NAMECALL                         R2 R2 K8 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R0 K9 ["runServiceConnection"]
       36 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
       11 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R3 R1 K0 ["searchTerm"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["searchTerm"]
        6 JUMPIFEQ                         R3 R4 ; [+17]
        8 DUPTABLE                         R5 K4 [{"displayedSearchTerm", "lastSearchTerm"}]
        9 GETTABLEKS                       R6 R0 K1 ["props"]
       11 GETTABLEKS                       R6 R6 K0 ["searchTerm"]
       13 SETTABLEKS                       R6 R5 K2 ["displayedSearchTerm"]
       15 GETTABLEKS                       R6 R0 K1 ["props"]
       17 GETTABLEKS                       R6 R6 K0 ["searchTerm"]
       19 SETTABLEKS                       R6 R5 K3 ["lastSearchTerm"]
       21 NAMECALL                         R3 R0 K5 ["setState"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["displayedSearchTerm"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K4 ["ShowRecentSearchesInAutoComplete"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K5 ["getTabForCategoryName"]
       15 GETTABLEKS                       R7 R1 K6 ["categoryName"]
       17 CALL                             R6 1 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K7 ["MARKETPLACE"]
       21 JUMPIFEQ                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R8 R1 K8 ["IXP"]
       28 CALL                             R7 1 1
       29 OR                               R6 R7 R5
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R8 R1 K8 ["IXP"]
       33 CALL                             R7 1 1
       34 DUPTABLE                         R8 K27 [{["LayoutOrder"], ["OnInputBegan"], ["OnTextBoxFocusGained"], ["OnInputEnded"], ["OnSearchRequested"], ["OnTextChanged"], ["OnSearchOptionsToggled"], ["SearchIsFiltered"], ["ShowSearchButton"] = False, ["ShowFilterButton"], ["ShowSearchIcon"] = True, ["PlaceholderText"], ["SearchTerm"], ["Style"] = "ToolboxSearchBar", ["Width"]}]
       35 GETTABLEKS                       R9 R1 K9 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       39 GETTABLEKS                       R9 R0 K28 ["onInputBegan"]
       41 SETTABLEKS                       R9 R8 K10 ["OnInputBegan"]
       43 GETTABLEKS                       R9 R0 K29 ["onTextBoxFocusGained"]
       45 SETTABLEKS                       R9 R8 K11 ["OnTextBoxFocusGained"]
       47 GETTABLEKS                       R9 R0 K30 ["onInputEnded"]
       49 SETTABLEKS                       R9 R8 K12 ["OnInputEnded"]
       51 GETTABLEKS                       R9 R0 K31 ["onSearchRequested"]
       53 SETTABLEKS                       R9 R8 K13 ["OnSearchRequested"]
       55 GETTABLEKS                       R9 R0 K32 ["onSearchTextChanged"]
       57 SETTABLEKS                       R9 R8 K14 ["OnTextChanged"]
       59 GETTABLEKS                       R9 R1 K15 ["OnSearchOptionsToggled"]
       61 SETTABLEKS                       R9 R8 K15 ["OnSearchOptionsToggled"]
       63 GETTABLEKS                       R9 R1 K16 ["SearchIsFiltered"]
       65 SETTABLEKS                       R9 R8 K16 ["SearchIsFiltered"]
       67 SETTABLEKS                       R6 R8 K19 ["ShowFilterButton"]
       69 JUMPIFNOT                        R7 ; [+8]
       70 GETTABLEKS                       R9 R1 K33 ["Localization"]
       72 LOADK                            R11 K34 ["General"]
       73 LOADK                            R12 K35 ["SearchPlaceholderWithQuotes"]
       74 NAMECALL                         R9 R9 K36 ["getText"]
       76 CALL                             R9 3 1
       77 JUMP                             ; [+7]
       78 GETTABLEKS                       R9 R1 K33 ["Localization"]
       80 LOADK                            R11 K34 ["General"]
       81 LOADK                            R12 K37 ["SearchBarDefaultText"]
       82 NAMECALL                         R9 R9 K36 ["getText"]
       84 CALL                             R9 3 1
       85 SETTABLEKS                       R9 R8 K22 ["PlaceholderText"]
       87 SETTABLEKS                       R3 R8 K23 ["SearchTerm"]
       89 GETTABLEKS                       R9 R1 K26 ["Width"]
       91 SETTABLEKS                       R9 R8 K26 ["Width"]
       93 GETUPVAL                         R9 3
       94 GETTABLEKS                       R9 R9 K38 ["createElement"]
       96 LOADK                            R10 K39 ["Frame"]
       97 DUPTABLE                         R11 K43 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
       98 GETIMPORT                        R12 K46 [UDim2.new]
      100 LOADN                            R13 0
      101 GETTABLEKS                       R14 R1 K26 ["Width"]
      103 LOADN                            R15 1
      104 LOADN                            R16 0
      105 CALL                             R12 4 1
      106 SETTABLEKS                       R12 R11 K42 ["Size"]
      108 DUPTABLE                         R12 K51 [{"TutorialStroke", "TutorialCorner", "SearchBar", "AutocompleteDropdown"}]
      109 GETTABLEKS                       R14 R1 K52 ["hasTutorialLimits"]
      111 JUMPIFNOT                        R14 ; [+23]
      112 GETTABLEKS                       R14 R1 K53 ["searchTerm"]
      114 JUMPIFNOTEQKS                    R14 K54 [""] ; [+20]
      116 GETUPVAL                         R13 3
      117 GETTABLEKS                       R13 R13 K38 ["createElement"]
      119 LOADK                            R14 K55 ["UIStroke"]
      120 DUPTABLE                         R15 K58 [{"Thickness", "Color"}]
      121 GETTABLEKS                       R16 R2 K59 ["asset"]
      123 GETTABLEKS                       R16 R16 K60 ["strokeThickness"]
      125 SETTABLEKS                       R16 R15 K56 ["Thickness"]
      127 GETTABLEKS                       R16 R2 K59 ["asset"]
      129 GETTABLEKS                       R16 R16 K61 ["strokeColor"]
      131 SETTABLEKS                       R16 R15 K57 ["Color"]
      133 CALL                             R13 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R13
      136 SETTABLEKS                       R13 R12 K47 ["TutorialStroke"]
      138 GETTABLEKS                       R14 R1 K52 ["hasTutorialLimits"]
      140 JUMPIFNOT                        R14 ; [+18]
      141 GETTABLEKS                       R14 R1 K53 ["searchTerm"]
      143 JUMPIFNOTEQKS                    R14 K54 [""] ; [+15]
      145 GETUPVAL                         R13 3
      146 GETTABLEKS                       R13 R13 K38 ["createElement"]
      148 LOADK                            R14 K62 ["UICorner"]
      149 DUPTABLE                         R15 K64 [{"CornerRadius"}]
      150 GETIMPORT                        R16 K66 [UDim.new]
      152 LOADN                            R17 0
      153 LOADN                            R18 3
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R15 K63 ["CornerRadius"]
      157 CALL                             R13 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R13
      160 SETTABLEKS                       R13 R12 K48 ["TutorialCorner"]
      162 GETUPVAL                         R13 3
      163 GETTABLEKS                       R13 R13 K38 ["createElement"]
      165 GETUPVAL                         R14 4
      166 MOVE                             R15 R8
      167 CALL                             R13 2 1
      168 SETTABLEKS                       R13 R12 K49 ["SearchBar"]
      170 JUMPIFNOT                        R4 ; [+46]
      171 GETUPVAL                         R13 3
      172 GETTABLEKS                       R13 R13 K38 ["createElement"]
      174 GETUPVAL                         R14 5
      175 DUPTABLE                         R15 K75 [{["Hide"], ["Items"], ["OnFocusLost"], ["OnItemActivated"], ["OnRenderItem"], ["Priority"] = 2, ["Style"] = "ToolboxSearchBarDropdown", ["Width"]}]
      176 GETTABLEKS                       R17 R0 K2 ["state"]
      178 GETTABLEKS                       R17 R17 K76 ["showAutocompleteResults"]
      180 NOT                              R16 R17
      181 JUMPIF                           R16 ; [+9]
      182 GETTABLEKS                       R18 R0 K2 ["state"]
      184 GETTABLEKS                       R18 R18 K77 ["dropdownMenuRenderItems"]
      186 LENGTH                           R17 R18
      187 JUMPIFEQKN                       R17 K41 [1] ; [+2]
      189 LOADB                            R16 0 +1
      190 LOADB                            R16 1
      191 SETTABLEKS                       R16 R15 K67 ["Hide"]
      193 GETTABLEKS                       R16 R0 K2 ["state"]
      195 GETTABLEKS                       R16 R16 K77 ["dropdownMenuRenderItems"]
      197 SETTABLEKS                       R16 R15 K68 ["Items"]
      199 GETTABLEKS                       R16 R0 K78 ["closeAutocomplete"]
      201 SETTABLEKS                       R16 R15 K69 ["OnFocusLost"]
      203 GETTABLEKS                       R16 R0 K79 ["onItemActivated"]
      205 SETTABLEKS                       R16 R15 K70 ["OnItemActivated"]
      207 GETTABLEKS                       R16 R0 K80 ["onAutocompleteRenderItem"]
      209 SETTABLEKS                       R16 R15 K71 ["OnRenderItem"]
      211 GETTABLEKS                       R16 R1 K26 ["Width"]
      213 SETTABLEKS                       R16 R15 K26 ["Width"]
      215 CALL                             R13 2 1
      216 JUMP                             ; [+41]
      217 GETUPVAL                         R13 3
      218 GETTABLEKS                       R13 R13 K38 ["createElement"]
      220 GETUPVAL                         R14 5
      221 DUPTABLE                         R15 K75 [{["Hide"], ["Items"], ["OnFocusLost"], ["OnItemActivated"], ["OnRenderItem"], ["Priority"] = 2, ["Style"] = "ToolboxSearchBarDropdown", ["Width"]}]
      222 GETTABLEKS                       R17 R0 K2 ["state"]
      224 GETTABLEKS                       R17 R17 K76 ["showAutocompleteResults"]
      226 NOT                              R16 R17
      227 JUMPIF                           R16 ; [+7]
      228 GETTABLEKS                       R18 R1 K81 ["autocompleteResults"]
      230 LENGTH                           R17 R18
      231 JUMPIFEQKN                       R17 K82 [0] ; [+2]
      233 LOADB                            R16 0 +1
      234 LOADB                            R16 1
      235 SETTABLEKS                       R16 R15 K67 ["Hide"]
      237 GETTABLEKS                       R16 R1 K81 ["autocompleteResults"]
      239 SETTABLEKS                       R16 R15 K68 ["Items"]
      241 GETTABLEKS                       R16 R0 K78 ["closeAutocomplete"]
      243 SETTABLEKS                       R16 R15 K69 ["OnFocusLost"]
      245 GETTABLEKS                       R16 R0 K79 ["onItemActivated"]
      247 SETTABLEKS                       R16 R15 K70 ["OnItemActivated"]
      249 GETTABLEKS                       R16 R0 K80 ["onAutocompleteRenderItem"]
      251 SETTABLEKS                       R16 R15 K71 ["OnRenderItem"]
      253 GETTABLEKS                       R16 R1 K26 ["Width"]
      255 SETTABLEKS                       R16 R15 K26 ["Width"]
      257 CALL                             R13 2 1
      258 SETTABLEKS                       R13 R12 K50 ["AutocompleteDropdown"]
      260 CALL                             R9 3 -1
      261 RETURN                           R9 -1

PROTO_29:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R2 K1 ["correctionState"]
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["AutocorrectResponseState"]
       16 GETTABLEKS                       R5 R5 K3 ["CorrectionAvailable"]
       18 JUMPIFNOTEQ                      R3 R5 ; [+4]
       20 GETTABLEKS                       R4 R2 K4 ["correctedQuery"]
       22 JUMP                             ; [+11]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K2 ["AutocorrectResponseState"]
       26 GETTABLEKS                       R5 R5 K5 ["CorrectionAccepted"]
       28 JUMPIFNOTEQ                      R3 R5 ; [+4]
       30 GETTABLEKS                       R4 R2 K6 ["userQuery"]
       32 JUMP                             ; [+1]
       33 LOADK                            R4 K7 [""]
       34 DUPTABLE                         R5 K14 [{"autocompleteResults", "categoryName", "searchTerm", "searchId", "autocorrectOfferedQuery", "hasTutorialLimits"}]
       35 GETTABLEKS                       R7 R0 K8 ["autocompleteResults"]
       37 JUMPIFNOT                        R7 ; [+5]
       38 GETTABLEKS                       R7 R0 K8 ["autocompleteResults"]
       40 GETTABLEKS                       R6 R7 K8 ["autocompleteResults"]
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K8 ["autocompleteResults"]
       47 GETTABLEKS                       R6 R2 K9 ["categoryName"]
       49 JUMPIF                           R6 ; [+5]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K15 ["DEFAULT"]
       53 GETTABLEKS                       R6 R6 K16 ["name"]
       55 SETTABLEKS                       R6 R5 K9 ["categoryName"]
       57 GETTABLEKS                       R7 R2 K10 ["searchTerm"]
       59 ORK                              R6 R7 K7 [""]
       60 SETTABLEKS                       R6 R5 K10 ["searchTerm"]
       62 GETTABLEKS                       R7 R2 K11 ["searchId"]
       64 ORK                              R6 R7 K7 [""]
       65 SETTABLEKS                       R6 R5 K11 ["searchId"]
       67 SETTABLEKS                       R4 R5 K12 ["autocorrectOfferedQuery"]
       69 GETTABLEKS                       R7 R0 K17 ["tutorialLimits"]
       71 GETTABLEKS                       R7 R7 K18 ["assetIds"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 SETTABLEKS                       R6 R5 K13 ["hasTutorialLimits"]
       79 RETURN                           R5 1

PROTO_30:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 LOADB                            R14 0
        9 CALL                             R7 7 -1
       10 CALL                             R6 -1 0
       11 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_32:
        0 DUPTABLE                         R1 K2 [{"logAutocompleteSearchAnalytics", "getAutocompleteResults"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["logAutocompleteSearchAnalytics"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAutocompleteResults"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ToolboxAutocompleteDropdownSize"]
       10 NAMECALL                         R1 R1 K5 ["GetFastInt"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [script]
       15 GETTABLEKS                       R2 R2 K8 ["Parent"]
       17 GETTABLEKS                       R2 R2 K8 ["Parent"]
       19 GETTABLEKS                       R2 R2 K8 ["Parent"]
       21 GETTABLEKS                       R3 R2 K9 ["Packages"]
       23 GETIMPORT                        R4 K11 [require]
       25 GETTABLEKS                       R5 R3 K12 ["Roact"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R3 K13 ["RoactRodux"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K11 [require]
       35 GETTABLEKS                       R7 R2 K14 ["Src"]
       37 GETTABLEKS                       R7 R7 K15 ["Util"]
       39 GETTABLEKS                       R7 R7 K16 ["Analytics"]
       41 GETTABLEKS                       R7 R7 K16 ["Analytics"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K11 [require]
       46 GETTABLEKS                       R8 R2 K14 ["Src"]
       48 GETTABLEKS                       R8 R8 K17 ["Types"]
       50 GETTABLEKS                       R8 R8 K18 ["Category"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R2 K14 ["Src"]
       57 GETTABLEKS                       R9 R9 K15 ["Util"]
       59 GETTABLEKS                       R9 R9 K19 ["ToolboxUtilities"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R2 K14 ["Src"]
       66 GETTABLEKS                       R10 R10 K20 ["Networking"]
       68 GETTABLEKS                       R10 R10 K21 ["Requests"]
       70 GETTABLEKS                       R10 R10 K22 ["GetAutocompleteResultsRequest"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K11 [require]
       75 GETTABLEKS                       R11 R2 K14 ["Src"]
       77 GETTABLEKS                       R11 R11 K23 ["Thunks"]
       79 GETTABLEKS                       R11 R11 K24 ["LogMarketplaceAutocompleteSearchAnalytics"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K11 [require]
       84 GETTABLEKS                       R12 R3 K25 ["Framework"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R11 K26 ["UI"]
       89 GETTABLEKS                       R13 R12 K27 ["DropdownMenu"]
       91 GETTABLEKS                       R14 R12 K28 ["SearchBar"]
       93 GETTABLEKS                       R15 R11 K29 ["ContextServices"]
       95 GETTABLEKS                       R16 R15 K30 ["withContext"]
       97 GETIMPORT                        R17 K11 [require]
       99 GETTABLEKS                       R18 R2 K14 ["Src"]
      101 GETTABLEKS                       R18 R18 K29 ["ContextServices"]
      103 GETTABLEKS                       R18 R18 K31 ["IXPContext"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K11 [require]
      108 GETTABLEKS                       R19 R2 K14 ["Src"]
      110 GETTABLEKS                       R19 R19 K29 ["ContextServices"]
      112 GETTABLEKS                       R19 R19 K32 ["NetworkContext"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K11 [require]
      117 GETTABLEKS                       R20 R2 K14 ["Src"]
      119 GETTABLEKS                       R20 R20 K17 ["Types"]
      121 GETTABLEKS                       R20 R20 K33 ["AutocorrectTypes"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K11 [require]
      126 GETTABLEKS                       R21 R2 K14 ["Src"]
      128 GETTABLEKS                       R21 R21 K34 ["Components"]
      130 GETTABLEKS                       R21 R21 K35 ["DropdownMenuItem"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K11 [require]
      135 GETTABLEKS                       R22 R2 K14 ["Src"]
      137 GETTABLEKS                       R22 R22 K15 ["Util"]
      139 GETTABLEKS                       R22 R22 K36 ["SharedFlags"]
      141 GETTABLEKS                       R22 R22 K37 ["getIsIXPEnabledForListView"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K11 [require]
      146 GETTABLEKS                       R23 R2 K14 ["Src"]
      148 GETTABLEKS                       R23 R23 K15 ["Util"]
      150 GETTABLEKS                       R23 R23 K36 ["SharedFlags"]
      152 GETTABLEKS                       R23 R23 K38 ["getIsIXPEnabledForExactSearch"]
      154 CALL                             R22 1 1
      155 NEWTABLE                         R23 0 0
      157 DUPCLOSURE                       R24 K39 [PROTO_0]
      158 GETTABLEKS                       R25 R4 K40 ["PureComponent"]
      160 LOADK                            R27 K41 ["SearchBarWithAutocomplete"]
      161 NAMECALL                         R25 R25 K42 ["extend"]
      163 CALL                             R25 2 1
      164 DUPCLOSURE                       R26 K43 [PROTO_23]
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R7
      170 SETTABLEKS                       R26 R25 K44 ["init"]
      172 DUPCLOSURE                       R26 K45 [PROTO_25]
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R1
      177 SETTABLEKS                       R26 R25 K46 ["didMount"]
      179 DUPCLOSURE                       R26 K47 [PROTO_26]
      180 SETTABLEKS                       R26 R25 K48 ["willUnmount"]
      182 DUPCLOSURE                       R26 K49 [PROTO_27]
      183 SETTABLEKS                       R26 R25 K50 ["didUpdate"]
      185 DUPCLOSURE                       R26 K51 [PROTO_28]
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R13
      192 SETTABLEKS                       R26 R25 K52 ["render"]
      194 MOVE                             R26 R16
      195 DUPTABLE                         R27 K58 [{"Localization", "Network", "Plugin", "Stylizer", "IXP"}]
      196 GETTABLEKS                       R28 R15 K53 ["Localization"]
      198 SETTABLEKS                       R28 R27 K53 ["Localization"]
      200 SETTABLEKS                       R18 R27 K54 ["Network"]
      202 GETTABLEKS                       R28 R15 K55 ["Plugin"]
      204 SETTABLEKS                       R28 R27 K55 ["Plugin"]
      206 GETTABLEKS                       R28 R15 K56 ["Stylizer"]
      208 SETTABLEKS                       R28 R27 K56 ["Stylizer"]
      210 SETTABLEKS                       R17 R27 K57 ["IXP"]
      212 CALL                             R26 1 1
      213 MOVE                             R27 R25
      214 CALL                             R26 1 1
      215 MOVE                             R25 R26
      216 DUPCLOSURE                       R26 K59 [PROTO_29]
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R7
      219 DUPCLOSURE                       R27 K60 [PROTO_32]
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R9
      222 GETTABLEKS                       R28 R5 K61 ["connect"]
      224 MOVE                             R29 R26
      225 MOVE                             R30 R27
      226 CALL                             R28 2 1
      227 MOVE                             R29 R25
      228 CALL                             R28 1 -1
      229 RETURN                           R28 -1
