PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"pageSize"}]
        2 SETTABLEKS                       R0 R3 K0 ["pageSize"]
        4 NAMECALL                         R1 R1 K2 ["fetchResults"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["loadingMutex"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K1 ["fetchNextPage"]
        7 DUPTABLE                         R2 K9 [{"loading", "error", "total", "fetchNextPage", "assets", "assetMap", "assetIds", "nextPageCursor"}]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["loading"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K3 ["error"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["total"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K1 ["fetchNextPage"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K5 ["assets"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K6 ["assetMap"]
       28 NEWTABLE                         R3 0 0
       30 SETTABLEKS                       R3 R2 K7 ["assetIds"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K8 ["nextPageCursor"]
       35 GETIMPORT                        R3 K12 [table.freeze]
       37 MOVE                             R4 R2
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R0 K13 ["INITIAL_RESULTS_STATE"]
       41 GETTABLEKS                       R3 R0 K13 ["INITIAL_RESULTS_STATE"]
       43 SETTABLEKS                       R3 R0 K14 ["state"]
       45 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["render"] ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_2]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["filter"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["filter"]
       10 GETTABLEKS                       R5 R0 K2 ["props"]
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R3
       16 MOVE                             R7 R4
       17 CALL                             R5 2 1
       18 JUMPIF                           R5 ; [+14]
       19 GETTABLEKS                       R5 R0 K3 ["loadingMutex"]
       21 SETTABLEKS                       R5 R0 K4 ["canceled"]
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R0 K3 ["loadingMutex"]
       26 DUPTABLE                         R7 K6 [{"initialPage"}]
       27 LOADB                            R8 1
       28 SETTABLEKS                       R8 R7 K5 ["initialPage"]
       30 NAMECALL                         R5 R0 K7 ["fetchResults"]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["initialPage"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["join"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["INITIAL_RESULTS_STATE"]
       10 CALL                             R0 1 1
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R0 0 0
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K3 ["loading"]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K4 ["None"]
       20 SETTABLEKS                       R1 R0 K5 ["error"]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K4 ["None"]
       25 SETTABLEKS                       R1 R0 K6 ["fetchNextPage"]
       27 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["loading"]
        5 DUPTABLE                         R1 K2 [{"error"}]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K1 ["error"]
        9 SETTABLEKS                       R1 R0 K1 ["error"]
       11 RETURN                           R0 1

PROTO_6:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["loadingMutex"]
        6 GETUPVAL                         R1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K1 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["loading"]
        5 DUPTABLE                         R1 K2 [{"error"}]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K1 ["error"]
        9 SETTABLEKS                       R1 R0 K1 ["error"]
       11 RETURN                           R0 1

PROTO_8:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["loadingMutex"]
        6 GETUPVAL                         R1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K1 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["append"]
        5 NEWTABLE                         R3 0 0
        7 GETTABLEKS                       R4 R0 K1 ["assetIds"]
        9 GETUPVAL                         R5 1
       10 CALL                             R2 3 1
       11 SETTABLEKS                       R2 R1 K1 ["assetIds"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["join"]
       16 GETTABLEKS                       R3 R0 K3 ["assetMap"]
       18 GETUPVAL                         R4 2
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K3 ["assetMap"]
       22 GETTABLEKS                       R3 R0 K4 ["assets"]
       24 LENGTH                           R2 R3
       25 NEWTABLE                         R3 0 0
       27 GETIMPORT                        R4 K6 [ipairs]
       29 GETUPVAL                         R5 1
       30 CALL                             R4 1 3
       31 FORGPREP_INEXT                   R4
       32 GETUPVAL                         R10 2
       33 GETTABLE                         R9 R10 R8
       34 ADD                              R10 R2 R7
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R12 R12 K8 ["round"]
       38 GETUPVAL                         R14 4
       39 DIV                              R13 R2 R14
       40 CALL                             R12 1 1
       41 ADDK                             R11 R12 K7 [1]
       42 JUMPIFNOT                        R9 ; [+22]
       43 DUPTABLE                         R12 K13 [{"page", "pagePosition", "position", "searchResultSource"}]
       44 SETTABLEKS                       R11 R12 K9 ["page"]
       46 SETTABLEKS                       R7 R12 K10 ["pagePosition"]
       48 SETTABLEKS                       R10 R12 K11 ["position"]
       50 GETUPVAL                         R15 5
       51 GETTABLE                         R14 R15 R8
       52 JUMPIFNOT                        R14 ; [+5]
       53 GETUPVAL                         R14 5
       54 GETTABLE                         R13 R14 R8
       55 GETTABLEKS                       R13 R13 K12 ["searchResultSource"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 SETTABLEKS                       R13 R12 K12 ["searchResultSource"]
       61 SETTABLEKS                       R12 R9 K14 ["Context"]
       63 SETTABLE                         R9 R3 R7
       64 JUMP                             ; [+14]
       65 GETUPVAL                         R12 6
       66 GETTABLEKS                       R12 R12 K15 ["shouldDebugWarnings"]
       68 CALL                             R12 0 1
       69 JUMPIFNOT                        R12 ; [+9]
       70 GETIMPORT                        R12 K17 [warn]
       72 LOADK                            R14 K18 ["asset with ID %* not found in asset map"]
       73 MOVE                             R16 R8
       74 NAMECALL                         R14 R14 K19 ["format"]
       76 CALL                             R14 2 1
       77 MOVE                             R13 R14
       78 CALL                             R12 1 0
       79 FORGLOOP                         R4 2 [inext] ; [-48]
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R4 R4 K0 ["append"]
       84 NEWTABLE                         R5 0 0
       86 GETTABLEKS                       R6 R0 K4 ["assets"]
       88 MOVE                             R7 R3
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R1 K4 ["assets"]
       92 LOADB                            R4 0
       93 SETTABLEKS                       R4 R1 K20 ["loading"]
       95 GETUPVAL                         R4 7
       96 GETTABLEKS                       R4 R4 K21 ["None"]
       98 SETTABLEKS                       R4 R1 K22 ["error"]
      100 GETUPVAL                         R5 8
      101 GETTABLEKS                       R5 R5 K23 ["initialPage"]
      103 JUMPIFNOT                        R5 ; [+6]
      104 GETUPVAL                         R4 9
      105 GETTABLEKS                       R4 R4 K24 ["responseBody"]
      107 GETTABLEKS                       R4 R4 K25 ["totalResults"]
      109 JUMPIF                           R4 ; [+1]
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R1 K26 ["total"]
      113 GETUPVAL                         R4 9
      114 GETTABLEKS                       R4 R4 K24 ["responseBody"]
      116 GETTABLEKS                       R4 R4 K27 ["nextPageCursor"]
      118 SETTABLEKS                       R4 R1 K27 ["nextPageCursor"]
      120 GETUPVAL                         R4 10
      121 GETTABLEKS                       R4 R4 K28 ["fetchNextPage"]
      123 SETTABLEKS                       R4 R1 K28 ["fetchNextPage"]
      125 GETTABLEKS                       R4 R1 K27 ["nextPageCursor"]
      127 JUMPIFNOTEQKNIL                  R4 ; [+6]
      129 GETUPVAL                         R4 11
      130 GETTABLEKS                       R4 R4 K21 ["None"]
      132 SETTABLEKS                       R4 R1 K27 ["nextPageCursor"]
      134 GETUPVAL                         R4 10
      135 GETTABLEKS                       R4 R4 K29 ["props"]
      137 GETTABLEKS                       R4 R4 K30 ["dispatchGetAssetsVotingData"]
      139 JUMPIFNOT                        R4 ; [+8]
      140 GETUPVAL                         R4 10
      141 GETTABLEKS                       R4 R4 K29 ["props"]
      143 GETTABLEKS                       R4 R4 K30 ["dispatchGetAssetsVotingData"]
      145 GETTABLEKS                       R5 R1 K4 ["assets"]
      147 CALL                             R4 1 0
      148 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["includeUnverifiedCreators"]
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R4 K15 [{"categoryName", "sectionName", "keyword", "ownerId", "sortType", "tags", "cursor", "limit", "includeOnlyVerifiedCreators", "queryParams", "searchSource", "assetsInCameraViewport", "assetsInCameraVicinity"}]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["categoryName"]
       11 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["sectionName"]
       16 SETTABLEKS                       R5 R4 K3 ["sectionName"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K16 ["searchTerm"]
       21 SETTABLEKS                       R5 R4 K4 ["keyword"]
       23 GETUPVAL                         R5 3
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K5 ["ownerId"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K17 ["sortName"]
       30 SETTABLEKS                       R5 R4 K6 ["sortType"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K7 ["tags"]
       35 SETTABLEKS                       R5 R4 K7 ["tags"]
       37 GETUPVAL                         R5 4
       38 SETTABLEKS                       R5 R4 K8 ["cursor"]
       40 GETUPVAL                         R5 5
       41 SETTABLEKS                       R5 R4 K9 ["limit"]
       43 NOT                              R5 R0
       44 SETTABLEKS                       R5 R4 K10 ["includeOnlyVerifiedCreators"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K11 ["queryParams"]
       49 SETTABLEKS                       R5 R4 K11 ["queryParams"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K12 ["searchSource"]
       54 SETTABLEKS                       R5 R4 K12 ["searchSource"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K13 ["assetsInCameraViewport"]
       59 SETTABLEKS                       R5 R4 K13 ["assetsInCameraViewport"]
       61 GETUPVAL                         R5 2
       62 GETTABLEKS                       R5 R5 K14 ["assetsInCameraVicinity"]
       64 SETTABLEKS                       R5 R4 K14 ["assetsInCameraVicinity"]
       66 NAMECALL                         R2 R2 K18 ["getToolboxItems"]
       68 CALL                             R2 2 1
       69 NEWCLOSURE                       R4 P0
       70 CAPTURE                          REF R1
       71 CAPTURE                          UPVAL U0
       72 NAMECALL                         R2 R2 K19 ["catch"]
       74 CALL                             R2 2 1
       75 NAMECALL                         R2 R2 K20 ["await"]
       77 CALL                             R2 1 1
       78 JUMPIFNOT                        R1 ; [+2]
       79 CLOSEUPVALS                      R1
       80 RETURN                           R0 0
       81 GETTABLEKS                       R3 R2 K21 ["responseBody"]
       83 NEWTABLE                         R4 0 0
       85 NEWTABLE                         R5 0 0
       87 GETIMPORT                        R6 K23 [ipairs]
       89 GETTABLEKS                       R7 R3 K24 ["data"]
       91 CALL                             R6 1 3
       92 FORGPREP_INEXT                   R6
       93 GETTABLEKS                       R13 R10 K25 ["id"]
       95 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       97 MOVE                             R12 R4
       98 GETIMPORT                        R11 K28 [table.insert]
      100 CALL                             R11 2 0
      101 GETTABLEKS                       R11 R10 K25 ["id"]
      103 JUMPIFNOT                        R11 ; [+8]
      104 GETTABLEKS                       R11 R10 K25 ["id"]
      106 DUPTABLE                         R12 K30 [{"searchResultSource"}]
      107 GETTABLEKS                       R13 R10 K29 ["searchResultSource"]
      109 SETTABLEKS                       R13 R12 K29 ["searchResultSource"]
      111 SETTABLE                         R12 R5 R11
      112 FORGLOOP                         R6 2 [inext] ; [-20]
      114 GETUPVAL                         R6 1
      115 MOVE                             R8 R4
      116 NAMECALL                         R6 R6 K31 ["getItemDetailsAssetIds"]
      118 CALL                             R6 2 1
      119 NEWCLOSURE                       R8 P1
      120 CAPTURE                          REF R1
      121 CAPTURE                          UPVAL U0
      122 NAMECALL                         R6 R6 K19 ["catch"]
      124 CALL                             R6 2 1
      125 NAMECALL                         R6 R6 K20 ["await"]
      127 CALL                             R6 1 1
      128 JUMPIFNOT                        R1 ; [+2]
      129 CLOSEUPVALS                      R1
      130 RETURN                           R0 0
      131 GETTABLEKS                       R7 R6 K21 ["responseBody"]
      133 NEWTABLE                         R8 0 0
      135 GETIMPORT                        R9 K33 [pairs]
      137 GETTABLEKS                       R10 R7 K24 ["data"]
      139 CALL                             R9 1 3
      140 FORGPREP_NEXT                    R9
      141 GETUPVAL                         R14 6
      142 GETTABLEKS                       R14 R14 K34 ["fromItemDetailsRequest"]
      144 MOVE                             R15 R13
      145 CALL                             R14 1 1
      146 GETTABLEKS                       R15 R13 K35 ["Asset"]
      148 JUMPIFNOT                        R15 ; [+16]
      149 GETTABLEKS                       R15 R13 K35 ["Asset"]
      151 GETTABLEKS                       R15 R15 K25 ["id"]
      153 JUMPIFNOT                        R15 ; [+11]
      154 GETUPVAL                         R15 6
      155 GETTABLEKS                       R15 R15 K36 ["AddContextToItemDetails"]
      157 MOVE                             R16 R14
      158 GETTABLEKS                       R18 R13 K35 ["Asset"]
      160 GETTABLEKS                       R18 R18 K25 ["id"]
      162 GETTABLE                         R17 R5 R18
      163 CALL                             R15 2 1
      164 MOVE                             R14 R15
      165 GETTABLEKS                       R15 R14 K35 ["Asset"]
      167 JUMPIFNOT                        R15 ; [+5]
      168 GETTABLEKS                       R15 R14 K35 ["Asset"]
      170 GETTABLEKS                       R15 R15 K37 ["Id"]
      172 SETTABLE                         R14 R8 R15
      173 FORGLOOP                         R9 2 ; [-33]
      175 GETUPVAL                         R9 0
      176 LOADB                            R10 0
      177 SETTABLEKS                       R10 R9 K38 ["loadingMutex"]
      179 GETUPVAL                         R9 0
      180 GETTABLEKS                       R9 R9 K39 ["canceled"]
      182 JUMPIFNOT                        R9 ; [+6]
      183 GETUPVAL                         R9 0
      184 LOADB                            R10 0
      185 SETTABLEKS                       R10 R9 K39 ["canceled"]
      187 CLOSEUPVALS                      R1
      188 RETURN                           R0 0
      189 GETUPVAL                         R9 0
      190 NEWCLOSURE                       R11 P2
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R8
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          UPVAL U5
      196 CAPTURE                          VAL R5
      197 CAPTURE                          UPVAL U9
      198 CAPTURE                          UPVAL U10
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          VAL R2
      201 CAPTURE                          UPVAL U0
      202 CAPTURE                          UPVAL U12
      203 NAMECALL                         R9 R9 K40 ["setState"]
      205 CALL                             R9 2 0
      206 CLOSEUPVALS                      R1
      207 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["loading"]
        5 DUPTABLE                         R1 K2 [{"message"}]
        6 GETUPVAL                         R3 0
        7 FASTCALL1                        TOSTRING R3 ; [+2]
        8 GETIMPORT                        R2 K4 [tostring]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K1 ["message"]
       13 SETTABLEKS                       R1 R0 K5 ["error"]
       15 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+10]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["loadingMutex"]
        9 GETUPVAL                         R2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K3 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["networkInterface"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R4 R1 K2 ["pageSize"]
        7 JUMPIF                           R4 ; [+2]
        8 GETTABLEKS                       R4 R2 K3 ["initialPageSize"]
       10 GETTABLEKS                       R5 R0 K4 ["state"]
       12 GETTABLEKS                       R7 R1 K5 ["initialPage"]
       14 JUMPIFNOT                        R7 ; [+2]
       15 LOADNIL                          R6
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R5 K6 ["nextPageCursor"]
       19 GETTABLEKS                       R7 R1 K5 ["initialPage"]
       21 JUMPIF                           R7 ; [+8]
       22 JUMPIFEQKNIL                     R6 ; [+6]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K7 ["None"]
       27 JUMPIFNOTEQ                      R6 R7 ; [+2]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R7 R0 K8 ["loadingMutex"]
       32 JUMPIFNOT                        R7 ; [+1]
       33 RETURN                           R0 0
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R0 K8 ["loadingMutex"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 NAMECALL                         R7 R0 K9 ["setState"]
       44 CALL                             R7 2 0
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U0
       59 GETIMPORT                        R8 K12 [task.spawn]
       61 NEWCLOSURE                       R9 P2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CALL                             R8 1 0
       65 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["render"]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_15:
        0 DUPTABLE                         R3 K1 [{"initialPage"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["initialPage"]
        4 NAMECALL                         R1 R0 K2 ["fetchResults"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"dispatchGetAssetsVotingData"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchGetAssetsVotingData"]
        6 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

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
       24 GETTABLEKS                       R5 R4 K10 ["Util"]
       26 GETTABLEKS                       R5 R5 K11 ["deepEqual"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["Dash"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R1 K13 ["Cryo"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R4 K10 ["Util"]
       40 GETTABLEKS                       R8 R8 K14 ["Math"]
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Src"]
       46 GETTABLEKS                       R10 R10 K10 ["Util"]
       48 GETTABLEKS                       R10 R10 K16 ["getUserId"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R0 K15 ["Src"]
       55 GETTABLEKS                       R11 R11 K10 ["Util"]
       57 GETTABLEKS                       R11 R11 K17 ["Constants"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K15 ["Src"]
       64 GETTABLEKS                       R12 R12 K10 ["Util"]
       66 GETTABLEKS                       R12 R12 K18 ["DebugFlags"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R13 R0 K15 ["Src"]
       73 GETTABLEKS                       R13 R13 K19 ["Networking"]
       75 GETTABLEKS                       R13 R13 K20 ["NetworkInterface"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R14 R0 K21 ["Libs"]
       82 GETTABLEKS                       R14 R14 K22 ["Http"]
       84 GETTABLEKS                       R14 R14 K23 ["HttpResponse"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K15 ["Src"]
       91 GETTABLEKS                       R15 R15 K24 ["Models"]
       93 GETTABLEKS                       R15 R15 K25 ["AssetInfo"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K15 ["Src"]
      100 GETTABLEKS                       R16 R16 K26 ["Types"]
      102 GETTABLEKS                       R16 R16 K27 ["HomeTypes"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R16 R0 K15 ["Src"]
      107 GETTABLEKS                       R16 R16 K28 ["Actions"]
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R18 R16 K29 ["GetAssetsVotingData"]
      113 CALL                             R17 1 1
      114 GETTABLEKS                       R18 R2 K30 ["PureComponent"]
      116 LOADK                            R20 K31 ["ResultsFetcher"]
      117 NAMECALL                         R18 R18 K32 ["extend"]
      119 CALL                             R18 2 1
      120 DUPCLOSURE                       R19 K33 [PROTO_1]
      121 SETTABLEKS                       R19 R18 K34 ["init"]
      123 DUPCLOSURE                       R19 K35 [PROTO_3]
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R19 R18 K36 ["didUpdate"]
      128 DUPCLOSURE                       R19 K37 [PROTO_13]
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R11
      136 SETTABLEKS                       R19 R18 K38 ["fetchResults"]
      138 DUPCLOSURE                       R19 K39 [PROTO_14]
      139 SETTABLEKS                       R19 R18 K40 ["render"]
      141 DUPCLOSURE                       R19 K41 [PROTO_15]
      142 SETTABLEKS                       R19 R18 K42 ["didMount"]
      144 GETTABLEKS                       R19 R2 K30 ["PureComponent"]
      146 LOADK                            R21 K43 ["ResultsFetcherRoduxWrapper"]
      147 NAMECALL                         R19 R19 K32 ["extend"]
      149 CALL                             R19 2 1
      150 DUPCLOSURE                       R20 K44 [PROTO_16]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R18
      153 SETTABLEKS                       R20 R19 K40 ["render"]
      155 DUPCLOSURE                       R20 K45 [PROTO_18]
      156 CAPTURE                          VAL R17
      157 NEWCLOSURE                       R21 P7
      158 CAPTURE                          VAL R2
      159 CAPTURE                          REF R19
      160 SETGLOBAL                        R21 K46 ["TypedResultsFetcher"]
      162 DUPCLOSURE                       R21 K47 [PROTO_20]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R18
      165 SETGLOBAL                        R21 K48 ["NoRoduxTypedResultsFetcher"]
      167 GETTABLEKS                       R21 R3 K49 ["connect"]
      169 LOADNIL                          R22
      170 MOVE                             R23 R20
      171 CALL                             R21 2 1
      172 MOVE                             R22 R19
      173 CALL                             R21 1 1
      174 MOVE                             R19 R21
      175 DUPTABLE                         R21 K53 [{"Component", "Generator", "NoRoduxGenerator"}]
      176 SETTABLEKS                       R18 R21 K50 ["Component"]
      178 GETGLOBAL                        R22 K46 ["TypedResultsFetcher"]
      180 SETTABLEKS                       R22 R21 K51 ["Generator"]
      182 GETGLOBAL                        R22 K48 ["NoRoduxTypedResultsFetcher"]
      184 SETTABLEKS                       R22 R21 K52 ["NoRoduxGenerator"]
      186 CLOSEUPVALS                      R19
      187 RETURN                           R21 1
