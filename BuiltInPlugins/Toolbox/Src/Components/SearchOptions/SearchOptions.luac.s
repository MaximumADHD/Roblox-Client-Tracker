PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Modal"]
        5 GETTABLEKS                       R0 R1 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Modal"]
        5 GETTABLEKS                       R0 R1 K2 ["onSearchOptionsMouse"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["userSearch"]
        5 GETTABLEKS                       R4 R1 K2 ["Network"]
        7 GETTABLEKS                       R3 R4 K3 ["networkInterface"]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["searchTerm"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R1 R2 K1 ["extraSearchDetails"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["debouncedUserSearch"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pairs]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R3 R5 K2 ["sortsList"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onSearchOptionsClosed"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSearchOptionsClosed"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"SortIndex", "Creator"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K3 ["state"]
        4 GETTABLEKS                       R2 R3 K0 ["SortIndex"]
        6 SETTABLEKS                       R2 R1 K0 ["SortIndex"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["searchTerm"]
       11 SETTABLEKS                       R2 R1 K1 ["Creator"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["state"]
       16 GETTABLEKS                       R2 R3 K5 ["minDuration"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K6 ["MIN_AUDIO_SEARCH_DURATION"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+11]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K3 ["state"]
       26 GETTABLEKS                       R2 R3 K7 ["maxDuration"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K8 ["MAX_AUDIO_SEARCH_DURATION"]
       31 JUMPIFEQ                         R2 R3 ; [+18]
       33 DUPTABLE                         R2 K9 [{"minDuration", "maxDuration"}]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K3 ["state"]
       37 GETTABLEKS                       R3 R4 K5 ["minDuration"]
       39 SETTABLEKS                       R3 R2 K5 ["minDuration"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K3 ["state"]
       44 GETTABLEKS                       R3 R4 K7 ["maxDuration"]
       46 SETTABLEKS                       R3 R2 K7 ["maxDuration"]
       48 SETTABLEKS                       R2 R1 K10 ["AudioSearch"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K11 ["extraSearchDetails"]
       53 JUMPIFNOT                        R2 ; [+25]
       54 GETIMPORT                        R2 K13 [next]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K11 ["extraSearchDetails"]
       59 CALL                             R2 1 1
       60 JUMPIFEQKNIL                     R2 ; [+18]
       62 DUPTABLE                         R2 K16 [{"Name", "Id"}]
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R4 R5 K11 ["extraSearchDetails"]
       66 GETTABLEKS                       R3 R4 K14 ["Name"]
       68 SETTABLEKS                       R3 R2 K14 ["Name"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K11 ["extraSearchDetails"]
       73 GETTABLEKS                       R3 R4 K15 ["Id"]
       75 SETTABLEKS                       R3 R2 K15 ["Id"]
       77 SETTABLEKS                       R2 R1 K1 ["Creator"]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R3 R4 K3 ["state"]
       82 GETTABLEKS                       R2 R3 K17 ["includeUnverifiedCreators"]
       84 SETTABLEKS                       R2 R1 K17 ["includeUnverifiedCreators"]
       86 GETUPVAL                         R2 0
       87 DUPTABLE                         R4 K2 [{"SortIndex", "Creator"}]
       88 GETUPVAL                         R6 2
       89 GETTABLEKS                       R5 R6 K18 ["None"]
       91 SETTABLEKS                       R5 R4 K0 ["SortIndex"]
       93 GETUPVAL                         R6 2
       94 GETTABLEKS                       R5 R6 K18 ["None"]
       96 SETTABLEKS                       R5 R4 K1 ["Creator"]
       98 NAMECALL                         R2 R2 K19 ["setState"]
      100 CALL                             R2 2 0
      101 JUMPIFNOTEQKS                    R0 K20 ["Cancel"] ; [+6]
      103 GETUPVAL                         R3 0
      104 GETTABLEKS                       R2 R3 K21 ["cancel"]
      106 CALL                             R2 0 0
      107 RETURN                           R0 0
      108 JUMPIFNOTEQKS                    R0 K22 ["Apply"] ; [+6]
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R2 R3 K23 ["apply"]
      113 MOVE                             R3 R1
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["minDuration"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+8]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["state"]
       10 GETTABLEKS                       R2 R3 K2 ["maxDuration"]
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
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Network"]
        6 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["Settings"]
       13 LOADK                            R4 K4 ["Plugin"]
       14 NAMECALL                         R2 R2 K5 ["get"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["props"]
       20 GETTABLEKS                       R3 R4 K6 ["searchWithOptions"]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 MOVE                             R6 R0
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["props"]
       29 GETTABLEKS                       R1 R2 K7 ["onSearchOptionsToggled"]
       31 JUMPIFNOT                        R1 ; [+6]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K0 ["props"]
       35 GETTABLEKS                       R1 R2 K7 ["onSearchOptionsToggled"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["containerRef"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["createRef"]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R0 K3 ["buttonsContainerRef"]
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R0 K4 ["currentLayout"]
       21 GETTABLEKS                       R3 R1 K5 ["LiveSearchData"]
       23 GETTABLEKS                       R2 R3 K6 ["searchTerm"]
       25 SETTABLEKS                       R2 R0 K6 ["searchTerm"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R0 K7 ["extraSearchDetails"]
       31 GETTABLEKS                       R3 R0 K8 ["props"]
       33 GETTABLEKS                       R2 R3 K9 ["audioSearchInfo"]
       35 GETTABLEKS                       R4 R0 K8 ["props"]
       37 GETTABLEKS                       R3 R4 K10 ["includeUnverifiedCreators"]
       39 DUPTABLE                         R4 K14 [{"minDuration", "maxDuration", "SortIndex", "includeUnverifiedCreators"}]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETTABLEKS                       R5 R2 K11 ["minDuration"]
       43 JUMPIF                           R5 ; [+3]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R5 R6 K15 ["MIN_AUDIO_SEARCH_DURATION"]
       47 SETTABLEKS                       R5 R4 K11 ["minDuration"]
       49 JUMPIFNOT                        R2 ; [+3]
       50 GETTABLEKS                       R5 R2 K12 ["maxDuration"]
       52 JUMPIF                           R5 ; [+3]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R5 R6 K16 ["MAX_AUDIO_SEARCH_DURATION"]
       56 SETTABLEKS                       R5 R4 K12 ["maxDuration"]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K13 ["SortIndex"]
       61 SETTABLEKS                       R3 R4 K10 ["includeUnverifiedCreators"]
       63 SETTABLEKS                       R4 R0 K17 ["state"]
       65 NEWTABLE                         R4 0 0
       67 SETTABLEKS                       R4 R0 K18 ["sortsList"]
       69 NEWCLOSURE                       R4 P0
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R4 R0 K19 ["mouseEnter"]
       73 NEWCLOSURE                       R4 P1
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R4 R0 K20 ["mouseLeave"]
       77 GETUPVAL                         R4 2
       78 NEWCLOSURE                       R5 P2
       79 CAPTURE                          VAL R0
       80 GETUPVAL                         R6 3
       81 CALL                             R4 2 1
       82 SETTABLEKS                       R4 R0 K21 ["debouncedUserSearch"]
       84 NEWCLOSURE                       R4 P3
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R4 R0 K22 ["updateSearch"]
       88 NEWCLOSURE                       R4 P4
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R4 R0 K23 ["selectSort"]
       92 NEWCLOSURE                       R4 P5
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R4 R0 K24 ["apply"]
       96 NEWCLOSURE                       R4 P6
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R4 R0 K25 ["cancel"]
      100 NEWCLOSURE                       R4 P7
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          UPVAL U0
      104 SETTABLEKS                       R4 R0 K26 ["footerButtonClicked"]
      106 NEWCLOSURE                       R4 P8
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R4 R0 K27 ["onDurationChange"]
      110 NEWCLOSURE                       R4 P9
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R4 R0 K28 ["onToggleIdVerified"]
      114 NEWCLOSURE                       R4 P10
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R4 R0 K29 ["updateContainerSize"]
      118 NEWCLOSURE                       R4 P11
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R4 R0 K30 ["updateContentsSize"]
      122 NEWCLOSURE                       R4 P12
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R4 R0 K31 ["onSearchOptionsClosed"]
      126 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R2 K3 ["searchOptions"]
        8 GETTABLEKS                       R5 R0 K1 ["props"]
       10 GETTABLEKS                       R4 R5 K4 ["LiveSearchData"]
       12 GETTABLEKS                       R5 R1 K5 ["minDuration"]
       14 GETTABLEKS                       R6 R1 K6 ["maxDuration"]
       16 GETTABLEKS                       R8 R0 K1 ["props"]
       18 GETTABLEKS                       R7 R8 K7 ["Localization"]
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
       40 GETTABLEKS                       R13 R0 K1 ["props"]
       42 GETTABLEKS                       R12 R13 K14 ["categoryName"]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R13 R14 K15 ["categoryIsAudio"]
       47 MOVE                             R14 R12
       48 CALL                             R13 1 1
       49 LOADB                            R14 1
       50 GETUPVAL                         R15 1
       51 CALL                             R15 0 1
       52 JUMPIFNOT                        R15 ; [+1]
       53 LOADB                            R14 0
       54 NEWTABLE                         R15 0 5
       56 DUPTABLE                         R16 K18 [{"Key", "Text"}]
       57 LOADK                            R17 K19 ["Relevance"]
       58 SETTABLEKS                       R17 R16 K16 ["Key"]
       60 LOADK                            R19 K8 ["General"]
       61 LOADK                            R20 K20 ["SortByRelevance"]
       62 NAMECALL                         R17 R7 K10 ["getText"]
       64 CALL                             R17 3 1
       65 SETTABLEKS                       R17 R16 K17 ["Text"]
       67 DUPTABLE                         R17 K18 [{"Key", "Text"}]
       68 LOADK                            R18 K21 ["MostTaken"]
       69 SETTABLEKS                       R18 R17 K16 ["Key"]
       71 LOADK                            R20 K8 ["General"]
       72 LOADK                            R21 K22 ["SortByMostTaken"]
       73 NAMECALL                         R18 R7 K10 ["getText"]
       75 CALL                             R18 3 1
       76 SETTABLEKS                       R18 R17 K17 ["Text"]
       78 DUPTABLE                         R18 K18 [{"Key", "Text"}]
       79 LOADK                            R19 K23 ["Favorites"]
       80 SETTABLEKS                       R19 R18 K16 ["Key"]
       82 LOADK                            R21 K8 ["General"]
       83 LOADK                            R22 K24 ["SortByFavorites"]
       84 NAMECALL                         R19 R7 K10 ["getText"]
       86 CALL                             R19 3 1
       87 SETTABLEKS                       R19 R18 K17 ["Text"]
       89 DUPTABLE                         R19 K18 [{"Key", "Text"}]
       90 LOADK                            R20 K25 ["Updated"]
       91 SETTABLEKS                       R20 R19 K16 ["Key"]
       93 LOADK                            R22 K8 ["General"]
       94 LOADK                            R23 K26 ["SortByUpdated"]
       95 NAMECALL                         R20 R7 K10 ["getText"]
       97 CALL                             R20 3 1
       98 SETTABLEKS                       R20 R19 K17 ["Text"]
      100 DUPTABLE                         R20 K18 [{"Key", "Text"}]
      101 LOADK                            R21 K27 ["Ratings"]
      102 SETTABLEKS                       R21 R20 K16 ["Key"]
      104 LOADK                            R23 K8 ["General"]
      105 LOADK                            R24 K28 ["SortByRatings"]
      106 NAMECALL                         R21 R7 K10 ["getText"]
      108 CALL                             R21 3 1
      109 SETTABLEKS                       R21 R20 K17 ["Text"]
      111 SETLIST                          R15 R16 5 [1]
      113 SETTABLEKS                       R15 R0 K29 ["sortsList"]
      115 GETTABLEKS                       R16 R0 K0 ["state"]
      117 GETTABLEKS                       R15 R16 K30 ["SortIndex"]
      119 JUMPIF                           R15 ; [+4]
      120 GETTABLEKS                       R16 R0 K1 ["props"]
      122 GETTABLEKS                       R15 R16 K30 ["SortIndex"]
      124 GETTABLEKS                       R18 R0 K29 ["sortsList"]
      126 GETTABLE                         R17 R18 R15
      127 GETTABLEKS                       R16 R17 K16 ["Key"]
      129 GETUPVAL                         R18 2
      130 GETTABLEKS                       R17 R18 K31 ["TAB_WIDGET_HEIGHT"]
      132 NAMECALL                         R18 R0 K32 ["resetLayout"]
      134 CALL                             R18 1 0
      135 GETUPVAL                         R19 3
      136 CALL                             R19 0 1
      137 NOT                              R18 R19
      138 MOVE                             R19 R14
      139 JUMPIFNOT                        R19 ; [+1]
      140 NOT                              R19 R13
      141 GETUPVAL                         R22 2
      142 GETTABLEKS                       R21 R22 K33 ["HEADER_HEIGHT"]
      144 ADD                              R20 R17 R21
      145 LOADNIL                          R21
      146 GETTABLEKS                       R23 R0 K0 ["state"]
      148 GETTABLEKS                       R22 R23 K34 ["contentSize"]
      150 JUMPIFNOT                        R22 ; [+19]
      151 GETIMPORT                        R22 K37 [UDim2.new]
      153 LOADN                            R23 0
      154 GETTABLEKS                       R26 R0 K0 ["state"]
      156 GETTABLEKS                       R25 R26 K34 ["contentSize"]
      158 GETTABLEKS                       R24 R25 K38 ["X"]
      160 LOADN                            R25 0
      161 GETTABLEKS                       R28 R0 K0 ["state"]
      163 GETTABLEKS                       R27 R28 K34 ["contentSize"]
      165 GETTABLEKS                       R26 R27 K39 ["Y"]
      167 CALL                             R22 4 1
      168 MOVE                             R21 R22
      169 JUMP                             ; [+8]
      170 GETIMPORT                        R22 K37 [UDim2.new]
      172 LOADN                            R23 0
      173 LOADN                            R24 0
      174 LOADN                            R25 0
      175 LOADN                            R26 0
      176 CALL                             R22 4 1
      177 MOVE                             R21 R22
      178 LOADB                            R22 1
      179 GETIMPORT                        R23 K37 [UDim2.new]
      181 LOADN                            R24 1
      182 LOADN                            R25 0
      183 LOADN                            R26 1
      184 LOADN                            R27 0
      185 CALL                             R23 4 1
      186 GETTABLEKS                       R25 R0 K40 ["containerRef"]
      188 GETTABLEKS                       R24 R25 K41 ["current"]
      190 JUMPIFNOT                        R24 ; [+26]
      191 GETTABLEKS                       R28 R0 K40 ["containerRef"]
      193 GETTABLEKS                       R27 R28 K41 ["current"]
      195 GETTABLEKS                       R26 R27 K42 ["AbsoluteSize"]
      197 GETTABLEKS                       R25 R26 K39 ["Y"]
      199 ADDK                             R26 R20 K43 [40]
      200 SUB                              R24 R25 R26
      201 GETTABLEKS                       R27 R21 K39 ["Y"]
      203 GETTABLEKS                       R26 R27 K45 ["Offset"]
      205 ADDK                             R25 R26 K44 [42]
      206 JUMPIFNOTLT                      R25 R24 ; [+10]
      208 GETIMPORT                        R26 K37 [UDim2.new]
      210 LOADN                            R27 1
      211 LOADN                            R28 0
      212 LOADN                            R29 0
      213 MOVE                             R30 R25
      214 CALL                             R26 4 1
      215 MOVE                             R23 R26
      216 LOADB                            R22 0
      217 DUPTABLE                         R24 K47 [{"Main"}]
      218 GETUPVAL                         R26 4
      219 GETTABLEKS                       R25 R26 K48 ["createElement"]
      221 LOADK                            R26 K49 ["Frame"]
      222 NEWTABLE                         R27 8 0
      224 LOADN                            R28 1
      225 SETTABLEKS                       R28 R27 K50 ["BackgroundTransparency"]
      227 GETIMPORT                        R28 K52 [Vector2.new]
      229 LOADN                            R29 1
      230 LOADN                            R30 0
      231 CALL                             R28 2 1
      232 SETTABLEKS                       R28 R27 K53 ["AnchorPoint"]
      234 GETIMPORT                        R28 K37 [UDim2.new]
      236 LOADN                            R29 1
      237 LOADN                            R30 252
      238 LOADN                            R31 0
      239 ADDK                             R32 R20 K54 [4]
      240 CALL                             R28 4 1
      241 SETTABLEKS                       R28 R27 K55 ["Position"]
      243 GETIMPORT                        R28 K37 [UDim2.new]
      245 LOADN                            R29 0
      246 GETUPVAL                         R31 2
      247 GETTABLEKS                       R30 R31 K56 ["TOOLBOX_MIN_WIDTH"]
      249 LOADN                            R31 1
      250 ADDK                             R34 R20 K57 [8]
      251 ADDK                             R33 R34 K44 [42]
      252 MINUS                            R32 R33
      253 CALL                             R28 4 1
      254 SETTABLEKS                       R28 R27 K58 ["Size"]
      256 GETUPVAL                         R29 4
      257 GETTABLEKS                       R28 R29 K59 ["Ref"]
      259 GETTABLEKS                       R29 R0 K40 ["containerRef"]
      261 SETTABLE                         R29 R27 R28
      262 GETUPVAL                         R30 4
      263 GETTABLEKS                       R29 R30 K60 ["Change"]
      265 GETTABLEKS                       R28 R29 K42 ["AbsoluteSize"]
      267 GETTABLEKS                       R29 R0 K61 ["updateContainerSize"]
      269 SETTABLE                         R29 R27 R28
      270 DUPTABLE                         R28 K63 [{"Contents"}]
      271 GETUPVAL                         R30 4
      272 GETTABLEKS                       R29 R30 K48 ["createElement"]
      274 LOADK                            R30 K49 ["Frame"]
      275 NEWTABLE                         R31 8 0
      277 GETTABLEKS                       R32 R3 K64 ["background"]
      279 SETTABLEKS                       R32 R31 K65 ["BackgroundColor3"]
      281 GETTABLEKS                       R32 R3 K66 ["border"]
      283 SETTABLEKS                       R32 R31 K67 ["BorderColor3"]
      285 LOADN                            R32 0
      286 SETTABLEKS                       R32 R31 K50 ["BackgroundTransparency"]
      288 SETTABLEKS                       R23 R31 K58 ["Size"]
      290 GETUPVAL                         R34 4
      291 GETTABLEKS                       R33 R34 K68 ["Event"]
      293 GETTABLEKS                       R32 R33 K69 ["MouseEnter"]
      295 GETTABLEKS                       R33 R0 K70 ["mouseEnter"]
      297 SETTABLE                         R33 R31 R32
      298 GETUPVAL                         R34 4
      299 GETTABLEKS                       R33 R34 K68 ["Event"]
      301 GETTABLEKS                       R32 R33 K71 ["MouseLeave"]
      303 GETTABLEKS                       R33 R0 K72 ["mouseLeave"]
      305 SETTABLE                         R33 R31 R32
      306 DUPTABLE                         R32 K75 [{"Container", "BottomButtonsContainer"}]
      307 GETUPVAL                         R34 4
      308 GETTABLEKS                       R33 R34 K48 ["createElement"]
      310 GETUPVAL                         R34 5
      311 DUPTABLE                         R35 K80 [{"Position", "Size", "OnCanvasResize", "Layout", "AutoSizeCanvas", "AutoSizeLayoutOptions"}]
      312 GETIMPORT                        R36 K37 [UDim2.new]
      314 LOADN                            R37 0
      315 LOADN                            R38 0
      316 LOADN                            R39 0
      317 LOADN                            R40 0
      318 CALL                             R36 4 1
      319 SETTABLEKS                       R36 R35 K55 ["Position"]
      321 GETIMPORT                        R36 K37 [UDim2.new]
      323 LOADN                            R37 1
      324 LOADN                            R38 0
      325 LOADN                            R39 1
      326 LOADN                            R40 214
      327 CALL                             R36 4 1
      328 SETTABLEKS                       R36 R35 K58 ["Size"]
      330 GETTABLEKS                       R36 R0 K81 ["updateContentsSize"]
      332 SETTABLEKS                       R36 R35 K76 ["OnCanvasResize"]
      334 GETIMPORT                        R36 K85 [Enum.FillDirection.Vertical]
      336 SETTABLEKS                       R36 R35 K77 ["Layout"]
      338 LOADB                            R36 1
      339 SETTABLEKS                       R36 R35 K78 ["AutoSizeCanvas"]
      341 DUPTABLE                         R36 K88 [{"SortOrder", "Padding"}]
      342 GETIMPORT                        R37 K90 [Enum.SortOrder.LayoutOrder]
      344 SETTABLEKS                       R37 R36 K86 ["SortOrder"]
      346 GETIMPORT                        R37 K92 [UDim.new]
      348 LOADN                            R38 0
      349 LOADN                            R39 10
      350 CALL                             R37 2 1
      351 SETTABLEKS                       R37 R36 K87 ["Padding"]
      353 SETTABLEKS                       R36 R35 K79 ["AutoSizeLayoutOptions"]
      355 DUPTABLE                         R36 K101 [{"Padding", "AllViews", "Separator", "Creator", "Separator1", "AudioSearchHeader", "Separator2", "SortBy", "ViewPadding"}]
      356 GETUPVAL                         R38 4
      357 GETTABLEKS                       R37 R38 K48 ["createElement"]
      359 LOADK                            R38 K102 ["UIPadding"]
      360 DUPTABLE                         R39 K107 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      361 GETIMPORT                        R40 K92 [UDim.new]
      363 LOADN                            R41 0
      364 LOADN                            R42 10
      365 CALL                             R40 2 1
      366 SETTABLEKS                       R40 R39 K103 ["PaddingLeft"]
      368 GETIMPORT                        R40 K92 [UDim.new]
      370 LOADN                            R41 0
      371 LOADN                            R42 10
      372 CALL                             R40 2 1
      373 SETTABLEKS                       R40 R39 K104 ["PaddingRight"]
      375 GETIMPORT                        R40 K92 [UDim.new]
      377 LOADN                            R41 0
      378 LOADN                            R42 10
      379 CALL                             R40 2 1
      380 SETTABLEKS                       R40 R39 K105 ["PaddingTop"]
      382 GETIMPORT                        R40 K92 [UDim.new]
      384 LOADN                            R41 0
      385 LOADN                            R42 10
      386 CALL                             R40 2 1
      387 SETTABLEKS                       R40 R39 K106 ["PaddingBottom"]
      389 CALL                             R37 2 1
      390 SETTABLEKS                       R37 R36 K87 ["Padding"]
      392 GETUPVAL                         R38 4
      393 GETTABLEKS                       R37 R38 K48 ["createElement"]
      395 GETUPVAL                         R38 6
      396 DUPTABLE                         R39 K109 [{"Header", "LayoutOrder"}]
      397 LOADK                            R42 K8 ["General"]
      398 LOADK                            R43 K110 ["SearchOptionsAllViews"]
      399 NAMECALL                         R40 R7 K10 ["getText"]
      401 CALL                             R40 3 1
      402 SETTABLEKS                       R40 R39 K108 ["Header"]
      404 NAMECALL                         R40 R0 K111 ["nextLayout"]
      406 CALL                             R40 1 1
      407 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      409 DUPTABLE                         R40 K113 [{"CheckboxAndDescriptionContainer"}]
      410 GETUPVAL                         R42 4
      411 GETTABLEKS                       R41 R42 K48 ["createElement"]
      413 GETUPVAL                         R42 7
      414 DUPTABLE                         R43 K117 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      415 GETIMPORT                        R44 K119 [Enum.AutomaticSize.XY]
      417 SETTABLEKS                       R44 R43 K114 ["AutomaticSize"]
      419 GETIMPORT                        R44 K121 [Enum.HorizontalAlignment.Left]
      421 SETTABLEKS                       R44 R43 K115 ["HorizontalAlignment"]
      423 GETIMPORT                        R44 K85 [Enum.FillDirection.Vertical]
      425 SETTABLEKS                       R44 R43 K77 ["Layout"]
      427 NAMECALL                         R44 R0 K111 ["nextLayout"]
      429 CALL                             R44 1 1
      430 SETTABLEKS                       R44 R43 K89 ["LayoutOrder"]
      432 LOADN                            R44 3
      433 SETTABLEKS                       R44 R43 K116 ["Spacing"]
      435 DUPTABLE                         R44 K124 [{"IncludeUnverifiedToggle", "VerifiedDescriptionContainer"}]
      436 GETUPVAL                         R46 4
      437 GETTABLEKS                       R45 R46 K48 ["createElement"]
      439 GETUPVAL                         R46 8
      440 DUPTABLE                         R47 K128 [{"Checked", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      441 GETTABLEKS                       R48 R1 K129 ["includeUnverifiedCreators"]
      443 SETTABLEKS                       R48 R47 K125 ["Checked"]
      445 NAMECALL                         R48 R0 K111 ["nextLayout"]
      447 CALL                             R48 1 1
      448 SETTABLEKS                       R48 R47 K89 ["LayoutOrder"]
      450 GETTABLEKS                       R48 R0 K130 ["onToggleIdVerified"]
      452 SETTABLEKS                       R48 R47 K126 ["OnClick"]
      454 SETTABLEKS                       R10 R47 K17 ["Text"]
      456 LOADB                            R48 1
      457 SETTABLEKS                       R48 R47 K127 ["TextWrapped"]
      459 CALL                             R45 2 1
      460 SETTABLEKS                       R45 R44 K122 ["IncludeUnverifiedToggle"]
      462 GETUPVAL                         R46 4
      463 GETTABLEKS                       R45 R46 K48 ["createElement"]
      465 GETUPVAL                         R46 7
      466 DUPTABLE                         R47 K132 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
      467 GETIMPORT                        R48 K119 [Enum.AutomaticSize.XY]
      469 SETTABLEKS                       R48 R47 K114 ["AutomaticSize"]
      471 GETIMPORT                        R48 K121 [Enum.HorizontalAlignment.Left]
      473 SETTABLEKS                       R48 R47 K115 ["HorizontalAlignment"]
      475 GETIMPORT                        R48 K134 [Enum.FillDirection.Horizontal]
      477 SETTABLEKS                       R48 R47 K77 ["Layout"]
      479 NAMECALL                         R48 R0 K111 ["nextLayout"]
      481 CALL                             R48 1 1
      482 SETTABLEKS                       R48 R47 K89 ["LayoutOrder"]
      484 DUPTABLE                         R48 K135 [{"Left"}]
      485 LOADN                            R49 24
      486 SETTABLEKS                       R49 R48 K120 ["Left"]
      488 SETTABLEKS                       R48 R47 K87 ["Padding"]
      490 LOADN                            R48 6
      491 SETTABLEKS                       R48 R47 K116 ["Spacing"]
      493 GETIMPORT                        R48 K137 [Enum.VerticalAlignment.Top]
      495 SETTABLEKS                       R48 R47 K131 ["VerticalAlignment"]
      497 DUPTABLE                         R48 K140 [{"Image", "VerifiedDescription"}]
      498 GETUPVAL                         R50 4
      499 GETTABLEKS                       R49 R50 K48 ["createElement"]
      501 GETUPVAL                         R50 9
      502 DUPTABLE                         R51 K142 [{"AnchorPoint", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      503 GETIMPORT                        R52 K52 [Vector2.new]
      505 LOADN                            R53 0
      506 LOADK                            R54 K143 [0.5]
      507 CALL                             R52 2 1
      508 SETTABLEKS                       R52 R51 K53 ["AnchorPoint"]
      510 GETUPVAL                         R53 10
      511 GETTABLEKS                       R52 R53 K144 ["WARNING_ICON_SMALL"]
      513 SETTABLEKS                       R52 R51 K138 ["Image"]
      515 GETTABLEKS                       R52 R3 K145 ["warningIconColor"]
      517 SETTABLEKS                       R52 R51 K141 ["ImageColor3"]
      519 NAMECALL                         R52 R0 K111 ["nextLayout"]
      521 CALL                             R52 1 1
      522 SETTABLEKS                       R52 R51 K89 ["LayoutOrder"]
      524 GETIMPORT                        R52 K147 [UDim2.fromOffset]
      526 LOADN                            R53 16
      527 LOADN                            R54 16
      528 CALL                             R52 2 1
      529 SETTABLEKS                       R52 R51 K58 ["Size"]
      531 DUPTABLE                         R52 K149 [{"Tooltip"}]
      532 GETUPVAL                         R54 4
      533 GETTABLEKS                       R53 R54 K48 ["createElement"]
      535 GETUPVAL                         R54 11
      536 DUPTABLE                         R55 K151 [{"Text", "Priority"}]
      537 SETTABLEKS                       R11 R55 K17 ["Text"]
      539 LOADN                            R56 11
      540 SETTABLEKS                       R56 R55 K150 ["Priority"]
      542 CALL                             R53 2 1
      543 SETTABLEKS                       R53 R52 K148 ["Tooltip"]
      545 CALL                             R49 3 1
      546 SETTABLEKS                       R49 R48 K138 ["Image"]
      548 GETUPVAL                         R50 4
      549 GETTABLEKS                       R49 R50 K48 ["createElement"]
      551 GETUPVAL                         R50 12
      552 DUPTABLE                         R51 K155 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
      553 GETIMPORT                        R52 K119 [Enum.AutomaticSize.XY]
      555 SETTABLEKS                       R52 R51 K114 ["AutomaticSize"]
      557 NAMECALL                         R52 R0 K111 ["nextLayout"]
      559 CALL                             R52 1 1
      560 SETTABLEKS                       R52 R51 K89 ["LayoutOrder"]
      562 LOADK                            R52 K156 ["SubText"]
      563 SETTABLEKS                       R52 R51 K152 ["Style"]
      565 SETTABLEKS                       R9 R51 K17 ["Text"]
      567 LOADN                            R52 14
      568 SETTABLEKS                       R52 R51 K153 ["TextSize"]
      570 LOADB                            R52 1
      571 SETTABLEKS                       R52 R51 K127 ["TextWrapped"]
      573 GETIMPORT                        R52 K157 [Enum.TextXAlignment.Left]
      575 SETTABLEKS                       R52 R51 K154 ["TextXAlignment"]
      577 CALL                             R49 2 1
      578 SETTABLEKS                       R49 R48 K139 ["VerifiedDescription"]
      580 CALL                             R45 3 1
      581 SETTABLEKS                       R45 R44 K123 ["VerifiedDescriptionContainer"]
      583 CALL                             R41 3 1
      584 SETTABLEKS                       R41 R40 K112 ["CheckboxAndDescriptionContainer"]
      586 CALL                             R37 3 1
      587 SETTABLEKS                       R37 R36 K93 ["AllViews"]
      589 GETTABLEKS                       R39 R3 K158 ["separator"]
      591 NAMECALL                         R37 R0 K159 ["createSeparator"]
      593 CALL                             R37 2 1
      594 SETTABLEKS                       R37 R36 K94 ["Separator"]
      596 MOVE                             R37 R14
      597 JUMPIFNOT                        R37 ; [+47]
      598 GETUPVAL                         R38 4
      599 GETTABLEKS                       R37 R38 K48 ["createElement"]
      601 GETUPVAL                         R38 6
      602 DUPTABLE                         R39 K160 [{"LayoutOrder", "Header"}]
      603 NAMECALL                         R40 R0 K111 ["nextLayout"]
      605 CALL                             R40 1 1
      606 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      608 LOADK                            R42 K8 ["General"]
      609 LOADK                            R43 K161 ["SearchOptionCreator"]
      610 NAMECALL                         R40 R7 K10 ["getText"]
      612 CALL                             R40 3 1
      613 SETTABLEKS                       R40 R39 K108 ["Header"]
      615 DUPTABLE                         R40 K163 [{"SearchBar"}]
      616 GETUPVAL                         R42 4
      617 GETTABLEKS                       R41 R42 K48 ["createElement"]
      619 GETUPVAL                         R42 13
      620 DUPTABLE                         R43 K169 [{"defaultTextKey", "searchTerm", "results", "updateSearch", "width"}]
      621 LOADK                            R44 K170 ["SearchBarCreatorText"]
      622 SETTABLEKS                       R44 R43 K164 ["defaultTextKey"]
      624 GETTABLEKS                       R44 R4 K165 ["searchTerm"]
      626 SETTABLEKS                       R44 R43 K165 ["searchTerm"]
      628 GETTABLEKS                       R44 R4 K166 ["results"]
      630 SETTABLEKS                       R44 R43 K166 ["results"]
      632 GETTABLEKS                       R44 R0 K167 ["updateSearch"]
      634 SETTABLEKS                       R44 R43 K167 ["updateSearch"]
      636 GETUPVAL                         R45 2
      637 GETTABLEKS                       R44 R45 K171 ["SEARCH_BAR_WIDTH"]
      639 SETTABLEKS                       R44 R43 K168 ["width"]
      641 CALL                             R41 2 1
      642 SETTABLEKS                       R41 R40 K162 ["SearchBar"]
      644 CALL                             R37 3 1
      645 SETTABLEKS                       R37 R36 K95 ["Creator"]
      647 MOVE                             R37 R19
      648 JUMPIFNOT                        R37 ; [+5]
      649 GETTABLEKS                       R39 R3 K158 ["separator"]
      651 NAMECALL                         R37 R0 K159 ["createSeparator"]
      653 CALL                             R37 2 1
      654 SETTABLEKS                       R37 R36 K96 ["Separator1"]
      656 MOVE                             R37 R13
      657 JUMPIFNOT                        R37 ; [+30]
      658 GETUPVAL                         R38 4
      659 GETTABLEKS                       R37 R38 K48 ["createElement"]
      661 GETUPVAL                         R38 6
      662 DUPTABLE                         R39 K160 [{"LayoutOrder", "Header"}]
      663 NAMECALL                         R40 R0 K111 ["nextLayout"]
      665 CALL                             R40 1 1
      666 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      668 SETTABLEKS                       R8 R39 K108 ["Header"]
      670 DUPTABLE                         R40 K173 [{"AudioSearch"}]
      671 GETUPVAL                         R42 4
      672 GETTABLEKS                       R41 R42 K48 ["createElement"]
      674 GETUPVAL                         R42 14
      675 DUPTABLE                         R43 K175 [{"minDuration", "maxDuration", "onDurationChange"}]
      676 SETTABLEKS                       R5 R43 K5 ["minDuration"]
      678 SETTABLEKS                       R6 R43 K6 ["maxDuration"]
      680 GETTABLEKS                       R44 R0 K174 ["onDurationChange"]
      682 SETTABLEKS                       R44 R43 K174 ["onDurationChange"]
      684 CALL                             R41 2 1
      685 SETTABLEKS                       R41 R40 K172 ["AudioSearch"]
      687 CALL                             R37 3 1
      688 SETTABLEKS                       R37 R36 K97 ["AudioSearchHeader"]
      690 MOVE                             R37 R13
      691 JUMPIFNOT                        R37 ; [+5]
      692 GETTABLEKS                       R39 R3 K158 ["separator"]
      694 NAMECALL                         R37 R0 K159 ["createSeparator"]
      696 CALL                             R37 2 1
      697 SETTABLEKS                       R37 R36 K98 ["Separator2"]
      699 MOVE                             R37 R18
      700 JUMPIFNOT                        R37 ; [+37]
      701 GETUPVAL                         R38 4
      702 GETTABLEKS                       R37 R38 K48 ["createElement"]
      704 GETUPVAL                         R38 6
      705 DUPTABLE                         R39 K160 [{"LayoutOrder", "Header"}]
      706 NAMECALL                         R40 R0 K111 ["nextLayout"]
      708 CALL                             R40 1 1
      709 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      711 LOADK                            R42 K8 ["General"]
      712 LOADK                            R43 K176 ["SearchOptionSort"]
      713 NAMECALL                         R40 R7 K10 ["getText"]
      715 CALL                             R40 3 1
      716 SETTABLEKS                       R40 R39 K108 ["Header"]
      718 DUPTABLE                         R40 K178 [{"RadioButtons"}]
      719 GETUPVAL                         R42 4
      720 GETTABLEKS                       R41 R42 K48 ["createElement"]
      722 GETUPVAL                         R42 15
      723 DUPTABLE                         R43 K181 [{"Buttons", "SelectedKey", "OnClick"}]
      724 GETTABLEKS                       R44 R0 K29 ["sortsList"]
      726 SETTABLEKS                       R44 R43 K179 ["Buttons"]
      728 SETTABLEKS                       R16 R43 K180 ["SelectedKey"]
      730 GETTABLEKS                       R44 R0 K182 ["selectSort"]
      732 SETTABLEKS                       R44 R43 K126 ["OnClick"]
      734 CALL                             R41 2 1
      735 SETTABLEKS                       R41 R40 K177 ["RadioButtons"]
      737 CALL                             R37 3 1
      738 SETTABLEKS                       R37 R36 K99 ["SortBy"]
      740 MOVE                             R37 R18
      741 JUMPIFNOT                        R37 ; [+23]
      742 GETUPVAL                         R38 4
      743 GETTABLEKS                       R37 R38 K48 ["createElement"]
      745 LOADK                            R38 K49 ["Frame"]
      746 DUPTABLE                         R39 K183 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      747 LOADN                            R40 1
      748 SETTABLEKS                       R40 R39 K50 ["BackgroundTransparency"]
      750 GETIMPORT                        R40 K37 [UDim2.new]
      752 LOADN                            R41 1
      753 LOADN                            R42 0
      754 LOADN                            R43 0
      755 LOADN                            R44 10
      756 CALL                             R40 4 1
      757 SETTABLEKS                       R40 R39 K58 ["Size"]
      759 NAMECALL                         R40 R0 K111 ["nextLayout"]
      761 CALL                             R40 1 1
      762 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      764 CALL                             R37 2 1
      765 SETTABLEKS                       R37 R36 K100 ["ViewPadding"]
      767 CALL                             R33 3 1
      768 SETTABLEKS                       R33 R32 K73 ["Container"]
      770 GETUPVAL                         R34 4
      771 GETTABLEKS                       R33 R34 K48 ["createElement"]
      773 LOADK                            R34 K49 ["Frame"]
      774 DUPTABLE                         R35 K185 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      775 LOADN                            R36 1
      776 SETTABLEKS                       R36 R35 K50 ["BackgroundTransparency"]
      778 GETIMPORT                        R36 K37 [UDim2.new]
      780 LOADN                            R37 1
      781 LOADN                            R38 0
      782 LOADN                            R39 0
      783 LOADN                            R40 42
      784 CALL                             R36 4 1
      785 SETTABLEKS                       R36 R35 K58 ["Size"]
      787 GETIMPORT                        R36 K37 [UDim2.new]
      789 LOADN                            R37 0
      790 LOADN                            R38 0
      791 LOADN                            R39 1
      792 LOADN                            R40 214
      793 CALL                             R36 4 1
      794 SETTABLEKS                       R36 R35 K55 ["Position"]
      796 LOADN                            R36 3
      797 SETTABLEKS                       R36 R35 K184 ["ZIndex"]
      799 DUPTABLE                         R36 K188 [{"Padding", "GradientOverlay", "Separator", "Footer"}]
      800 GETUPVAL                         R38 4
      801 GETTABLEKS                       R37 R38 K48 ["createElement"]
      803 LOADK                            R38 K102 ["UIPadding"]
      804 DUPTABLE                         R39 K189 [{"PaddingLeft", "PaddingRight"}]
      805 GETIMPORT                        R40 K92 [UDim.new]
      807 LOADN                            R41 0
      808 LOADN                            R42 10
      809 CALL                             R40 2 1
      810 SETTABLEKS                       R40 R39 K103 ["PaddingLeft"]
      812 GETIMPORT                        R40 K92 [UDim.new]
      814 LOADN                            R41 0
      815 LOADN                            R42 10
      816 CALL                             R40 2 1
      817 SETTABLEKS                       R40 R39 K104 ["PaddingRight"]
      819 CALL                             R37 2 1
      820 SETTABLEKS                       R37 R36 K87 ["Padding"]
      822 MOVE                             R37 R22
      823 JUMPIFNOT                        R37 ; [+83]
      824 GETUPVAL                         R38 4
      825 GETTABLEKS                       R37 R38 K48 ["createElement"]
      827 LOADK                            R38 K49 ["Frame"]
      828 DUPTABLE                         R39 K190 [{"LayoutOrder", "Size", "Position", "BackgroundColor3", "BorderColor3"}]
      829 NAMECALL                         R40 R0 K111 ["nextLayout"]
      831 CALL                             R40 1 1
      832 SETTABLEKS                       R40 R39 K89 ["LayoutOrder"]
      834 GETIMPORT                        R40 K37 [UDim2.new]
      836 LOADN                            R41 1
      837 LOADN                            R42 248
      838 LOADN                            R43 0
      839 LOADN                            R44 20
      840 CALL                             R40 4 1
      841 SETTABLEKS                       R40 R39 K58 ["Size"]
      843 GETIMPORT                        R40 K37 [UDim2.new]
      845 LOADN                            R41 0
      846 LOADN                            R42 0
      847 LOADN                            R43 0
      848 LOADN                            R44 236
      849 CALL                             R40 4 1
      850 SETTABLEKS                       R40 R39 K55 ["Position"]
      852 GETIMPORT                        R40 K192 [Color3.new]
      854 LOADN                            R41 1
      855 LOADN                            R42 1
      856 LOADN                            R43 1
      857 CALL                             R40 3 1
      858 SETTABLEKS                       R40 R39 K65 ["BackgroundColor3"]
      860 GETIMPORT                        R40 K192 [Color3.new]
      862 LOADN                            R41 1
      863 LOADN                            R42 1
      864 LOADN                            R43 1
      865 CALL                             R40 3 1
      866 SETTABLEKS                       R40 R39 K67 ["BorderColor3"]
      868 DUPTABLE                         R40 K194 [{"Gradient"}]
      869 GETUPVAL                         R42 4
      870 GETTABLEKS                       R41 R42 K48 ["createElement"]
      872 LOADK                            R42 K195 ["UIGradient"]
      873 DUPTABLE                         R43 K199 [{"Color", "Rotation", "Transparency"}]
      874 GETIMPORT                        R44 K201 [ColorSequence.new]
      876 GETTABLEKS                       R45 R3 K64 ["background"]
      878 CALL                             R44 1 1
      879 SETTABLEKS                       R44 R43 K196 ["Color"]
      881 LOADN                            R44 90
      882 SETTABLEKS                       R44 R43 K197 ["Rotation"]
      884 GETIMPORT                        R44 K203 [NumberSequence.new]
      886 NEWTABLE                         R45 0 2
      888 GETIMPORT                        R46 K205 [NumberSequenceKeypoint.new]
      890 LOADN                            R47 0
      891 LOADN                            R48 1
      892 CALL                             R46 2 1
      893 GETIMPORT                        R47 K205 [NumberSequenceKeypoint.new]
      895 LOADN                            R48 1
      896 LOADK                            R49 K206 [0.25]
      897 CALL                             R47 2 -1
      898 SETLIST                          R45 R46 -1 [1]
      900 CALL                             R44 1 1
      901 SETTABLEKS                       R44 R43 K198 ["Transparency"]
      903 CALL                             R41 2 1
      904 SETTABLEKS                       R41 R40 K193 ["Gradient"]
      906 CALL                             R37 3 1
      907 SETTABLEKS                       R37 R36 K186 ["GradientOverlay"]
      909 GETUPVAL                         R38 4
      910 GETTABLEKS                       R37 R38 K48 ["createElement"]
      912 GETUPVAL                         R38 16
      913 DUPTABLE                         R39 K207 [{"Position", "ZIndex"}]
      914 GETIMPORT                        R40 K37 [UDim2.new]
      916 LOADK                            R41 K143 [0.5]
      917 LOADN                            R42 0
      918 LOADN                            R43 0
      919 LOADN                            R44 0
      920 CALL                             R40 4 1
      921 SETTABLEKS                       R40 R39 K55 ["Position"]
      923 LOADN                            R40 2
      924 SETTABLEKS                       R40 R39 K184 ["ZIndex"]
      926 CALL                             R37 2 1
      927 SETTABLEKS                       R37 R36 K94 ["Separator"]
      929 GETUPVAL                         R38 4
      930 GETTABLEKS                       R37 R38 K48 ["createElement"]
      932 GETUPVAL                         R38 17
      933 DUPTABLE                         R39 K209 [{"AnchorPoint", "Position", "onButtonClicked"}]
      934 GETIMPORT                        R40 K52 [Vector2.new]
      936 LOADN                            R41 0
      937 LOADN                            R42 1
      938 CALL                             R40 2 1
      939 SETTABLEKS                       R40 R39 K53 ["AnchorPoint"]
      941 GETIMPORT                        R40 K37 [UDim2.new]
      943 LOADN                            R41 0
      944 LOADN                            R42 0
      945 LOADN                            R43 1
      946 LOADN                            R44 248
      947 CALL                             R40 4 1
      948 SETTABLEKS                       R40 R39 K55 ["Position"]
      950 GETTABLEKS                       R40 R0 K210 ["footerButtonClicked"]
      952 SETTABLEKS                       R40 R39 K208 ["onButtonClicked"]
      954 CALL                             R37 2 1
      955 SETTABLEKS                       R37 R36 K187 ["Footer"]
      957 CALL                             R33 3 1
      958 SETTABLEKS                       R33 R32 K74 ["BottomButtonsContainer"]
      960 CALL                             R29 3 1
      961 SETTABLEKS                       R29 R28 K62 ["Contents"]
      963 CALL                             R25 3 1
      964 SETTABLEKS                       R25 R24 K46 ["Main"]
      966 GETUPVAL                         R25 18
      967 DUPTABLE                         R26 K211 [{"Priority"}]
      968 LOADN                            R27 2
      969 SETTABLEKS                       R27 R26 K150 ["Priority"]
      971 GETUPVAL                         R28 4
      972 GETTABLEKS                       R27 R28 K48 ["createElement"]
      974 LOADK                            R28 K49 ["Frame"]
      975 DUPTABLE                         R29 K212 [{"BackgroundTransparency"}]
      976 LOADN                            R30 1
      977 SETTABLEKS                       R30 R29 K50 ["BackgroundTransparency"]
      979 DUPTABLE                         R30 K214 [{"Portal"}]
      980 GETUPVAL                         R32 4
      981 GETTABLEKS                       R31 R32 K48 ["createElement"]
      983 MOVE                             R32 R25
      984 MOVE                             R33 R26
      985 DUPTABLE                         R34 K216 [{"ClickEventDetectFrame"}]
      986 GETUPVAL                         R36 4
      987 GETTABLEKS                       R35 R36 K48 ["createElement"]
      989 LOADK                            R36 K217 ["ImageButton"]
      990 NEWTABLE                         R37 8 0
      992 LOADN                            R38 10
      993 SETTABLEKS                       R38 R37 K184 ["ZIndex"]
      995 GETIMPORT                        R38 K37 [UDim2.new]
      997 LOADN                            R39 0
      998 LOADN                            R40 0
      999 LOADN                            R41 0
     1000 LOADN                            R42 0
     1001 CALL                             R38 4 1
     1002 SETTABLEKS                       R38 R37 K55 ["Position"]
     1004 GETIMPORT                        R38 K37 [UDim2.new]
     1006 LOADN                            R39 1
     1007 LOADN                            R40 0
     1008 LOADN                            R41 1
     1009 LOADN                            R42 0
     1010 CALL                             R38 4 1
     1011 SETTABLEKS                       R38 R37 K58 ["Size"]
     1013 LOADN                            R38 1
     1014 SETTABLEKS                       R38 R37 K50 ["BackgroundTransparency"]
     1016 LOADB                            R38 0
     1017 SETTABLEKS                       R38 R37 K218 ["AutoButtonColor"]
     1019 GETUPVAL                         R39 4
     1020 GETTABLEKS                       R38 R39 K59 ["Ref"]
     1022 GETTABLEKS                       R39 R0 K40 ["containerRef"]
     1024 SETTABLE                         R39 R37 R38
     1025 GETUPVAL                         R40 4
     1026 GETTABLEKS                       R39 R40 K68 ["Event"]
     1028 GETTABLEKS                       R38 R39 K219 ["Activated"]
     1030 GETTABLEKS                       R39 R0 K220 ["cancel"]
     1032 SETTABLE                         R39 R37 R38
     1033 MOVE                             R38 R24
     1034 CALL                             R35 3 1
     1035 SETTABLEKS                       R35 R34 K215 ["ClickEventDetectFrame"]
     1037 CALL                             R31 3 1
     1038 SETTABLEKS                       R31 R30 K213 ["Portal"]
     1040 CALL                             R27 3 -1
     1041 RETURN                           R27 -1

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
       15 GETTABLEKS                       R6 R0 K1 ["liveSearch"]
       17 GETTABLEKS                       R5 R6 K2 ["searchTerm"]
       19 SETTABLEKS                       R5 R4 K2 ["searchTerm"]
       21 GETTABLEKS                       R6 R0 K1 ["liveSearch"]
       23 GETTABLEKS                       R5 R6 K3 ["results"]
       25 SETTABLEKS                       R5 R4 K3 ["results"]
       27 MOVE                             R3 R4
       28 DUPTABLE                         R4 K10 [{"audioSearchInfo", "includeUnverifiedCreators", "categoryName", "LiveSearchData", "SortIndex"}]
       29 GETTABLEKS                       R5 R2 K5 ["audioSearchInfo"]
       31 SETTABLEKS                       R5 R4 K5 ["audioSearchInfo"]
       33 GETTABLEKS                       R5 R2 K6 ["includeUnverifiedCreators"]
       35 SETTABLEKS                       R5 R4 K6 ["includeUnverifiedCreators"]
       37 GETTABLEKS                       R5 R2 K7 ["categoryName"]
       39 JUMPIF                           R5 ; [+5]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K11 ["DEFAULT"]
       43 GETTABLEKS                       R5 R6 K12 ["name"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Src"]
       15 GETTABLEKS                       R4 R5 K6 ["Util"]
       17 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       19 GETTABLEKS                       R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
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
       39 GETTABLEKS                       R7 R0 K5 ["Src"]
       41 GETTABLEKS                       R6 R7 K6 ["Util"]
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
       60 GETTABLEKS                       R13 R0 K5 ["Src"]
       62 GETTABLEKS                       R12 R13 K16 ["Components"]
       64 GETTABLEKS                       R11 R12 K17 ["createFitToContent"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R5 K18 ["ContextServices"]
       69 GETTABLEKS                       R12 R11 K19 ["withContext"]
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R16 R0 K5 ["Src"]
       75 GETTABLEKS                       R15 R16 K18 ["ContextServices"]
       77 GETTABLEKS                       R14 R15 K20 ["Settings"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K4 [require]
       82 GETTABLEKS                       R17 R0 K5 ["Src"]
       84 GETTABLEKS                       R16 R17 K18 ["ContextServices"]
       86 GETTABLEKS                       R15 R16 K21 ["ModalContext"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K4 [require]
       91 GETTABLEKS                       R18 R0 K5 ["Src"]
       93 GETTABLEKS                       R17 R18 K18 ["ContextServices"]
       95 GETTABLEKS                       R16 R17 K22 ["NetworkContext"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K4 [require]
      100 GETTABLEKS                       R20 R0 K5 ["Src"]
      102 GETTABLEKS                       R19 R20 K16 ["Components"]
      104 GETTABLEKS                       R18 R19 K23 ["SearchOptions"]
      106 GETTABLEKS                       R17 R18 K24 ["LiveSearchBar"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R19 K4 [require]
      111 GETTABLEKS                       R20 R2 K12 ["Framework"]
      113 CALL                             R19 1 1
      114 GETTABLEKS                       R18 R19 K25 ["UI"]
      116 GETTABLEKS                       R17 R18 K26 ["RadioButtonList"]
      118 GETTABLEKS                       R18 R5 K25 ["UI"]
      120 GETTABLEKS                       R19 R18 K27 ["Checkbox"]
      122 GETTABLEKS                       R20 R18 K28 ["Pane"]
      124 GETTABLEKS                       R21 R18 K29 ["Image"]
      126 GETTABLEKS                       R22 R18 K30 ["TextLabel"]
      128 GETTABLEKS                       R23 R18 K31 ["ShowOnTop"]
      130 GETTABLEKS                       R24 R18 K32 ["ScrollingFrame"]
      132 GETTABLEKS                       R25 R18 K33 ["Tooltip"]
      134 GETIMPORT                        R26 K4 [require]
      136 GETTABLEKS                       R30 R0 K5 ["Src"]
      138 GETTABLEKS                       R29 R30 K16 ["Components"]
      140 GETTABLEKS                       R28 R29 K34 ["Audio"]
      142 GETTABLEKS                       R27 R28 K35 ["AudioSearch"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K4 [require]
      147 GETTABLEKS                       R31 R0 K5 ["Src"]
      149 GETTABLEKS                       R30 R31 K16 ["Components"]
      151 GETTABLEKS                       R29 R30 K23 ["SearchOptions"]
      153 GETTABLEKS                       R28 R29 K36 ["SearchOptionsEntry"]
      155 CALL                             R27 1 1
      156 GETIMPORT                        R28 K4 [require]
      158 GETTABLEKS                       R32 R0 K5 ["Src"]
      160 GETTABLEKS                       R31 R32 K16 ["Components"]
      162 GETTABLEKS                       R30 R31 K23 ["SearchOptions"]
      164 GETTABLEKS                       R29 R30 K37 ["SearchOptionsFooter"]
      166 CALL                             R28 1 1
      167 GETIMPORT                        R30 K4 [require]
      169 GETTABLEKS                       R33 R0 K5 ["Src"]
      171 GETTABLEKS                       R32 R33 K6 ["Util"]
      173 GETTABLEKS                       R31 R32 K38 ["ToolboxUtilities"]
      175 CALL                             R30 1 1
      176 GETTABLEKS                       R29 R30 K39 ["getShouldHideNonRelevanceSorts"]
      178 GETTABLEKS                       R30 R18 K40 ["Separator"]
      180 GETIMPORT                        R31 K4 [require]
      182 GETTABLEKS                       R35 R0 K5 ["Src"]
      184 GETTABLEKS                       R34 R35 K41 ["Networking"]
      186 GETTABLEKS                       R33 R34 K42 ["Requests"]
      188 GETTABLEKS                       R32 R33 K43 ["SearchWithOptions"]
      190 CALL                             R31 1 1
      191 GETIMPORT                        R32 K4 [require]
      193 GETTABLEKS                       R36 R0 K5 ["Src"]
      195 GETTABLEKS                       R35 R36 K41 ["Networking"]
      197 GETTABLEKS                       R34 R35 K42 ["Requests"]
      199 GETTABLEKS                       R33 R34 K44 ["UserSearchRequest"]
      201 CALL                             R32 1 1
      202 GETIMPORT                        R34 K4 [require]
      204 GETTABLEKS                       R37 R0 K5 ["Src"]
      206 GETTABLEKS                       R36 R37 K6 ["Util"]
      208 GETTABLEKS                       R35 R36 K38 ["ToolboxUtilities"]
      210 CALL                             R34 1 1
      211 GETTABLEKS                       R33 R34 K45 ["showRobloxCreatedAssets"]
      213 GETIMPORT                        R34 K4 [require]
      215 GETTABLEKS                       R37 R0 K5 ["Src"]
      217 GETTABLEKS                       R36 R37 K46 ["Types"]
      219 GETTABLEKS                       R35 R36 K47 ["Category"]
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
      239 DUPTABLE                         R37 K55 [{"showCreatorSearch"}]
      240 LOADB                            R38 1
      241 SETTABLEKS                       R38 R37 K54 ["showCreatorSearch"]
      243 SETTABLEKS                       R37 R36 K56 ["defaultProps"]
      245 DUPCLOSURE                       R37 K57 [PROTO_15]
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R35
      250 SETTABLEKS                       R37 R36 K58 ["init"]
      252 DUPCLOSURE                       R37 K59 [PROTO_16]
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R30
      255 SETTABLEKS                       R37 R36 K60 ["createSeparator"]
      257 DUPCLOSURE                       R37 K61 [PROTO_17]
      258 SETTABLEKS                       R37 R36 K62 ["resetLayout"]
      260 DUPCLOSURE                       R37 K63 [PROTO_18]
      261 SETTABLEKS                       R37 R36 K64 ["nextLayout"]
      263 DUPCLOSURE                       R37 K65 [PROTO_19]
      264 CAPTURE                          VAL R34
      265 CAPTURE                          VAL R33
      266 CAPTURE                          VAL R7
      267 CAPTURE                          VAL R29
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R24
      270 CAPTURE                          VAL R27
      271 CAPTURE                          VAL R20
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R21
      274 CAPTURE                          VAL R8
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R22
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R17
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R28
      282 CAPTURE                          VAL R23
      283 SETTABLEKS                       R37 R36 K66 ["render"]
      285 MOVE                             R37 R12
      286 DUPTABLE                         R38 K71 [{"Localization", "Settings", "Stylizer", "Modal", "Network"}]
      287 GETTABLEKS                       R39 R11 K67 ["Localization"]
      289 SETTABLEKS                       R39 R38 K67 ["Localization"]
      291 SETTABLEKS                       R13 R38 K20 ["Settings"]
      293 GETTABLEKS                       R39 R11 K68 ["Stylizer"]
      295 SETTABLEKS                       R39 R38 K68 ["Stylizer"]
      297 SETTABLEKS                       R14 R38 K69 ["Modal"]
      299 SETTABLEKS                       R15 R38 K70 ["Network"]
      301 CALL                             R37 1 1
      302 MOVE                             R38 R36
      303 CALL                             R37 1 1
      304 MOVE                             R36 R37
      305 DUPCLOSURE                       R37 K72 [PROTO_20]
      306 CAPTURE                          VAL R34
      307 DUPCLOSURE                       R38 K73 [PROTO_23]
      308 CAPTURE                          VAL R32
      309 CAPTURE                          VAL R31
      310 GETTABLEKS                       R39 R4 K74 ["connect"]
      312 MOVE                             R40 R37
      313 MOVE                             R41 R38
      314 CALL                             R39 2 1
      315 MOVE                             R40 R36
      316 CALL                             R39 1 -1
      317 RETURN                           R39 -1
