PROTO_0:
        0 DUPTABLE                         R1 K4 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm"}]
        1 GETTABLEKS                       R2 R0 K0 ["includeUnverifiedCreators"]
        3 SETTABLEKS                       R2 R1 K0 ["includeUnverifiedCreators"]
        5 GETTABLEKS                       R2 R0 K1 ["minDuration"]
        7 JUMPIF                           R2 ; [+3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["MIN_AUDIO_SEARCH_DURATION"]
       11 SETTABLEKS                       R2 R1 K1 ["minDuration"]
       13 GETTABLEKS                       R2 R0 K2 ["maxDuration"]
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["MAX_AUDIO_SEARCH_DURATION"]
       19 SETTABLEKS                       R2 R1 K2 ["maxDuration"]
       21 GETTABLEKS                       R2 R0 K7 ["initialCreatorName"]
       23 SETTABLEKS                       R2 R1 K3 ["searchTerm"]
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["userSearch"]
        5 GETTABLEKS                       R4 R2 K2 ["Network"]
        7 GETTABLEKS                       R4 R4 K3 ["networkInterface"]
        9 MOVE                             R5 R0
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 DUPTABLE                         R5 K3 [{"searchTerm", "extraSearchDetails"}]
        5 SETTABLEKS                       R0 R5 K1 ["searchTerm"]
        7 SETTABLEKS                       R1 R5 K2 ["extraSearchDetails"]
        9 NAMECALL                         R3 R3 K4 ["setState"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["debouncedUserSearch"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"includeUnverifiedCreators"}]
        1 GETTABLEKS                       R3 R0 K0 ["includeUnverifiedCreators"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["includeUnverifiedCreators"]
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_3]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 DUPTABLE                         R1 K3 [{"Creator", "includeUnverifiedCreators"}]
        4 GETTABLEKS                       R2 R0 K4 ["searchTerm"]
        6 SETTABLEKS                       R2 R1 K1 ["Creator"]
        8 GETTABLEKS                       R2 R0 K2 ["includeUnverifiedCreators"]
       10 SETTABLEKS                       R2 R1 K2 ["includeUnverifiedCreators"]
       12 GETTABLEKS                       R2 R0 K5 ["extraSearchDetails"]
       14 JUMPIFNOT                        R2 ; [+22]
       15 GETIMPORT                        R2 K7 [next]
       17 GETTABLEKS                       R3 R0 K5 ["extraSearchDetails"]
       19 CALL                             R2 1 1
       20 JUMPIFEQKNIL                     R2 ; [+16]
       22 DUPTABLE                         R2 K10 [{"Name", "Id"}]
       23 GETTABLEKS                       R3 R0 K5 ["extraSearchDetails"]
       25 GETTABLEKS                       R3 R3 K8 ["Name"]
       27 SETTABLEKS                       R3 R2 K8 ["Name"]
       29 GETTABLEKS                       R3 R0 K5 ["extraSearchDetails"]
       31 GETTABLEKS                       R3 R3 K9 ["Id"]
       33 SETTABLEKS                       R3 R2 K9 ["Id"]
       35 SETTABLEKS                       R2 R1 K1 ["Creator"]
       37 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K5 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm", "extraSearchDetails"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["includeUnverifiedCreators"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K6 ["MIN_AUDIO_SEARCH_DURATION"]
        8 SETTABLEKS                       R3 R2 K1 ["minDuration"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K7 ["MAX_AUDIO_SEARCH_DURATION"]
       13 SETTABLEKS                       R3 R2 K2 ["maxDuration"]
       15 LOADK                            R3 K8 [""]
       16 SETTABLEKS                       R3 R2 K3 ["searchTerm"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K4 ["extraSearchDetails"]
       22 NAMECALL                         R0 R0 K9 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 SETTABLEKS                       R1 R0 K1 ["getInitState"]
        4 GETTABLEKS                       R1 R0 K1 ["getInitState"]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K3 ["state"]
       11 GETUPVAL                         R1 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 GETUPVAL                         R3 2
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K4 ["debouncedUserSearch"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["updateUserSearch"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K6 ["onToggleIdVerified"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K7 ["getSearchOptions"]
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R1 R0 K8 ["onReset"]
       35 NEWCLOSURE                       R1 P6
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K9 ["onClose"]
       39 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["liveSearchData"]
        4 GETTABLEKS                       R2 R2 K2 ["searchTerm"]
        6 SETTABLEKS                       R2 R0 K2 ["searchTerm"]
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["includeUnverifiedCreators"]
        3 GETTABLEKS                       R3 R1 K0 ["includeUnverifiedCreators"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+22]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["initialCreatorName"]
       10 GETTABLEKS                       R3 R1 K1 ["initialCreatorName"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+15]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["maxDuration"]
       17 GETTABLEKS                       R3 R1 K2 ["maxDuration"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+8]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["minDuration"]
       24 GETTABLEKS                       R3 R1 K3 ["minDuration"]
       26 JUMPIFEQ                         R2 R3 ; [+7]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K4 ["getInitState"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1
       34 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R3 R0 K0 ["setState"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["liveSearchData"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETUPVAL                         R6 0
        9 CALL                             R6 0 1
       10 NOT                              R5 R6
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 CALL                             R6 0 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K5 ["createElement"]
       18 GETUPVAL                         R8 3
       19 DUPTABLE                         R9 K9 [{"GetSearchOptions", "OnClose", "OnReset"}]
       20 GETTABLEKS                       R10 R0 K10 ["getSearchOptions"]
       22 SETTABLEKS                       R10 R9 K6 ["GetSearchOptions"]
       24 GETTABLEKS                       R10 R0 K11 ["onClose"]
       26 SETTABLEKS                       R10 R9 K7 ["OnClose"]
       28 GETTABLEKS                       R10 R0 K12 ["onReset"]
       30 SETTABLEKS                       R10 R9 K8 ["OnReset"]
       32 DUPTABLE                         R10 K15 [{"AllViews", "Creator"}]
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R11 R11 K5 ["createElement"]
       36 GETUPVAL                         R12 4
       37 DUPTABLE                         R13 K18 [{"Header", "LayoutOrder"}]
       38 LOADK                            R16 K19 ["General"]
       39 LOADK                            R17 K20 ["SearchOptionsAllViews"]
       40 NAMECALL                         R14 R4 K21 ["getText"]
       42 CALL                             R14 3 1
       43 SETTABLEKS                       R14 R13 K16 ["Header"]
       45 NAMECALL                         R14 R6 K22 ["getNextOrder"]
       47 CALL                             R14 1 1
       48 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       50 DUPTABLE                         R14 K24 [{"CheckboxAndDescriptionContainer"}]
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R15 R15 K5 ["createElement"]
       54 GETUPVAL                         R16 5
       55 DUPTABLE                         R17 K27 [{"IsChecked", "OnClick"}]
       56 GETTABLEKS                       R18 R2 K28 ["includeUnverifiedCreators"]
       58 SETTABLEKS                       R18 R17 K25 ["IsChecked"]
       60 GETTABLEKS                       R18 R0 K29 ["onToggleIdVerified"]
       62 SETTABLEKS                       R18 R17 K26 ["OnClick"]
       64 CALL                             R15 2 1
       65 SETTABLEKS                       R15 R14 K23 ["CheckboxAndDescriptionContainer"]
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K13 ["AllViews"]
       70 MOVE                             R11 R5
       71 JUMPIFNOT                        R11 ; [+47]
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R11 R11 K5 ["createElement"]
       75 GETUPVAL                         R12 4
       76 DUPTABLE                         R13 K18 [{"Header", "LayoutOrder"}]
       77 LOADK                            R16 K19 ["General"]
       78 LOADK                            R17 K30 ["SearchOptionCreator"]
       79 NAMECALL                         R14 R4 K21 ["getText"]
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K16 ["Header"]
       84 NAMECALL                         R14 R6 K22 ["getNextOrder"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       89 DUPTABLE                         R14 K32 [{"SearchBar"}]
       90 GETUPVAL                         R15 2
       91 GETTABLEKS                       R15 R15 K5 ["createElement"]
       93 GETUPVAL                         R16 6
       94 DUPTABLE                         R17 K38 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width"}]
       95 LOADK                            R18 K39 ["SearchBarCreatorText"]
       96 SETTABLEKS                       R18 R17 K33 ["defaultTextKey"]
       98 GETTABLEKS                       R18 R2 K34 ["searchTerm"]
      100 SETTABLEKS                       R18 R17 K34 ["searchTerm"]
      102 GETTABLEKS                       R18 R3 K35 ["results"]
      104 SETTABLEKS                       R18 R17 K35 ["results"]
      106 GETTABLEKS                       R18 R0 K40 ["updateUserSearch"]
      108 SETTABLEKS                       R18 R17 K36 ["updateSearch"]
      110 GETUPVAL                         R18 7
      111 GETTABLEKS                       R18 R18 K41 ["SEARCH_BAR_WIDTH"]
      113 SETTABLEKS                       R18 R17 K37 ["width"]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K31 ["SearchBar"]
      118 CALL                             R11 3 1
      119 SETTABLEKS                       R11 R10 K14 ["Creator"]
      121 CALL                             R7 3 -1
      122 RETURN                           R7 -1

PROTO_13:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R0 K1 ["liveSearch"]
       13 JUMPIFNOT                        R4 ; [+14]
       14 DUPTABLE                         R4 K4 [{"searchTerm", "results"}]
       15 GETTABLEKS                       R5 R0 K1 ["liveSearch"]
       17 GETTABLEKS                       R5 R5 K2 ["searchTerm"]
       19 SETTABLEKS                       R5 R4 K2 ["searchTerm"]
       21 GETTABLEKS                       R5 R0 K1 ["liveSearch"]
       23 GETTABLEKS                       R5 R5 K3 ["results"]
       25 SETTABLEKS                       R5 R4 K3 ["results"]
       27 MOVE                             R3 R4
       28 GETTABLEKS                       R5 R2 K5 ["creator"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETTABLEKS                       R4 R2 K5 ["creator"]
       33 GETTABLEKS                       R4 R4 K6 ["Name"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K7 [""]
       37 DUPTABLE                         R5 K12 [{"categoryName", "includeUnverifiedCreators", "initialCreatorName", "liveSearchData"}]
       38 GETTABLEKS                       R6 R2 K8 ["categoryName"]
       40 JUMPIF                           R6 ; [+5]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K13 ["DEFAULT"]
       44 GETTABLEKS                       R6 R6 K14 ["name"]
       46 SETTABLEKS                       R6 R5 K8 ["categoryName"]
       48 GETTABLEKS                       R6 R2 K9 ["includeUnverifiedCreators"]
       50 SETTABLEKS                       R6 R5 K9 ["includeUnverifiedCreators"]
       52 SETTABLEKS                       R4 R5 K10 ["initialCreatorName"]
       54 SETTABLEKS                       R3 R5 K11 ["liveSearchData"]
       56 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K1 [{"userSearch"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["userSearch"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R5 K11 ["Util"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R5 K12 ["Constants"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R5 K13 ["debounce"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R4 K11 ["Util"]
       40 GETTABLEKS                       R8 R8 K14 ["deepEqual"]
       42 GETTABLEKS                       R9 R4 K15 ["ContextServices"]
       44 GETTABLEKS                       R10 R9 K16 ["withContext"]
       46 GETIMPORT                        R11 K6 [require]
       48 GETTABLEKS                       R12 R0 K10 ["Src"]
       50 GETTABLEKS                       R12 R12 K15 ["ContextServices"]
       52 GETTABLEKS                       R12 R12 K17 ["Settings"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K10 ["Src"]
       59 GETTABLEKS                       R13 R13 K15 ["ContextServices"]
       61 GETTABLEKS                       R13 R13 K18 ["NetworkContext"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K6 [require]
       66 GETTABLEKS                       R14 R0 K10 ["Src"]
       68 GETTABLEKS                       R14 R14 K19 ["Components"]
       70 GETTABLEKS                       R14 R14 K20 ["SearchOptions"]
       72 GETTABLEKS                       R14 R14 K21 ["LiveSearchBar"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [require]
       77 GETTABLEKS                       R15 R0 K10 ["Src"]
       79 GETTABLEKS                       R15 R15 K19 ["Components"]
       81 GETTABLEKS                       R15 R15 K20 ["SearchOptions"]
       83 GETTABLEKS                       R15 R15 K22 ["SearchOptionsEntry"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K6 [require]
       88 GETTABLEKS                       R16 R0 K10 ["Src"]
       90 GETTABLEKS                       R16 R16 K19 ["Components"]
       92 GETTABLEKS                       R16 R16 K20 ["SearchOptions"]
       94 GETTABLEKS                       R16 R16 K23 ["SearchOptionsLayout"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K6 [require]
       99 GETTABLEKS                       R17 R0 K10 ["Src"]
      101 GETTABLEKS                       R17 R17 K19 ["Components"]
      103 GETTABLEKS                       R17 R17 K20 ["SearchOptions"]
      105 GETTABLEKS                       R17 R17 K24 ["VerfifiedCreatorCheckbox"]
      107 CALL                             R16 1 1
      108 GETTABLEKS                       R17 R4 K11 ["Util"]
      110 GETTABLEKS                       R17 R17 K25 ["LayoutOrderIterator"]
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K10 ["Src"]
      116 GETTABLEKS                       R19 R19 K26 ["Networking"]
      118 GETTABLEKS                       R19 R19 K27 ["Requests"]
      120 GETTABLEKS                       R19 R19 K28 ["UserSearchRequest"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R20 R0 K10 ["Src"]
      127 GETTABLEKS                       R20 R20 K11 ["Util"]
      129 GETTABLEKS                       R20 R20 K29 ["ToolboxUtilities"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R19 R19 K30 ["showRobloxCreatedAssets"]
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R21 R0 K10 ["Src"]
      138 GETTABLEKS                       R21 R21 K31 ["Types"]
      140 GETTABLEKS                       R21 R21 K32 ["Category"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K6 [require]
      145 GETTABLEKS                       R22 R0 K10 ["Src"]
      147 GETTABLEKS                       R22 R22 K31 ["Types"]
      149 GETTABLEKS                       R22 R22 K33 ["SearchOptionsTypes"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K35 [game]
      154 LOADK                            R24 K36 ["ToolboxLiveSearchDebounceWait"]
      155 NAMECALL                         R22 R22 K37 ["GetFastInt"]
      157 CALL                             R22 2 1
      158 GETTABLEKS                       R23 R2 K38 ["PureComponent"]
      160 LOADK                            R25 K39 ["MarketplaceSearchOptions"]
      161 NAMECALL                         R23 R23 K40 ["extend"]
      163 CALL                             R23 2 1
      164 DUPCLOSURE                       R24 K41 [PROTO_8]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R22
      168 SETTABLEKS                       R24 R23 K42 ["init"]
      170 DUPCLOSURE                       R24 K43 [PROTO_9]
      171 SETTABLEKS                       R24 R23 K44 ["didMount"]
      173 DUPCLOSURE                       R24 K45 [PROTO_11]
      174 SETTABLEKS                       R24 R23 K46 ["didUpdate"]
      176 DUPCLOSURE                       R24 K47 [PROTO_12]
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R6
      185 SETTABLEKS                       R24 R23 K48 ["render"]
      187 MOVE                             R24 R10
      188 DUPTABLE                         R25 K51 [{"Localization", "Settings", "Network"}]
      189 GETTABLEKS                       R26 R9 K49 ["Localization"]
      191 SETTABLEKS                       R26 R25 K49 ["Localization"]
      193 SETTABLEKS                       R11 R25 K17 ["Settings"]
      195 SETTABLEKS                       R12 R25 K50 ["Network"]
      197 CALL                             R24 1 1
      198 MOVE                             R25 R23
      199 CALL                             R24 1 1
      200 MOVE                             R23 R24
      201 DUPCLOSURE                       R24 K52 [PROTO_13]
      202 CAPTURE                          VAL R20
      203 DUPCLOSURE                       R25 K53 [PROTO_15]
      204 CAPTURE                          VAL R18
      205 GETTABLEKS                       R26 R3 K54 ["connect"]
      207 MOVE                             R27 R24
      208 MOVE                             R28 R25
      209 CALL                             R26 2 1
      210 MOVE                             R27 R23
      211 CALL                             R26 1 -1
      212 RETURN                           R26 -1
