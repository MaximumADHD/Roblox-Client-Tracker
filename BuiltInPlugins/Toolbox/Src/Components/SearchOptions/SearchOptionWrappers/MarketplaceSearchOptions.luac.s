PROTO_0:
        0 DUPTABLE                         R1 K5 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm", "qualityFilterData"}]
        1 GETTABLEKS                       R2 R0 K0 ["includeUnverifiedCreators"]
        3 SETTABLEKS                       R2 R1 K0 ["includeUnverifiedCreators"]
        5 GETTABLEKS                       R2 R0 K1 ["minDuration"]
        7 JUMPIF                           R2 ; [+3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K6 ["MIN_AUDIO_SEARCH_DURATION"]
       11 SETTABLEKS                       R2 R1 K1 ["minDuration"]
       13 GETTABLEKS                       R2 R0 K2 ["maxDuration"]
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["MAX_AUDIO_SEARCH_DURATION"]
       19 SETTABLEKS                       R2 R1 K2 ["maxDuration"]
       21 GETTABLEKS                       R2 R0 K8 ["initialCreatorName"]
       23 SETTABLEKS                       R2 R1 K3 ["searchTerm"]
       25 GETTABLEKS                       R2 R0 K4 ["qualityFilterData"]
       27 SETTABLEKS                       R2 R1 K4 ["qualityFilterData"]
       29 RETURN                           R1 1

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
        0 DUPTABLE                         R1 K1 [{"qualityFilterData"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K3 ["join"]
        6 GETTABLEKS                       R3 R0 K0 ["qualityFilterData"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R8 R0 K0 ["qualityFilterData"]
       13 GETUPVAL                         R9 1
       14 GETTABLE                         R7 R8 R9
       15 JUMPIFEQKB                       R7 TRUE ; [+3]
       17 LOADB                            R6 1
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K4 ["None"]
       22 SETTABLE                         R6 R4 R5
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K0 ["qualityFilterData"]
       26 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 DUPTABLE                         R1 K4 [{"Creator", "includeUnverifiedCreators", "qualityFilterData"}]
        4 GETTABLEKS                       R2 R0 K5 ["searchTerm"]
        6 SETTABLEKS                       R2 R1 K1 ["Creator"]
        8 GETTABLEKS                       R2 R0 K2 ["includeUnverifiedCreators"]
       10 SETTABLEKS                       R2 R1 K2 ["includeUnverifiedCreators"]
       12 GETTABLEKS                       R2 R0 K3 ["qualityFilterData"]
       14 SETTABLEKS                       R2 R1 K3 ["qualityFilterData"]
       16 GETTABLEKS                       R2 R0 K6 ["extraSearchDetails"]
       18 JUMPIFNOT                        R2 ; [+22]
       19 GETIMPORT                        R2 K8 [next]
       21 GETTABLEKS                       R3 R0 K6 ["extraSearchDetails"]
       23 CALL                             R2 1 1
       24 JUMPIFEQKNIL                     R2 ; [+16]
       26 DUPTABLE                         R2 K11 [{"Name", "Id"}]
       27 GETTABLEKS                       R3 R0 K6 ["extraSearchDetails"]
       29 GETTABLEKS                       R3 R3 K9 ["Name"]
       31 SETTABLEKS                       R3 R2 K9 ["Name"]
       33 GETTABLEKS                       R3 R0 K6 ["extraSearchDetails"]
       35 GETTABLEKS                       R3 R3 K10 ["Id"]
       37 SETTABLEKS                       R3 R2 K10 ["Id"]
       39 SETTABLEKS                       R2 R1 K1 ["Creator"]
       41 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K6 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "searchTerm", "extraSearchDetails", "qualityFilterData"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["includeUnverifiedCreators"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K7 ["MIN_AUDIO_SEARCH_DURATION"]
        8 SETTABLEKS                       R3 R2 K1 ["minDuration"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K8 ["MAX_AUDIO_SEARCH_DURATION"]
       13 SETTABLEKS                       R3 R2 K2 ["maxDuration"]
       15 LOADK                            R3 K9 [""]
       16 SETTABLEKS                       R3 R2 K3 ["searchTerm"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K4 ["extraSearchDetails"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K5 ["qualityFilterData"]
       26 NAMECALL                         R0 R0 K10 ["setState"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_10:
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
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R1 R0 K7 ["onToggleQualityFilter"]
       31 NEWCLOSURE                       R1 P5
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K8 ["getSearchOptions"]
       35 NEWCLOSURE                       R1 P6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R1 R0 K9 ["onReset"]
       40 NEWCLOSURE                       R1 P7
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K10 ["onClose"]
       44 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["liveSearchData"]
        4 GETTABLEKS                       R2 R2 K2 ["searchTerm"]
        6 SETTABLEKS                       R2 R0 K2 ["searchTerm"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["includeUnverifiedCreators"]
        3 GETTABLEKS                       R3 R1 K0 ["includeUnverifiedCreators"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+30]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["initialCreatorName"]
       10 GETTABLEKS                       R3 R1 K1 ["initialCreatorName"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+23]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["maxDuration"]
       17 GETTABLEKS                       R3 R1 K2 ["maxDuration"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+16]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["minDuration"]
       24 GETTABLEKS                       R3 R1 K3 ["minDuration"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+9]
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K4 ["qualityFilterData"]
       32 GETTABLEKS                       R4 R1 K4 ["qualityFilterData"]
       34 CALL                             R2 2 1
       35 JUMPIF                           R2 ; [+6]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K5 ["getInitState"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1
       42 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R3 R0 K0 ["setState"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["categoryName"]
        6 GETTABLEKS                       R4 R1 K3 ["liveSearchData"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETUPVAL                         R7 0
       11 CALL                             R7 0 1
       12 NOT                              R6 R7
       13 GETUPVAL                         R8 1
       14 CALL                             R8 0 1
       15 JUMPIFNOT                        R8 ; [+6]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K5 ["categoryIsModel"]
       19 MOVE                             R8 R3
       20 CALL                             R7 1 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R7
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K6 ["new"]
       26 CALL                             R8 0 1
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K7 ["createElement"]
       30 GETUPVAL                         R10 5
       31 DUPTABLE                         R11 K11 [{"GetSearchOptions", "OnClose", "OnReset"}]
       32 GETTABLEKS                       R12 R0 K12 ["getSearchOptions"]
       34 SETTABLEKS                       R12 R11 K8 ["GetSearchOptions"]
       36 GETTABLEKS                       R12 R0 K13 ["onClose"]
       38 SETTABLEKS                       R12 R11 K9 ["OnClose"]
       40 GETTABLEKS                       R12 R0 K14 ["onReset"]
       42 SETTABLEKS                       R12 R11 K10 ["OnReset"]
       44 DUPTABLE                         R12 K18 [{"AllViews", "Creator", "QualityFilters"}]
       45 GETUPVAL                         R13 4
       46 GETTABLEKS                       R13 R13 K7 ["createElement"]
       48 GETUPVAL                         R14 6
       49 DUPTABLE                         R15 K21 [{"Header", "LayoutOrder"}]
       50 LOADK                            R18 K22 ["General"]
       51 LOADK                            R19 K23 ["SearchOptionsAllViews"]
       52 NAMECALL                         R16 R5 K24 ["getText"]
       54 CALL                             R16 3 1
       55 SETTABLEKS                       R16 R15 K19 ["Header"]
       57 NAMECALL                         R16 R8 K25 ["getNextOrder"]
       59 CALL                             R16 1 1
       60 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
       62 DUPTABLE                         R16 K27 [{"CheckboxAndDescriptionContainer"}]
       63 GETUPVAL                         R17 4
       64 GETTABLEKS                       R17 R17 K7 ["createElement"]
       66 GETUPVAL                         R18 7
       67 DUPTABLE                         R19 K30 [{"IsChecked", "OnClick"}]
       68 GETTABLEKS                       R20 R2 K31 ["includeUnverifiedCreators"]
       70 SETTABLEKS                       R20 R19 K28 ["IsChecked"]
       72 GETTABLEKS                       R20 R0 K32 ["onToggleIdVerified"]
       74 SETTABLEKS                       R20 R19 K29 ["OnClick"]
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K26 ["CheckboxAndDescriptionContainer"]
       79 CALL                             R13 3 1
       80 SETTABLEKS                       R13 R12 K15 ["AllViews"]
       82 MOVE                             R13 R6
       83 JUMPIFNOT                        R13 ; [+47]
       84 GETUPVAL                         R13 4
       85 GETTABLEKS                       R13 R13 K7 ["createElement"]
       87 GETUPVAL                         R14 6
       88 DUPTABLE                         R15 K21 [{"Header", "LayoutOrder"}]
       89 LOADK                            R18 K22 ["General"]
       90 LOADK                            R19 K33 ["SearchOptionCreator"]
       91 NAMECALL                         R16 R5 K24 ["getText"]
       93 CALL                             R16 3 1
       94 SETTABLEKS                       R16 R15 K19 ["Header"]
       96 NAMECALL                         R16 R8 K25 ["getNextOrder"]
       98 CALL                             R16 1 1
       99 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      101 DUPTABLE                         R16 K35 [{"SearchBar"}]
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R17 R17 K7 ["createElement"]
      105 GETUPVAL                         R18 8
      106 DUPTABLE                         R19 K41 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width"}]
      107 LOADK                            R20 K42 ["SearchBarCreatorText"]
      108 SETTABLEKS                       R20 R19 K36 ["defaultTextKey"]
      110 GETTABLEKS                       R20 R2 K37 ["searchTerm"]
      112 SETTABLEKS                       R20 R19 K37 ["searchTerm"]
      114 GETTABLEKS                       R20 R4 K38 ["results"]
      116 SETTABLEKS                       R20 R19 K38 ["results"]
      118 GETTABLEKS                       R20 R0 K43 ["updateUserSearch"]
      120 SETTABLEKS                       R20 R19 K39 ["updateSearch"]
      122 GETUPVAL                         R20 9
      123 GETTABLEKS                       R20 R20 K44 ["SEARCH_BAR_WIDTH"]
      125 SETTABLEKS                       R20 R19 K40 ["width"]
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K34 ["SearchBar"]
      130 CALL                             R13 3 1
      131 SETTABLEKS                       R13 R12 K16 ["Creator"]
      133 MOVE                             R13 R7
      134 JUMPIFNOT                        R13 ; [+16]
      135 GETUPVAL                         R13 4
      136 GETTABLEKS                       R13 R13 K7 ["createElement"]
      138 GETUPVAL                         R14 10
      139 DUPTABLE                         R15 K47 [{"CheckedState", "OnToggleFilter"}]
      140 GETTABLEKS                       R16 R2 K48 ["qualityFilterData"]
      142 SETTABLEKS                       R16 R15 K45 ["CheckedState"]
      144 GETTABLEKS                       R16 R0 K49 ["onToggleQualityFilter"]
      146 SETTABLEKS                       R16 R15 K46 ["OnToggleFilter"]
      148 NEWTABLE                         R16 0 0
      150 CALL                             R13 3 1
      151 SETTABLEKS                       R13 R12 K17 ["QualityFilters"]
      153 CALL                             R9 3 -1
      154 RETURN                           R9 -1

PROTO_15:
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
       37 GETUPVAL                         R6 0
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+6]
       40 GETTABLEKS                       R6 R2 K8 ["qualityFilterData"]
       42 JUMPIFNOT                        R6 ; [+3]
       43 GETTABLEKS                       R5 R2 K8 ["qualityFilterData"]
       45 JUMP                             ; [+2]
       46 NEWTABLE                         R5 0 0
       48 DUPTABLE                         R6 K13 [{"categoryName", "includeUnverifiedCreators", "initialCreatorName", "liveSearchData", "qualityFilterData"}]
       49 GETTABLEKS                       R7 R2 K9 ["categoryName"]
       51 JUMPIF                           R7 ; [+5]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K14 ["DEFAULT"]
       55 GETTABLEKS                       R7 R7 K15 ["name"]
       57 SETTABLEKS                       R7 R6 K9 ["categoryName"]
       59 GETTABLEKS                       R7 R2 K10 ["includeUnverifiedCreators"]
       61 SETTABLEKS                       R7 R6 K10 ["includeUnverifiedCreators"]
       63 SETTABLEKS                       R4 R6 K11 ["initialCreatorName"]
       65 SETTABLEKS                       R3 R6 K12 ["liveSearchData"]
       67 SETTABLEKS                       R5 R6 K8 ["qualityFilterData"]
       69 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
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
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Cryo"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Util"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R6 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R6 K14 ["debounce"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R4 K12 ["Util"]
       45 GETTABLEKS                       R9 R9 K15 ["deepEqual"]
       47 GETTABLEKS                       R10 R4 K16 ["ContextServices"]
       49 GETTABLEKS                       R11 R10 K17 ["withContext"]
       51 GETIMPORT                        R12 K6 [require]
       53 GETTABLEKS                       R13 R0 K11 ["Src"]
       55 GETTABLEKS                       R13 R13 K16 ["ContextServices"]
       57 GETTABLEKS                       R13 R13 K18 ["Settings"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K6 [require]
       62 GETTABLEKS                       R14 R0 K11 ["Src"]
       64 GETTABLEKS                       R14 R14 K16 ["ContextServices"]
       66 GETTABLEKS                       R14 R14 K19 ["NetworkContext"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K6 [require]
       71 GETTABLEKS                       R15 R0 K11 ["Src"]
       73 GETTABLEKS                       R15 R15 K20 ["Components"]
       75 GETTABLEKS                       R15 R15 K21 ["AssetQualityFilter"]
       77 GETTABLEKS                       R15 R15 K21 ["AssetQualityFilter"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K6 [require]
       82 GETTABLEKS                       R16 R0 K11 ["Src"]
       84 GETTABLEKS                       R16 R16 K20 ["Components"]
       86 GETTABLEKS                       R16 R16 K22 ["SearchOptions"]
       88 GETTABLEKS                       R16 R16 K23 ["LiveSearchBar"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K6 [require]
       93 GETTABLEKS                       R17 R0 K11 ["Src"]
       95 GETTABLEKS                       R17 R17 K20 ["Components"]
       97 GETTABLEKS                       R17 R17 K22 ["SearchOptions"]
       99 GETTABLEKS                       R17 R17 K24 ["SearchOptionsEntry"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K6 [require]
      104 GETTABLEKS                       R18 R0 K11 ["Src"]
      106 GETTABLEKS                       R18 R18 K20 ["Components"]
      108 GETTABLEKS                       R18 R18 K22 ["SearchOptions"]
      110 GETTABLEKS                       R18 R18 K25 ["SearchOptionsLayout"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R19 R0 K11 ["Src"]
      117 GETTABLEKS                       R19 R19 K20 ["Components"]
      119 GETTABLEKS                       R19 R19 K22 ["SearchOptions"]
      121 GETTABLEKS                       R19 R19 K26 ["VerfifiedCreatorCheckbox"]
      123 CALL                             R18 1 1
      124 GETTABLEKS                       R19 R4 K12 ["Util"]
      126 GETTABLEKS                       R19 R19 K27 ["LayoutOrderIterator"]
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R0 K11 ["Src"]
      132 GETTABLEKS                       R21 R21 K28 ["Networking"]
      134 GETTABLEKS                       R21 R21 K29 ["Requests"]
      136 GETTABLEKS                       R21 R21 K30 ["UserSearchRequest"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R22 R0 K11 ["Src"]
      143 GETTABLEKS                       R22 R22 K12 ["Util"]
      145 GETTABLEKS                       R22 R22 K31 ["ToolboxUtilities"]
      147 CALL                             R21 1 1
      148 GETTABLEKS                       R21 R21 K32 ["showRobloxCreatedAssets"]
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K11 ["Src"]
      154 GETTABLEKS                       R23 R23 K33 ["Types"]
      156 GETTABLEKS                       R23 R23 K34 ["Category"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K6 [require]
      161 GETTABLEKS                       R24 R0 K11 ["Src"]
      163 GETTABLEKS                       R24 R24 K33 ["Types"]
      165 GETTABLEKS                       R24 R24 K35 ["SearchOptionsTypes"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K37 [game]
      170 LOADK                            R26 K38 ["ToolboxLiveSearchDebounceWait"]
      171 NAMECALL                         R24 R24 K39 ["GetFastInt"]
      173 CALL                             R24 2 1
      174 GETIMPORT                        R25 K6 [require]
      176 GETTABLEKS                       R26 R0 K11 ["Src"]
      178 GETTABLEKS                       R26 R26 K40 ["Flags"]
      180 GETTABLEKS                       R26 R26 K41 ["getFFlagQualityFiltersInToolboxSearch"]
      182 CALL                             R25 1 1
      183 GETTABLEKS                       R26 R2 K42 ["PureComponent"]
      185 LOADK                            R28 K43 ["MarketplaceSearchOptions"]
      186 NAMECALL                         R26 R26 K44 ["extend"]
      188 CALL                             R26 2 1
      189 DUPCLOSURE                       R27 K45 [PROTO_10]
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R5
      194 SETTABLEKS                       R27 R26 K46 ["init"]
      196 DUPCLOSURE                       R27 K47 [PROTO_11]
      197 SETTABLEKS                       R27 R26 K48 ["didMount"]
      199 DUPCLOSURE                       R27 K49 [PROTO_13]
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R27 R26 K50 ["didUpdate"]
      203 DUPCLOSURE                       R27 K51 [PROTO_14]
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R14
      215 SETTABLEKS                       R27 R26 K52 ["render"]
      217 MOVE                             R27 R11
      218 DUPTABLE                         R28 K55 [{"Localization", "Settings", "Network"}]
      219 GETTABLEKS                       R29 R10 K53 ["Localization"]
      221 SETTABLEKS                       R29 R28 K53 ["Localization"]
      223 SETTABLEKS                       R12 R28 K18 ["Settings"]
      225 SETTABLEKS                       R13 R28 K54 ["Network"]
      227 CALL                             R27 1 1
      228 MOVE                             R28 R26
      229 CALL                             R27 1 1
      230 MOVE                             R26 R27
      231 DUPCLOSURE                       R27 K56 [PROTO_15]
      232 CAPTURE                          VAL R25
      233 CAPTURE                          VAL R22
      234 DUPCLOSURE                       R28 K57 [PROTO_17]
      235 CAPTURE                          VAL R20
      236 GETTABLEKS                       R29 R3 K58 ["connect"]
      238 MOVE                             R30 R27
      239 MOVE                             R31 R28
      240 CALL                             R29 2 1
      241 MOVE                             R30 R26
      242 CALL                             R29 1 -1
      243 RETURN                           R29 -1
