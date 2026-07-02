PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Modal"]
        5 GETTABLEKS                       R0 R0 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Modal"]
        5 GETTABLEKS                       R0 R0 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["userSearch"]
        5 GETTABLEKS                       R3 R1 K2 ["Network"]
        7 GETTABLEKS                       R3 R3 K3 ["networkInterface"]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["searchTerm"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R1 R2 K1 ["extraSearchDetails"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["debouncedUserSearch"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pairs]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["sortsList"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K3 ["Key"]
       10 JUMPIFNOTEQ                      R7 R0 ; [+2]
       12 MOVE                             R1 R5
       13 FORGLOOP                         R2 2 ; [-6]
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R4 K5 [{"SortIndex"}]
       17 SETTABLEKS                       R1 R4 K4 ["SortIndex"]
       19 NAMECALL                         R2 R2 K6 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSearchOptionsClosed"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSearchOptionsClosed"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"SortIndex", "Creator"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["state"]
        4 GETTABLEKS                       R2 R2 K0 ["SortIndex"]
        6 SETTABLEKS                       R2 R1 K0 ["SortIndex"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["searchTerm"]
       11 SETTABLEKS                       R2 R1 K1 ["Creator"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["state"]
       16 GETTABLEKS                       R2 R2 K5 ["minDuration"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K6 ["MIN_AUDIO_SEARCH_DURATION"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+11]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["state"]
       26 GETTABLEKS                       R2 R2 K7 ["maxDuration"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["MAX_AUDIO_SEARCH_DURATION"]
       31 JUMPIFEQ                         R2 R3 ; [+18]
       33 DUPTABLE                         R2 K9 [{"minDuration", "maxDuration"}]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["state"]
       37 GETTABLEKS                       R3 R3 K5 ["minDuration"]
       39 SETTABLEKS                       R3 R2 K5 ["minDuration"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K3 ["state"]
       44 GETTABLEKS                       R3 R3 K7 ["maxDuration"]
       46 SETTABLEKS                       R3 R2 K7 ["maxDuration"]
       48 SETTABLEKS                       R2 R1 K10 ["AudioSearch"]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K11 ["extraSearchDetails"]
       53 JUMPIFNOT                        R2 ; [+25]
       54 GETIMPORT                        R2 K13 [next]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K11 ["extraSearchDetails"]
       59 CALL                             R2 1 1
       60 JUMPIFEQKNIL                     R2 ; [+18]
       62 DUPTABLE                         R2 K16 [{"Name", "Id"}]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K11 ["extraSearchDetails"]
       66 GETTABLEKS                       R3 R3 K14 ["Name"]
       68 SETTABLEKS                       R3 R2 K14 ["Name"]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K11 ["extraSearchDetails"]
       73 GETTABLEKS                       R3 R3 K15 ["Id"]
       75 SETTABLEKS                       R3 R2 K15 ["Id"]
       77 SETTABLEKS                       R2 R1 K1 ["Creator"]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K3 ["state"]
       82 GETTABLEKS                       R2 R2 K17 ["includeUnverifiedCreators"]
       84 SETTABLEKS                       R2 R1 K17 ["includeUnverifiedCreators"]
       86 GETUPVAL                         R2 0
       87 DUPTABLE                         R4 K2 [{"SortIndex", "Creator"}]
       88 GETUPVAL                         R5 2
       89 GETTABLEKS                       R5 R5 K18 ["None"]
       91 SETTABLEKS                       R5 R4 K0 ["SortIndex"]
       93 GETUPVAL                         R5 2
       94 GETTABLEKS                       R5 R5 K18 ["None"]
       96 SETTABLEKS                       R5 R4 K1 ["Creator"]
       98 NAMECALL                         R2 R2 K19 ["setState"]
      100 CALL                             R2 2 0
      101 JUMPIFNOTEQKS                    R0 K20 ["Cancel"] ; [+6]
      103 GETUPVAL                         R2 0
      104 GETTABLEKS                       R2 R2 K21 ["cancel"]
      106 CALL                             R2 0 0
      107 RETURN                           R0 0
      108 JUMPIFNOTEQKS                    R0 K22 ["Apply"] ; [+6]
      110 GETUPVAL                         R2 0
      111 GETTABLEKS                       R2 R2 K23 ["apply"]
      113 MOVE                             R3 R1
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["minDuration"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["state"]
       10 GETTABLEKS                       R2 R2 K2 ["maxDuration"]
       12 JUMPIFEQ                         R1 R2 ; [+10]
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K3 [{"minDuration", "maxDuration"}]
       16 SETTABLEKS                       R0 R4 K1 ["minDuration"]
       18 SETTABLEKS                       R1 R4 K2 ["maxDuration"]
       20 NAMECALL                         R2 R2 K4 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"includeUnverifiedCreators"}]
        1 GETTABLEKS                       R3 R0 K0 ["includeUnverifiedCreators"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["includeUnverifiedCreators"]
        6 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_9]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"windowSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["windowSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"contentSize"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["contentSize"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["Network"]
        6 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["Settings"]
       13 LOADK                            R4 K4 ["Plugin"]
       14 NAMECALL                         R2 R2 K5 ["get"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["props"]
       20 GETTABLEKS                       R3 R3 K6 ["searchWithOptions"]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 MOVE                             R6 R0
       25 CALL                             R3 3 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["props"]
       29 GETTABLEKS                       R1 R1 K7 ["onSearchOptionsToggled"]
       31 JUMPIFNOT                        R1 ; [+6]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K0 ["props"]
       35 GETTABLEKS                       R1 R1 K7 ["onSearchOptionsToggled"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["containerRef"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["createRef"]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R0 K3 ["buttonsContainerRef"]
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R0 K4 ["currentLayout"]
       21 GETTABLEKS                       R2 R1 K5 ["LiveSearchData"]
       23 GETTABLEKS                       R2 R2 K6 ["searchTerm"]
       25 SETTABLEKS                       R2 R0 K6 ["searchTerm"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R0 K7 ["extraSearchDetails"]
       31 GETTABLEKS                       R2 R0 K8 ["props"]
       33 GETTABLEKS                       R2 R2 K9 ["audioSearchInfo"]
       35 GETTABLEKS                       R3 R0 K8 ["props"]
       37 GETTABLEKS                       R3 R3 K10 ["includeUnverifiedCreators"]
       39 DUPTABLE                         R4 K15 [{["minDuration"], ["maxDuration"], ["SortIndex"] = , ["includeUnverifiedCreators"]}]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETTABLEKS                       R5 R2 K11 ["minDuration"]
       43 JUMPIF                           R5 ; [+3]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K16 ["MIN_AUDIO_SEARCH_DURATION"]
       47 SETTABLEKS                       R5 R4 K11 ["minDuration"]
       49 JUMPIFNOT                        R2 ; [+3]
       50 GETTABLEKS                       R5 R2 K12 ["maxDuration"]
       52 JUMPIF                           R5 ; [+3]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K17 ["MAX_AUDIO_SEARCH_DURATION"]
       56 SETTABLEKS                       R5 R4 K12 ["maxDuration"]
       58 SETTABLEKS                       R3 R4 K10 ["includeUnverifiedCreators"]
       60 SETTABLEKS                       R4 R0 K18 ["state"]
       62 NEWTABLE                         R4 0 0
       64 SETTABLEKS                       R4 R0 K19 ["sortsList"]
       66 NEWCLOSURE                       R4 P0
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R4 R0 K20 ["mouseEnter"]
       70 NEWCLOSURE                       R4 P1
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R4 R0 K21 ["mouseLeave"]
       74 GETUPVAL                         R4 2
       75 NEWCLOSURE                       R5 P2
       76 CAPTURE                          VAL R0
       77 GETUPVAL                         R6 3
       78 CALL                             R4 2 1
       79 SETTABLEKS                       R4 R0 K22 ["debouncedUserSearch"]
       81 NEWCLOSURE                       R4 P3
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R4 R0 K23 ["updateSearch"]
       85 NEWCLOSURE                       R4 P4
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R4 R0 K24 ["selectSort"]
       89 NEWCLOSURE                       R4 P5
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R4 R0 K25 ["apply"]
       93 NEWCLOSURE                       R4 P6
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R4 R0 K26 ["cancel"]
       97 NEWCLOSURE                       R4 P7
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          UPVAL U0
      101 SETTABLEKS                       R4 R0 K27 ["footerButtonClicked"]
      103 NEWCLOSURE                       R4 P8
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R4 R0 K28 ["onDurationChange"]
      107 NEWCLOSURE                       R4 P9
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R4 R0 K29 ["onToggleIdVerified"]
      111 NEWCLOSURE                       R4 P10
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R4 R0 K30 ["updateContainerSize"]
      115 NEWCLOSURE                       R4 P11
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R4 R0 K31 ["updateContentsSize"]
      119 NEWCLOSURE                       R4 P12
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R4 R0 K32 ["onSearchOptionsClosed"]
      123 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        5 NAMECALL                         R5 R0 K3 ["nextLayout"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_17:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["currentLayout"]
        3 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K1 ["currentLayout"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["currentLayout"]
        5 GETTABLEKS                       R1 R0 K1 ["currentLayout"]
        7 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R2 K3 ["searchOptions"]
        8 GETTABLEKS                       R4 R0 K1 ["props"]
       10 GETTABLEKS                       R4 R4 K4 ["LiveSearchData"]
       12 GETTABLEKS                       R5 R1 K5 ["minDuration"]
       14 GETTABLEKS                       R6 R1 K6 ["maxDuration"]
       16 GETTABLEKS                       R7 R0 K1 ["props"]
       18 GETTABLEKS                       R7 R7 K7 ["Localization"]
       20 LOADK                            R10 K8 ["General"]
       21 LOADK                            R11 K9 ["SearchOptionAudioLength"]
       22 NAMECALL                         R8 R7 K10 ["getText"]
       24 CALL                             R8 3 1
       25 LOADK                            R11 K8 ["General"]
       26 LOADK                            R12 K11 ["SearchOptionsIncludeUnverifiedDescription"]
       27 NAMECALL                         R9 R7 K10 ["getText"]
       29 CALL                             R9 3 1
       30 LOADK                            R12 K8 ["General"]
       31 LOADK                            R13 K12 ["SearchOptionsIncludeUnverifiedHeader"]
       32 NAMECALL                         R10 R7 K10 ["getText"]
       34 CALL                             R10 3 1
       35 LOADK                            R13 K8 ["General"]
       36 LOADK                            R14 K13 ["SearchOptionsIncludeUnverifiedTooltip"]
       37 NAMECALL                         R11 R7 K10 ["getText"]
       39 CALL                             R11 3 1
       40 GETTABLEKS                       R12 R0 K1 ["props"]
       42 GETTABLEKS                       R12 R12 K14 ["categoryName"]
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R13 R13 K15 ["categoryIsAudio"]
       47 MOVE                             R14 R12
       48 CALL                             R13 1 1
       49 LOADB                            R14 1
       50 GETUPVAL                         R15 1
       51 CALL                             R15 0 1
       52 JUMPIFNOT                        R15 ; [+1]
       53 LOADB                            R14 0
       54 NEWTABLE                         R15 0 5
       56 DUPTABLE                         R16 K19 [{["Key"] = "Relevance", ["Text"]}]
       57 LOADK                            R19 K8 ["General"]
       58 LOADK                            R20 K20 ["SortByRelevance"]
       59 NAMECALL                         R17 R7 K10 ["getText"]
       61 CALL                             R17 3 1
       62 SETTABLEKS                       R17 R16 K18 ["Text"]
       64 DUPTABLE                         R17 K22 [{["Key"] = "MostTaken", ["Text"]}]
       65 LOADK                            R20 K8 ["General"]
       66 LOADK                            R21 K23 ["SortByMostTaken"]
       67 NAMECALL                         R18 R7 K10 ["getText"]
       69 CALL                             R18 3 1
       70 SETTABLEKS                       R18 R17 K18 ["Text"]
       72 DUPTABLE                         R18 K25 [{["Key"] = "Favorites", ["Text"]}]
       73 LOADK                            R21 K8 ["General"]
       74 LOADK                            R22 K26 ["SortByFavorites"]
       75 NAMECALL                         R19 R7 K10 ["getText"]
       77 CALL                             R19 3 1
       78 SETTABLEKS                       R19 R18 K18 ["Text"]
       80 DUPTABLE                         R19 K28 [{["Key"] = "Updated", ["Text"]}]
       81 LOADK                            R22 K8 ["General"]
       82 LOADK                            R23 K29 ["SortByUpdated"]
       83 NAMECALL                         R20 R7 K10 ["getText"]
       85 CALL                             R20 3 1
       86 SETTABLEKS                       R20 R19 K18 ["Text"]
       88 DUPTABLE                         R20 K31 [{["Key"] = "Ratings", ["Text"]}]
       89 LOADK                            R23 K8 ["General"]
       90 LOADK                            R24 K32 ["SortByRatings"]
       91 NAMECALL                         R21 R7 K10 ["getText"]
       93 CALL                             R21 3 1
       94 SETTABLEKS                       R21 R20 K18 ["Text"]
       96 SETLIST                          R15 R16 5 [1]
       98 SETTABLEKS                       R15 R0 K33 ["sortsList"]
      100 GETTABLEKS                       R15 R0 K0 ["state"]
      102 GETTABLEKS                       R15 R15 K34 ["SortIndex"]
      104 JUMPIF                           R15 ; [+4]
      105 GETTABLEKS                       R15 R0 K1 ["props"]
      107 GETTABLEKS                       R15 R15 K34 ["SortIndex"]
      109 GETTABLEKS                       R17 R0 K33 ["sortsList"]
      111 GETTABLE                         R16 R17 R15
      112 GETTABLEKS                       R16 R16 K16 ["Key"]
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R17 R17 K35 ["TAB_WIDGET_HEIGHT"]
      117 NAMECALL                         R18 R0 K36 ["resetLayout"]
      119 CALL                             R18 1 0
      120 GETUPVAL                         R19 3
      121 CALL                             R19 0 1
      122 NOT                              R18 R19
      123 MOVE                             R19 R14
      124 JUMPIFNOT                        R19 ; [+1]
      125 NOT                              R19 R13
      126 GETUPVAL                         R21 2
      127 GETTABLEKS                       R21 R21 K37 ["HEADER_HEIGHT"]
      129 ADD                              R20 R17 R21
      130 LOADNIL                          R21
      131 GETTABLEKS                       R22 R0 K0 ["state"]
      133 GETTABLEKS                       R22 R22 K38 ["contentSize"]
      135 JUMPIFNOT                        R22 ; [+19]
      136 GETIMPORT                        R22 K41 [UDim2.new]
      138 LOADN                            R23 0
      139 GETTABLEKS                       R24 R0 K0 ["state"]
      141 GETTABLEKS                       R24 R24 K38 ["contentSize"]
      143 GETTABLEKS                       R24 R24 K42 ["X"]
      145 LOADN                            R25 0
      146 GETTABLEKS                       R26 R0 K0 ["state"]
      148 GETTABLEKS                       R26 R26 K38 ["contentSize"]
      150 GETTABLEKS                       R26 R26 K43 ["Y"]
      152 CALL                             R22 4 1
      153 MOVE                             R21 R22
      154 JUMP                             ; [+8]
      155 GETIMPORT                        R22 K41 [UDim2.new]
      157 LOADN                            R23 0
      158 LOADN                            R24 0
      159 LOADN                            R25 0
      160 LOADN                            R26 0
      161 CALL                             R22 4 1
      162 MOVE                             R21 R22
      163 LOADB                            R22 1
      164 GETIMPORT                        R23 K41 [UDim2.new]
      166 LOADN                            R24 1
      167 LOADN                            R25 0
      168 LOADN                            R26 1
      169 LOADN                            R27 0
      170 CALL                             R23 4 1
      171 GETTABLEKS                       R24 R0 K44 ["containerRef"]
      173 GETTABLEKS                       R24 R24 K45 ["current"]
      175 JUMPIFNOT                        R24 ; [+26]
      176 GETTABLEKS                       R25 R0 K44 ["containerRef"]
      178 GETTABLEKS                       R25 R25 K45 ["current"]
      180 GETTABLEKS                       R25 R25 K46 ["AbsoluteSize"]
      182 GETTABLEKS                       R25 R25 K43 ["Y"]
      184 ADDK                             R26 R20 K47 [40]
      185 SUB                              R24 R25 R26
      186 GETTABLEKS                       R26 R21 K43 ["Y"]
      188 GETTABLEKS                       R26 R26 K49 ["Offset"]
      190 ADDK                             R25 R26 K48 [42]
      191 JUMPIFNOTLT                      R25 R24 ; [+10]
      193 GETIMPORT                        R26 K41 [UDim2.new]
      195 LOADN                            R27 1
      196 LOADN                            R28 0
      197 LOADN                            R29 0
      198 MOVE                             R30 R25
      199 CALL                             R26 4 1
      200 MOVE                             R23 R26
      201 LOADB                            R22 0
      202 DUPTABLE                         R24 K51 [{"Main"}]
      203 GETUPVAL                         R25 4
      204 GETTABLEKS                       R25 R25 K52 ["createElement"]
      206 LOADK                            R26 K53 ["Frame"]
      207 NEWTABLE                         R27 8 0
      209 LOADN                            R28 1
      210 SETTABLEKS                       R28 R27 K54 ["BackgroundTransparency"]
      212 GETIMPORT                        R28 K56 [Vector2.new]
      214 LOADN                            R29 1
      215 LOADN                            R30 0
      216 CALL                             R28 2 1
      217 SETTABLEKS                       R28 R27 K57 ["AnchorPoint"]
      219 GETIMPORT                        R28 K41 [UDim2.new]
      221 LOADN                            R29 1
      222 LOADN                            R30 -4
      223 LOADN                            R31 0
      224 ADDK                             R32 R20 K58 [4]
      225 CALL                             R28 4 1
      226 SETTABLEKS                       R28 R27 K59 ["Position"]
      228 GETIMPORT                        R28 K41 [UDim2.new]
      230 LOADN                            R29 0
      231 GETUPVAL                         R30 2
      232 GETTABLEKS                       R30 R30 K60 ["TOOLBOX_MIN_WIDTH"]
      234 LOADN                            R31 1
      235 ADDK                             R34 R20 K61 [8]
      236 ADDK                             R33 R34 K48 [42]
      237 MINUS                            R32 R33
      238 CALL                             R28 4 1
      239 SETTABLEKS                       R28 R27 K62 ["Size"]
      241 GETUPVAL                         R28 4
      242 GETTABLEKS                       R28 R28 K63 ["Ref"]
      244 GETTABLEKS                       R29 R0 K44 ["containerRef"]
      246 SETTABLE                         R29 R27 R28
      247 GETUPVAL                         R28 4
      248 GETTABLEKS                       R28 R28 K64 ["Change"]
      250 GETTABLEKS                       R28 R28 K46 ["AbsoluteSize"]
      252 GETTABLEKS                       R29 R0 K65 ["updateContainerSize"]
      254 SETTABLE                         R29 R27 R28
      255 DUPTABLE                         R28 K67 [{"Contents"}]
      256 GETUPVAL                         R29 4
      257 GETTABLEKS                       R29 R29 K52 ["createElement"]
      259 LOADK                            R30 K53 ["Frame"]
      260 NEWTABLE                         R31 8 0
      262 GETTABLEKS                       R32 R3 K68 ["background"]
      264 SETTABLEKS                       R32 R31 K69 ["BackgroundColor3"]
      266 GETTABLEKS                       R32 R3 K70 ["border"]
      268 SETTABLEKS                       R32 R31 K71 ["BorderColor3"]
      270 LOADN                            R32 0
      271 SETTABLEKS                       R32 R31 K54 ["BackgroundTransparency"]
      273 SETTABLEKS                       R23 R31 K62 ["Size"]
      275 GETUPVAL                         R32 4
      276 GETTABLEKS                       R32 R32 K72 ["Event"]
      278 GETTABLEKS                       R32 R32 K73 ["MouseEnter"]
      280 GETTABLEKS                       R33 R0 K74 ["mouseEnter"]
      282 SETTABLE                         R33 R31 R32
      283 GETUPVAL                         R32 4
      284 GETTABLEKS                       R32 R32 K72 ["Event"]
      286 GETTABLEKS                       R32 R32 K75 ["MouseLeave"]
      288 GETTABLEKS                       R33 R0 K76 ["mouseLeave"]
      290 SETTABLE                         R33 R31 R32
      291 DUPTABLE                         R32 K79 [{"Container", "BottomButtonsContainer"}]
      292 GETUPVAL                         R33 4
      293 GETTABLEKS                       R33 R33 K52 ["createElement"]
      295 GETUPVAL                         R34 5
      296 DUPTABLE                         R35 K85 [{["Position"], ["Size"], ["OnCanvasResize"], ["Layout"], ["AutoSizeCanvas"] = True, ["AutoSizeLayoutOptions"]}]
      297 GETIMPORT                        R36 K41 [UDim2.new]
      299 LOADN                            R37 0
      300 LOADN                            R38 0
      301 LOADN                            R39 0
      302 LOADN                            R40 0
      303 CALL                             R36 4 1
      304 SETTABLEKS                       R36 R35 K59 ["Position"]
      306 GETIMPORT                        R36 K41 [UDim2.new]
      308 LOADN                            R37 1
      309 LOADN                            R38 0
      310 LOADN                            R39 1
      311 LOADN                            R40 -42
      312 CALL                             R36 4 1
      313 SETTABLEKS                       R36 R35 K62 ["Size"]
      315 GETTABLEKS                       R36 R0 K86 ["updateContentsSize"]
      317 SETTABLEKS                       R36 R35 K80 ["OnCanvasResize"]
      319 GETIMPORT                        R36 K90 [Enum.FillDirection.Vertical]
      321 SETTABLEKS                       R36 R35 K81 ["Layout"]
      323 DUPTABLE                         R36 K93 [{"SortOrder", "Padding"}]
      324 GETIMPORT                        R37 K95 [Enum.SortOrder.LayoutOrder]
      326 SETTABLEKS                       R37 R36 K91 ["SortOrder"]
      328 GETIMPORT                        R37 K97 [UDim.new]
      330 LOADN                            R38 0
      331 LOADN                            R39 10
      332 CALL                             R37 2 1
      333 SETTABLEKS                       R37 R36 K92 ["Padding"]
      335 SETTABLEKS                       R36 R35 K84 ["AutoSizeLayoutOptions"]
      337 DUPTABLE                         R36 K106 [{"Padding", "AllViews", "Separator", "Creator", "Separator1", "AudioSearchHeader", "Separator2", "SortBy", "ViewPadding"}]
      338 GETUPVAL                         R37 4
      339 GETTABLEKS                       R37 R37 K52 ["createElement"]
      341 LOADK                            R38 K107 ["UIPadding"]
      342 DUPTABLE                         R39 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      343 GETIMPORT                        R40 K97 [UDim.new]
      345 LOADN                            R41 0
      346 LOADN                            R42 10
      347 CALL                             R40 2 1
      348 SETTABLEKS                       R40 R39 K108 ["PaddingLeft"]
      350 GETIMPORT                        R40 K97 [UDim.new]
      352 LOADN                            R41 0
      353 LOADN                            R42 10
      354 CALL                             R40 2 1
      355 SETTABLEKS                       R40 R39 K109 ["PaddingRight"]
      357 GETIMPORT                        R40 K97 [UDim.new]
      359 LOADN                            R41 0
      360 LOADN                            R42 10
      361 CALL                             R40 2 1
      362 SETTABLEKS                       R40 R39 K110 ["PaddingTop"]
      364 GETIMPORT                        R40 K97 [UDim.new]
      366 LOADN                            R41 0
      367 LOADN                            R42 10
      368 CALL                             R40 2 1
      369 SETTABLEKS                       R40 R39 K111 ["PaddingBottom"]
      371 CALL                             R37 2 1
      372 SETTABLEKS                       R37 R36 K92 ["Padding"]
      374 GETUPVAL                         R37 4
      375 GETTABLEKS                       R37 R37 K52 ["createElement"]
      377 GETUPVAL                         R38 6
      378 DUPTABLE                         R39 K114 [{"Header", "LayoutOrder"}]
      379 LOADK                            R42 K8 ["General"]
      380 LOADK                            R43 K115 ["SearchOptionsAllViews"]
      381 NAMECALL                         R40 R7 K10 ["getText"]
      383 CALL                             R40 3 1
      384 SETTABLEKS                       R40 R39 K113 ["Header"]
      386 NAMECALL                         R40 R0 K116 ["nextLayout"]
      388 CALL                             R40 1 1
      389 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      391 DUPTABLE                         R40 K118 [{"CheckboxAndDescriptionContainer"}]
      392 GETUPVAL                         R41 4
      393 GETTABLEKS                       R41 R41 K52 ["createElement"]
      395 GETUPVAL                         R42 7
      396 DUPTABLE                         R43 K123 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 3}]
      397 GETIMPORT                        R44 K125 [Enum.AutomaticSize.XY]
      399 SETTABLEKS                       R44 R43 K119 ["AutomaticSize"]
      401 GETIMPORT                        R44 K127 [Enum.HorizontalAlignment.Left]
      403 SETTABLEKS                       R44 R43 K120 ["HorizontalAlignment"]
      405 GETIMPORT                        R44 K90 [Enum.FillDirection.Vertical]
      407 SETTABLEKS                       R44 R43 K81 ["Layout"]
      409 NAMECALL                         R44 R0 K116 ["nextLayout"]
      411 CALL                             R44 1 1
      412 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
      414 DUPTABLE                         R44 K130 [{"IncludeUnverifiedToggle", "VerifiedDescriptionContainer"}]
      415 GETUPVAL                         R45 4
      416 GETTABLEKS                       R45 R45 K52 ["createElement"]
      418 GETUPVAL                         R46 8
      419 DUPTABLE                         R47 K134 [{["Checked"], ["LayoutOrder"], ["OnClick"], ["Text"], ["TextWrapped"] = True}]
      420 GETTABLEKS                       R48 R1 K135 ["includeUnverifiedCreators"]
      422 SETTABLEKS                       R48 R47 K131 ["Checked"]
      424 NAMECALL                         R48 R0 K116 ["nextLayout"]
      426 CALL                             R48 1 1
      427 SETTABLEKS                       R48 R47 K94 ["LayoutOrder"]
      429 GETTABLEKS                       R48 R0 K136 ["onToggleIdVerified"]
      431 SETTABLEKS                       R48 R47 K132 ["OnClick"]
      433 SETTABLEKS                       R10 R47 K18 ["Text"]
      435 CALL                             R45 2 1
      436 SETTABLEKS                       R45 R44 K128 ["IncludeUnverifiedToggle"]
      438 GETUPVAL                         R45 4
      439 GETTABLEKS                       R45 R45 K52 ["createElement"]
      441 GETUPVAL                         R46 7
      442 DUPTABLE                         R47 K139 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Spacing"] = 6, ["VerticalAlignment"]}]
      443 GETIMPORT                        R48 K125 [Enum.AutomaticSize.XY]
      445 SETTABLEKS                       R48 R47 K119 ["AutomaticSize"]
      447 GETIMPORT                        R48 K127 [Enum.HorizontalAlignment.Left]
      449 SETTABLEKS                       R48 R47 K120 ["HorizontalAlignment"]
      451 GETIMPORT                        R48 K141 [Enum.FillDirection.Horizontal]
      453 SETTABLEKS                       R48 R47 K81 ["Layout"]
      455 NAMECALL                         R48 R0 K116 ["nextLayout"]
      457 CALL                             R48 1 1
      458 SETTABLEKS                       R48 R47 K94 ["LayoutOrder"]
      460 DUPTABLE                         R48 K143 [{["Left"] = 24}]
      461 SETTABLEKS                       R48 R47 K92 ["Padding"]
      463 GETIMPORT                        R48 K145 [Enum.VerticalAlignment.Top]
      465 SETTABLEKS                       R48 R47 K138 ["VerticalAlignment"]
      467 DUPTABLE                         R48 K148 [{"Image", "VerifiedDescription"}]
      468 GETUPVAL                         R49 4
      469 GETTABLEKS                       R49 R49 K52 ["createElement"]
      471 GETUPVAL                         R50 9
      472 DUPTABLE                         R51 K150 [{"AnchorPoint", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      473 GETIMPORT                        R52 K56 [Vector2.new]
      475 LOADN                            R53 0
      476 LOADK                            R54 K151 [0.5]
      477 CALL                             R52 2 1
      478 SETTABLEKS                       R52 R51 K57 ["AnchorPoint"]
      480 GETUPVAL                         R52 10
      481 GETTABLEKS                       R52 R52 K152 ["WARNING_ICON_SMALL"]
      483 SETTABLEKS                       R52 R51 K146 ["Image"]
      485 GETTABLEKS                       R52 R3 K153 ["warningIconColor"]
      487 SETTABLEKS                       R52 R51 K149 ["ImageColor3"]
      489 NAMECALL                         R52 R0 K116 ["nextLayout"]
      491 CALL                             R52 1 1
      492 SETTABLEKS                       R52 R51 K94 ["LayoutOrder"]
      494 GETIMPORT                        R52 K155 [UDim2.fromOffset]
      496 LOADN                            R53 16
      497 LOADN                            R54 16
      498 CALL                             R52 2 1
      499 SETTABLEKS                       R52 R51 K62 ["Size"]
      501 DUPTABLE                         R52 K157 [{"Tooltip"}]
      502 GETUPVAL                         R53 4
      503 GETTABLEKS                       R53 R53 K52 ["createElement"]
      505 GETUPVAL                         R54 11
      506 DUPTABLE                         R55 K160 [{["Text"], ["Priority"] = 11}]
      507 SETTABLEKS                       R11 R55 K18 ["Text"]
      509 CALL                             R53 2 1
      510 SETTABLEKS                       R53 R52 K156 ["Tooltip"]
      512 CALL                             R49 3 1
      513 SETTABLEKS                       R49 R48 K146 ["Image"]
      515 GETUPVAL                         R49 4
      516 GETTABLEKS                       R49 R49 K52 ["createElement"]
      518 GETUPVAL                         R50 12
      519 DUPTABLE                         R51 K166 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "SubText", ["Text"], ["TextSize"] = 14, ["TextWrapped"] = True, ["TextXAlignment"]}]
      520 GETIMPORT                        R52 K125 [Enum.AutomaticSize.XY]
      522 SETTABLEKS                       R52 R51 K119 ["AutomaticSize"]
      524 NAMECALL                         R52 R0 K116 ["nextLayout"]
      526 CALL                             R52 1 1
      527 SETTABLEKS                       R52 R51 K94 ["LayoutOrder"]
      529 SETTABLEKS                       R9 R51 K18 ["Text"]
      531 GETIMPORT                        R52 K167 [Enum.TextXAlignment.Left]
      533 SETTABLEKS                       R52 R51 K165 ["TextXAlignment"]
      535 CALL                             R49 2 1
      536 SETTABLEKS                       R49 R48 K147 ["VerifiedDescription"]
      538 CALL                             R45 3 1
      539 SETTABLEKS                       R45 R44 K129 ["VerifiedDescriptionContainer"]
      541 CALL                             R41 3 1
      542 SETTABLEKS                       R41 R40 K117 ["CheckboxAndDescriptionContainer"]
      544 CALL                             R37 3 1
      545 SETTABLEKS                       R37 R36 K98 ["AllViews"]
      547 GETTABLEKS                       R39 R3 K168 ["separator"]
      549 NAMECALL                         R37 R0 K169 ["createSeparator"]
      551 CALL                             R37 2 1
      552 SETTABLEKS                       R37 R36 K99 ["Separator"]
      554 MOVE                             R37 R14
      555 JUMPIFNOT                        R37 ; [+44]
      556 GETUPVAL                         R37 4
      557 GETTABLEKS                       R37 R37 K52 ["createElement"]
      559 GETUPVAL                         R38 6
      560 DUPTABLE                         R39 K170 [{"LayoutOrder", "Header"}]
      561 NAMECALL                         R40 R0 K116 ["nextLayout"]
      563 CALL                             R40 1 1
      564 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      566 LOADK                            R42 K8 ["General"]
      567 LOADK                            R43 K171 ["SearchOptionCreator"]
      568 NAMECALL                         R40 R7 K10 ["getText"]
      570 CALL                             R40 3 1
      571 SETTABLEKS                       R40 R39 K113 ["Header"]
      573 DUPTABLE                         R40 K173 [{"SearchBar"}]
      574 GETUPVAL                         R41 4
      575 GETTABLEKS                       R41 R41 K52 ["createElement"]
      577 GETUPVAL                         R42 13
      578 DUPTABLE                         R43 K180 [{["defaultTextKey"] = "SearchBarCreatorText", ["searchTerm"], ["results"], ["updateSearch"], ["width"]}]
      579 GETTABLEKS                       R44 R4 K176 ["searchTerm"]
      581 SETTABLEKS                       R44 R43 K176 ["searchTerm"]
      583 GETTABLEKS                       R44 R4 K177 ["results"]
      585 SETTABLEKS                       R44 R43 K177 ["results"]
      587 GETTABLEKS                       R44 R0 K178 ["updateSearch"]
      589 SETTABLEKS                       R44 R43 K178 ["updateSearch"]
      591 GETUPVAL                         R44 2
      592 GETTABLEKS                       R44 R44 K181 ["SEARCH_BAR_WIDTH"]
      594 SETTABLEKS                       R44 R43 K179 ["width"]
      596 CALL                             R41 2 1
      597 SETTABLEKS                       R41 R40 K172 ["SearchBar"]
      599 CALL                             R37 3 1
      600 SETTABLEKS                       R37 R36 K100 ["Creator"]
      602 MOVE                             R37 R19
      603 JUMPIFNOT                        R37 ; [+5]
      604 GETTABLEKS                       R39 R3 K168 ["separator"]
      606 NAMECALL                         R37 R0 K169 ["createSeparator"]
      608 CALL                             R37 2 1
      609 SETTABLEKS                       R37 R36 K101 ["Separator1"]
      611 MOVE                             R37 R13
      612 JUMPIFNOT                        R37 ; [+30]
      613 GETUPVAL                         R37 4
      614 GETTABLEKS                       R37 R37 K52 ["createElement"]
      616 GETUPVAL                         R38 6
      617 DUPTABLE                         R39 K170 [{"LayoutOrder", "Header"}]
      618 NAMECALL                         R40 R0 K116 ["nextLayout"]
      620 CALL                             R40 1 1
      621 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      623 SETTABLEKS                       R8 R39 K113 ["Header"]
      625 DUPTABLE                         R40 K183 [{"AudioSearch"}]
      626 GETUPVAL                         R41 4
      627 GETTABLEKS                       R41 R41 K52 ["createElement"]
      629 GETUPVAL                         R42 14
      630 DUPTABLE                         R43 K185 [{"minDuration", "maxDuration", "onDurationChange"}]
      631 SETTABLEKS                       R5 R43 K5 ["minDuration"]
      633 SETTABLEKS                       R6 R43 K6 ["maxDuration"]
      635 GETTABLEKS                       R44 R0 K184 ["onDurationChange"]
      637 SETTABLEKS                       R44 R43 K184 ["onDurationChange"]
      639 CALL                             R41 2 1
      640 SETTABLEKS                       R41 R40 K182 ["AudioSearch"]
      642 CALL                             R37 3 1
      643 SETTABLEKS                       R37 R36 K102 ["AudioSearchHeader"]
      645 MOVE                             R37 R13
      646 JUMPIFNOT                        R37 ; [+5]
      647 GETTABLEKS                       R39 R3 K168 ["separator"]
      649 NAMECALL                         R37 R0 K169 ["createSeparator"]
      651 CALL                             R37 2 1
      652 SETTABLEKS                       R37 R36 K103 ["Separator2"]
      654 MOVE                             R37 R18
      655 JUMPIFNOT                        R37 ; [+37]
      656 GETUPVAL                         R37 4
      657 GETTABLEKS                       R37 R37 K52 ["createElement"]
      659 GETUPVAL                         R38 6
      660 DUPTABLE                         R39 K170 [{"LayoutOrder", "Header"}]
      661 NAMECALL                         R40 R0 K116 ["nextLayout"]
      663 CALL                             R40 1 1
      664 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      666 LOADK                            R42 K8 ["General"]
      667 LOADK                            R43 K186 ["SearchOptionSort"]
      668 NAMECALL                         R40 R7 K10 ["getText"]
      670 CALL                             R40 3 1
      671 SETTABLEKS                       R40 R39 K113 ["Header"]
      673 DUPTABLE                         R40 K188 [{"RadioButtons"}]
      674 GETUPVAL                         R41 4
      675 GETTABLEKS                       R41 R41 K52 ["createElement"]
      677 GETUPVAL                         R42 15
      678 DUPTABLE                         R43 K191 [{"Buttons", "SelectedKey", "OnClick"}]
      679 GETTABLEKS                       R44 R0 K33 ["sortsList"]
      681 SETTABLEKS                       R44 R43 K189 ["Buttons"]
      683 SETTABLEKS                       R16 R43 K190 ["SelectedKey"]
      685 GETTABLEKS                       R44 R0 K192 ["selectSort"]
      687 SETTABLEKS                       R44 R43 K132 ["OnClick"]
      689 CALL                             R41 2 1
      690 SETTABLEKS                       R41 R40 K187 ["RadioButtons"]
      692 CALL                             R37 3 1
      693 SETTABLEKS                       R37 R36 K104 ["SortBy"]
      695 MOVE                             R37 R18
      696 JUMPIFNOT                        R37 ; [+20]
      697 GETUPVAL                         R37 4
      698 GETTABLEKS                       R37 R37 K52 ["createElement"]
      700 LOADK                            R38 K53 ["Frame"]
      701 DUPTABLE                         R39 K194 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      702 GETIMPORT                        R40 K41 [UDim2.new]
      704 LOADN                            R41 1
      705 LOADN                            R42 0
      706 LOADN                            R43 0
      707 LOADN                            R44 10
      708 CALL                             R40 4 1
      709 SETTABLEKS                       R40 R39 K62 ["Size"]
      711 NAMECALL                         R40 R0 K116 ["nextLayout"]
      713 CALL                             R40 1 1
      714 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      716 CALL                             R37 2 1
      717 SETTABLEKS                       R37 R36 K105 ["ViewPadding"]
      719 CALL                             R33 3 1
      720 SETTABLEKS                       R33 R32 K77 ["Container"]
      722 GETUPVAL                         R33 4
      723 GETTABLEKS                       R33 R33 K52 ["createElement"]
      725 LOADK                            R34 K53 ["Frame"]
      726 DUPTABLE                         R35 K196 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["ZIndex"] = 3}]
      727 GETIMPORT                        R36 K41 [UDim2.new]
      729 LOADN                            R37 1
      730 LOADN                            R38 0
      731 LOADN                            R39 0
      732 LOADN                            R40 42
      733 CALL                             R36 4 1
      734 SETTABLEKS                       R36 R35 K62 ["Size"]
      736 GETIMPORT                        R36 K41 [UDim2.new]
      738 LOADN                            R37 0
      739 LOADN                            R38 0
      740 LOADN                            R39 1
      741 LOADN                            R40 -42
      742 CALL                             R36 4 1
      743 SETTABLEKS                       R36 R35 K59 ["Position"]
      745 DUPTABLE                         R36 K199 [{"Padding", "GradientOverlay", "Separator", "Footer"}]
      746 GETUPVAL                         R37 4
      747 GETTABLEKS                       R37 R37 K52 ["createElement"]
      749 LOADK                            R38 K107 ["UIPadding"]
      750 DUPTABLE                         R39 K200 [{"PaddingLeft", "PaddingRight"}]
      751 GETIMPORT                        R40 K97 [UDim.new]
      753 LOADN                            R41 0
      754 LOADN                            R42 10
      755 CALL                             R40 2 1
      756 SETTABLEKS                       R40 R39 K108 ["PaddingLeft"]
      758 GETIMPORT                        R40 K97 [UDim.new]
      760 LOADN                            R41 0
      761 LOADN                            R42 10
      762 CALL                             R40 2 1
      763 SETTABLEKS                       R40 R39 K109 ["PaddingRight"]
      765 CALL                             R37 2 1
      766 SETTABLEKS                       R37 R36 K92 ["Padding"]
      768 MOVE                             R37 R22
      769 JUMPIFNOT                        R37 ; [+80]
      770 GETUPVAL                         R37 4
      771 GETTABLEKS                       R37 R37 K52 ["createElement"]
      773 LOADK                            R38 K53 ["Frame"]
      774 DUPTABLE                         R39 K201 [{"LayoutOrder", "Size", "Position", "BackgroundColor3", "BorderColor3"}]
      775 NAMECALL                         R40 R0 K116 ["nextLayout"]
      777 CALL                             R40 1 1
      778 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      780 GETIMPORT                        R40 K41 [UDim2.new]
      782 LOADN                            R41 1
      783 LOADN                            R42 -8
      784 LOADN                            R43 0
      785 LOADN                            R44 20
      786 CALL                             R40 4 1
      787 SETTABLEKS                       R40 R39 K62 ["Size"]
      789 GETIMPORT                        R40 K41 [UDim2.new]
      791 LOADN                            R41 0
      792 LOADN                            R42 0
      793 LOADN                            R43 0
      794 LOADN                            R44 -20
      795 CALL                             R40 4 1
      796 SETTABLEKS                       R40 R39 K59 ["Position"]
      798 GETIMPORT                        R40 K203 [Color3.new]
      800 LOADN                            R41 1
      801 LOADN                            R42 1
      802 LOADN                            R43 1
      803 CALL                             R40 3 1
      804 SETTABLEKS                       R40 R39 K69 ["BackgroundColor3"]
      806 GETIMPORT                        R40 K203 [Color3.new]
      808 LOADN                            R41 1
      809 LOADN                            R42 1
      810 LOADN                            R43 1
      811 CALL                             R40 3 1
      812 SETTABLEKS                       R40 R39 K71 ["BorderColor3"]
      814 DUPTABLE                         R40 K205 [{"Gradient"}]
      815 GETUPVAL                         R41 4
      816 GETTABLEKS                       R41 R41 K52 ["createElement"]
      818 LOADK                            R42 K206 ["UIGradient"]
      819 DUPTABLE                         R43 K211 [{["Color"], ["Rotation"] = 90, ["Transparency"]}]
      820 GETIMPORT                        R44 K213 [ColorSequence.new]
      822 GETTABLEKS                       R45 R3 K68 ["background"]
      824 CALL                             R44 1 1
      825 SETTABLEKS                       R44 R43 K207 ["Color"]
      827 GETIMPORT                        R44 K215 [NumberSequence.new]
      829 NEWTABLE                         R45 0 2
      831 GETIMPORT                        R46 K217 [NumberSequenceKeypoint.new]
      833 LOADN                            R47 0
      834 LOADN                            R48 1
      835 CALL                             R46 2 1
      836 GETIMPORT                        R47 K217 [NumberSequenceKeypoint.new]
      838 LOADN                            R48 1
      839 LOADK                            R49 K218 [0.25]
      840 CALL                             R47 2 -1
      841 SETLIST                          R45 R46 -1 [1]
      843 CALL                             R44 1 1
      844 SETTABLEKS                       R44 R43 K210 ["Transparency"]
      846 CALL                             R41 2 1
      847 SETTABLEKS                       R41 R40 K204 ["Gradient"]
      849 CALL                             R37 3 1
      850 SETTABLEKS                       R37 R36 K197 ["GradientOverlay"]
      852 GETUPVAL                         R37 4
      853 GETTABLEKS                       R37 R37 K52 ["createElement"]
      855 GETUPVAL                         R38 16
      856 DUPTABLE                         R39 K220 [{["Position"], ["ZIndex"] = 2}]
      857 GETIMPORT                        R40 K41 [UDim2.new]
      859 LOADK                            R41 K151 [0.5]
      860 LOADN                            R42 0
      861 LOADN                            R43 0
      862 LOADN                            R44 0
      863 CALL                             R40 4 1
      864 SETTABLEKS                       R40 R39 K59 ["Position"]
      866 CALL                             R37 2 1
      867 SETTABLEKS                       R37 R36 K99 ["Separator"]
      869 GETUPVAL                         R37 4
      870 GETTABLEKS                       R37 R37 K52 ["createElement"]
      872 GETUPVAL                         R38 17
      873 DUPTABLE                         R39 K222 [{"AnchorPoint", "Position", "onButtonClicked"}]
      874 GETIMPORT                        R40 K56 [Vector2.new]
      876 LOADN                            R41 0
      877 LOADN                            R42 1
      878 CALL                             R40 2 1
      879 SETTABLEKS                       R40 R39 K57 ["AnchorPoint"]
      881 GETIMPORT                        R40 K41 [UDim2.new]
      883 LOADN                            R41 0
      884 LOADN                            R42 0
      885 LOADN                            R43 1
      886 LOADN                            R44 -8
      887 CALL                             R40 4 1
      888 SETTABLEKS                       R40 R39 K59 ["Position"]
      890 GETTABLEKS                       R40 R0 K223 ["footerButtonClicked"]
      892 SETTABLEKS                       R40 R39 K221 ["onButtonClicked"]
      894 CALL                             R37 2 1
      895 SETTABLEKS                       R37 R36 K198 ["Footer"]
      897 CALL                             R33 3 1
      898 SETTABLEKS                       R33 R32 K78 ["BottomButtonsContainer"]
      900 CALL                             R29 3 1
      901 SETTABLEKS                       R29 R28 K66 ["Contents"]
      903 CALL                             R25 3 1
      904 SETTABLEKS                       R25 R24 K50 ["Main"]
      906 GETUPVAL                         R25 18
      907 DUPTABLE                         R26 K224 [{["Priority"] = 2}]
      908 GETUPVAL                         R27 4
      909 GETTABLEKS                       R27 R27 K52 ["createElement"]
      911 LOADK                            R28 K53 ["Frame"]
      912 DUPTABLE                         R29 K225 [{["BackgroundTransparency"] = 1}]
      913 DUPTABLE                         R30 K227 [{"Portal"}]
      914 GETUPVAL                         R31 4
      915 GETTABLEKS                       R31 R31 K52 ["createElement"]
      917 MOVE                             R32 R25
      918 MOVE                             R33 R26
      919 DUPTABLE                         R34 K229 [{"ClickEventDetectFrame"}]
      920 GETUPVAL                         R35 4
      921 GETTABLEKS                       R35 R35 K52 ["createElement"]
      923 LOADK                            R36 K230 ["ImageButton"]
      924 NEWTABLE                         R37 8 0
      926 LOADN                            R38 10
      927 SETTABLEKS                       R38 R37 K195 ["ZIndex"]
      929 GETIMPORT                        R38 K41 [UDim2.new]
      931 LOADN                            R39 0
      932 LOADN                            R40 0
      933 LOADN                            R41 0
      934 LOADN                            R42 0
      935 CALL                             R38 4 1
      936 SETTABLEKS                       R38 R37 K59 ["Position"]
      938 GETIMPORT                        R38 K41 [UDim2.new]
      940 LOADN                            R39 1
      941 LOADN                            R40 0
      942 LOADN                            R41 1
      943 LOADN                            R42 0
      944 CALL                             R38 4 1
      945 SETTABLEKS                       R38 R37 K62 ["Size"]
      947 LOADN                            R38 1
      948 SETTABLEKS                       R38 R37 K54 ["BackgroundTransparency"]
      950 LOADB                            R38 0
      951 SETTABLEKS                       R38 R37 K231 ["AutoButtonColor"]
      953 GETUPVAL                         R38 4
      954 GETTABLEKS                       R38 R38 K63 ["Ref"]
      956 GETTABLEKS                       R39 R0 K44 ["containerRef"]
      958 SETTABLE                         R39 R37 R38
      959 GETUPVAL                         R38 4
      960 GETTABLEKS                       R38 R38 K72 ["Event"]
      962 GETTABLEKS                       R38 R38 K232 ["Activated"]
      964 GETTABLEKS                       R39 R0 K233 ["cancel"]
      966 SETTABLE                         R39 R37 R38
      967 MOVE                             R38 R24
      968 CALL                             R35 3 1
      969 SETTABLEKS                       R35 R34 K228 ["ClickEventDetectFrame"]
      971 CALL                             R31 3 1
      972 SETTABLEKS                       R31 R30 K226 ["Portal"]
      974 CALL                             R27 3 -1
      975 RETURN                           R27 -1

PROTO_20:
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
       28 DUPTABLE                         R4 K10 [{"audioSearchInfo", "includeUnverifiedCreators", "categoryName", "LiveSearchData", "SortIndex"}]
       29 GETTABLEKS                       R5 R2 K5 ["audioSearchInfo"]
       31 SETTABLEKS                       R5 R4 K5 ["audioSearchInfo"]
       33 GETTABLEKS                       R5 R2 K6 ["includeUnverifiedCreators"]
       35 SETTABLEKS                       R5 R4 K6 ["includeUnverifiedCreators"]
       37 GETTABLEKS                       R5 R2 K7 ["categoryName"]
       39 JUMPIF                           R5 ; [+5]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K11 ["DEFAULT"]
       43 GETTABLEKS                       R5 R5 K12 ["name"]
       45 SETTABLEKS                       R5 R4 K7 ["categoryName"]
       47 SETTABLEKS                       R3 R4 K8 ["LiveSearchData"]
       49 GETTABLEKS                       R6 R2 K14 ["sortIndex"]
       51 ORK                              R5 R6 K13 [1]
       52 SETTABLEKS                       R5 R4 K9 ["SortIndex"]
       54 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K2 [{"userSearch", "searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["userSearch"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["searchWithOptions"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       19 GETTABLEKS                       R2 R2 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R2 R0 K9 ["Packages"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K10 ["Roact"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R2 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R0 K5 ["Src"]
       41 GETTABLEKS                       R6 R6 K6 ["Util"]
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R6 K13 ["Constants"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R6 K14 ["Images"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K4 [require]
       55 GETTABLEKS                       R10 R6 K15 ["debounce"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R0 K5 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Components"]
       64 GETTABLEKS                       R11 R11 K17 ["createFitToContent"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R5 K18 ["ContextServices"]
       69 GETTABLEKS                       R12 R11 K19 ["withContext"]
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R14 R0 K5 ["Src"]
       75 GETTABLEKS                       R14 R14 K18 ["ContextServices"]
       77 GETTABLEKS                       R14 R14 K20 ["Settings"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K4 [require]
       82 GETTABLEKS                       R15 R0 K5 ["Src"]
       84 GETTABLEKS                       R15 R15 K18 ["ContextServices"]
       86 GETTABLEKS                       R15 R15 K21 ["ModalContext"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K4 [require]
       91 GETTABLEKS                       R16 R0 K5 ["Src"]
       93 GETTABLEKS                       R16 R16 K18 ["ContextServices"]
       95 GETTABLEKS                       R16 R16 K22 ["NetworkContext"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K4 [require]
      100 GETTABLEKS                       R17 R0 K5 ["Src"]
      102 GETTABLEKS                       R17 R17 K16 ["Components"]
      104 GETTABLEKS                       R17 R17 K23 ["SearchOptions"]
      106 GETTABLEKS                       R17 R17 K24 ["LiveSearchBar"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K4 [require]
      111 GETTABLEKS                       R18 R2 K12 ["Framework"]
      113 CALL                             R17 1 1
      114 GETTABLEKS                       R17 R17 K25 ["UI"]
      116 GETTABLEKS                       R17 R17 K26 ["RadioButtonList"]
      118 GETTABLEKS                       R18 R5 K25 ["UI"]
      120 GETTABLEKS                       R19 R18 K27 ["Checkbox"]
      122 GETTABLEKS                       R20 R18 K28 ["Pane"]
      124 GETTABLEKS                       R21 R18 K29 ["Image"]
      126 GETTABLEKS                       R22 R18 K30 ["TextLabel"]
      128 GETTABLEKS                       R23 R18 K31 ["ShowOnTop"]
      130 GETTABLEKS                       R24 R18 K32 ["ScrollingFrame"]
      132 GETTABLEKS                       R25 R18 K33 ["Tooltip"]
      134 GETIMPORT                        R26 K4 [require]
      136 GETTABLEKS                       R27 R0 K5 ["Src"]
      138 GETTABLEKS                       R27 R27 K16 ["Components"]
      140 GETTABLEKS                       R27 R27 K34 ["Audio"]
      142 GETTABLEKS                       R27 R27 K35 ["AudioSearch"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K4 [require]
      147 GETTABLEKS                       R28 R0 K5 ["Src"]
      149 GETTABLEKS                       R28 R28 K16 ["Components"]
      151 GETTABLEKS                       R28 R28 K23 ["SearchOptions"]
      153 GETTABLEKS                       R28 R28 K36 ["SearchOptionsEntry"]
      155 CALL                             R27 1 1
      156 GETIMPORT                        R28 K4 [require]
      158 GETTABLEKS                       R29 R0 K5 ["Src"]
      160 GETTABLEKS                       R29 R29 K16 ["Components"]
      162 GETTABLEKS                       R29 R29 K23 ["SearchOptions"]
      164 GETTABLEKS                       R29 R29 K37 ["SearchOptionsFooter"]
      166 CALL                             R28 1 1
      167 GETIMPORT                        R29 K4 [require]
      169 GETTABLEKS                       R30 R0 K5 ["Src"]
      171 GETTABLEKS                       R30 R30 K6 ["Util"]
      173 GETTABLEKS                       R30 R30 K38 ["ToolboxUtilities"]
      175 CALL                             R29 1 1
      176 GETTABLEKS                       R29 R29 K39 ["getShouldHideNonRelevanceSorts"]
      178 GETTABLEKS                       R30 R18 K40 ["Separator"]
      180 GETIMPORT                        R31 K4 [require]
      182 GETTABLEKS                       R32 R0 K5 ["Src"]
      184 GETTABLEKS                       R32 R32 K41 ["Networking"]
      186 GETTABLEKS                       R32 R32 K42 ["Requests"]
      188 GETTABLEKS                       R32 R32 K43 ["SearchWithOptions"]
      190 CALL                             R31 1 1
      191 GETIMPORT                        R32 K4 [require]
      193 GETTABLEKS                       R33 R0 K5 ["Src"]
      195 GETTABLEKS                       R33 R33 K41 ["Networking"]
      197 GETTABLEKS                       R33 R33 K42 ["Requests"]
      199 GETTABLEKS                       R33 R33 K44 ["UserSearchRequest"]
      201 CALL                             R32 1 1
      202 GETIMPORT                        R33 K4 [require]
      204 GETTABLEKS                       R34 R0 K5 ["Src"]
      206 GETTABLEKS                       R34 R34 K6 ["Util"]
      208 GETTABLEKS                       R34 R34 K38 ["ToolboxUtilities"]
      210 CALL                             R33 1 1
      211 GETTABLEKS                       R33 R33 K45 ["showRobloxCreatedAssets"]
      213 GETIMPORT                        R34 K4 [require]
      215 GETTABLEKS                       R35 R0 K5 ["Src"]
      217 GETTABLEKS                       R35 R35 K46 ["Types"]
      219 GETTABLEKS                       R35 R35 K47 ["Category"]
      221 CALL                             R34 1 1
      222 GETIMPORT                        R35 K49 [game]
      224 LOADK                            R37 K50 ["ToolboxLiveSearchDebounceWait"]
      225 NAMECALL                         R35 R35 K51 ["GetFastInt"]
      227 CALL                             R35 2 1
      228 GETTABLEKS                       R36 R3 K52 ["PureComponent"]
      230 LOADK                            R38 K23 ["SearchOptions"]
      231 NAMECALL                         R36 R36 K53 ["extend"]
      233 CALL                             R36 2 1
      234 MOVE                             R37 R1
      235 CALL                             R37 0 1
      236 JUMPIFNOT                        R37 ; [+2]
      237 LOADNIL                          R37
      238 RETURN                           R37 1
      239 DUPTABLE                         R37 K56 [{["showCreatorSearch"] = True}]
      240 SETTABLEKS                       R37 R36 K57 ["defaultProps"]
      242 DUPCLOSURE                       R37 K58 [PROTO_15]
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R35
      247 SETTABLEKS                       R37 R36 K59 ["init"]
      249 DUPCLOSURE                       R37 K60 [PROTO_16]
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R30
      252 SETTABLEKS                       R37 R36 K61 ["createSeparator"]
      254 DUPCLOSURE                       R37 K62 [PROTO_17]
      255 SETTABLEKS                       R37 R36 K63 ["resetLayout"]
      257 DUPCLOSURE                       R37 K64 [PROTO_18]
      258 SETTABLEKS                       R37 R36 K65 ["nextLayout"]
      260 DUPCLOSURE                       R37 K66 [PROTO_19]
      261 CAPTURE                          VAL R34
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R3
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R20
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R21
      271 CAPTURE                          VAL R8
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R26
      276 CAPTURE                          VAL R17
      277 CAPTURE                          VAL R30
      278 CAPTURE                          VAL R28
      279 CAPTURE                          VAL R23
      280 SETTABLEKS                       R37 R36 K67 ["render"]
      282 MOVE                             R37 R12
      283 DUPTABLE                         R38 K72 [{"Localization", "Settings", "Stylizer", "Modal", "Network"}]
      284 GETTABLEKS                       R39 R11 K68 ["Localization"]
      286 SETTABLEKS                       R39 R38 K68 ["Localization"]
      288 SETTABLEKS                       R13 R38 K20 ["Settings"]
      290 GETTABLEKS                       R39 R11 K69 ["Stylizer"]
      292 SETTABLEKS                       R39 R38 K69 ["Stylizer"]
      294 SETTABLEKS                       R14 R38 K70 ["Modal"]
      296 SETTABLEKS                       R15 R38 K71 ["Network"]
      298 CALL                             R37 1 1
      299 MOVE                             R38 R36
      300 CALL                             R37 1 1
      301 MOVE                             R36 R37
      302 DUPCLOSURE                       R37 K73 [PROTO_20]
      303 CAPTURE                          VAL R34
      304 DUPCLOSURE                       R38 K74 [PROTO_23]
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R31
      307 GETTABLEKS                       R39 R4 K75 ["connect"]
      309 MOVE                             R40 R37
      310 MOVE                             R41 R38
      311 CALL                             R39 2 1
      312 MOVE                             R40 R36
      313 CALL                             R39 1 -1
      314 RETURN                           R39 -1
