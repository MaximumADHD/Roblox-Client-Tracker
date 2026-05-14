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
        7 DUPTABLE                         R4 K16 [{"categoryName", "sectionName", "keyword", "ownerId", "sortType", "tags", "cursor", "limit", "includeOnlyVerifiedCreators", "queryParams", "searchSource", "assetsInCameraViewport", "assetsInCameraVicinity", "qualityFilterData"}]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["categoryName"]
       11 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["sectionName"]
       16 SETTABLEKS                       R5 R4 K3 ["sectionName"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K17 ["searchTerm"]
       21 SETTABLEKS                       R5 R4 K4 ["keyword"]
       23 GETUPVAL                         R5 3
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K5 ["ownerId"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K18 ["sortName"]
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
       66 GETUPVAL                         R6 6
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+4]
       69 GETUPVAL                         R5 2
       70 GETTABLEKS                       R5 R5 K15 ["qualityFilterData"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R5
       74 SETTABLEKS                       R5 R4 K15 ["qualityFilterData"]
       76 NAMECALL                         R2 R2 K19 ["getToolboxItems"]
       78 CALL                             R2 2 1
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          REF R1
       81 CAPTURE                          UPVAL U0
       82 NAMECALL                         R2 R2 K20 ["catch"]
       84 CALL                             R2 2 1
       85 NAMECALL                         R2 R2 K21 ["await"]
       87 CALL                             R2 1 1
       88 JUMPIFNOT                        R1 ; [+2]
       89 CLOSEUPVALS                      R1
       90 RETURN                           R0 0
       91 GETTABLEKS                       R3 R2 K22 ["responseBody"]
       93 NEWTABLE                         R4 0 0
       95 NEWTABLE                         R5 0 0
       97 GETIMPORT                        R6 K24 [ipairs]
       99 GETTABLEKS                       R7 R3 K25 ["data"]
      101 CALL                             R6 1 3
      102 FORGPREP_INEXT                   R6
      103 GETTABLEKS                       R13 R10 K26 ["id"]
      105 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
      107 MOVE                             R12 R4
      108 GETIMPORT                        R11 K29 [table.insert]
      110 CALL                             R11 2 0
      111 GETTABLEKS                       R11 R10 K26 ["id"]
      113 JUMPIFNOT                        R11 ; [+8]
      114 GETTABLEKS                       R11 R10 K26 ["id"]
      116 DUPTABLE                         R12 K31 [{"searchResultSource"}]
      117 GETTABLEKS                       R13 R10 K30 ["searchResultSource"]
      119 SETTABLEKS                       R13 R12 K30 ["searchResultSource"]
      121 SETTABLE                         R12 R5 R11
      122 FORGLOOP                         R6 2 [inext] ; [-20]
      124 GETUPVAL                         R6 1
      125 MOVE                             R8 R4
      126 NAMECALL                         R6 R6 K32 ["getItemDetailsAssetIds"]
      128 CALL                             R6 2 1
      129 NEWCLOSURE                       R8 P1
      130 CAPTURE                          REF R1
      131 CAPTURE                          UPVAL U0
      132 NAMECALL                         R6 R6 K20 ["catch"]
      134 CALL                             R6 2 1
      135 NAMECALL                         R6 R6 K21 ["await"]
      137 CALL                             R6 1 1
      138 JUMPIFNOT                        R1 ; [+2]
      139 CLOSEUPVALS                      R1
      140 RETURN                           R0 0
      141 GETTABLEKS                       R7 R6 K22 ["responseBody"]
      143 NEWTABLE                         R8 0 0
      145 GETIMPORT                        R9 K34 [pairs]
      147 GETTABLEKS                       R10 R7 K25 ["data"]
      149 CALL                             R9 1 3
      150 FORGPREP_NEXT                    R9
      151 GETUPVAL                         R14 7
      152 GETTABLEKS                       R14 R14 K35 ["fromItemDetailsRequest"]
      154 MOVE                             R15 R13
      155 CALL                             R14 1 1
      156 GETTABLEKS                       R15 R13 K36 ["Asset"]
      158 JUMPIFNOT                        R15 ; [+16]
      159 GETTABLEKS                       R15 R13 K36 ["Asset"]
      161 GETTABLEKS                       R15 R15 K26 ["id"]
      163 JUMPIFNOT                        R15 ; [+11]
      164 GETUPVAL                         R15 7
      165 GETTABLEKS                       R15 R15 K37 ["AddContextToItemDetails"]
      167 MOVE                             R16 R14
      168 GETTABLEKS                       R18 R13 K36 ["Asset"]
      170 GETTABLEKS                       R18 R18 K26 ["id"]
      172 GETTABLE                         R17 R5 R18
      173 CALL                             R15 2 1
      174 MOVE                             R14 R15
      175 GETTABLEKS                       R15 R14 K36 ["Asset"]
      177 JUMPIFNOT                        R15 ; [+5]
      178 GETTABLEKS                       R15 R14 K36 ["Asset"]
      180 GETTABLEKS                       R15 R15 K38 ["Id"]
      182 SETTABLE                         R14 R8 R15
      183 FORGLOOP                         R9 2 ; [-33]
      185 GETUPVAL                         R9 0
      186 LOADB                            R10 0
      187 SETTABLEKS                       R10 R9 K39 ["loadingMutex"]
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R9 R9 K40 ["canceled"]
      192 JUMPIFNOT                        R9 ; [+6]
      193 GETUPVAL                         R9 0
      194 LOADB                            R10 0
      195 SETTABLEKS                       R10 R9 K40 ["canceled"]
      197 CLOSEUPVALS                      R1
      198 RETURN                           R0 0
      199 GETUPVAL                         R9 0
      200 NEWCLOSURE                       R11 P2
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R8
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          UPVAL U5
      206 CAPTURE                          VAL R5
      207 CAPTURE                          UPVAL U10
      208 CAPTURE                          UPVAL U11
      209 CAPTURE                          UPVAL U12
      210 CAPTURE                          VAL R2
      211 CAPTURE                          UPVAL U0
      212 CAPTURE                          UPVAL U13
      213 NAMECALL                         R9 R9 K41 ["setState"]
      215 CALL                             R9 2 0
      216 CLOSEUPVALS                      R1
      217 RETURN                           R0 0

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
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U0
       60 GETIMPORT                        R8 K12 [task.spawn]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R0
       65 CALL                             R8 1 0
       66 RETURN                           R0 0

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
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R19 R0 K15 ["Src"]
      118 GETTABLEKS                       R19 R19 K30 ["Flags"]
      120 GETTABLEKS                       R19 R19 K31 ["getFFlagQualityFiltersInToolboxSearch"]
      122 CALL                             R18 1 1
      123 GETTABLEKS                       R19 R2 K32 ["PureComponent"]
      125 LOADK                            R21 K33 ["ResultsFetcher"]
      126 NAMECALL                         R19 R19 K34 ["extend"]
      128 CALL                             R19 2 1
      129 DUPCLOSURE                       R20 K35 [PROTO_1]
      130 SETTABLEKS                       R20 R19 K36 ["init"]
      132 DUPCLOSURE                       R20 K37 [PROTO_3]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R20 R19 K38 ["didUpdate"]
      137 DUPCLOSURE                       R20 K39 [PROTO_13]
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R11
      146 SETTABLEKS                       R20 R19 K40 ["fetchResults"]
      148 DUPCLOSURE                       R20 K41 [PROTO_14]
      149 SETTABLEKS                       R20 R19 K42 ["render"]
      151 DUPCLOSURE                       R20 K43 [PROTO_15]
      152 SETTABLEKS                       R20 R19 K44 ["didMount"]
      154 GETTABLEKS                       R20 R2 K32 ["PureComponent"]
      156 LOADK                            R22 K45 ["ResultsFetcherRoduxWrapper"]
      157 NAMECALL                         R20 R20 K34 ["extend"]
      159 CALL                             R20 2 1
      160 DUPCLOSURE                       R21 K46 [PROTO_16]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R19
      163 SETTABLEKS                       R21 R20 K42 ["render"]
      165 DUPCLOSURE                       R21 K47 [PROTO_18]
      166 CAPTURE                          VAL R17
      167 NEWCLOSURE                       R22 P7
      168 CAPTURE                          VAL R2
      169 CAPTURE                          REF R20
      170 SETGLOBAL                        R22 K48 ["TypedResultsFetcher"]
      172 DUPCLOSURE                       R22 K49 [PROTO_20]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R19
      175 SETGLOBAL                        R22 K50 ["NoRoduxTypedResultsFetcher"]
      177 GETTABLEKS                       R22 R3 K51 ["connect"]
      179 LOADNIL                          R23
      180 MOVE                             R24 R21
      181 CALL                             R22 2 1
      182 MOVE                             R23 R20
      183 CALL                             R22 1 1
      184 MOVE                             R20 R22
      185 DUPTABLE                         R22 K55 [{"Component", "Generator", "NoRoduxGenerator"}]
      186 SETTABLEKS                       R19 R22 K52 ["Component"]
      188 GETGLOBAL                        R23 K48 ["TypedResultsFetcher"]
      190 SETTABLEKS                       R23 R22 K53 ["Generator"]
      192 GETGLOBAL                        R23 K50 ["NoRoduxTypedResultsFetcher"]
      194 SETTABLEKS                       R23 R22 K54 ["NoRoduxGenerator"]
      196 CLOSEUPVALS                      R20
      197 RETURN                           R22 1
