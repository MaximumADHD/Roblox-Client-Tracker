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
       18 JUMPIFNOT                        R3 ; [+31]
       19 DUPTABLE                         R2 K13 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators", "creatorTargetIds", "groupTargetIds", "uiSortIntent"}]
       20 LOADK                            R3 K14 [""]
       21 SETTABLEKS                       R3 R2 K6 ["Creator"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K15 ["None"]
       26 SETTABLEKS                       R3 R2 K7 ["AudioSearch"]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K15 ["None"]
       31 SETTABLEKS                       R3 R2 K8 ["AdditionalAudioSearch"]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K9 ["includeUnverifiedCreators"]
       36 NEWTABLE                         R3 0 0
       38 SETTABLEKS                       R3 R2 K10 ["creatorTargetIds"]
       40 NEWTABLE                         R3 0 0
       42 SETTABLEKS                       R3 R2 K11 ["groupTargetIds"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K15 ["None"]
       47 SETTABLEKS                       R3 R2 K12 ["uiSortIntent"]
       49 JUMP                             ; [+22]
       50 DUPTABLE                         R2 K16 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators", "uiSortIntent"}]
       51 LOADK                            R3 K14 [""]
       52 SETTABLEKS                       R3 R2 K6 ["Creator"]
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R3 R3 K15 ["None"]
       57 SETTABLEKS                       R3 R2 K7 ["AudioSearch"]
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R3 R3 K15 ["None"]
       62 SETTABLEKS                       R3 R2 K8 ["AdditionalAudioSearch"]
       64 LOADB                            R3 0
       65 SETTABLEKS                       R3 R2 K9 ["includeUnverifiedCreators"]
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R3 R3 K15 ["None"]
       70 SETTABLEKS                       R3 R2 K12 ["uiSortIntent"]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K0 ["props"]
       75 GETTABLEKS                       R3 R3 K17 ["searchWithOptions"]
       77 MOVE                             R4 R0
       78 MOVE                             R5 R1
       79 MOVE                             R6 R2
       80 CALL                             R3 3 0
       81 RETURN                           R0 0

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
       28 DUPTABLE                         R6 K11 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators"}]
       29 LOADK                            R7 K12 [""]
       30 SETTABLEKS                       R7 R6 K8 ["Creator"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K0 ["props"]
       35 GETTABLEKS                       R7 R7 K13 ["audioSearchInfo"]
       37 SETTABLEKS                       R7 R6 K9 ["AudioSearch"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K0 ["props"]
       42 GETTABLEKS                       R7 R7 K14 ["additionalAudioSearchInfo"]
       44 SETTABLEKS                       R7 R6 K10 ["AdditionalAudioSearch"]
       46 SETTABLEKS                       R2 R6 K6 ["includeUnverifiedCreators"]
       48 CALL                             R3 3 0
       49 RETURN                           R0 0

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
       21 DUPTABLE                         R3 K10 [{"Creator", "AudioSearch", "includeUnverifiedCreators"}]
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R4 R2 K11 ["Name"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADK                            R4 K12 [""]
       27 SETTABLEKS                       R4 R3 K7 ["Creator"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["props"]
       32 GETTABLEKS                       R4 R4 K13 ["audioSearchInfo"]
       34 SETTABLEKS                       R4 R3 K8 ["AudioSearch"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K9 ["includeUnverifiedCreators"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K0 ["props"]
       42 GETTABLEKS                       R4 R4 K14 ["searchWithOptions"]
       44 MOVE                             R5 R0
       45 MOVE                             R6 R1
       46 MOVE                             R7 R3
       47 CALL                             R4 3 0
       48 RETURN                           R0 0

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
       18 JUMPIFNOT                        R8 ; [+19]
       19 GETTABLEKS                       R9 R8 K9 ["maxDuration"]
       21 JUMPIFNOT                        R9 ; [+16]
       22 GETTABLEKS                       R9 R8 K10 ["minDuration"]
       24 JUMPIFNOT                        R9 ; [+13]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R13 R8 K10 ["minDuration"]
       28 LOADNIL                          R14
       29 CALL                             R12 2 1
       30 MOVE                             R9 R12
       31 LOADK                            R10 K11 [" - "]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R12 R8 K9 ["maxDuration"]
       35 LOADNIL                          R13
       36 CALL                             R11 2 1
       37 CONCAT                           R7 R9 R11
       38 GETTABLEKS                       R10 R1 K13 ["containerWidth"]
       40 ORK                              R9 R10 K12 [0]
       41 GETTABLEKS                       R10 R1 K14 ["headerHeight"]
       43 NEWTABLE                         R11 2 0
       45 GETTABLEKS                       R12 R1 K15 ["showTags"]
       47 JUMPIFNOT                        R12 ; [+526]
       48 GETTABLEKS                       R13 R0 K0 ["props"]
       50 GETTABLEKS                       R13 R13 K16 ["Localization"]
       52 LOADK                            R15 K17 ["General"]
       53 LOADK                            R16 K18 ["SearchTagCreator"]
       54 NAMECALL                         R13 R13 K19 ["getText"]
       56 CALL                             R13 3 1
       57 GETTABLEKS                       R14 R0 K0 ["props"]
       59 GETTABLEKS                       R14 R14 K16 ["Localization"]
       61 LOADK                            R16 K17 ["General"]
       62 LOADK                            R17 K20 ["SearchTagLength"]
       63 NAMECALL                         R14 R14 K19 ["getText"]
       65 CALL                             R14 3 1
       66 GETTABLEKS                       R15 R0 K0 ["props"]
       68 GETTABLEKS                       R15 R15 K16 ["Localization"]
       70 LOADK                            R17 K17 ["General"]
       71 LOADK                            R18 K21 ["SearchTagIdUnverified"]
       72 NAMECALL                         R15 R15 K19 ["getText"]
       74 CALL                             R15 3 1
       75 NEWTABLE                         R16 0 0
       77 JUMPIFNOT                        R3 ; [+15]
       78 DUPTABLE                         R19 K25 [{"prefix", "text", "onDelete"}]
       79 SETTABLEKS                       R13 R19 K22 ["prefix"]
       81 SETTABLEKS                       R3 R19 K23 ["text"]
       83 GETTABLEKS                       R20 R0 K26 ["onCreatorCleared"]
       85 SETTABLEKS                       R20 R19 K24 ["onDelete"]
       87 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
       89 MOVE                             R18 R16
       90 GETIMPORT                        R17 K29 [table.insert]
       92 CALL                             R17 2 0
       93 GETUPVAL                         R17 1
       94 CALL                             R17 0 1
       95 JUMPIFNOT                        R17 ; [+35]
       96 GETIMPORT                        R17 K31 [next]
       98 GETTABLEKS                       R18 R1 K32 ["creatorTargetIds"]
      100 CALL                             R17 1 1
      101 JUMPIFNOT                        R17 ; [+29]
      102 GETIMPORT                        R17 K34 [pairs]
      104 GETTABLEKS                       R18 R1 K32 ["creatorTargetIds"]
      106 CALL                             R17 1 3
      107 FORGPREP_NEXT                    R17
      108 DUPTABLE                         R24 K36 [{"prefix", "text", "onDelete", "tagId"}]
      109 SETTABLEKS                       R13 R24 K22 ["prefix"]
      111 GETTABLEKS                       R25 R21 K4 ["Name"]
      113 SETTABLEKS                       R25 R24 K23 ["text"]
      115 GETTABLEKS                       R25 R0 K37 ["onCreatorTargetIdRemoved"]
      117 SETTABLEKS                       R25 R24 K24 ["onDelete"]
      119 GETTABLEKS                       R25 R21 K38 ["Id"]
      121 SETTABLEKS                       R25 R24 K35 ["tagId"]
      123 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      125 MOVE                             R23 R16
      126 GETIMPORT                        R22 K29 [table.insert]
      128 CALL                             R22 2 0
      129 FORGLOOP                         R17 2 ; [-22]
      131 GETUPVAL                         R17 1
      132 CALL                             R17 0 1
      133 JUMPIFNOT                        R17 ; [+35]
      134 GETIMPORT                        R17 K31 [next]
      136 GETTABLEKS                       R18 R1 K39 ["groupTargetIds"]
      138 CALL                             R17 1 1
      139 JUMPIFNOT                        R17 ; [+29]
      140 GETIMPORT                        R17 K34 [pairs]
      142 GETTABLEKS                       R18 R1 K39 ["groupTargetIds"]
      144 CALL                             R17 1 3
      145 FORGPREP_NEXT                    R17
      146 DUPTABLE                         R24 K36 [{"prefix", "text", "onDelete", "tagId"}]
      147 SETTABLEKS                       R13 R24 K22 ["prefix"]
      149 GETTABLEKS                       R25 R21 K4 ["Name"]
      151 SETTABLEKS                       R25 R24 K23 ["text"]
      153 GETTABLEKS                       R25 R0 K40 ["onGroupTargetIdRemoved"]
      155 SETTABLEKS                       R25 R24 K24 ["onDelete"]
      157 GETTABLEKS                       R25 R21 K38 ["Id"]
      159 SETTABLEKS                       R25 R24 K35 ["tagId"]
      161 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      163 MOVE                             R23 R16
      164 GETIMPORT                        R22 K29 [table.insert]
      166 CALL                             R22 2 0
      167 FORGLOOP                         R17 2 ; [-22]
      169 JUMPIFNOT                        R7 ; [+15]
      170 DUPTABLE                         R19 K25 [{"prefix", "text", "onDelete"}]
      171 SETTABLEKS                       R14 R19 K22 ["prefix"]
      173 SETTABLEKS                       R7 R19 K23 ["text"]
      175 GETTABLEKS                       R20 R0 K41 ["onAudioSearchCleared"]
      177 SETTABLEKS                       R20 R19 K24 ["onDelete"]
      179 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      181 MOVE                             R18 R16
      182 GETIMPORT                        R17 K29 [table.insert]
      184 CALL                             R17 2 0
      185 GETTABLEKS                       R17 R1 K42 ["additionalAudioSearchInfo"]
      187 JUMPIF                           R17 ; [+2]
      188 NEWTABLE                         R17 0 0
      190 GETTABLEKS                       R18 R17 K43 ["artist"]
      192 JUMPIFNOT                        R18 ; [+29]
      193 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      194 GETTABLEKS                       R24 R0 K0 ["props"]
      196 GETTABLEKS                       R24 R24 K16 ["Localization"]
      198 LOADK                            R26 K44 ["AudioView"]
      199 LOADK                            R27 K45 ["Artist"]
      200 NAMECALL                         R24 R24 K19 ["getText"]
      202 CALL                             R24 3 1
      203 MOVE                             R22 R24
      204 LOADK                            R23 K46 [":"]
      205 CONCAT                           R21 R22 R23
      206 SETTABLEKS                       R21 R20 K22 ["prefix"]
      208 GETTABLEKS                       R21 R17 K43 ["artist"]
      210 SETTABLEKS                       R21 R20 K23 ["text"]
      212 GETTABLEKS                       R21 R0 K47 ["onAudioSearchArtistCleared"]
      214 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      216 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      218 MOVE                             R19 R16
      219 GETIMPORT                        R18 K29 [table.insert]
      221 CALL                             R18 2 0
      222 GETTABLEKS                       R18 R17 K48 ["categories"]
      224 JUMPIFNOT                        R18 ; [+56]
      225 NEWTABLE                         R18 0 0
      227 GETIMPORT                        R19 K50 [ipairs]
      229 GETTABLEKS                       R20 R17 K48 ["categories"]
      231 CALL                             R19 1 3
      232 FORGPREP_INEXT                   R19
      233 MOVE                             R25 R18
      234 GETTABLEKS                       R26 R0 K0 ["props"]
      236 GETTABLEKS                       R26 R26 K16 ["Localization"]
      238 LOADK                            R28 K51 ["Audio.SoundEffect.Category"]
      239 MOVE                             R29 R23
      240 NAMECALL                         R26 R26 K19 ["getText"]
      242 CALL                             R26 3 -1
      243 FASTCALL                         TABLE_INSERT ; [+2]
      244 GETIMPORT                        R24 K29 [table.insert]
      246 CALL                             R24 -1 0
      247 FORGLOOP                         R19 2 [inext] ; [-15]
      249 DUPTABLE                         R21 K25 [{"prefix", "text", "onDelete"}]
      250 GETTABLEKS                       R25 R0 K0 ["props"]
      252 GETTABLEKS                       R25 R25 K16 ["Localization"]
      254 LOADK                            R27 K44 ["AudioView"]
      255 LOADK                            R28 K52 ["Category"]
      256 NAMECALL                         R25 R25 K19 ["getText"]
      258 CALL                             R25 3 1
      259 MOVE                             R23 R25
      260 LOADK                            R24 K46 [":"]
      261 CONCAT                           R22 R23 R24
      262 SETTABLEKS                       R22 R21 K22 ["prefix"]
      264 GETIMPORT                        R22 K54 [table.concat]
      266 MOVE                             R23 R18
      267 LOADK                            R24 K11 [" - "]
      268 CALL                             R22 2 1
      269 SETTABLEKS                       R22 R21 K23 ["text"]
      271 GETTABLEKS                       R22 R0 K55 ["onAudioSearchCategoriesCleared"]
      273 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      275 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      277 MOVE                             R20 R16
      278 GETIMPORT                        R19 K29 [table.insert]
      280 CALL                             R19 2 0
      281 GETTABLEKS                       R18 R17 K56 ["genre"]
      283 JUMPIFNOT                        R18 ; [+37]
      284 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      285 GETTABLEKS                       R24 R0 K0 ["props"]
      287 GETTABLEKS                       R24 R24 K16 ["Localization"]
      289 LOADK                            R26 K17 ["General"]
      290 LOADK                            R27 K57 ["Genre"]
      291 NAMECALL                         R24 R24 K19 ["getText"]
      293 CALL                             R24 3 1
      294 MOVE                             R22 R24
      295 LOADK                            R23 K46 [":"]
      296 CONCAT                           R21 R22 R23
      297 SETTABLEKS                       R21 R20 K22 ["prefix"]
      299 GETTABLEKS                       R21 R0 K0 ["props"]
      301 GETTABLEKS                       R21 R21 K16 ["Localization"]
      303 LOADK                            R23 K58 ["Audio.Music.Genre"]
      304 GETTABLEKS                       R24 R17 K56 ["genre"]
      306 NAMECALL                         R21 R21 K19 ["getText"]
      308 CALL                             R21 3 1
      309 SETTABLEKS                       R21 R20 K23 ["text"]
      311 GETTABLEKS                       R21 R0 K59 ["onAudioSearchGenreCleared"]
      313 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      315 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      317 MOVE                             R19 R16
      318 GETIMPORT                        R18 K29 [table.insert]
      320 CALL                             R18 2 0
      321 GETTABLEKS                       R18 R17 K60 ["album"]
      323 JUMPIFNOT                        R18 ; [+29]
      324 DUPTABLE                         R20 K25 [{"prefix", "text", "onDelete"}]
      325 GETTABLEKS                       R24 R0 K0 ["props"]
      327 GETTABLEKS                       R24 R24 K16 ["Localization"]
      329 LOADK                            R26 K44 ["AudioView"]
      330 LOADK                            R27 K61 ["Album"]
      331 NAMECALL                         R24 R24 K19 ["getText"]
      333 CALL                             R24 3 1
      334 MOVE                             R22 R24
      335 LOADK                            R23 K46 [":"]
      336 CONCAT                           R21 R22 R23
      337 SETTABLEKS                       R21 R20 K22 ["prefix"]
      339 GETTABLEKS                       R21 R17 K60 ["album"]
      341 SETTABLEKS                       R21 R20 K23 ["text"]
      343 GETTABLEKS                       R21 R0 K62 ["onAudioSearchAlbumCleared"]
      345 SETTABLEKS                       R21 R20 K24 ["onDelete"]
      347 FASTCALL2                        TABLE_INSERT R16 R20 ; [+4]
      349 MOVE                             R19 R16
      350 GETIMPORT                        R18 K29 [table.insert]
      352 CALL                             R18 2 0
      353 GETTABLEKS                       R18 R17 K63 ["audioType"]
      355 JUMPIFNOT                        R18 ; [+37]
      356 GETTABLEKS                       R18 R0 K0 ["props"]
      358 GETTABLEKS                       R18 R18 K16 ["Localization"]
      360 LOADK                            R20 K64 ["SearchOptionsType"]
      361 GETTABLEKS                       R21 R17 K63 ["audioType"]
      363 NAMECALL                         R18 R18 K19 ["getText"]
      365 CALL                             R18 3 1
      366 DUPTABLE                         R21 K25 [{"prefix", "text", "onDelete"}]
      367 GETTABLEKS                       R25 R0 K0 ["props"]
      369 GETTABLEKS                       R25 R25 K16 ["Localization"]
      371 LOADK                            R27 K44 ["AudioView"]
      372 LOADK                            R28 K65 ["Type"]
      373 NAMECALL                         R25 R25 K19 ["getText"]
      375 CALL                             R25 3 1
      376 MOVE                             R23 R25
      377 LOADK                            R24 K46 [":"]
      378 CONCAT                           R22 R23 R24
      379 SETTABLEKS                       R22 R21 K22 ["prefix"]
      381 SETTABLEKS                       R18 R21 K23 ["text"]
      383 GETTABLEKS                       R22 R0 K66 ["onAudioSearchTypeCleared"]
      385 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      387 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      389 MOVE                             R20 R16
      390 GETIMPORT                        R19 K29 [table.insert]
      392 CALL                             R19 2 0
      393 JUMPIFNOT                        R5 ; [+58]
      394 GETTABLEKS                       R18 R0 K0 ["props"]
      396 GETTABLEKS                       R18 R18 K16 ["Localization"]
      398 LOADK                            R20 K67 ["UiSortIntent"]
      399 MOVE                             R21 R5
      400 NAMECALL                         R18 R18 K19 ["getText"]
      402 CALL                             R18 3 1
      403 JUMPIFNOT                        R6 ; [+10]
      404 GETTABLEKS                       R19 R0 K0 ["props"]
      406 GETTABLEKS                       R19 R19 K16 ["Localization"]
      408 LOADK                            R21 K68 ["SortDirection"]
      409 MOVE                             R22 R6
      410 NAMECALL                         R19 R19 K19 ["getText"]
      412 CALL                             R19 3 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R19
      415 DUPTABLE                         R22 K25 [{"prefix", "text", "onDelete"}]
      416 GETTABLEKS                       R26 R0 K0 ["props"]
      418 GETTABLEKS                       R26 R26 K16 ["Localization"]
      420 LOADK                            R28 K17 ["General"]
      421 LOADK                            R29 K69 ["SearchOptionSort"]
      422 NAMECALL                         R26 R26 K19 ["getText"]
      424 CALL                             R26 3 1
      425 MOVE                             R24 R26
      426 LOADK                            R25 K46 [":"]
      427 CONCAT                           R23 R24 R25
      428 SETTABLEKS                       R23 R22 K22 ["prefix"]
      430 JUMPIFNOT                        R19 ; [+8]
      431 LOADK                            R24 K70 ["%*, %*"]
      432 MOVE                             R26 R18
      433 MOVE                             R27 R19
      434 NAMECALL                         R24 R24 K71 ["format"]
      436 CALL                             R24 3 1
      437 MOVE                             R23 R24
      438 JUMP                             ; [+1]
      439 MOVE                             R23 R18
      440 SETTABLEKS                       R23 R22 K23 ["text"]
      442 GETTABLEKS                       R23 R0 K72 ["onSortIntentRemoved"]
      444 SETTABLEKS                       R23 R22 K24 ["onDelete"]
      446 FASTCALL2                        TABLE_INSERT R16 R22 ; [+4]
      448 MOVE                             R21 R16
      449 GETIMPORT                        R20 K29 [table.insert]
      451 CALL                             R20 2 0
      452 MOVE                             R18 R4
      453 JUMPIF                           R18 ; [+3]
      454 MOVE                             R18 R3
      455 JUMPIF                           R18 ; [+1]
      456 MOVE                             R18 R7
      457 JUMPIFNOT                        R18 ; [+16]
      458 DUPTABLE                         R21 K25 [{"prefix", "text", "onDelete"}]
      459 SETTABLEKS                       R15 R21 K22 ["prefix"]
      461 LOADK                            R22 K1 [""]
      462 SETTABLEKS                       R22 R21 K23 ["text"]
      464 GETTABLEKS                       R22 R0 K73 ["onIsVerifiedCleared"]
      466 SETTABLEKS                       R22 R21 K24 ["onDelete"]
      468 FASTCALL2                        TABLE_INSERT R16 R21 ; [+4]
      470 MOVE                             R20 R16
      471 GETIMPORT                        R19 K29 [table.insert]
      473 CALL                             R19 2 0
      474 GETUPVAL                         R19 2
      475 GETTABLEKS                       R19 R19 K74 ["createElement"]
      477 GETUPVAL                         R20 3
      478 DUPTABLE                         R21 K80 [{"Tags", "onClearTags", "searchTerm", "categoryName", "onBackToHome", "LayoutOrder"}]
      479 SETTABLEKS                       R16 R21 K75 ["Tags"]
      481 GETTABLEKS                       R22 R0 K81 ["onTagsCleared"]
      483 SETTABLEKS                       R22 R21 K76 ["onClearTags"]
      485 SETTABLEKS                       R2 R21 K2 ["searchTerm"]
      487 GETTABLEKS                       R22 R1 K77 ["categoryName"]
      489 SETTABLEKS                       R22 R21 K77 ["categoryName"]
      491 GETTABLEKS                       R22 R1 K78 ["onBackToHome"]
      493 SETTABLEKS                       R22 R21 K78 ["onBackToHome"]
      495 LOADN                            R22 1
      496 SETTABLEKS                       R22 R21 K79 ["LayoutOrder"]
      498 CALL                             R19 2 1
      499 SETTABLEKS                       R19 R11 K82 ["SearchTags"]
      501 LOADB                            R19 0
      502 GETTABLEKS                       R20 R1 K83 ["correctionState"]
      504 GETUPVAL                         R21 4
      505 GETTABLEKS                       R21 R21 K84 ["AutocorrectResponseState"]
      507 GETTABLEKS                       R21 R21 K85 ["CorrectionAvailable"]
      509 JUMPIFNOTEQ                      R20 R21 ; [+7]
      511 GETTABLEKS                       R20 R1 K86 ["correctedQuery"]
      513 JUMPIFNOTEQKS                    R20 K1 [""] ; [+2]
      515 LOADB                            R19 0 +1
      516 LOADB                            R19 1
      517 LOADB                            R20 0
      518 GETTABLEKS                       R21 R1 K83 ["correctionState"]
      520 GETUPVAL                         R22 4
      521 GETTABLEKS                       R22 R22 K84 ["AutocorrectResponseState"]
      523 GETTABLEKS                       R22 R22 K87 ["CorrectionAccepted"]
      525 JUMPIFNOTEQ                      R21 R22 ; [+7]
      527 GETTABLEKS                       R21 R1 K88 ["userQuery"]
      529 JUMPIFNOTEQKS                    R21 K1 [""] ; [+2]
      531 LOADB                            R20 0 +1
      532 LOADB                            R20 1
      533 OR                               R21 R19 R20
      534 GETIMPORT                        R22 K31 [next]
      536 MOVE                             R23 R16
      537 CALL                             R22 1 1
      538 JUMPIFEQKNIL                     R22 ; [+7]
      540 JUMPIF                           R21 ; [+5]
      541 GETUPVAL                         R22 5
      542 GETTABLEKS                       R22 R22 K89 ["MAIN_VIEW_VERTICAL_PADDING"]
      544 ADD                              R10 R10 R22
      545 JUMP                             ; [0]
      546 JUMPIFNOT                        R21 ; [+24]
      547 GETUPVAL                         R22 2
      548 GETTABLEKS                       R22 R22 K74 ["createElement"]
      550 GETUPVAL                         R23 6
      551 DUPTABLE                         R24 K94 [{"CorrectedQuery", "CorrectionState", "CurrentQuery", "LayoutOrder", "UserQuery"}]
      552 GETTABLEKS                       R25 R1 K86 ["correctedQuery"]
      554 SETTABLEKS                       R25 R24 K90 ["CorrectedQuery"]
      556 GETTABLEKS                       R25 R1 K83 ["correctionState"]
      558 SETTABLEKS                       R25 R24 K91 ["CorrectionState"]
      560 SETTABLEKS                       R2 R24 K92 ["CurrentQuery"]
      562 LOADN                            R25 2
      563 SETTABLEKS                       R25 R24 K79 ["LayoutOrder"]
      565 GETTABLEKS                       R25 R1 K88 ["userQuery"]
      567 SETTABLEKS                       R25 R24 K93 ["UserQuery"]
      569 CALL                             R22 2 1
      570 JUMP                             ; [+1]
      571 LOADNIL                          R22
      572 SETTABLEKS                       R22 R11 K95 ["Autocorrect"]
      574 GETUPVAL                         R13 2
      575 GETTABLEKS                       R13 R13 K74 ["createElement"]
      577 GETUPVAL                         R14 7
      578 DUPTABLE                         R15 K103 [{"Position", "Size", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment", "ZIndex"}]
      579 GETIMPORT                        R16 K106 [UDim2.new]
      581 LOADN                            R17 0
      582 LOADN                            R18 0
      583 LOADN                            R19 0
      584 LOADN                            R20 254
      585 CALL                             R16 4 1
      586 SETTABLEKS                       R16 R15 K96 ["Position"]
      588 GETIMPORT                        R16 K106 [UDim2.new]
      590 LOADN                            R17 0
      591 MOVE                             R18 R9
      592 LOADN                            R19 0
      593 MOVE                             R20 R10
      594 CALL                             R16 4 1
      595 SETTABLEKS                       R16 R15 K97 ["Size"]
      597 LOADN                            R16 1
      598 SETTABLEKS                       R16 R15 K98 ["BackgroundTransparency"]
      600 GETIMPORT                        R16 K109 [Enum.HorizontalAlignment.Left]
      602 SETTABLEKS                       R16 R15 K99 ["HorizontalAlignment"]
      604 GETIMPORT                        R16 K112 [Enum.FillDirection.Vertical]
      606 SETTABLEKS                       R16 R15 K100 ["Layout"]
      608 GETIMPORT                        R16 K114 [Enum.VerticalAlignment.Top]
      610 SETTABLEKS                       R16 R15 K101 ["VerticalAlignment"]
      612 LOADN                            R16 2
      613 SETTABLEKS                       R16 R15 K102 ["ZIndex"]
      615 MOVE                             R16 R11
      616 CALL                             R13 3 -1
      617 RETURN                           R13 -1

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
