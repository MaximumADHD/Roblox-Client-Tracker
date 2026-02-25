PROTO_0:
        0 LOADK                            R4 K0 ["^%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["autocorrectOfferedQuery"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnTextChanged"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnTextChanged"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["state"]
       13 GETTABLEKS                       R2 R3 K3 ["displayedSearchTerm"]
       15 JUMPIFEQ                         R0 R2 ; [+53]
       17 FASTCALL1                        STRING_LEN R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K6 [string.len]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K2 ["state"]
       25 GETTABLEKS                       R4 R5 K3 ["displayedSearchTerm"]
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
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K2 ["state"]
       48 GETTABLEKS                       R4 R5 K3 ["displayedSearchTerm"]
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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["renderRecentSearchesDropdownMenuHeader"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["renderRecentSearchesDropdownMenuItem"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["ShowRecentSearchesInAutoComplete"]
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["onRecentSearchesRenderItem"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["createElement"]
       17 GETUPVAL                         R4 2
       18 DUPTABLE                         R5 K10 [{"FocusedText", "HideSeparator", "LayoutOrder", "OnClick", "Size", "Text"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K11 ["state"]
       22 GETTABLEKS                       R6 R7 K12 ["displayedSearchTerm"]
       24 SETTABLEKS                       R6 R5 K4 ["FocusedText"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K0 ["props"]
       29 GETTABLEKS                       R8 R9 K13 ["autocompleteResults"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnSearchRequested"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K2 ["ShowRecentSearchesInAutoComplete"]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["MarketplaceRecentSearchClicked"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 JUMP                             ; [+28]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["props"]
       22 GETTABLEKS                       R2 R3 K4 ["logAutocompleteSearchAnalytics"]
       24 MOVE                             R3 R0
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K5 ["AUTOCOMPLETE_API_NAMES"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K0 ["props"]
       31 GETTABLEKS                       R6 R7 K6 ["categoryName"]
       33 GETTABLE                         R4 R5 R6
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K7 ["state"]
       37 GETTABLEKS                       R5 R6 K8 ["displayedSearchTerm"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K9 ["keyCount"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K10 ["deleteCount"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updateRecentSearches"]
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
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["getRecentSearches"]
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
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K8 ["updateRecentSearches"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getRecentSearches"]
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
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K6 ["updateRecentSearches"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnSearchRequested"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["state"]
       10 GETTABLEKS                       R1 R2 K3 ["displayedSearchTerm"]
       12 JUMPIFEQ                         R0 R1 ; [+25]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["props"]
       17 GETTABLEKS                       R1 R2 K4 ["logAutocompleteSearchAnalytics"]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K5 ["AUTOCOMPLETE_API_NAMES"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K0 ["props"]
       26 GETTABLEKS                       R5 R6 K6 ["categoryName"]
       28 GETTABLE                         R3 R4 R5
       29 LOADNIL                          R4
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K7 ["keyCount"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K8 ["deleteCount"]
       36 LOADB                            R7 1
       37 CALL                             R1 6 0
       38 GETUPVAL                         R1 0
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R1 K7 ["keyCount"]
       42 GETUPVAL                         R1 0
       43 LOADN                            R2 0
       44 SETTABLEKS                       R2 R1 K8 ["deleteCount"]
       46 GETUPVAL                         R1 0
       47 DUPTABLE                         R3 K10 [{"showAutocompleteResults"}]
       48 LOADB                            R4 0
       49 SETTABLEKS                       R4 R3 K9 ["showAutocompleteResults"]
       51 NAMECALL                         R1 R1 K11 ["setState"]
       53 CALL                             R1 2 0
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R1 R2 K12 ["tryCacheSearchTerm"]
       57 MOVE                             R2 R0
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showAutocompleteResults"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showAutocompleteResults"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showAutocompleteResults"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showAutocompleteResults"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 LOADK                            R4 K3 ["RecentSearchesCache"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R1 K4 ["SetSetting"]
       12 CALL                             R2 3 0
       13 LOADNIL                          R2
       14 NEWTABLE                         R3 0 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["props"]
       19 GETTABLEKS                       R4 R5 K5 ["Localization"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clearAllRecentSearches"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"DisableHover", "FocusedText", "Size", "Text", "OnClick", "DropdownMenuItemButtonStyle", "ItemButtonContentOverride"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["DisableHover"]
        8 LOADK                            R4 K9 [""]
        9 SETTABLEKS                       R4 R3 K2 ["FocusedText"]
       11 GETIMPORT                        R4 K12 [UDim2.new]
       13 LOADN                            R5 1
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 LOADN                            R8 28
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K3 ["Size"]
       20 SETTABLEKS                       R0 R3 K4 ["Text"]
       22 DUPCLOSURE                       R4 K13 [PROTO_16]
       23 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       25 LOADK                            R4 K14 ["ToolboxRecentSearchesButton"]
       26 SETTABLEKS                       R4 R3 K6 ["DropdownMenuItemButtonStyle"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K0 ["createElement"]
       31 LOADK                            R5 K15 ["TextButton"]
       32 NEWTABLE                         R6 16 0
       34 LOADN                            R7 1
       35 SETTABLEKS                       R7 R6 K16 ["BackgroundTransparency"]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K17 ["props"]
       40 GETTABLEKS                       R7 R8 K18 ["Localization"]
       42 LOADK                            R9 K19 ["General"]
       43 LOADK                            R10 K20 ["SearchResultsClearAll"]
       44 NAMECALL                         R7 R7 K21 ["getText"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K4 ["Text"]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K17 ["props"]
       52 GETTABLEKS                       R9 R10 K22 ["Stylizer"]
       54 GETTABLEKS                       R8 R9 K23 ["linkButton"]
       56 GETTABLEKS                       R7 R8 K24 ["textColor"]
       58 SETTABLEKS                       R7 R6 K25 ["TextColor3"]
       60 GETIMPORT                        R7 K12 [UDim2.new]
       62 LOADN                            R8 1
       63 LOADN                            R9 242
       64 LOADK                            R10 K26 [0.5]
       65 LOADN                            R11 0
       66 CALL                             R7 4 1
       67 SETTABLEKS                       R7 R6 K27 ["Position"]
       69 GETIMPORT                        R7 K29 [Vector2.new]
       71 LOADN                            R8 1
       72 LOADK                            R9 K26 [0.5]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K30 ["AnchorPoint"]
       76 LOADN                            R7 3
       77 SETTABLEKS                       R7 R6 K31 ["LayoutOrder"]
       79 GETIMPORT                        R7 K33 [UDim2.fromOffset]
       81 LOADN                            R8 32
       82 LOADN                            R9 20
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K3 ["Size"]
       86 LOADB                            R7 1
       87 SETTABLEKS                       R7 R6 K34 ["TextScaled"]
       89 GETIMPORT                        R7 K38 [Enum.TextYAlignment.Center]
       91 SETTABLEKS                       R7 R6 K36 ["TextYAlignment"]
       93 GETIMPORT                        R7 K41 [Enum.TextXAlignment.Right]
       95 SETTABLEKS                       R7 R6 K39 ["TextXAlignment"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K42 ["Event"]
      100 GETTABLEKS                       R7 R8 K43 ["MouseButton1Click"]
      102 NEWCLOSURE                       R8 P1
      103 CAPTURE                          UPVAL U2
      104 SETTABLE                         R8 R6 R7
      105 CALL                             R4 2 1
      106 SETTABLEKS                       R4 R3 K7 ["ItemButtonContentOverride"]
      108 CALL                             R1 2 -1
      109 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["props"]
        4 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        6 GETTABLEKS                       R2 R3 K2 ["recentSearchesCloseButton"]
        8 GETTABLEKS                       R1 R2 K3 ["hoverColor"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K4 ["rbxasset://textures/StudioToolbox/ClearHover.png"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["props"]
        4 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        6 GETTABLEKS                       R2 R3 K2 ["recentSearchesCloseButton"]
        8 GETTABLEKS                       R1 R2 K3 ["backgroundColor"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K4 ["rbxasset://textures/StudioToolbox/Clear.png"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeSearchTermFromCache"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createBinding"]
        3 LOADK                            R4 K1 ["rbxasset://textures/StudioToolbox/Clear.png"]
        4 CALL                             R3 1 2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["createBinding"]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K2 ["props"]
       11 GETTABLEKS                       R8 R9 K3 ["Stylizer"]
       13 GETTABLEKS                       R7 R8 K4 ["recentSearchesCloseButton"]
       15 GETTABLEKS                       R6 R7 K5 ["backgroundColor"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K6 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K17 [{"HideSeparator", "EnableClearButton", "LayoutOrder", "OnClick", "Size", "Text", "DropdownMenuItemButtonStyle", "OnMouseEnter", "OnMouseLeave", "ItemButtonContentOverride"}]
       23 LOADB                            R10 1
       24 SETTABLEKS                       R10 R9 K7 ["HideSeparator"]
       26 LOADB                            R10 1
       27 SETTABLEKS                       R10 R9 K8 ["EnableClearButton"]
       29 SETTABLEKS                       R1 R9 K9 ["LayoutOrder"]
       31 SETTABLEKS                       R2 R9 K10 ["OnClick"]
       33 GETIMPORT                        R10 K20 [UDim2.new]
       35 LOADN                            R11 1
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 LOADN                            R14 28
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K11 ["Size"]
       42 SETTABLEKS                       R0 R9 K12 ["Text"]
       44 LOADK                            R10 K21 ["ToolboxRecentSearchesButton"]
       45 SETTABLEKS                       R10 R9 K13 ["DropdownMenuItemButtonStyle"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R6
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R10 R9 K14 ["OnMouseEnter"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R10 R9 K15 ["OnMouseLeave"]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R10 R11 K6 ["createElement"]
       62 LOADK                            R11 K22 ["ImageButton"]
       63 NEWTABLE                         R12 8 0
       65 LOADN                            R13 1
       66 SETTABLEKS                       R13 R12 K23 ["BackgroundTransparency"]
       68 SETTABLEKS                       R3 R12 K24 ["Image"]
       70 GETIMPORT                        R13 K20 [UDim2.new]
       72 LOADN                            R14 1
       73 LOADN                            R15 242
       74 LOADK                            R16 K25 [0.5]
       75 LOADN                            R17 0
       76 CALL                             R13 4 1
       77 SETTABLEKS                       R13 R12 K26 ["Position"]
       79 GETIMPORT                        R13 K28 [Vector2.new]
       81 LOADN                            R14 1
       82 LOADK                            R15 K25 [0.5]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K29 ["AnchorPoint"]
       86 SETTABLEKS                       R5 R12 K30 ["ImageColor3"]
       88 LOADN                            R13 3
       89 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       91 GETIMPORT                        R13 K32 [UDim2.fromOffset]
       93 LOADN                            R14 14
       94 LOADN                            R15 14
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K11 ["Size"]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K33 ["Event"]
      101 GETTABLEKS                       R13 R14 K34 ["MouseButton1Click"]
      103 NEWCLOSURE                       R14 P2
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          VAL R0
      106 SETTABLE                         R14 R12 R13
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K16 ["ItemButtonContentOverride"]
      110 CALL                             R7 2 -1
      111 RETURN                           R7 -1

PROTO_23:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getRecentSearches"]
        5 DUPTABLE                         R1 K5 [{"showAutocompleteResults", "displayedSearchTerm", "lastSearchTerm", "dropdownMenuRenderItems"}]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["showAutocompleteResults"]
        9 LOADK                            R2 K6 [""]
       10 SETTABLEKS                       R2 R1 K2 ["displayedSearchTerm"]
       12 LOADK                            R2 K6 [""]
       13 SETTABLEKS                       R2 R1 K3 ["lastSearchTerm"]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R2 R1 K4 ["dropdownMenuRenderItems"]
       18 SETTABLEKS                       R1 R0 K7 ["state"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K8 ["isUserInputting"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K9 ["autocompleteTimer"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K10 ["keyCount"]
       29 LOADN                            R1 0
       30 SETTABLEKS                       R1 R0 K11 ["deleteCount"]
       32 NEWCLOSURE                       R1 P1
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K12 ["onInputBegan"]
       36 NEWCLOSURE                       R1 P2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K13 ["onInputEnded"]
       40 NEWCLOSURE                       R1 P3
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K14 ["onSearchTextChanged"]
       44 NEWCLOSURE                       R1 P4
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K15 ["onRecentSearchesRenderItem"]
       48 NEWCLOSURE                       R1 P5
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R1 R0 K16 ["onAutocompleteRenderItem"]
       54 NEWCLOSURE                       R1 P6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 SETTABLEKS                       R1 R0 K17 ["onItemActivated"]
       60 NEWCLOSURE                       R1 P7
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U0
       63 SETTABLEKS                       R1 R0 K18 ["clearAllRecentSearches"]
       65 NEWCLOSURE                       R1 P8
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K19 ["tryCacheSearchTerm"]
       69 NEWCLOSURE                       R1 P9
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K20 ["removeSearchTermFromCache"]
       73 NEWCLOSURE                       R1 P10
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U4
       76 SETTABLEKS                       R1 R0 K21 ["onSearchRequested"]
       78 NEWCLOSURE                       R1 P11
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R1 R0 K22 ["closeAutocomplete"]
       82 GETTABLEKS                       R2 R0 K23 ["props"]
       84 GETTABLEKS                       R1 R2 K24 ["ShowRecentSearchesInAutoComplete"]
       86 JUMPIFNOT                        R1 ; [+4]
       87 NEWCLOSURE                       R1 P12
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R1 R0 K25 ["onTextBoxFocusGained"]
       91 NEWCLOSURE                       R1 P13
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R1 R0 K26 ["updateRecentSearches"]
       95 NEWCLOSURE                       R1 P14
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R1 R0 K27 ["renderRecentSearchesDropdownMenuHeader"]
      101 NEWCLOSURE                       R1 P15
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U2
      105 SETTABLEKS                       R1 R0 K28 ["renderRecentSearchesDropdownMenuItem"]
      107 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["displayedSearchTerm"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["state"]
        8 GETTABLEKS                       R2 R3 K2 ["showAutocompleteResults"]
       10 JUMPIFNOT                        R2 ; [+60]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["state"]
       14 GETTABLEKS                       R2 R3 K3 ["lastSearchTerm"]
       16 JUMPIFEQ                         R2 R1 ; [+54]
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K4 ["autocompleteTimer"]
       22 ADD                              R3 R4 R0
       23 SETTABLEKS                       R3 R2 K4 ["autocompleteTimer"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K5 ["isUserInputting"]
       28 JUMPIFNOT                        R2 ; [+4]
       29 GETUPVAL                         R2 0
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R2 K4 ["autocompleteTimer"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K4 ["autocompleteTimer"]
       36 LOADK                            R3 K6 [0.12]
       37 JUMPIFNOTLT                      R3 R2 ; [+33]
       39 JUMPIFEQKS                       R1 K7 [""] ; [+31]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K8 ["AUTOCOMPLETE_API_NAMES"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K9 ["props"]
       47 GETTABLEKS                       R4 R5 K10 ["categoryName"]
       49 GETTABLE                         R2 R3 R4
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K9 ["props"]
       53 GETTABLEKS                       R3 R4 K11 ["getAutocompleteResults"]
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
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R3 R4 K0 ["state"]
       76 GETTABLEKS                       R2 R3 K3 ["lastSearchTerm"]
       78 JUMPIFEQKS                       R2 K7 [""] ; [+31]
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R3 R4 K8 ["AUTOCOMPLETE_API_NAMES"]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R5 R6 K9 ["props"]
       86 GETTABLEKS                       R4 R5 K10 ["categoryName"]
       88 GETTABLE                         R2 R3 R4
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R4 R5 K9 ["props"]
       92 GETTABLEKS                       R3 R4 K11 ["getAutocompleteResults"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getShouldDisableAutocomplete"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["ShowRecentSearchesInAutoComplete"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R1 R0 K3 ["updateRecentSearches"]
       13 GETTABLEKS                       R2 R0 K4 ["getRecentSearches"]
       15 CALL                             R2 0 -1
       16 CALL                             R1 -1 0
       17 GETTABLEKS                       R3 R0 K1 ["props"]
       19 GETTABLEKS                       R2 R3 K5 ["Network"]
       21 GETTABLEKS                       R1 R2 K6 ["networkInterface"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K7 ["RenderStepped"]
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
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["searchTerm"]
        6 JUMPIFEQ                         R3 R4 ; [+17]
        8 DUPTABLE                         R5 K4 [{"displayedSearchTerm", "lastSearchTerm"}]
        9 GETTABLEKS                       R7 R0 K1 ["props"]
       11 GETTABLEKS                       R6 R7 K0 ["searchTerm"]
       13 SETTABLEKS                       R6 R5 K2 ["displayedSearchTerm"]
       15 GETTABLEKS                       R7 R0 K1 ["props"]
       17 GETTABLEKS                       R6 R7 K0 ["searchTerm"]
       19 SETTABLEKS                       R6 R5 K3 ["lastSearchTerm"]
       21 NAMECALL                         R3 R0 K5 ["setState"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R4 K3 ["displayedSearchTerm"]
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R5 K4 ["ShowRecentSearchesInAutoComplete"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K5 ["getTabForCategoryName"]
       15 GETTABLEKS                       R7 R1 K6 ["categoryName"]
       17 CALL                             R6 1 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K7 ["MARKETPLACE"]
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
       34 DUPTABLE                         R8 K24 [{"LayoutOrder", "OnInputBegan", "OnTextBoxFocusGained", "OnInputEnded", "OnSearchRequested", "OnTextChanged", "OnSearchOptionsToggled", "SearchIsFiltered", "ShowSearchButton", "ShowFilterButton", "ShowSearchIcon", "PlaceholderText", "SearchTerm", "Style", "Width"}]
       35 GETTABLEKS                       R9 R1 K9 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       39 GETTABLEKS                       R9 R0 K25 ["onInputBegan"]
       41 SETTABLEKS                       R9 R8 K10 ["OnInputBegan"]
       43 GETTABLEKS                       R9 R0 K26 ["onTextBoxFocusGained"]
       45 SETTABLEKS                       R9 R8 K11 ["OnTextBoxFocusGained"]
       47 GETTABLEKS                       R9 R0 K27 ["onInputEnded"]
       49 SETTABLEKS                       R9 R8 K12 ["OnInputEnded"]
       51 GETTABLEKS                       R9 R0 K28 ["onSearchRequested"]
       53 SETTABLEKS                       R9 R8 K13 ["OnSearchRequested"]
       55 GETTABLEKS                       R9 R0 K29 ["onSearchTextChanged"]
       57 SETTABLEKS                       R9 R8 K14 ["OnTextChanged"]
       59 GETTABLEKS                       R9 R1 K15 ["OnSearchOptionsToggled"]
       61 SETTABLEKS                       R9 R8 K15 ["OnSearchOptionsToggled"]
       63 GETTABLEKS                       R9 R1 K16 ["SearchIsFiltered"]
       65 SETTABLEKS                       R9 R8 K16 ["SearchIsFiltered"]
       67 LOADB                            R9 0
       68 SETTABLEKS                       R9 R8 K17 ["ShowSearchButton"]
       70 SETTABLEKS                       R6 R8 K18 ["ShowFilterButton"]
       72 LOADB                            R9 1
       73 SETTABLEKS                       R9 R8 K19 ["ShowSearchIcon"]
       75 JUMPIFNOT                        R7 ; [+8]
       76 GETTABLEKS                       R9 R1 K30 ["Localization"]
       78 LOADK                            R11 K31 ["General"]
       79 LOADK                            R12 K32 ["SearchPlaceholderWithQuotes"]
       80 NAMECALL                         R9 R9 K33 ["getText"]
       82 CALL                             R9 3 1
       83 JUMP                             ; [+7]
       84 GETTABLEKS                       R9 R1 K30 ["Localization"]
       86 LOADK                            R11 K31 ["General"]
       87 LOADK                            R12 K34 ["SearchBarDefaultText"]
       88 NAMECALL                         R9 R9 K33 ["getText"]
       90 CALL                             R9 3 1
       91 SETTABLEKS                       R9 R8 K20 ["PlaceholderText"]
       93 SETTABLEKS                       R3 R8 K21 ["SearchTerm"]
       95 LOADK                            R9 K35 ["ToolboxSearchBar"]
       96 SETTABLEKS                       R9 R8 K22 ["Style"]
       98 GETTABLEKS                       R9 R1 K23 ["Width"]
      100 SETTABLEKS                       R9 R8 K23 ["Width"]
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R9 R10 K36 ["createElement"]
      105 LOADK                            R10 K37 ["Frame"]
      106 DUPTABLE                         R11 K40 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      107 LOADN                            R12 1
      108 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      110 LOADN                            R12 1
      111 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      113 GETIMPORT                        R12 K43 [UDim2.new]
      115 LOADN                            R13 0
      116 GETTABLEKS                       R14 R1 K23 ["Width"]
      118 LOADN                            R15 1
      119 LOADN                            R16 0
      120 CALL                             R12 4 1
      121 SETTABLEKS                       R12 R11 K39 ["Size"]
      123 DUPTABLE                         R12 K48 [{"TutorialStroke", "TutorialCorner", "SearchBar", "AutocompleteDropdown"}]
      124 GETTABLEKS                       R14 R1 K49 ["hasTutorialLimits"]
      126 JUMPIFNOT                        R14 ; [+23]
      127 GETTABLEKS                       R14 R1 K50 ["searchTerm"]
      129 JUMPIFNOTEQKS                    R14 K51 [""] ; [+20]
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R13 R14 K36 ["createElement"]
      134 LOADK                            R14 K52 ["UIStroke"]
      135 DUPTABLE                         R15 K55 [{"Thickness", "Color"}]
      136 GETTABLEKS                       R17 R2 K56 ["asset"]
      138 GETTABLEKS                       R16 R17 K57 ["strokeThickness"]
      140 SETTABLEKS                       R16 R15 K53 ["Thickness"]
      142 GETTABLEKS                       R17 R2 K56 ["asset"]
      144 GETTABLEKS                       R16 R17 K58 ["strokeColor"]
      146 SETTABLEKS                       R16 R15 K54 ["Color"]
      148 CALL                             R13 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R13
      151 SETTABLEKS                       R13 R12 K44 ["TutorialStroke"]
      153 GETTABLEKS                       R14 R1 K49 ["hasTutorialLimits"]
      155 JUMPIFNOT                        R14 ; [+18]
      156 GETTABLEKS                       R14 R1 K50 ["searchTerm"]
      158 JUMPIFNOTEQKS                    R14 K51 [""] ; [+15]
      160 GETUPVAL                         R14 3
      161 GETTABLEKS                       R13 R14 K36 ["createElement"]
      163 LOADK                            R14 K59 ["UICorner"]
      164 DUPTABLE                         R15 K61 [{"CornerRadius"}]
      165 GETIMPORT                        R16 K63 [UDim.new]
      167 LOADN                            R17 0
      168 LOADN                            R18 3
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K60 ["CornerRadius"]
      172 CALL                             R13 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R13
      175 SETTABLEKS                       R13 R12 K45 ["TutorialCorner"]
      177 GETUPVAL                         R14 3
      178 GETTABLEKS                       R13 R14 K36 ["createElement"]
      180 GETUPVAL                         R14 4
      181 MOVE                             R15 R8
      182 CALL                             R13 2 1
      183 SETTABLEKS                       R13 R12 K46 ["SearchBar"]
      185 JUMPIFNOT                        R4 ; [+52]
      186 GETUPVAL                         R14 3
      187 GETTABLEKS                       R13 R14 K36 ["createElement"]
      189 GETUPVAL                         R14 5
      190 DUPTABLE                         R15 K70 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Priority", "Style", "Width"}]
      191 GETTABLEKS                       R18 R0 K2 ["state"]
      193 GETTABLEKS                       R17 R18 K71 ["showAutocompleteResults"]
      195 NOT                              R16 R17
      196 JUMPIF                           R16 ; [+9]
      197 GETTABLEKS                       R19 R0 K2 ["state"]
      199 GETTABLEKS                       R18 R19 K72 ["dropdownMenuRenderItems"]
      201 LENGTH                           R17 R18
      202 JUMPIFEQKN                       R17 K73 [1] ; [+2]
      204 LOADB                            R16 0 +1
      205 LOADB                            R16 1
      206 SETTABLEKS                       R16 R15 K64 ["Hide"]
      208 GETTABLEKS                       R17 R0 K2 ["state"]
      210 GETTABLEKS                       R16 R17 K72 ["dropdownMenuRenderItems"]
      212 SETTABLEKS                       R16 R15 K65 ["Items"]
      214 GETTABLEKS                       R16 R0 K74 ["closeAutocomplete"]
      216 SETTABLEKS                       R16 R15 K66 ["OnFocusLost"]
      218 GETTABLEKS                       R16 R0 K75 ["onItemActivated"]
      220 SETTABLEKS                       R16 R15 K67 ["OnItemActivated"]
      222 GETTABLEKS                       R16 R0 K76 ["onAutocompleteRenderItem"]
      224 SETTABLEKS                       R16 R15 K68 ["OnRenderItem"]
      226 LOADN                            R16 2
      227 SETTABLEKS                       R16 R15 K69 ["Priority"]
      229 LOADK                            R16 K77 ["ToolboxSearchBarDropdown"]
      230 SETTABLEKS                       R16 R15 K22 ["Style"]
      232 GETTABLEKS                       R16 R1 K23 ["Width"]
      234 SETTABLEKS                       R16 R15 K23 ["Width"]
      236 CALL                             R13 2 1
      237 JUMP                             ; [+47]
      238 GETUPVAL                         R14 3
      239 GETTABLEKS                       R13 R14 K36 ["createElement"]
      241 GETUPVAL                         R14 5
      242 DUPTABLE                         R15 K70 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Priority", "Style", "Width"}]
      243 GETTABLEKS                       R18 R0 K2 ["state"]
      245 GETTABLEKS                       R17 R18 K71 ["showAutocompleteResults"]
      247 NOT                              R16 R17
      248 JUMPIF                           R16 ; [+7]
      249 GETTABLEKS                       R18 R1 K78 ["autocompleteResults"]
      251 LENGTH                           R17 R18
      252 JUMPIFEQKN                       R17 K79 [0] ; [+2]
      254 LOADB                            R16 0 +1
      255 LOADB                            R16 1
      256 SETTABLEKS                       R16 R15 K64 ["Hide"]
      258 GETTABLEKS                       R16 R1 K78 ["autocompleteResults"]
      260 SETTABLEKS                       R16 R15 K65 ["Items"]
      262 GETTABLEKS                       R16 R0 K74 ["closeAutocomplete"]
      264 SETTABLEKS                       R16 R15 K66 ["OnFocusLost"]
      266 GETTABLEKS                       R16 R0 K75 ["onItemActivated"]
      268 SETTABLEKS                       R16 R15 K67 ["OnItemActivated"]
      270 GETTABLEKS                       R16 R0 K76 ["onAutocompleteRenderItem"]
      272 SETTABLEKS                       R16 R15 K68 ["OnRenderItem"]
      274 LOADN                            R16 2
      275 SETTABLEKS                       R16 R15 K69 ["Priority"]
      277 LOADK                            R16 K77 ["ToolboxSearchBarDropdown"]
      278 SETTABLEKS                       R16 R15 K22 ["Style"]
      280 GETTABLEKS                       R16 R1 K23 ["Width"]
      282 SETTABLEKS                       R16 R15 K23 ["Width"]
      284 CALL                             R13 2 1
      285 SETTABLEKS                       R13 R12 K47 ["AutocompleteDropdown"]
      287 CALL                             R9 3 -1
      288 RETURN                           R9 -1

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
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K2 ["AutocorrectResponseState"]
       16 GETTABLEKS                       R5 R6 K3 ["CorrectionAvailable"]
       18 JUMPIFNOTEQ                      R3 R5 ; [+4]
       20 GETTABLEKS                       R4 R2 K4 ["correctedQuery"]
       22 JUMP                             ; [+11]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K2 ["AutocorrectResponseState"]
       26 GETTABLEKS                       R5 R6 K5 ["CorrectionAccepted"]
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
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K15 ["DEFAULT"]
       53 GETTABLEKS                       R6 R7 K16 ["name"]
       55 SETTABLEKS                       R6 R5 K9 ["categoryName"]
       57 GETTABLEKS                       R7 R2 K10 ["searchTerm"]
       59 ORK                              R6 R7 K7 [""]
       60 SETTABLEKS                       R6 R5 K10 ["searchTerm"]
       62 GETTABLEKS                       R7 R2 K11 ["searchId"]
       64 ORK                              R6 R7 K7 [""]
       65 SETTABLEKS                       R6 R5 K11 ["searchId"]
       67 SETTABLEKS                       R4 R5 K12 ["autocorrectOfferedQuery"]
       69 GETTABLEKS                       R8 R0 K17 ["tutorialLimits"]
       71 GETTABLEKS                       R7 R8 K18 ["assetIds"]
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
       13 GETIMPORT                        R5 K7 [script]
       15 GETTABLEKS                       R4 R5 K8 ["Parent"]
       17 GETTABLEKS                       R3 R4 K8 ["Parent"]
       19 GETTABLEKS                       R2 R3 K8 ["Parent"]
       21 GETTABLEKS                       R3 R2 K9 ["Packages"]
       23 GETIMPORT                        R4 K11 [require]
       25 GETTABLEKS                       R5 R3 K12 ["Roact"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R3 K13 ["RoactRodux"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K11 [require]
       35 GETTABLEKS                       R10 R2 K14 ["Src"]
       37 GETTABLEKS                       R9 R10 K15 ["Util"]
       39 GETTABLEKS                       R8 R9 K16 ["Analytics"]
       41 GETTABLEKS                       R7 R8 K16 ["Analytics"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K11 [require]
       46 GETTABLEKS                       R10 R2 K14 ["Src"]
       48 GETTABLEKS                       R9 R10 K17 ["Types"]
       50 GETTABLEKS                       R8 R9 K18 ["Category"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R11 R2 K14 ["Src"]
       57 GETTABLEKS                       R10 R11 K15 ["Util"]
       59 GETTABLEKS                       R9 R10 K19 ["ToolboxUtilities"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R13 R2 K14 ["Src"]
       66 GETTABLEKS                       R12 R13 K20 ["Networking"]
       68 GETTABLEKS                       R11 R12 K21 ["Requests"]
       70 GETTABLEKS                       R10 R11 K22 ["GetAutocompleteResultsRequest"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K11 [require]
       75 GETTABLEKS                       R13 R2 K14 ["Src"]
       77 GETTABLEKS                       R12 R13 K23 ["Thunks"]
       79 GETTABLEKS                       R11 R12 K24 ["LogMarketplaceAutocompleteSearchAnalytics"]
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
       99 GETTABLEKS                       R20 R2 K14 ["Src"]
      101 GETTABLEKS                       R19 R20 K29 ["ContextServices"]
      103 GETTABLEKS                       R18 R19 K31 ["IXPContext"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K11 [require]
      108 GETTABLEKS                       R21 R2 K14 ["Src"]
      110 GETTABLEKS                       R20 R21 K29 ["ContextServices"]
      112 GETTABLEKS                       R19 R20 K32 ["NetworkContext"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K11 [require]
      117 GETTABLEKS                       R22 R2 K14 ["Src"]
      119 GETTABLEKS                       R21 R22 K17 ["Types"]
      121 GETTABLEKS                       R20 R21 K33 ["AutocorrectTypes"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K11 [require]
      126 GETTABLEKS                       R23 R2 K14 ["Src"]
      128 GETTABLEKS                       R22 R23 K34 ["Components"]
      130 GETTABLEKS                       R21 R22 K35 ["DropdownMenuItem"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K11 [require]
      135 GETTABLEKS                       R25 R2 K14 ["Src"]
      137 GETTABLEKS                       R24 R25 K15 ["Util"]
      139 GETTABLEKS                       R23 R24 K36 ["SharedFlags"]
      141 GETTABLEKS                       R22 R23 K37 ["getIsIXPEnabledForListView"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K11 [require]
      146 GETTABLEKS                       R26 R2 K14 ["Src"]
      148 GETTABLEKS                       R25 R26 K15 ["Util"]
      150 GETTABLEKS                       R24 R25 K36 ["SharedFlags"]
      152 GETTABLEKS                       R23 R24 K38 ["getIsIXPEnabledForExactSearch"]
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
