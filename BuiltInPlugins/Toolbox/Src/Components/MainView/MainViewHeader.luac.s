PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 1
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+25]
       19 DUPTABLE                         R2 K15 [{["Creator"] = "", ["AudioSearch"], ["AdditionalAudioSearch"], ["includeUnverifiedCreators"] = False, ["creatorTargetIds"], ["groupTargetIds"], ["uiSortIntent"]}]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K16 ["None"]
       23 SETTABLEKS                       R3 R2 K8 ["AudioSearch"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K16 ["None"]
       28 SETTABLEKS                       R3 R2 K9 ["AdditionalAudioSearch"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K12 ["creatorTargetIds"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K13 ["groupTargetIds"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K16 ["None"]
       41 SETTABLEKS                       R3 R2 K14 ["uiSortIntent"]
       43 JUMP                             ; [+16]
       44 DUPTABLE                         R2 K17 [{["Creator"] = "", ["AudioSearch"], ["AdditionalAudioSearch"], ["includeUnverifiedCreators"] = False, ["uiSortIntent"]}]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K16 ["None"]
       48 SETTABLEKS                       R3 R2 K8 ["AudioSearch"]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K16 ["None"]
       53 SETTABLEKS                       R3 R2 K9 ["AdditionalAudioSearch"]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K16 ["None"]
       58 SETTABLEKS                       R3 R2 K14 ["uiSortIntent"]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K0 ["props"]
       63 GETTABLEKS                       R3 R3 K18 ["searchWithOptions"]
       65 MOVE                             R4 R0
       66 MOVE                             R5 R1
       67 MOVE                             R6 R2
       68 CALL                             R3 3 0
       69 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K6 ["includeUnverifiedCreators"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["props"]
       24 GETTABLEKS                       R3 R3 K7 ["searchWithOptions"]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 DUPTABLE                         R6 K12 [{["Creator"] = "", ["AudioSearch"], ["AdditionalAudioSearch"], ["includeUnverifiedCreators"]}]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K0 ["props"]
       32 GETTABLEKS                       R7 R7 K13 ["audioSearchInfo"]
       34 SETTABLEKS                       R7 R6 K10 ["AudioSearch"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K0 ["props"]
       39 GETTABLEKS                       R7 R7 K14 ["additionalAudioSearchInfo"]
       41 SETTABLEKS                       R7 R6 K11 ["AdditionalAudioSearch"]
       43 SETTABLEKS                       R2 R6 K6 ["includeUnverifiedCreators"]
       45 CALL                             R3 3 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["Settings"]
        9 LOADK                            R5 K4 ["Plugin"]
       10 NAMECALL                         R3 R3 K5 ["get"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R5 R0 K6 ["tagId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K8 [tostring]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K9 ["includeUnverifiedCreators"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R7 R1 K10 ["creatorTargetIds"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R8 R1 K11 ["groupTargetIds"]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R1 K12 ["uiSortIntent"]
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R6 R4
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K0 ["props"]
       36 GETTABLEKS                       R9 R9 K13 ["searchWithOptions"]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R3
       40 DUPTABLE                         R12 K14 [{"creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent"}]
       41 SETTABLEKS                       R6 R12 K10 ["creatorTargetIds"]
       43 SETTABLEKS                       R7 R12 K11 ["groupTargetIds"]
       45 SETTABLEKS                       R5 R12 K9 ["includeUnverifiedCreators"]
       47 SETTABLEKS                       R8 R12 K12 ["uiSortIntent"]
       49 CALL                             R9 3 0
       50 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["Settings"]
        9 LOADK                            R5 K4 ["Plugin"]
       10 NAMECALL                         R3 R3 K5 ["get"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R5 R0 K6 ["tagId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K8 [tostring]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K9 ["includeUnverifiedCreators"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R7 R1 K10 ["creatorTargetIds"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R8 R1 K11 ["groupTargetIds"]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R1 K12 ["uiSortIntent"]
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R7 R4
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K0 ["props"]
       36 GETTABLEKS                       R9 R9 K13 ["searchWithOptions"]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R3
       40 DUPTABLE                         R12 K14 [{"creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent"}]
       41 SETTABLEKS                       R6 R12 K10 ["creatorTargetIds"]
       43 SETTABLEKS                       R7 R12 K11 ["groupTargetIds"]
       45 SETTABLEKS                       R5 R12 K9 ["includeUnverifiedCreators"]
       47 SETTABLEKS                       R8 R12 K12 ["uiSortIntent"]
       49 CALL                             R9 3 0
       50 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["creator"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["includeUnverifiedCreators"]
       10 DUPTABLE                         R2 K6 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators"}]
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R3 R0 K7 ["Name"]
       14 JUMPIF                           R3 ; [+1]
       15 LOADK                            R3 K8 [""]
       16 SETTABLEKS                       R3 R2 K3 ["Creator"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K9 ["audioSearchInfo"]
       23 SETTABLEKS                       R3 R2 K4 ["AudioSearch"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K10 ["additionalAudioSearchInfo"]
       30 SETTABLEKS                       R3 R2 K5 ["AdditionalAudioSearch"]
       32 SETTABLEKS                       R1 R2 K2 ["includeUnverifiedCreators"]
       34 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["Settings"]
       12 LOADK                            R4 K4 ["Plugin"]
       13 NAMECALL                         R2 R2 K5 ["get"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["createOptions"]
       19 CALL                             R3 0 1
       20 GETIMPORT                        R4 K8 [ipairs]
       22 MOVE                             R5 R0
       23 CALL                             R4 1 3
       24 FORGPREP_INEXT                   R4
       25 GETTABLEKS                       R9 R3 K9 ["AdditionalAudioSearch"]
       27 LOADNIL                          R10
       28 SETTABLE                         R10 R9 R8
       29 FORGLOOP                         R4 2 [inext] ; [-5]
       31 GETIMPORT                        R4 K11 [next]
       33 GETTABLEKS                       R5 R3 K9 ["AdditionalAudioSearch"]
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKNIL                  R4 ; [+4]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K9 ["AdditionalAudioSearch"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K0 ["props"]
       44 GETTABLEKS                       R4 R4 K12 ["searchWithOptions"]
       46 MOVE                             R5 R1
       47 MOVE                             R6 R2
       48 MOVE                             R7 R3
       49 CALL                             R4 3 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAdditionalAudioSearchByKeys"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
        8 GETTABLEKS                       R2 R2 K2 ["ARTIST"]
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAdditionalAudioSearchByKeys"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
        8 GETTABLEKS                       R2 R2 K2 ["CATEGORIES"]
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAdditionalAudioSearchByKeys"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
        8 GETTABLEKS                       R2 R2 K2 ["GENRE"]
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAdditionalAudioSearchByKeys"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
        8 GETTABLEKS                       R2 R2 K2 ["ALBUM"]
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearAdditionalAudioSearchByKeys"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
        8 GETTABLEKS                       R2 R2 K2 ["AUDIO_TYPE"]
       10 SETLIST                          R1 R2 1 [1]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["createOptions"]
       19 CALL                             R2 0 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["None"]
       23 SETTABLEKS                       R3 R2 K8 ["AudioSearch"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K9 ["searchWithOptions"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K6 ["creator"]
       21 DUPTABLE                         R3 K11 [{["Creator"], ["AudioSearch"], ["includeUnverifiedCreators"] = False}]
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R4 R2 K12 ["Name"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADK                            R4 K13 [""]
       27 SETTABLEKS                       R4 R3 K7 ["Creator"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["props"]
       32 GETTABLEKS                       R4 R4 K14 ["audioSearchInfo"]
       34 SETTABLEKS                       R4 R3 K8 ["AudioSearch"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K0 ["props"]
       39 GETTABLEKS                       R4 R4 K15 ["searchWithOptions"]
       41 MOVE                             R5 R0
       42 MOVE                             R6 R1
       43 MOVE                             R7 R3
       44 CALL                             R4 3 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["createOptions"]
       19 CALL                             R2 0 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["None"]
       23 SETTABLEKS                       R3 R2 K8 ["uiSortIntent"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K9 ["searchWithOptions"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["onTagsCleared"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K1 ["onCreatorCleared"]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 JUMP                             ; [+1]
       17 DUPCLOSURE                       R1 K2 [PROTO_3]
       18 SETTABLEKS                       R1 R0 K3 ["onCreatorTargetIdRemoved"]
       20 GETUPVAL                         R2 0
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+4]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U2
       26 JUMP                             ; [+1]
       27 DUPCLOSURE                       R1 K4 [PROTO_5]
       28 SETTABLEKS                       R1 R0 K5 ["onGroupTargetIdRemoved"]
       30 NEWCLOSURE                       R1 P6
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K6 ["createOptions"]
       34 NEWCLOSURE                       R1 P7
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K7 ["clearAdditionalAudioSearchByKeys"]
       38 NEWCLOSURE                       R1 P8
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 SETTABLEKS                       R1 R0 K8 ["onAudioSearchArtistCleared"]
       43 NEWCLOSURE                       R1 P9
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 SETTABLEKS                       R1 R0 K9 ["onAudioSearchCategoriesCleared"]
       48 NEWCLOSURE                       R1 P10
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U3
       51 SETTABLEKS                       R1 R0 K10 ["onAudioSearchGenreCleared"]
       53 NEWCLOSURE                       R1 P11
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U3
       56 SETTABLEKS                       R1 R0 K11 ["onAudioSearchAlbumCleared"]
       58 NEWCLOSURE                       R1 P12
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U3
       61 SETTABLEKS                       R1 R0 K12 ["onAudioSearchTypeCleared"]
       63 NEWCLOSURE                       R1 P13
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R1 R0 K13 ["onAudioSearchCleared"]
       68 NEWCLOSURE                       R1 P14
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K14 ["onIsVerifiedCleared"]
       72 NEWCLOSURE                       R1 P15
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U1
       75 SETTABLEKS                       R1 R0 K15 ["onSortIntentRemoved"]
       77 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["searchTerm"]
        4 ORK                              R2 R3 K1 [""]
        5 GETTABLEKS                       R3 R1 K3 ["creatorFilter"]
        7 GETTABLEKS                       R3 R3 K4 ["Name"]
        9 GETTABLEKS                       R4 R1 K5 ["includeUnverifiedCreators"]
       11 GETTABLEKS                       R5 R1 K6 ["uiSortIntent"]
       13 GETTABLEKS                       R6 R1 K7 ["sortDirection"]
       15 LOADNIL                          R7
       16 GETTABLEKS                       R8 R1 K8 ["audioSearchInfo"]
       18 JUMPIFNOT                        R8 ; [+18]
       19 GETTABLEKS                       R9 R8 K9 ["maxDuration"]
       21 JUMPIFNOT                        R9 ; [+15]
       22 GETTABLEKS                       R9 R8 K10 ["minDuration"]
       24 JUMPIFNOT                        R9 ; [+12]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R10 R8 K10 ["minDuration"]
       28 LOADNIL                          R11
       29 CALL                             R9 2 1
       30 LOADK                            R10 K11 [" - "]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R12 R8 K9 ["maxDuration"]
       34 LOADNIL                          R13
       35 CALL                             R11 2 1
       36 CONCAT                           R7 R9 R11
       37 GETTABLEKS                       R10 R1 K13 ["containerWidth"]
       39 ORK                              R9 R10 K12 [0]
       40 GETTABLEKS                       R10 R1 K14 ["headerHeight"]
       42 NEWTABLE                         R11 2 0
       44 GETTABLEKS                       R12 R1 K15 ["showTags"]
       46 JUMPIFNOT                        R12 ; [+510]
       47 GETTABLEKS                       R13 R0 K0 ["props"]
       49 GETTABLEKS                       R13 R13 K16 ["Localization"]
       51 LOADK                            R15 K17 ["General"]
       52 LOADK                            R16 K18 ["SearchTagCreator"]
       53 NAMECALL                         R13 R13 K19 ["getText"]
       55 CALL                             R13 3 1
       56 GETTABLEKS                       R14 R0 K0 ["props"]
       58 GETTABLEKS                       R14 R14 K16 ["Localization"]
       60 LOADK                            R16 K17 ["General"]
       61 LOADK                            R17 K20 ["SearchTagLength"]
       62 NAMECALL                         R14 R14 K19 ["getText"]
       64 CALL                             R14 3 1
       65 GETTABLEKS                       R15 R0 K0 ["props"]
       67 GETTABLEKS                       R15 R15 K16 ["Localization"]
       69 LOADK                            R17 K17 ["General"]
       70 LOADK                            R18 K21 ["SearchTagIdUnverified"]
       71 NAMECALL                         R15 R15 K19 ["getText"]
       73 CALL                             R15 3 1
       74 NEWTABLE                         R16 0 0
       76 JUMPIFNOT                        R3 ; [+15]
       77 DUPTABLE                         R19 K25 [{"prefix", "text", "onDelete"}]
       78 SETTABLEKS                       R13 R19 K22 ["prefix"]
       80 SETTABLEKS                       R3 R19 K23 ["text"]
       82 GETTABLEKS                       R20 R0 K26 ["onCreatorCleared"]
       84 SETTABLEKS                       R20 R19 K24 ["onDelete"]
       86 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
       88 MOVE                             R18 R16
       89 GETIMPORT                        R17 K29 [table.insert]
       91 CALL                             R17 2 0
       92 GETUPVAL                         R17 1
       93 CALL                             R17 0 1
       94 JUMPIFNOT                        R17 ; [+35]
       95 GETIMPORT                        R17 K31 [next]
       97 GETTABLEKS                       R18 R1 K32 ["creatorTargetIds"]
       99 CALL                             R17 1 1
      100 JUMPIFNOT                        R17 ; [+29]
      101 GETIMPORT                        R17 K34 [pairs]
      103 GETTABLEKS                       R18 R1 K32 ["creatorTargetIds"]
      105 CALL                             R17 1 3
      106 FORGPREP_NEXT                    R17
      107 DUPTABLE                         R24 K36 [{"prefix", "text", "onDelete", "tagId"}]
      108 SETTABLEKS                       R13 R24 K22 ["prefix"]
      110 GETTABLEKS                       R25 R21 K4 ["Name"]
      112 SETTABLEKS                       R25 R24 K23 ["text"]
      114 GETTABLEKS                       R25 R0 K37 ["onCreatorTargetIdRemoved"]
      116 SETTABLEKS                       R25 R24 K24 ["onDelete"]
      118 GETTABLEKS                       R25 R21 K38 ["Id"]
      120 SETTABLEKS                       R25 R24 K35 ["tagId"]
      122 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      124 MOVE                             R23 R16
      125 GETIMPORT                        R22 K29 [table.insert]
      127 CALL                             R22 2 0
      128 FORGLOOP                         R17 2 ; [-22]
      130 GETUPVAL                         R17 1
      131 CALL                             R17 0 1
      132 JUMPIFNOT                        R17 ; [+35]
      133 GETIMPORT                        R17 K31 [next]
      135 GETTABLEKS                       R18 R1 K39 ["groupTargetIds"]
      137 CALL                             R17 1 1
      138 JUMPIFNOT                        R17 ; [+29]
      139 GETIMPORT                        R17 K34 [pairs]
      141 GETTABLEKS                       R18 R1 K39 ["groupTargetIds"]
      143 CALL                             R17 1 3
      144 FORGPREP_NEXT                    R17
      145 DUPTABLE                         R24 K36 [{"prefix", "text", "onDelete", "tagId"}]
      146 SETTABLEKS                       R13 R24 K22 ["prefix"]
      148 GETTABLEKS                       R25 R21 K4 ["Name"]
      150 SETTABLEKS                       R25 R24 K23 ["text"]
      152 GETTABLEKS                       R25 R0 K40 ["onGroupTargetIdRemoved"]
      154 SETTABLEKS                       R25 R24 K24 ["onDelete"]
      156 GETTABLEKS                       R25 R21 K38 ["Id"]
      158 SETTABLEKS                       R25 R24 K35 ["tagId"]
      160 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      162 MOVE                             R23 R16
      163 GETIMPORT                        R22 K29 [table.insert]
      165 CALL                             R22 2 0
      166 FORGLOOP                         R17 2 ; [-22]
      168 JUMPIFNOT                        R7 ; [+15]
      169 DUPTABLE                         R19 K25 [{"prefix", "text", "onDelete"}]
      170 SETTABLEKS                       R14 R19 K22 ["prefix"]
      172 SETTABLEKS                       R7 R19 K23 ["text"]
      174 GETTABLEKS                       R20 R0 K41 ["onAudioSearchCleared"]
      176 SETTABLEKS                       R20 R19 K24 ["onDelete"]
      178 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      180 MOVE                             R18 R16
      181 GETIMPORT                        R17 K29 [table.insert]
      183 CALL                             R17 2 0
      184 GETTABLEKS                       R17 R1 K42 ["additionalAudioSearchInfo"]
      186 JUMPIF                           R17 ; [+2]
      187 NEWTABLE                         R17 0 0
      189 GETTABLEKS                       R18 R17 K43 ["artist"]
      191 JUMPIFNOT                        R18 ; [+28]
      192 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      193 GETTABLEKS                       R22 R0 K0 ["props"]
      195 GETTABLEKS                       R22 R22 K16 ["Localization"]
      197 LOADK                            R24 K44 ["AudioView"]
      198 LOADK                            R25 K45 ["Artist"]
      199 NAMECALL                         R22 R22 K19 ["getText"]
      201 CALL                             R22 3 1
      202 LOADK                            R23 K46 [":"]
      203 CONCAT                           R21 R22 R23
      204 SETTABLEKS                       R21 R20 K22 ["prefix"]
      206 GETTABLEKS                       R21 R17 K43 ["artist"]
      208 SETTABLEKS                       R21 R20 K23 ["text"]
      210 GETTABLEKS                       R21 R0 K47 ["onAudioSearchArtistCleared"]
      212 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      214 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      216 MOVE                             R19 R16
      217 GETIMPORT                        R18 K29 [table.insert]
      219 CALL                             R18 2 0
      220 GETTABLEKS                       R18 R17 K48 ["categories"]
      222 JUMPIFNOT                        R18 ; [+55]
      223 NEWTABLE                         R18 0 0
      225 GETIMPORT                        R19 K50 [ipairs]
      227 GETTABLEKS                       R20 R17 K48 ["categories"]
      229 CALL                             R19 1 3
      230 FORGPREP_INEXT                   R19
      231 MOVE                             R25 R18
      232 GETTABLEKS                       R26 R0 K0 ["props"]
      234 GETTABLEKS                       R26 R26 K16 ["Localization"]
      236 LOADK                            R28 K51 ["Audio.SoundEffect.Category"]
      237 MOVE                             R29 R23
      238 NAMECALL                         R26 R26 K19 ["getText"]
      240 CALL                             R26 3 -1
      241 FASTCALL                         TABLE_INSERT ; [+2]
      242 GETIMPORT                        R24 K29 [table.insert]
      244 CALL                             R24 -1 0
      245 FORGLOOP                         R19 2 [inext] ; [-15]
      247 DUPTABLE                         R21 K25 [{"prefix", "text", "onDelete"}]
      248 GETTABLEKS                       R23 R0 K0 ["props"]
      250 GETTABLEKS                       R23 R23 K16 ["Localization"]
      252 LOADK                            R25 K44 ["AudioView"]
      253 LOADK                            R26 K52 ["Category"]
      254 NAMECALL                         R23 R23 K19 ["getText"]
      256 CALL                             R23 3 1
      257 LOADK                            R24 K46 [":"]
      258 CONCAT                           R22 R23 R24
      259 SETTABLEKS                       R22 R21 K22 ["prefix"]
      261 GETIMPORT                        R22 K54 [table.concat]
      263 MOVE                             R23 R18
      264 LOADK                            R24 K11 [" - "]
      265 CALL                             R22 2 1
      266 SETTABLEKS                       R22 R21 K23 ["text"]
      268 GETTABLEKS                       R22 R0 K55 ["onAudioSearchCategoriesCleared"]
      270 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      272 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      274 MOVE                             R20 R16
      275 GETIMPORT                        R19 K29 [table.insert]
      277 CALL                             R19 2 0
      278 GETTABLEKS                       R18 R17 K56 ["genre"]
      280 JUMPIFNOT                        R18 ; [+36]
      281 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      282 GETTABLEKS                       R22 R0 K0 ["props"]
      284 GETTABLEKS                       R22 R22 K16 ["Localization"]
      286 LOADK                            R24 K17 ["General"]
      287 LOADK                            R25 K57 ["Genre"]
      288 NAMECALL                         R22 R22 K19 ["getText"]
      290 CALL                             R22 3 1
      291 LOADK                            R23 K46 [":"]
      292 CONCAT                           R21 R22 R23
      293 SETTABLEKS                       R21 R20 K22 ["prefix"]
      295 GETTABLEKS                       R21 R0 K0 ["props"]
      297 GETTABLEKS                       R21 R21 K16 ["Localization"]
      299 LOADK                            R23 K58 ["Audio.Music.Genre"]
      300 GETTABLEKS                       R24 R17 K56 ["genre"]
      302 NAMECALL                         R21 R21 K19 ["getText"]
      304 CALL                             R21 3 1
      305 SETTABLEKS                       R21 R20 K23 ["text"]
      307 GETTABLEKS                       R21 R0 K59 ["onAudioSearchGenreCleared"]
      309 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      311 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      313 MOVE                             R19 R16
      314 GETIMPORT                        R18 K29 [table.insert]
      316 CALL                             R18 2 0
      317 GETTABLEKS                       R18 R17 K60 ["album"]
      319 JUMPIFNOT                        R18 ; [+28]
      320 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      321 GETTABLEKS                       R22 R0 K0 ["props"]
      323 GETTABLEKS                       R22 R22 K16 ["Localization"]
      325 LOADK                            R24 K44 ["AudioView"]
      326 LOADK                            R25 K61 ["Album"]
      327 NAMECALL                         R22 R22 K19 ["getText"]
      329 CALL                             R22 3 1
      330 LOADK                            R23 K46 [":"]
      331 CONCAT                           R21 R22 R23
      332 SETTABLEKS                       R21 R20 K22 ["prefix"]
      334 GETTABLEKS                       R21 R17 K60 ["album"]
      336 SETTABLEKS                       R21 R20 K23 ["text"]
      338 GETTABLEKS                       R21 R0 K62 ["onAudioSearchAlbumCleared"]
      340 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      342 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      344 MOVE                             R19 R16
      345 GETIMPORT                        R18 K29 [table.insert]
      347 CALL                             R18 2 0
      348 GETTABLEKS                       R18 R17 K63 ["audioType"]
      350 JUMPIFNOT                        R18 ; [+36]
      351 GETTABLEKS                       R18 R0 K0 ["props"]
      353 GETTABLEKS                       R18 R18 K16 ["Localization"]
      355 LOADK                            R20 K64 ["SearchOptionsType"]
      356 GETTABLEKS                       R21 R17 K63 ["audioType"]
      358 NAMECALL                         R18 R18 K19 ["getText"]
      360 CALL                             R18 3 1
      361 DUPTABLE                         R21 K25 [{"prefix", "text", "onDelete"}]
      362 GETTABLEKS                       R23 R0 K0 ["props"]
      364 GETTABLEKS                       R23 R23 K16 ["Localization"]
      366 LOADK                            R25 K44 ["AudioView"]
      367 LOADK                            R26 K65 ["Type"]
      368 NAMECALL                         R23 R23 K19 ["getText"]
      370 CALL                             R23 3 1
      371 LOADK                            R24 K46 [":"]
      372 CONCAT                           R22 R23 R24
      373 SETTABLEKS                       R22 R21 K22 ["prefix"]
      375 SETTABLEKS                       R18 R21 K23 ["text"]
      377 GETTABLEKS                       R22 R0 K66 ["onAudioSearchTypeCleared"]
      379 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      381 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      383 MOVE                             R20 R16
      384 GETIMPORT                        R19 K29 [table.insert]
      386 CALL                             R19 2 0
      387 JUMPIFNOT                        R5 ; [+56]
      388 GETTABLEKS                       R18 R0 K0 ["props"]
      390 GETTABLEKS                       R18 R18 K16 ["Localization"]
      392 LOADK                            R20 K67 ["UiSortIntent"]
      393 MOVE                             R21 R5
      394 NAMECALL                         R18 R18 K19 ["getText"]
      396 CALL                             R18 3 1
      397 JUMPIFNOT                        R6 ; [+10]
      398 GETTABLEKS                       R19 R0 K0 ["props"]
      400 GETTABLEKS                       R19 R19 K16 ["Localization"]
      402 LOADK                            R21 K68 ["SortDirection"]
      403 MOVE                             R22 R6
      404 NAMECALL                         R19 R19 K19 ["getText"]
      406 CALL                             R19 3 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R19
      409 DUPTABLE                         R22 K25 [{"prefix", "text", "onDelete"}]
      410 GETTABLEKS                       R24 R0 K0 ["props"]
      412 GETTABLEKS                       R24 R24 K16 ["Localization"]
      414 LOADK                            R26 K17 ["General"]
      415 LOADK                            R27 K69 ["SearchOptionSort"]
      416 NAMECALL                         R24 R24 K19 ["getText"]
      418 CALL                             R24 3 1
      419 LOADK                            R25 K46 [":"]
      420 CONCAT                           R23 R24 R25
      421 SETTABLEKS                       R23 R22 K22 ["prefix"]
      423 JUMPIFNOT                        R19 ; [+7]
      424 LOADK                            R23 K70 ["%*, %*"]
      425 MOVE                             R25 R18
      426 MOVE                             R26 R19
      427 NAMECALL                         R23 R23 K71 ["format"]
      429 CALL                             R23 3 1
      430 JUMP                             ; [+1]
      431 MOVE                             R23 R18
      432 SETTABLEKS                       R23 R22 K23 ["text"]
      434 GETTABLEKS                       R23 R0 K72 ["onSortIntentRemoved"]
      436 SETTABLEKS                       R23 R22 K24 ["onDelete"]
      438 FASTCALL2                        TABLE_INSERT R16 R22 ; [+4]
      440 MOVE                             R21 R16
      441 GETIMPORT                        R20 K29 [table.insert]
      443 CALL                             R20 2 0
      444 MOVE                             R18 R4
      445 JUMPIF                           R18 ; [+3]
      446 MOVE                             R18 R3
      447 JUMPIF                           R18 ; [+1]
      448 MOVE                             R18 R7
      449 JUMPIFNOT                        R18 ; [+13]
      450 DUPTABLE                         R21 K73 [{["prefix"], ["text"] = "", ["onDelete"]}]
      451 SETTABLEKS                       R15 R21 K22 ["prefix"]
      453 GETTABLEKS                       R22 R0 K74 ["onIsVerifiedCleared"]
      455 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      457 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      459 MOVE                             R20 R16
      460 GETIMPORT                        R19 K29 [table.insert]
      462 CALL                             R19 2 0
      463 GETUPVAL                         R19 2
      464 GETTABLEKS                       R19 R19 K75 ["createElement"]
      466 GETUPVAL                         R20 3
      467 DUPTABLE                         R21 K82 [{["Tags"], ["onClearTags"], ["searchTerm"], ["categoryName"], ["onBackToHome"], ["LayoutOrder"] = 1}]
      468 SETTABLEKS                       R16 R21 K76 ["Tags"]
      470 GETTABLEKS                       R22 R0 K83 ["onTagsCleared"]
      472 SETTABLEKS                       R22 R21 K77 ["onClearTags"]
      474 SETTABLEKS                       R2 R21 K2 ["searchTerm"]
      476 GETTABLEKS                       R22 R1 K78 ["categoryName"]
      478 SETTABLEKS                       R22 R21 K78 ["categoryName"]
      480 GETTABLEKS                       R22 R1 K79 ["onBackToHome"]
      482 SETTABLEKS                       R22 R21 K79 ["onBackToHome"]
      484 CALL                             R19 2 1
      485 SETTABLEKS                       R19 R11 K84 ["SearchTags"]
      487 LOADB                            R19 0
      488 GETTABLEKS                       R20 R1 K85 ["correctionState"]
      490 GETUPVAL                         R21 4
      491 GETTABLEKS                       R21 R21 K86 ["AutocorrectResponseState"]
      493 GETTABLEKS                       R21 R21 K87 ["CorrectionAvailable"]
      495 JUMPIFNOTEQ                      R20 R21 ; [+7]
      497 GETTABLEKS                       R20 R1 K88 ["correctedQuery"]
      499 JUMPIFNOTEQKS                    R20 K1 [""] ; [+2]
      501 LOADB                            R19 0 +1
      502 LOADB                            R19 1
      503 LOADB                            R20 0
      504 GETTABLEKS                       R21 R1 K85 ["correctionState"]
      506 GETUPVAL                         R22 4
      507 GETTABLEKS                       R22 R22 K86 ["AutocorrectResponseState"]
      509 GETTABLEKS                       R22 R22 K89 ["CorrectionAccepted"]
      511 JUMPIFNOTEQ                      R21 R22 ; [+7]
      513 GETTABLEKS                       R21 R1 K90 ["userQuery"]
      515 JUMPIFNOTEQKS                    R21 K1 [""] ; [+2]
      517 LOADB                            R20 0 +1
      518 LOADB                            R20 1
      519 OR                               R21 R19 R20
      520 GETIMPORT                        R22 K31 [next]
      522 MOVE                             R23 R16
      523 CALL                             R22 1 1
      524 JUMPIFEQKNIL                     R22 ; [+7]
      526 JUMPIF                           R21 ; [+5]
      527 GETUPVAL                         R22 5
      528 GETTABLEKS                       R22 R22 K91 ["MAIN_VIEW_VERTICAL_PADDING"]
      530 ADD                              R10 R10 R22
      531 JUMP                             ; [0]
      532 JUMPIFNOT                        R21 ; [+21]
      533 GETUPVAL                         R22 2
      534 GETTABLEKS                       R22 R22 K75 ["createElement"]
      536 GETUPVAL                         R23 6
      537 DUPTABLE                         R24 K97 [{["CorrectedQuery"], ["CorrectionState"], ["CurrentQuery"], ["LayoutOrder"] = 2, ["UserQuery"]}]
      538 GETTABLEKS                       R25 R1 K88 ["correctedQuery"]
      540 SETTABLEKS                       R25 R24 K92 ["CorrectedQuery"]
      542 GETTABLEKS                       R25 R1 K85 ["correctionState"]
      544 SETTABLEKS                       R25 R24 K93 ["CorrectionState"]
      546 SETTABLEKS                       R2 R24 K94 ["CurrentQuery"]
      548 GETTABLEKS                       R25 R1 K90 ["userQuery"]
      550 SETTABLEKS                       R25 R24 K96 ["UserQuery"]
      552 CALL                             R22 2 1
      553 JUMP                             ; [+1]
      554 LOADNIL                          R22
      555 SETTABLEKS                       R22 R11 K98 ["Autocorrect"]
      557 GETUPVAL                         R13 2
      558 GETTABLEKS                       R13 R13 K75 ["createElement"]
      560 GETUPVAL                         R14 7
      561 DUPTABLE                         R15 K106 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"], ["ZIndex"] = 2}]
      562 GETIMPORT                        R16 K109 [UDim2.new]
      564 LOADN                            R17 0
      565 LOADN                            R18 0
      566 LOADN                            R19 0
      567 LOADN                            R20 -2
      568 CALL                             R16 4 1
      569 SETTABLEKS                       R16 R15 K99 ["Position"]
      571 GETIMPORT                        R16 K109 [UDim2.new]
      573 LOADN                            R17 0
      574 MOVE                             R18 R9
      575 LOADN                            R19 0
      576 MOVE                             R20 R10
      577 CALL                             R16 4 1
      578 SETTABLEKS                       R16 R15 K100 ["Size"]
      580 GETIMPORT                        R16 K112 [Enum.HorizontalAlignment.Left]
      582 SETTABLEKS                       R16 R15 K102 ["HorizontalAlignment"]
      584 GETIMPORT                        R16 K115 [Enum.FillDirection.Vertical]
      586 SETTABLEKS                       R16 R15 K103 ["Layout"]
      588 GETIMPORT                        R16 K117 [Enum.VerticalAlignment.Top]
      590 SETTABLEKS                       R16 R15 K104 ["VerticalAlignment"]
      592 MOVE                             R16 R11
      593 CALL                             R13 3 -1
      594 RETURN                           R13 -1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R4 R2 K1 ["creatorTargetIds"]
       12 JUMPIFNOT                        R4 ; [+10]
       13 GETTABLEKS                       R4 R2 K1 ["creatorTargetIds"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["None"]
       18 JUMPIFEQ                         R4 R5 ; [+4]
       20 GETTABLEKS                       R3 R2 K1 ["creatorTargetIds"]
       22 JUMP                             ; [+2]
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R5 R2 K3 ["groupTargetIds"]
       27 JUMPIFNOT                        R5 ; [+10]
       28 GETTABLEKS                       R5 R2 K3 ["groupTargetIds"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K2 ["None"]
       33 JUMPIFEQ                         R5 R6 ; [+4]
       35 GETTABLEKS                       R4 R2 K3 ["groupTargetIds"]
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R4 0 0
       40 GETTABLEKS                       R6 R2 K4 ["uiSortIntent"]
       42 JUMPIFNOT                        R6 ; [+10]
       43 GETTABLEKS                       R6 R2 K4 ["uiSortIntent"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K2 ["None"]
       48 JUMPIFEQ                         R6 R7 ; [+4]
       50 GETTABLEKS                       R5 R2 K4 ["uiSortIntent"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 GETTABLEKS                       R7 R2 K5 ["sortDirection"]
       56 JUMPIFNOT                        R7 ; [+10]
       57 GETTABLEKS                       R7 R2 K5 ["sortDirection"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K2 ["None"]
       62 JUMPIFEQ                         R7 R8 ; [+4]
       64 GETTABLEKS                       R6 R2 K5 ["sortDirection"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R6
       68 DUPTABLE                         R7 K16 [{"audioSearchInfo", "additionalAudioSearchInfo", "creator", "categoryName", "searchTerm", "includeUnverifiedCreators", "creatorFilter", "creatorTargetIds", "groupTargetIds", "uiSortIntent", "sortDirection", "correctionState", "correctedQuery", "userQuery"}]
       69 GETTABLEKS                       R8 R2 K6 ["audioSearchInfo"]
       71 SETTABLEKS                       R8 R7 K6 ["audioSearchInfo"]
       73 GETTABLEKS                       R8 R2 K7 ["additionalAudioSearchInfo"]
       75 SETTABLEKS                       R8 R7 K7 ["additionalAudioSearchInfo"]
       77 GETTABLEKS                       R8 R2 K8 ["creator"]
       79 SETTABLEKS                       R8 R7 K8 ["creator"]
       81 GETTABLEKS                       R8 R2 K9 ["categoryName"]
       83 JUMPIF                           R8 ; [+5]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K17 ["DEFAULT"]
       87 GETTABLEKS                       R8 R8 K18 ["name"]
       89 SETTABLEKS                       R8 R7 K9 ["categoryName"]
       91 GETTABLEKS                       R9 R2 K10 ["searchTerm"]
       93 ORK                              R8 R9 K19 [""]
       94 SETTABLEKS                       R8 R7 K10 ["searchTerm"]
       96 GETTABLEKS                       R8 R2 K11 ["includeUnverifiedCreators"]
       98 SETTABLEKS                       R8 R7 K11 ["includeUnverifiedCreators"]
      100 GETTABLEKS                       R8 R2 K8 ["creator"]
      102 JUMPIF                           R8 ; [+2]
      103 NEWTABLE                         R8 0 0
      105 SETTABLEKS                       R8 R7 K12 ["creatorFilter"]
      107 GETUPVAL                         R9 2
      108 CALL                             R9 0 1
      109 JUMPIFNOT                        R9 ; [+2]
      110 MOVE                             R8 R3
      111 JUMP                             ; [+1]
      112 LOADNIL                          R8
      113 SETTABLEKS                       R8 R7 K1 ["creatorTargetIds"]
      115 GETUPVAL                         R9 2
      116 CALL                             R9 0 1
      117 JUMPIFNOT                        R9 ; [+2]
      118 MOVE                             R8 R4
      119 JUMP                             ; [+1]
      120 LOADNIL                          R8
      121 SETTABLEKS                       R8 R7 K3 ["groupTargetIds"]
      123 GETUPVAL                         R9 2
      124 CALL                             R9 0 1
      125 JUMPIFNOT                        R9 ; [+2]
      126 MOVE                             R8 R5
      127 JUMP                             ; [+1]
      128 LOADNIL                          R8
      129 SETTABLEKS                       R8 R7 K4 ["uiSortIntent"]
      131 SETTABLEKS                       R6 R7 K5 ["sortDirection"]
      133 GETTABLEKS                       R8 R2 K13 ["correctionState"]
      135 SETTABLEKS                       R8 R7 K13 ["correctionState"]
      137 GETTABLEKS                       R8 R2 K14 ["correctedQuery"]
      139 SETTABLEKS                       R8 R7 K14 ["correctedQuery"]
      141 GETTABLEKS                       R8 R2 K15 ["userQuery"]
      143 SETTABLEKS                       R8 R7 K15 ["userQuery"]
      145 RETURN                           R7 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R6 K10 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["Constants"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Src"]
       41 GETTABLEKS                       R7 R7 K10 ["Util"]
       43 GETTABLEKS                       R7 R7 K12 ["getTimeString"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K9 ["Src"]
       50 GETTABLEKS                       R8 R8 K13 ["ContextServices"]
       52 GETTABLEKS                       R8 R8 K14 ["Settings"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K9 ["Src"]
       59 GETTABLEKS                       R9 R9 K15 ["Types"]
       61 GETTABLEKS                       R9 R9 K16 ["Category"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K9 ["Src"]
       68 GETTABLEKS                       R10 R10 K15 ["Types"]
       70 GETTABLEKS                       R10 R10 K17 ["AutocorrectTypes"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R4 K13 ["ContextServices"]
       75 GETTABLEKS                       R11 R10 K18 ["withContext"]
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Src"]
       81 GETTABLEKS                       R13 R13 K13 ["ContextServices"]
       83 GETTABLEKS                       R13 R13 K19 ["NetworkContext"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R1 K20 ["Cryo"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R14 R4 K10 ["Util"]
       93 GETTABLEKS                       R14 R14 K21 ["deepCopy"]
       95 GETTABLEKS                       R15 R4 K22 ["UI"]
       97 GETTABLEKS                       R15 R15 K23 ["Pane"]
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R0 K9 ["Src"]
      103 GETTABLEKS                       R17 R17 K24 ["Components"]
      105 GETTABLEKS                       R17 R17 K25 ["Autocorrect"]
      107 GETTABLEKS                       R17 R17 K25 ["Autocorrect"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R0 K9 ["Src"]
      114 GETTABLEKS                       R18 R18 K26 ["Networking"]
      116 GETTABLEKS                       R18 R18 K27 ["Requests"]
      118 GETTABLEKS                       R18 R18 K28 ["SearchWithOptions"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K9 ["Src"]
      125 GETTABLEKS                       R19 R19 K10 ["Util"]
      127 GETTABLEKS                       R19 R19 K29 ["SharedFlags"]
      129 GETTABLEKS                       R19 R19 K30 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      131 CALL                             R18 1 1
      132 GETTABLEKS                       R19 R2 K31 ["PureComponent"]
      134 LOADK                            R21 K32 ["MainViewHeader"]
      135 NAMECALL                         R19 R19 K33 ["extend"]
      137 CALL                             R19 2 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K9 ["Src"]
      142 GETTABLEKS                       R21 R21 K24 ["Components"]
      144 GETTABLEKS                       R21 R21 K34 ["SearchOptions"]
      146 GETTABLEKS                       R21 R21 K35 ["SearchTags"]
      148 CALL                             R20 1 1
      149 DUPCLOSURE                       R21 K36 [PROTO_16]
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R5
      154 SETTABLEKS                       R21 R19 K37 ["init"]
      156 DUPCLOSURE                       R21 K38 [PROTO_17]
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R15
      165 SETTABLEKS                       R21 R19 K39 ["render"]
      167 MOVE                             R21 R11
      168 DUPTABLE                         R22 K42 [{"Localization", "Settings", "Network"}]
      169 GETTABLEKS                       R23 R10 K40 ["Localization"]
      171 SETTABLEKS                       R23 R22 K40 ["Localization"]
      173 SETTABLEKS                       R7 R22 K14 ["Settings"]
      175 SETTABLEKS                       R12 R22 K41 ["Network"]
      177 CALL                             R21 1 1
      178 MOVE                             R22 R19
      179 CALL                             R21 1 1
      180 MOVE                             R19 R21
      181 DUPCLOSURE                       R21 K43 [PROTO_18]
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R18
      185 DUPCLOSURE                       R22 K44 [PROTO_20]
      186 CAPTURE                          VAL R17
      187 GETTABLEKS                       R23 R3 K45 ["connect"]
      189 MOVE                             R24 R21
      190 MOVE                             R25 R22
      191 CALL                             R23 2 1
      192 MOVE                             R24 R19
      193 CALL                             R23 1 -1
      194 RETURN                           R23 -1
