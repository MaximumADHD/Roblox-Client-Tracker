PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["uiSortIntent"]
        2 JUMPIFNOT                        R1 ; [+40]
        3 GETTABLEKS                       R1 R0 K0 ["uiSortIntent"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["UiSortIntent"]
        8 GETTABLEKS                       R2 R2 K2 ["Duration"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+9]
       12 GETTABLEKS                       R1 R0 K3 ["sortDirection"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+5]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K4 ["Relevance"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 2
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 GETTABLEKS                       R6 R0 K0 ["uiSortIntent"]
       26 GETTABLEKS                       R7 R5 K0 ["uiSortIntent"]
       28 JUMPIFNOTEQ                      R6 R7 ; [+12]
       30 GETTABLEKS                       R6 R0 K3 ["sortDirection"]
       32 JUMPIFEQKNIL                     R6 ; [+7]
       34 GETTABLEKS                       R6 R0 K3 ["sortDirection"]
       36 GETTABLEKS                       R7 R5 K3 ["sortDirection"]
       38 JUMPIFNOTEQ                      R6 R7 ; [+2]
       40 RETURN                           R4 1
       41 FORGLOOP                         R1 2 ; [-18]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K1 ["UiSortIntent"]
       46 GETTABLEKS                       R1 R1 K5 ["Default"]
       48 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"audioTypeKey", "includeUnverifiedCreators", "minDuration", "maxDuration", "sortIntentKey", "searchTerm"}]
        1 GETTABLEKS                       R2 R0 K7 ["initialAudioTypeKey"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K8 ["All"]
        7 SETTABLEKS                       R2 R1 K0 ["audioTypeKey"]
        9 GETTABLEKS                       R2 R0 K1 ["includeUnverifiedCreators"]
       11 SETTABLEKS                       R2 R1 K1 ["includeUnverifiedCreators"]
       13 GETTABLEKS                       R2 R0 K2 ["minDuration"]
       15 JUMPIF                           R2 ; [+3]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K9 ["MIN_AUDIO_SEARCH_DURATION"]
       19 SETTABLEKS                       R2 R1 K2 ["minDuration"]
       21 GETTABLEKS                       R2 R0 K3 ["maxDuration"]
       23 JUMPIF                           R2 ; [+3]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K10 ["MAX_AUDIO_SEARCH_DURATION"]
       27 SETTABLEKS                       R2 R1 K3 ["maxDuration"]
       29 GETTABLEKS                       R2 R0 K11 ["initialSortIntentKey"]
       31 SETTABLEKS                       R2 R1 K4 ["sortIntentKey"]
       33 GETTABLEKS                       R2 R0 K12 ["initialCreatorName"]
       35 SETTABLEKS                       R2 R1 K5 ["searchTerm"]
       37 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["userSearch"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R0
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"searchTerm", "extraSearchDetails"}]
        2 SETTABLEKS                       R0 R4 K0 ["searchTerm"]
        4 SETTABLEKS                       R1 R4 K1 ["extraSearchDetails"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["debouncedUserSearch"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sortIntentKey"}]
        2 SETTABLEKS                       R0 R3 K0 ["sortIntentKey"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"audioTypeKey"}]
        2 SETTABLEKS                       R0 R3 K0 ["audioTypeKey"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R3 R2 K1 ["minDuration"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+5]
        7 GETTABLEKS                       R3 R2 K2 ["maxDuration"]
        9 JUMPIFEQ                         R1 R3 ; [+10]
       11 GETUPVAL                         R3 0
       12 DUPTABLE                         R5 K3 [{"minDuration", "maxDuration"}]
       13 SETTABLEKS                       R0 R5 K1 ["minDuration"]
       15 SETTABLEKS                       R1 R5 K2 ["maxDuration"]
       17 NAMECALL                         R3 R3 K4 ["setState"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R2 R0 K1 ["sortIntentKey"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K1 ["sortIntentKey"]
        9 GETTABLE                         R1 R2 R3
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R2 R1 K2 ["uiSortIntent"]
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["None"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETTABLEKS                       R4 R1 K4 ["sortDirection"]
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R3 R1 K4 ["sortDirection"]
       25 JUMP                             ; [+3]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K3 ["None"]
       29 DUPTABLE                         R4 K7 [{"Creator", "includeUnverifiedCreators", "uiSortIntent", "sortDirection"}]
       30 GETTABLEKS                       R5 R0 K8 ["searchTerm"]
       32 SETTABLEKS                       R5 R4 K5 ["Creator"]
       34 GETTABLEKS                       R5 R0 K6 ["includeUnverifiedCreators"]
       36 SETTABLEKS                       R5 R4 K6 ["includeUnverifiedCreators"]
       38 SETTABLEKS                       R2 R4 K2 ["uiSortIntent"]
       40 SETTABLEKS                       R3 R4 K4 ["sortDirection"]
       42 GETTABLEKS                       R5 R0 K9 ["minDuration"]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K10 ["MIN_AUDIO_SEARCH_DURATION"]
       47 JUMPIFNOTEQ                      R5 R6 ; [+8]
       49 GETTABLEKS                       R5 R0 K11 ["maxDuration"]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K12 ["MAX_AUDIO_SEARCH_DURATION"]
       54 JUMPIFEQ                         R5 R6 ; [+12]
       56 DUPTABLE                         R5 K13 [{"minDuration", "maxDuration"}]
       57 GETTABLEKS                       R6 R0 K9 ["minDuration"]
       59 SETTABLEKS                       R6 R5 K9 ["minDuration"]
       61 GETTABLEKS                       R6 R0 K11 ["maxDuration"]
       63 SETTABLEKS                       R6 R5 K11 ["maxDuration"]
       65 SETTABLEKS                       R5 R4 K14 ["AudioSearch"]
       67 GETTABLEKS                       R5 R0 K15 ["audioTypeKey"]
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K16 ["All"]
       72 JUMPIFEQ                         R5 R6 ; [+14]
       74 GETTABLEKS                       R5 R4 K17 ["AdditionalAudioSearch"]
       76 JUMPIF                           R5 ; [+2]
       77 NEWTABLE                         R5 0 0
       79 SETTABLEKS                       R5 R4 K17 ["AdditionalAudioSearch"]
       81 GETTABLEKS                       R5 R4 K17 ["AdditionalAudioSearch"]
       83 GETTABLEKS                       R6 R0 K15 ["audioTypeKey"]
       85 SETTABLEKS                       R6 R5 K18 ["audioType"]
       87 GETTABLEKS                       R5 R0 K19 ["extraSearchDetails"]
       89 JUMPIFNOT                        R5 ; [+22]
       90 GETIMPORT                        R5 K21 [next]
       92 GETTABLEKS                       R6 R0 K19 ["extraSearchDetails"]
       94 CALL                             R5 1 1
       95 JUMPIFEQKNIL                     R5 ; [+16]
       97 DUPTABLE                         R5 K24 [{"Name", "Id"}]
       98 GETTABLEKS                       R6 R0 K19 ["extraSearchDetails"]
      100 GETTABLEKS                       R6 R6 K22 ["Name"]
      102 SETTABLEKS                       R6 R5 K22 ["Name"]
      104 GETTABLEKS                       R6 R0 K19 ["extraSearchDetails"]
      106 GETTABLEKS                       R6 R6 K23 ["Id"]
      108 SETTABLEKS                       R6 R5 K23 ["Id"]
      110 SETTABLEKS                       R5 R4 K5 ["Creator"]
      112 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K7 [{"includeUnverifiedCreators", "minDuration", "maxDuration", "sortIntentKey", "audioTypeKey", "searchTerm", "extraSearchDetails"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["includeUnverifiedCreators"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K8 ["MIN_AUDIO_SEARCH_DURATION"]
        8 SETTABLEKS                       R3 R2 K1 ["minDuration"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K9 ["MAX_AUDIO_SEARCH_DURATION"]
       13 SETTABLEKS                       R3 R2 K2 ["maxDuration"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K10 ["Relevance"]
       18 SETTABLEKS                       R3 R2 K3 ["sortIntentKey"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K11 ["All"]
       23 SETTABLEKS                       R3 R2 K4 ["audioTypeKey"]
       25 LOADK                            R3 K12 [""]
       26 SETTABLEKS                       R3 R2 K5 ["searchTerm"]
       28 NEWTABLE                         R3 0 0
       30 SETTABLEKS                       R3 R2 K6 ["extraSearchDetails"]
       32 NAMECALL                         R0 R0 K13 ["setState"]
       34 CALL                             R0 2 0
       35 RETURN                           R0 0

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
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["getInitState"]
        5 GETTABLEKS                       R1 R0 K1 ["getInitState"]
        7 GETTABLEKS                       R2 R0 K2 ["props"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["state"]
       12 GETUPVAL                         R1 2
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 GETUPVAL                         R3 3
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K4 ["debouncedUserSearch"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K5 ["updateUserSearch"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K6 ["onSelectSortIntent"]
       27 NEWCLOSURE                       R1 P4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K7 ["onSelectAudioType"]
       31 NEWCLOSURE                       R1 P5
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K8 ["onDurationChange"]
       35 NEWCLOSURE                       R1 P6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U0
       41 SETTABLEKS                       R1 R0 K9 ["getSearchOptions"]
       43 NEWCLOSURE                       R1 P7
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R1 R0 K10 ["onReset"]
       50 NEWCLOSURE                       R1 P8
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K11 ["onClose"]
       54 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["includeUnverifiedCreators"]
        3 GETTABLEKS                       R3 R1 K0 ["includeUnverifiedCreators"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+60]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["maxDuration"]
       10 GETTABLEKS                       R3 R1 K1 ["maxDuration"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+53]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["minDuration"]
       17 GETTABLEKS                       R3 R1 K2 ["minDuration"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+46]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       28 GETTABLEKS                       R2 R2 K4 ["uiSortIntent"]
       30 GETTABLEKS                       R3 R1 K3 ["pageInfo"]
       32 GETTABLEKS                       R3 R3 K4 ["uiSortIntent"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+31]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       39 JUMPIFNOT                        R2 ; [+5]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       43 GETTABLEKS                       R2 R2 K5 ["sortDirection"]
       45 GETTABLEKS                       R3 R1 K3 ["pageInfo"]
       47 GETTABLEKS                       R3 R3 K5 ["sortDirection"]
       49 JUMPIFNOTEQ                      R2 R3 ; [+16]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       54 JUMPIFNOT                        R2 ; [+5]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K3 ["pageInfo"]
       58 GETTABLEKS                       R2 R2 K6 ["additionalAudioSearchInfo"]
       60 GETTABLEKS                       R3 R1 K3 ["pageInfo"]
       62 GETTABLEKS                       R3 R3 K6 ["additionalAudioSearchInfo"]
       64 JUMPIFEQ                         R2 R3 ; [+7]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R2 R2 K7 ["getInitState"]
       69 MOVE                             R3 R1
       70 CALL                             R2 1 -1
       71 RETURN                           R2 -1
       72 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R3 R0 K0 ["setState"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["categoryName"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["initialSortIntentKey"]
       10 GETTABLEKS                       R6 R1 K5 ["initialAudioTypeKey"]
       12 GETTABLEKS                       R7 R2 K6 ["minDuration"]
       14 GETTABLEKS                       R8 R2 K7 ["maxDuration"]
       16 GETTABLEKS                       R9 R2 K8 ["sortIntentKey"]
       18 GETTABLEKS                       R10 R2 K9 ["audioTypeKey"]
       20 NEWTABLE                         R11 0 0
       22 GETUPVAL                         R12 0
       23 LOADNIL                          R13
       24 LOADNIL                          R14
       25 FORGPREP                         R12
       26 DUPTABLE                         R19 K12 [{"Key", "Text"}]
       27 SETTABLEKS                       R16 R19 K10 ["Key"]
       29 LOADK                            R22 K13 ["SearchOptionsSort"]
       30 MOVE                             R23 R16
       31 NAMECALL                         R20 R4 K14 ["getText"]
       33 CALL                             R20 3 1
       34 SETTABLEKS                       R20 R19 K11 ["Text"]
       36 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       38 MOVE                             R18 R11
       39 GETIMPORT                        R17 K17 [table.insert]
       41 CALL                             R17 2 0
       42 FORGLOOP                         R12 2 ; [-17]
       44 NEWTABLE                         R12 0 0
       46 GETUPVAL                         R13 1
       47 LOADNIL                          R14
       48 LOADNIL                          R15
       49 FORGPREP                         R13
       50 DUPTABLE                         R20 K12 [{"Key", "Text"}]
       51 SETTABLEKS                       R17 R20 K10 ["Key"]
       53 LOADK                            R23 K18 ["SearchOptionsType"]
       54 MOVE                             R24 R17
       55 NAMECALL                         R21 R4 K14 ["getText"]
       57 CALL                             R21 3 1
       58 SETTABLEKS                       R21 R20 K11 ["Text"]
       60 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       62 MOVE                             R19 R12
       63 GETIMPORT                        R18 K17 [table.insert]
       65 CALL                             R18 2 0
       66 FORGLOOP                         R13 2 ; [-17]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K19 ["categoryIsAudio"]
       71 MOVE                             R14 R3
       72 CALL                             R13 1 1
       73 GETUPVAL                         R14 3
       74 GETTABLEKS                       R14 R14 K20 ["new"]
       76 CALL                             R14 0 1
       77 GETUPVAL                         R15 4
       78 GETTABLEKS                       R15 R15 K21 ["createElement"]
       80 GETUPVAL                         R16 5
       81 DUPTABLE                         R17 K25 [{"GetSearchOptions", "OnClose", "OnReset"}]
       82 GETTABLEKS                       R18 R0 K26 ["getSearchOptions"]
       84 SETTABLEKS                       R18 R17 K22 ["GetSearchOptions"]
       86 GETTABLEKS                       R18 R0 K27 ["onClose"]
       88 SETTABLEKS                       R18 R17 K23 ["OnClose"]
       90 GETTABLEKS                       R18 R0 K28 ["onReset"]
       92 SETTABLEKS                       R18 R17 K24 ["OnReset"]
       94 DUPTABLE                         R18 K33 [{"Creator", "AudioSearchHeader", "AudioTypeSelect", "SortBy"}]
       95 GETUPVAL                         R19 4
       96 GETTABLEKS                       R19 R19 K21 ["createElement"]
       98 GETUPVAL                         R20 6
       99 DUPTABLE                         R21 K36 [{"Header", "LayoutOrder"}]
      100 LOADK                            R24 K37 ["General"]
      101 LOADK                            R25 K38 ["SearchOptionCreator"]
      102 NAMECALL                         R22 R4 K14 ["getText"]
      104 CALL                             R22 3 1
      105 SETTABLEKS                       R22 R21 K34 ["Header"]
      107 NAMECALL                         R22 R14 K39 ["getNextOrder"]
      109 CALL                             R22 1 1
      110 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      112 DUPTABLE                         R22 K41 [{"SearchBar"}]
      113 GETUPVAL                         R23 4
      114 GETTABLEKS                       R23 R23 K21 ["createElement"]
      116 GETUPVAL                         R24 7
      117 DUPTABLE                         R25 K47 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width", "LayoutOrder"}]
      118 LOADK                            R26 K48 ["SearchBarCreatorText"]
      119 SETTABLEKS                       R26 R25 K42 ["defaultTextKey"]
      121 GETTABLEKS                       R26 R2 K43 ["searchTerm"]
      123 SETTABLEKS                       R26 R25 K43 ["searchTerm"]
      125 GETTABLEKS                       R26 R1 K49 ["liveSearchData"]
      127 GETTABLEKS                       R26 R26 K44 ["results"]
      129 SETTABLEKS                       R26 R25 K44 ["results"]
      131 GETTABLEKS                       R26 R0 K50 ["updateUserSearch"]
      133 SETTABLEKS                       R26 R25 K45 ["updateSearch"]
      135 GETUPVAL                         R26 8
      136 GETTABLEKS                       R26 R26 K51 ["SEARCH_BAR_WIDTH"]
      138 SETTABLEKS                       R26 R25 K46 ["width"]
      140 NAMECALL                         R26 R14 K39 ["getNextOrder"]
      142 CALL                             R26 1 1
      143 SETTABLEKS                       R26 R25 K35 ["LayoutOrder"]
      145 CALL                             R23 2 1
      146 SETTABLEKS                       R23 R22 K40 ["SearchBar"]
      148 CALL                             R19 3 1
      149 SETTABLEKS                       R19 R18 K29 ["Creator"]
      151 MOVE                             R19 R13
      152 JUMPIFNOT                        R19 ; [+35]
      153 GETUPVAL                         R19 4
      154 GETTABLEKS                       R19 R19 K21 ["createElement"]
      156 GETUPVAL                         R20 6
      157 DUPTABLE                         R21 K36 [{"Header", "LayoutOrder"}]
      158 LOADK                            R24 K37 ["General"]
      159 LOADK                            R25 K52 ["SearchOptionAudioLength"]
      160 NAMECALL                         R22 R4 K14 ["getText"]
      162 CALL                             R22 3 1
      163 SETTABLEKS                       R22 R21 K34 ["Header"]
      165 NAMECALL                         R22 R14 K39 ["getNextOrder"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      170 DUPTABLE                         R22 K54 [{"AudioSearch"}]
      171 GETUPVAL                         R23 4
      172 GETTABLEKS                       R23 R23 K21 ["createElement"]
      174 GETUPVAL                         R24 9
      175 DUPTABLE                         R25 K56 [{"minDuration", "maxDuration", "onDurationChange"}]
      176 SETTABLEKS                       R7 R25 K6 ["minDuration"]
      178 SETTABLEKS                       R8 R25 K7 ["maxDuration"]
      180 GETTABLEKS                       R26 R0 K55 ["onDurationChange"]
      182 SETTABLEKS                       R26 R25 K55 ["onDurationChange"]
      184 CALL                             R23 2 1
      185 SETTABLEKS                       R23 R22 K53 ["AudioSearch"]
      187 CALL                             R19 3 1
      188 SETTABLEKS                       R19 R18 K30 ["AudioSearchHeader"]
      190 GETUPVAL                         R19 4
      191 GETTABLEKS                       R19 R19 K21 ["createElement"]
      193 GETUPVAL                         R20 6
      194 DUPTABLE                         R21 K58 [{"Header", "LayoutOrder", "HideLowerSeparator"}]
      195 LOADK                            R24 K37 ["General"]
      196 LOADK                            R25 K59 ["SearchOptionAudioType"]
      197 NAMECALL                         R22 R4 K14 ["getText"]
      199 CALL                             R22 3 1
      200 SETTABLEKS                       R22 R21 K34 ["Header"]
      202 NAMECALL                         R22 R14 K39 ["getNextOrder"]
      204 CALL                             R22 1 1
      205 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      207 LOADB                            R22 1
      208 SETTABLEKS                       R22 R21 K57 ["HideLowerSeparator"]
      210 DUPTABLE                         R22 K61 [{"RadioButtons"}]
      211 GETUPVAL                         R23 4
      212 GETTABLEKS                       R23 R23 K21 ["createElement"]
      214 GETUPVAL                         R24 10
      215 DUPTABLE                         R25 K66 [{"Buttons", "CurrentSelectedKey", "OnClick", "SelectedKey"}]
      216 SETTABLEKS                       R12 R25 K62 ["Buttons"]
      218 SETTABLEKS                       R10 R25 K63 ["CurrentSelectedKey"]
      220 GETTABLEKS                       R26 R0 K67 ["onSelectAudioType"]
      222 SETTABLEKS                       R26 R25 K64 ["OnClick"]
      224 SETTABLEKS                       R6 R25 K65 ["SelectedKey"]
      226 CALL                             R23 2 1
      227 SETTABLEKS                       R23 R22 K60 ["RadioButtons"]
      229 CALL                             R19 3 1
      230 SETTABLEKS                       R19 R18 K31 ["AudioTypeSelect"]
      232 GETUPVAL                         R19 4
      233 GETTABLEKS                       R19 R19 K21 ["createElement"]
      235 GETUPVAL                         R20 6
      236 DUPTABLE                         R21 K58 [{"Header", "LayoutOrder", "HideLowerSeparator"}]
      237 LOADK                            R24 K37 ["General"]
      238 LOADK                            R25 K68 ["SearchOptionSort"]
      239 NAMECALL                         R22 R4 K14 ["getText"]
      241 CALL                             R22 3 1
      242 SETTABLEKS                       R22 R21 K34 ["Header"]
      244 NAMECALL                         R22 R14 K39 ["getNextOrder"]
      246 CALL                             R22 1 1
      247 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      249 LOADB                            R22 1
      250 SETTABLEKS                       R22 R21 K57 ["HideLowerSeparator"]
      252 DUPTABLE                         R22 K61 [{"RadioButtons"}]
      253 GETUPVAL                         R23 4
      254 GETTABLEKS                       R23 R23 K21 ["createElement"]
      256 GETUPVAL                         R24 10
      257 DUPTABLE                         R25 K69 [{"Buttons", "CurrentSelectedKey", "SelectedKey", "OnClick"}]
      258 SETTABLEKS                       R11 R25 K62 ["Buttons"]
      260 SETTABLEKS                       R9 R25 K63 ["CurrentSelectedKey"]
      262 SETTABLEKS                       R5 R25 K65 ["SelectedKey"]
      264 GETTABLEKS                       R26 R0 K70 ["onSelectSortIntent"]
      266 SETTABLEKS                       R26 R25 K64 ["OnClick"]
      268 CALL                             R23 2 1
      269 SETTABLEKS                       R23 R22 K60 ["RadioButtons"]
      271 CALL                             R19 3 1
      272 SETTABLEKS                       R19 R18 K32 ["SortBy"]
      274 CALL                             R15 3 -1
      275 RETURN                           R15 -1

PROTO_14:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETTABLEKS                       R1 R0 K0 ["pageInfo"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETTABLEKS                       R2 R1 K1 ["audioSearchInfo"]
       12 JUMPIF                           R2 ; [+2]
       13 NEWTABLE                         R2 0 0
       15 GETTABLEKS                       R3 R1 K2 ["additionalAudioSearchInfo"]
       17 JUMPIF                           R3 ; [+2]
       18 NEWTABLE                         R3 0 0
       20 GETTABLEKS                       R5 R0 K3 ["liveSearch"]
       22 JUMPIFNOT                        R5 ; [+14]
       23 DUPTABLE                         R4 K6 [{"searchTerm", "results"}]
       24 GETTABLEKS                       R5 R0 K3 ["liveSearch"]
       26 GETTABLEKS                       R5 R5 K4 ["searchTerm"]
       28 SETTABLEKS                       R5 R4 K4 ["searchTerm"]
       30 GETTABLEKS                       R5 R0 K3 ["liveSearch"]
       32 GETTABLEKS                       R5 R5 K5 ["results"]
       34 SETTABLEKS                       R5 R4 K5 ["results"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 GETTABLEKS                       R6 R1 K7 ["creator"]
       40 JUMPIFNOT                        R6 ; [+5]
       41 GETTABLEKS                       R5 R1 K7 ["creator"]
       43 GETTABLEKS                       R5 R5 K8 ["Name"]
       45 JUMP                             ; [+1]
       46 LOADK                            R5 K9 [""]
       47 GETUPVAL                         R6 0
       48 MOVE                             R7 R1
       49 CALL                             R6 1 1
       50 DUPTABLE                         R7 K18 [{"categoryName", "includeUnverifiedCreators", "initialAudioTypeKey", "initialSortIntentKey", "initialCreatorName", "liveSearchData", "maxDuration", "minDuration", "pageInfo"}]
       51 GETTABLEKS                       R8 R1 K10 ["categoryName"]
       53 JUMPIF                           R8 ; [+5]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K19 ["DEFAULT"]
       57 GETTABLEKS                       R8 R8 K20 ["name"]
       59 SETTABLEKS                       R8 R7 K10 ["categoryName"]
       61 GETTABLEKS                       R8 R1 K11 ["includeUnverifiedCreators"]
       63 SETTABLEKS                       R8 R7 K11 ["includeUnverifiedCreators"]
       65 GETTABLEKS                       R8 R3 K21 ["audioType"]
       67 SETTABLEKS                       R8 R7 K12 ["initialAudioTypeKey"]
       69 SETTABLEKS                       R6 R7 K13 ["initialSortIntentKey"]
       71 SETTABLEKS                       R5 R7 K14 ["initialCreatorName"]
       73 SETTABLEKS                       R4 R7 K15 ["liveSearchData"]
       75 GETTABLEKS                       R8 R2 K16 ["maxDuration"]
       77 SETTABLEKS                       R8 R7 K16 ["maxDuration"]
       79 GETTABLEKS                       R8 R2 K17 ["minDuration"]
       81 SETTABLEKS                       R8 R7 K17 ["minDuration"]
       83 SETTABLEKS                       R1 R7 K0 ["pageInfo"]
       85 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_16:
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
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Util"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R6 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R6 K14 ["debounce"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R10 R9 K16 ["withContext"]
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R0 K11 ["Src"]
       51 GETTABLEKS                       R12 R12 K15 ["ContextServices"]
       53 GETTABLEKS                       R12 R12 K17 ["NetworkContext"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K6 [require]
       58 GETTABLEKS                       R13 R0 K11 ["Src"]
       60 GETTABLEKS                       R13 R13 K18 ["Networking"]
       62 GETTABLEKS                       R13 R13 K19 ["Requests"]
       64 GETTABLEKS                       R13 R13 K20 ["UserSearchRequest"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K11 ["Src"]
       71 GETTABLEKS                       R14 R14 K21 ["Components"]
       73 GETTABLEKS                       R14 R14 K22 ["Audio"]
       75 GETTABLEKS                       R14 R14 K23 ["AudioSearch"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K11 ["Src"]
       82 GETTABLEKS                       R15 R15 K21 ["Components"]
       84 GETTABLEKS                       R15 R15 K24 ["SearchOptions"]
       86 GETTABLEKS                       R15 R15 K25 ["LiveSearchBar"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K6 [require]
       91 GETTABLEKS                       R16 R0 K11 ["Src"]
       93 GETTABLEKS                       R16 R16 K21 ["Components"]
       95 GETTABLEKS                       R16 R16 K24 ["SearchOptions"]
       97 GETTABLEKS                       R16 R16 K26 ["SearchOptionsEntry"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K11 ["Src"]
      104 GETTABLEKS                       R17 R17 K21 ["Components"]
      106 GETTABLEKS                       R17 R17 K24 ["SearchOptions"]
      108 GETTABLEKS                       R17 R17 K27 ["SearchOptionsLayout"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K6 [require]
      113 GETTABLEKS                       R18 R0 K11 ["Src"]
      115 GETTABLEKS                       R18 R18 K28 ["Reducers"]
      117 GETTABLEKS                       R18 R18 K29 ["PageInfo"]
      119 CALL                             R17 1 1
      120 GETTABLEKS                       R18 R5 K30 ["UI"]
      122 GETTABLEKS                       R18 R18 K31 ["RadioButtonList"]
      124 GETTABLEKS                       R19 R5 K12 ["Util"]
      126 GETTABLEKS                       R19 R19 K32 ["LayoutOrderIterator"]
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R0 K11 ["Src"]
      132 GETTABLEKS                       R21 R21 K33 ["Types"]
      134 GETTABLEKS                       R21 R21 K34 ["BackendTypes"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K6 [require]
      139 GETTABLEKS                       R22 R0 K11 ["Src"]
      141 GETTABLEKS                       R22 R22 K33 ["Types"]
      143 GETTABLEKS                       R22 R22 K35 ["Category"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K6 [require]
      148 GETTABLEKS                       R23 R0 K11 ["Src"]
      150 GETTABLEKS                       R23 R23 K33 ["Types"]
      152 GETTABLEKS                       R23 R23 K36 ["SearchOptionsTypes"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K38 [game]
      157 LOADK                            R25 K39 ["ToolboxLiveSearchDebounceWait"]
      158 NAMECALL                         R23 R23 K40 ["GetFastInt"]
      160 CALL                             R23 2 1
      161 DUPTABLE                         R24 K44 [{"All", "Music", "SoundEffect"}]
      162 LOADK                            R25 K41 ["All"]
      163 SETTABLEKS                       R25 R24 K41 ["All"]
      165 LOADK                            R25 K42 ["Music"]
      166 SETTABLEKS                       R25 R24 K42 ["Music"]
      168 LOADK                            R25 K43 ["SoundEffect"]
      169 SETTABLEKS                       R25 R24 K43 ["SoundEffect"]
      171 NEWTABLE                         R25 0 3
      173 GETTABLEKS                       R26 R24 K41 ["All"]
      175 GETTABLEKS                       R27 R24 K42 ["Music"]
      177 GETTABLEKS                       R28 R24 K43 ["SoundEffect"]
      179 SETLIST                          R25 R26 3 [1]
      181 DUPTABLE                         R26 K51 [{"LongestToShortest", "MostUsed", "New", "Relevance", "ShortestToLongest", "Trending"}]
      182 LOADK                            R27 K45 ["LongestToShortest"]
      183 SETTABLEKS                       R27 R26 K45 ["LongestToShortest"]
      185 LOADK                            R27 K46 ["MostUsed"]
      186 SETTABLEKS                       R27 R26 K46 ["MostUsed"]
      188 LOADK                            R27 K47 ["New"]
      189 SETTABLEKS                       R27 R26 K47 ["New"]
      191 LOADK                            R27 K48 ["Relevance"]
      192 SETTABLEKS                       R27 R26 K48 ["Relevance"]
      194 LOADK                            R27 K49 ["ShortestToLongest"]
      195 SETTABLEKS                       R27 R26 K49 ["ShortestToLongest"]
      197 LOADK                            R27 K50 ["Trending"]
      198 SETTABLEKS                       R27 R26 K50 ["Trending"]
      200 NEWTABLE                         R27 0 6
      202 GETTABLEKS                       R28 R26 K48 ["Relevance"]
      204 GETTABLEKS                       R29 R26 K46 ["MostUsed"]
      206 GETTABLEKS                       R30 R26 K50 ["Trending"]
      208 GETTABLEKS                       R31 R26 K47 ["New"]
      210 GETTABLEKS                       R32 R26 K49 ["ShortestToLongest"]
      212 GETTABLEKS                       R33 R26 K45 ["LongestToShortest"]
      214 SETLIST                          R27 R28 6 [1]
      216 NEWTABLE                         R28 8 0
      218 GETTABLEKS                       R29 R26 K48 ["Relevance"]
      220 DUPTABLE                         R30 K53 [{"uiSortIntent"}]
      221 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      223 GETTABLEKS                       R31 R31 K48 ["Relevance"]
      225 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      227 SETTABLE                         R30 R28 R29
      228 GETTABLEKS                       R29 R26 K46 ["MostUsed"]
      230 DUPTABLE                         R30 K53 [{"uiSortIntent"}]
      231 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      233 GETTABLEKS                       R31 R31 K55 ["MostTaken"]
      235 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      237 SETTABLE                         R30 R28 R29
      238 GETTABLEKS                       R29 R26 K50 ["Trending"]
      240 DUPTABLE                         R30 K53 [{"uiSortIntent"}]
      241 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      243 GETTABLEKS                       R31 R31 K50 ["Trending"]
      245 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      247 SETTABLE                         R30 R28 R29
      248 GETTABLEKS                       R29 R26 K47 ["New"]
      250 DUPTABLE                         R30 K57 [{"uiSortIntent", "sortDirection"}]
      251 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      253 GETTABLEKS                       R31 R31 K58 ["DateCreated"]
      255 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      257 GETTABLEKS                       R31 R20 K59 ["SortDirection"]
      259 GETTABLEKS                       R31 R31 K60 ["Descending"]
      261 SETTABLEKS                       R31 R30 K56 ["sortDirection"]
      263 SETTABLE                         R30 R28 R29
      264 GETTABLEKS                       R29 R26 K49 ["ShortestToLongest"]
      266 DUPTABLE                         R30 K57 [{"uiSortIntent", "sortDirection"}]
      267 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      269 GETTABLEKS                       R31 R31 K61 ["Duration"]
      271 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      273 GETTABLEKS                       R31 R20 K59 ["SortDirection"]
      275 GETTABLEKS                       R31 R31 K62 ["Ascending"]
      277 SETTABLEKS                       R31 R30 K56 ["sortDirection"]
      279 SETTABLE                         R30 R28 R29
      280 GETTABLEKS                       R29 R26 K45 ["LongestToShortest"]
      282 DUPTABLE                         R30 K57 [{"uiSortIntent", "sortDirection"}]
      283 GETTABLEKS                       R31 R20 K54 ["UiSortIntent"]
      285 GETTABLEKS                       R31 R31 K61 ["Duration"]
      287 SETTABLEKS                       R31 R30 K52 ["uiSortIntent"]
      289 GETTABLEKS                       R31 R20 K59 ["SortDirection"]
      291 GETTABLEKS                       R31 R31 K60 ["Descending"]
      293 SETTABLEKS                       R31 R30 K56 ["sortDirection"]
      295 SETTABLE                         R30 R28 R29
      296 DUPCLOSURE                       R29 K63 [PROTO_0]
      297 CAPTURE                          VAL R20
      298 CAPTURE                          VAL R26
      299 CAPTURE                          VAL R28
      300 GETTABLEKS                       R30 R3 K64 ["PureComponent"]
      302 LOADK                            R32 K65 ["AudioMarketplaceSearchOptions"]
      303 NAMECALL                         R30 R30 K66 ["extend"]
      305 CALL                             R30 2 1
      306 DUPCLOSURE                       R31 K67 [PROTO_10]
      307 CAPTURE                          VAL R24
      308 CAPTURE                          VAL R7
      309 CAPTURE                          VAL R8
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R28
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R26
      314 SETTABLEKS                       R31 R30 K68 ["init"]
      316 DUPCLOSURE                       R31 K69 [PROTO_12]
      317 SETTABLEKS                       R31 R30 K70 ["didUpdate"]
      319 DUPCLOSURE                       R31 K71 [PROTO_13]
      320 CAPTURE                          VAL R27
      321 CAPTURE                          VAL R25
      322 CAPTURE                          VAL R21
      323 CAPTURE                          VAL R19
      324 CAPTURE                          VAL R3
      325 CAPTURE                          VAL R16
      326 CAPTURE                          VAL R15
      327 CAPTURE                          VAL R14
      328 CAPTURE                          VAL R7
      329 CAPTURE                          VAL R13
      330 CAPTURE                          VAL R18
      331 SETTABLEKS                       R31 R30 K72 ["render"]
      333 MOVE                             R31 R10
      334 DUPTABLE                         R32 K75 [{"Localization", "Network"}]
      335 GETTABLEKS                       R33 R9 K73 ["Localization"]
      337 SETTABLEKS                       R33 R32 K73 ["Localization"]
      339 SETTABLEKS                       R11 R32 K74 ["Network"]
      341 CALL                             R31 1 1
      342 MOVE                             R32 R30
      343 CALL                             R31 1 1
      344 MOVE                             R30 R31
      345 DUPCLOSURE                       R31 K76 [PROTO_14]
      346 CAPTURE                          VAL R29
      347 CAPTURE                          VAL R21
      348 DUPCLOSURE                       R32 K77 [PROTO_16]
      349 CAPTURE                          VAL R12
      350 GETTABLEKS                       R33 R4 K78 ["connect"]
      352 MOVE                             R34 R31
      353 MOVE                             R35 R32
      354 CALL                             R33 2 1
      355 MOVE                             R34 R30
      356 CALL                             R33 1 -1
      357 RETURN                           R33 -1
