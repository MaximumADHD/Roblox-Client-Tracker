PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["addText"]
        5 CALL                             R1 2 1
        6 LOADB                            R3 1
        7 NAMECALL                         R1 R1 K1 ["setError"]
        9 CALL                             R1 2 1
       10 NAMECALL                         R1 R1 K2 ["build"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+10]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIFNOTLE                      R2 R0 ; [+6]
       12 MODK                             R2 R0 K3 [1]
       13 JUMPIFEQKN                       R2 K4 [0] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 GETIMPORT                        R3 K2 [string.find]
        5 GETIMPORT                        R4 K4 [string.lower]
        7 GETTABLEKS                       R5 R0 K5 ["name"]
        9 CALL                             R4 1 1
       10 MOVE                             R5 R1
       11 LOADN                            R6 1
       12 LOADB                            R7 1
       13 CALL                             R3 4 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R10 1
        8 JUMP                             ; [+15]
        9 GETIMPORT                        R11 K2 [string.find]
       11 GETIMPORT                        R12 K4 [string.lower]
       13 GETTABLEKS                       R13 R9 K5 ["name"]
       15 CALL                             R12 1 1
       16 MOVE                             R13 R1
       17 LOADN                            R14 1
       18 LOADB                            R15 1
       19 CALL                             R11 4 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 JUMPIFNOT                        R10 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       27 MOVE                             R11 R4
       28 MOVE                             R12 R9
       29 GETIMPORT                        R10 K8 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R5 2 ; [-27]
       34 MUL                              R6 R2 R3
       35 ADDK                             R5 R6 K9 [1]
       36 ADD                              R8 R5 R3
       37 SUBK                             R7 R8 K9 [1]
       38 LENGTH                           R8 R4
       39 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       41 GETIMPORT                        R6 K12 [math.min]
       43 CALL                             R6 2 1
       44 NEWTABLE                         R7 0 0
       46 MOVE                             R10 R5
       47 MOVE                             R8 R6
       48 LOADN                            R9 1
       49 FORNPREP                         R8
       50 GETTABLE                         R13 R4 R10
       51 FASTCALL2                        TABLE_INSERT R7 R13 ; [+4]
       53 MOVE                             R12 R7
       54 GETIMPORT                        R11 K8 [table.insert]
       56 CALL                             R11 2 0
       57 FORNLOOP                         R8
       58 DUPTABLE                         R8 K15 [{"entries", "total"}]
       59 SETTABLEKS                       R7 R8 K13 ["entries"]
       61 LENGTH                           R9 R4
       62 SETTABLEKS                       R9 R8 K14 ["total"]
       64 RETURN                           R8 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["placeId"]
        8 JUMPIFNOTEQKNIL                  R8 ; [+13]
       10 GETTABLEKS                       R8 R7 K1 ["universeId"]
       12 JUMPIFEQKNIL                     R8 ; [+9]
       14 GETTABLEKS                       R10 R7 K1 ["universeId"]
       16 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K4 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-17]
       24 LENGTH                           R3 R2
       25 JUMPIFNOTEQKN                    R3 K5 [0] ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R0 K6 ["getRootPlaceIdsAsync"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 1
       32 MOVE                             R4 R1
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLEKS                       R9 R8 K0 ["placeId"]
       38 JUMPIFNOTEQKNIL                  R9 ; [+10]
       40 GETTABLEKS                       R9 R8 K1 ["universeId"]
       42 JUMPIFEQKNIL                     R9 ; [+6]
       44 GETTABLEKS                       R10 R8 K1 ["universeId"]
       46 GETTABLE                         R9 R3 R10
       47 SETTABLEKS                       R9 R8 K0 ["placeId"]
       49 FORGLOOP                         R4 2 ; [-14]
       51 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R5 R0 K0 ["tools"]
        2 GETTABLEKS                       R5 R5 K1 ["listPlace"]
        4 GETTABLEKS                       R6 R1 K2 ["source"]
        6 GETUPVAL                         R8 0
        7 GETTABLE                         R7 R8 R6
        8 JUMPIFNOT                        R7 ; [+41]
        9 JUMPIFNOTEQKS                    R6 K3 ["group"] ; [+4]
       11 GETTABLEKS                       R8 R1 K4 ["group_id"]
       13 JUMP                             ; [+3]
       14 GETTABLEKS                       R8 R0 K5 ["getUserId"]
       16 CALL                             R8 0 1
       17 FASTCALL2K                       ASSERT R8 K6 ; [+5]
       19 MOVE                             R10 R8
       20 LOADK                            R11 K6 ["creatorTargetId is required"]
       21 GETIMPORT                        R9 K8 [assert]
       23 CALL                             R9 2 0
       24 GETTABLEKS                       R9 R5 K9 ["searchExperiencesAsync"]
       26 DUPTABLE                         R10 K15 [{"creatorType", "creatorTargetId", "search", "pageIndex", "pageSize"}]
       27 SETTABLEKS                       R7 R10 K10 ["creatorType"]
       29 SETTABLEKS                       R8 R10 K11 ["creatorTargetId"]
       31 GETTABLEKS                       R11 R1 K16 ["query"]
       33 SETTABLEKS                       R11 R10 K12 ["search"]
       35 SETTABLEKS                       R3 R10 K13 ["pageIndex"]
       37 SETTABLEKS                       R4 R10 K14 ["pageSize"]
       39 CALL                             R9 1 1
       40 DUPTABLE                         R10 K19 [{"entries", "total"}]
       41 GETTABLEKS                       R11 R9 K17 ["entries"]
       43 SETTABLEKS                       R11 R10 K17 ["entries"]
       45 GETTABLEKS                       R11 R9 K20 ["totalResults"]
       47 SETTABLEKS                       R11 R10 K18 ["total"]
       49 RETURN                           R10 1
       50 JUMPIFNOTEQKS                    R6 K21 ["recent"] ; [+15]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R9 R5 K22 ["getRecentPlaces"]
       55 CALL                             R9 0 1
       56 MOVE                             R10 R2
       57 MOVE                             R11 R3
       58 MOVE                             R12 R4
       59 CALL                             R8 4 1
       60 GETUPVAL                         R9 2
       61 MOVE                             R10 R5
       62 GETTABLEKS                       R11 R8 K17 ["entries"]
       64 CALL                             R9 2 0
       65 RETURN                           R8 1
       66 LOADNIL                          R8
       67 JUMPIFNOTEQKS                    R6 K23 ["local"] ; [+6]
       69 GETTABLEKS                       R9 R5 K24 ["getRecentLocalFiles"]
       71 CALL                             R9 0 1
       72 MOVE                             R8 R9
       73 JUMP                             ; [+42]
       74 JUMPIFNOTEQKS                    R6 K25 ["groups"] ; [+6]
       76 GETTABLEKS                       R9 R5 K26 ["getGroupsAsync"]
       78 CALL                             R9 0 1
       79 MOVE                             R8 R9
       80 JUMP                             ; [+35]
       81 JUMPIFNOTEQKS                    R6 K27 ["templates"] ; [+6]
       83 GETTABLEKS                       R9 R5 K28 ["getTemplatesAsync"]
       85 CALL                             R9 0 1
       86 MOVE                             R8 R9
       87 JUMP                             ; [+28]
       88 JUMPIFEQKS                       R6 K29 ["universe_places"] ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 LOADK                            R11 K30 ["Unhandled source %*"]
       93 MOVE                             R13 R6
       94 NAMECALL                         R11 R11 K31 ["format"]
       96 CALL                             R11 2 1
       97 FASTCALL2                        ASSERT R10 R11 ; [+3]
       99 GETIMPORT                        R9 K8 [assert]
      101 CALL                             R9 2 0
      102 GETTABLEKS                       R10 R1 K32 ["universe_id"]
      104 FASTCALL2K                       ASSERT R10 K33 ; [+4]
      106 LOADK                            R11 K33 ["universe_id is required"]
      107 GETIMPORT                        R9 K8 [assert]
      109 CALL                             R9 2 0
      110 GETTABLEKS                       R9 R5 K34 ["getUniversePlacesAsync"]
      112 GETTABLEKS                       R10 R1 K32 ["universe_id"]
      114 CALL                             R9 1 1
      115 MOVE                             R8 R9
      116 GETUPVAL                         R9 1
      117 MOVE                             R10 R8
      118 MOVE                             R11 R2
      119 MOVE                             R12 R3
      120 MOVE                             R13 R4
      121 CALL                             R9 4 1
      122 RETURN                           R9 1

PROTO_6:
        0 DUPTABLE                         R1 K9 [{"name", "place_id", "universe_id", "file_path", "group_id", "creator_name", "last_opened", "updated", "template_type"}]
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 SETTABLEKS                       R2 R1 K0 ["name"]
        5 GETTABLEKS                       R2 R0 K10 ["placeId"]
        7 SETTABLEKS                       R2 R1 K1 ["place_id"]
        9 GETTABLEKS                       R2 R0 K11 ["universeId"]
       11 SETTABLEKS                       R2 R1 K2 ["universe_id"]
       13 GETTABLEKS                       R2 R0 K12 ["filePath"]
       15 SETTABLEKS                       R2 R1 K3 ["file_path"]
       17 GETTABLEKS                       R2 R0 K13 ["groupId"]
       19 SETTABLEKS                       R2 R1 K4 ["group_id"]
       21 GETTABLEKS                       R2 R0 K14 ["creatorName"]
       23 SETTABLEKS                       R2 R1 K5 ["creator_name"]
       25 GETTABLEKS                       R2 R0 K15 ["lastOpened"]
       27 SETTABLEKS                       R2 R1 K6 ["last_opened"]
       29 GETTABLEKS                       R2 R0 K7 ["updated"]
       31 SETTABLEKS                       R2 R1 K7 ["updated"]
       33 GETTABLEKS                       R2 R0 K16 ["templateType"]
       35 SETTABLEKS                       R2 R1 K8 ["template_type"]
       37 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["source"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K0 ["source"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+10]
       13 LOADK                            R1 K4 ["source must be one of: %*"]
       14 GETIMPORT                        R3 K7 [table.concat]
       16 GETUPVAL                         R4 1
       17 LOADK                            R5 K8 [", "]
       18 CALL                             R3 2 1
       19 NAMECALL                         R1 R1 K9 ["format"]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K10 ["query"]
       25 JUMPIFEQKNIL                     R1 ; [+11]
       27 GETTABLEKS                       R2 R0 K10 ["query"]
       29 FASTCALL1                        TYPEOF R2 ; [+2]
       30 GETIMPORT                        R1 K2 [typeof]
       32 CALL                             R1 1 1
       33 JUMPIFEQKS                       R1 K3 ["string"] ; [+3]
       35 LOADK                            R1 K11 ["query must be a string"]
       36 RETURN                           R1 1
       37 GETTABLEKS                       R1 R0 K12 ["page_size"]
       39 JUMPIFEQKNIL                     R1 ; [+31]
       41 LOADB                            R2 0
       42 FASTCALL1                        TYPEOF R1 ; [+3]
       43 MOVE                             R4 R1
       44 GETIMPORT                        R3 K2 [typeof]
       46 CALL                             R3 1 1
       47 JUMPIFNOTEQKS                    R3 K13 ["number"] ; [+10]
       49 LOADB                            R2 0
       50 LOADN                            R3 0
       51 JUMPIFNOTLE                      R3 R1 ; [+6]
       53 MODK                             R3 R1 K14 [1]
       54 JUMPIFEQKN                       R3 K15 [0] ; [+2]
       56 LOADB                            R2 0 +1
       57 LOADB                            R2 1
       58 JUMPIFNOT                        R2 ; [+6]
       59 LOADN                            R2 1
       60 JUMPIFLT                         R1 R2 ; [+4]
       62 LOADN                            R2 100
       63 JUMPIFNOTLT                      R2 R1 ; [+7]
       65 LOADK                            R2 K16 ["page_size must be an integer from 1 to %*"]
       66 LOADN                            R4 100
       67 NAMECALL                         R2 R2 K9 ["format"]
       69 CALL                             R2 2 1
       70 RETURN                           R2 1
       71 GETTABLEKS                       R2 R0 K17 ["page_index"]
       73 JUMPIFEQKNIL                     R2 ; [+23]
       75 GETTABLEKS                       R3 R0 K17 ["page_index"]
       77 LOADB                            R2 0
       78 FASTCALL1                        TYPEOF R3 ; [+3]
       79 MOVE                             R5 R3
       80 GETIMPORT                        R4 K2 [typeof]
       82 CALL                             R4 1 1
       83 JUMPIFNOTEQKS                    R4 K13 ["number"] ; [+10]
       85 LOADB                            R2 0
       86 LOADN                            R4 0
       87 JUMPIFNOTLE                      R4 R3 ; [+6]
       89 MODK                             R4 R3 K14 [1]
       90 JUMPIFEQKN                       R4 K15 [0] ; [+2]
       92 LOADB                            R2 0 +1
       93 LOADB                            R2 1
       94 JUMPIF                           R2 ; [+2]
       95 LOADK                            R2 K18 ["page_index must be a non-negative integer"]
       96 RETURN                           R2 1
       97 GETTABLEKS                       R2 R0 K0 ["source"]
       99 JUMPIFNOTEQKS                    R2 K19 ["group"] ; [+23]
      101 GETTABLEKS                       R3 R0 K20 ["group_id"]
      103 LOADB                            R2 0
      104 FASTCALL1                        TYPEOF R3 ; [+3]
      105 MOVE                             R5 R3
      106 GETIMPORT                        R4 K2 [typeof]
      108 CALL                             R4 1 1
      109 JUMPIFNOTEQKS                    R4 K13 ["number"] ; [+10]
      111 LOADB                            R2 0
      112 LOADN                            R4 0
      113 JUMPIFNOTLE                      R4 R3 ; [+6]
      115 MODK                             R4 R3 K14 [1]
      116 JUMPIFEQKN                       R4 K15 [0] ; [+2]
      118 LOADB                            R2 0 +1
      119 LOADB                            R2 1
      120 JUMPIF                           R2 ; [+2]
      121 LOADK                            R2 K21 ["source \"group\" needs a group_id; list them with source \"groups\""]
      122 RETURN                           R2 1
      123 GETTABLEKS                       R2 R0 K0 ["source"]
      125 JUMPIFNOTEQKS                    R2 K22 ["universe_places"] ; [+23]
      127 GETTABLEKS                       R3 R0 K23 ["universe_id"]
      129 LOADB                            R2 0
      130 FASTCALL1                        TYPEOF R3 ; [+3]
      131 MOVE                             R5 R3
      132 GETIMPORT                        R4 K2 [typeof]
      134 CALL                             R4 1 1
      135 JUMPIFNOTEQKS                    R4 K13 ["number"] ; [+10]
      137 LOADB                            R2 0
      138 LOADN                            R4 0
      139 JUMPIFNOTLE                      R4 R3 ; [+6]
      141 MODK                             R4 R3 K14 [1]
      142 JUMPIFEQKN                       R4 K15 [0] ; [+2]
      144 LOADB                            R2 0 +1
      145 LOADB                            R2 1
      146 JUMPIF                           R2 ; [+2]
      147 LOADK                            R2 K24 ["source \"universe_places\" needs a universe_id"]
      148 RETURN                           R2 1
      149 LOADNIL                          R2
      150 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelType"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Types"]
        7 GETTABLEKS                       R2 R2 K2 ["Unknown"]
        9 JUMPIFEQ                         R1 R2 ; [+11]
       11 GETUPVAL                         R1 2
       12 LOADK                            R2 K3 ["%* only works from the Studio start page, and a place is open. Call close_place first."]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["ListPlace"]
       16 NAMECALL                         R2 R2 K5 ["format"]
       18 CALL                             R2 2 1
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETUPVAL                         R2 2
       26 MOVE                             R3 R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 GETTABLEKS                       R3 R0 K7 ["page_index"]
       31 ORK                              R2 R3 K6 [0]
       32 GETTABLEKS                       R4 R0 K9 ["page_size"]
       34 ORK                              R3 R4 K8 [25]
       35 GETTABLEKS                       R5 R0 K10 ["query"]
       37 JUMPIFNOT                        R5 ; [+10]
       38 GETTABLEKS                       R5 R0 K10 ["query"]
       40 JUMPIFEQKS                       R5 K11 [""] ; [+7]
       42 GETIMPORT                        R4 K14 [string.lower]
       44 GETTABLEKS                       R5 R0 K10 ["query"]
       46 CALL                             R4 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R4
       49 GETIMPORT                        R5 K16 [pcall]
       51 GETUPVAL                         R6 5
       52 GETUPVAL                         R7 0
       53 MOVE                             R8 R0
       54 MOVE                             R9 R4
       55 MOVE                             R10 R2
       56 MOVE                             R11 R3
       57 CALL                             R5 6 2
       58 JUMPIF                           R5 ; [+14]
       59 GETUPVAL                         R7 2
       60 LOADK                            R8 K17 ["Failed to list %* places: %*"]
       61 GETTABLEKS                       R10 R0 K18 ["source"]
       63 FASTCALL1                        TOSTRING R6 ; [+3]
       64 MOVE                             R12 R6
       65 GETIMPORT                        R11 K20 [tostring]
       67 CALL                             R11 1 1
       68 NAMECALL                         R8 R8 K5 ["format"]
       70 CALL                             R8 3 1
       71 CALL                             R7 1 -1
       72 RETURN                           R7 -1
       73 NEWTABLE                         R7 0 0
       75 GETTABLEKS                       R8 R6 K21 ["entries"]
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 GETUPVAL                         R15 6
       81 MOVE                             R16 R12
       82 CALL                             R15 1 1
       83 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       85 MOVE                             R14 R7
       86 GETIMPORT                        R13 K24 [table.insert]
       88 CALL                             R13 2 0
       89 FORGLOOP                         R8 2 ; [-10]
       91 GETUPVAL                         R8 7
       92 CALL                             R8 0 1
       93 GETUPVAL                         R10 8
       94 DUPTABLE                         R12 K28 [{"source", "page_index", "page_size", "total", "has_more", "results"}]
       95 GETTABLEKS                       R13 R0 K18 ["source"]
       97 SETTABLEKS                       R13 R12 K18 ["source"]
       99 SETTABLEKS                       R2 R12 K7 ["page_index"]
      101 SETTABLEKS                       R3 R12 K9 ["page_size"]
      103 GETTABLEKS                       R13 R6 K25 ["total"]
      105 SETTABLEKS                       R13 R12 K25 ["total"]
      107 ADDK                             R15 R2 K29 [1]
      108 MUL                              R14 R15 R3
      109 GETTABLEKS                       R15 R6 K25 ["total"]
      111 JUMPIFLT                         R14 R15 ; [+2]
      113 LOADB                            R13 0 +1
      114 LOADB                            R13 1
      115 SETTABLEKS                       R13 R12 K26 ["has_more"]
      117 SETTABLEKS                       R7 R12 K27 ["results"]
      119 NAMECALL                         R10 R10 K30 ["JSONEncode"]
      121 CALL                             R10 2 -1
      122 NAMECALL                         R8 R8 K31 ["addText"]
      124 CALL                             R8 -1 1
      125 NAMECALL                         R8 R8 K32 ["build"]
      127 CALL                             R8 1 -1
      128 RETURN                           R8 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 GETUPVAL                         R3 8
       13 GETTABLEKS                       R3 R3 K1 ["define"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K2 ["ListPlace"]
       19 NAMECALL                         R3 R3 K3 ["setName"]
       21 CALL                             R3 2 1
       22 LOADK                            R5 K4 ["Lists the places you can open, like the Studio start page does. It only works from the start page, so if a place is open, call close_place first. Pass a result's place_id/universe_id, or its file_path, to open_place."]
       23 NAMECALL                         R3 R3 K5 ["setDescription"]
       25 CALL                             R3 2 1
       26 LOADK                            R5 K6 ["List Places"]
       27 NAMECALL                         R3 R3 K7 ["setTitle"]
       29 CALL                             R3 2 1
       30 LOADK                            R5 K8 ["source"]
       31 DUPTABLE                         R6 K14 [{["type"] = "string", ["enum"], ["description"] = "Which list to return: recent (recently opened Roblox places), local (recently opened local .rbxl/.rbxlx files), mine (experiences you own), group (a group's experiences; needs group_id), shared (experiences shared with you), groups (groups you can create in; returns the group_id values), templates (Studio templates; open with is_template=true), universe_places (all places in one experience; needs universe_id)."}]
       32 GETUPVAL                         R7 9
       33 SETTABLEKS                       R7 R6 K11 ["enum"]
       35 NAMECALL                         R3 R3 K15 ["addArgument"]
       37 CALL                             R3 3 1
       38 LOADK                            R5 K16 ["query"]
       39 DUPTABLE                         R6 K18 [{["type"] = "string", ["description"] = "Only return entries whose name contains this text."}]
       40 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       42 CALL                             R3 3 1
       43 LOADK                            R5 K20 ["page_size"]
       44 DUPTABLE                         R6 K22 [{["type"] = "integer", ["description"]}]
       45 LOADK                            R7 K23 ["Results per page, 1 to %*. Defaults to %*."]
       46 LOADN                            R9 100
       47 LOADN                            R10 25
       48 NAMECALL                         R7 R7 K24 ["format"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K12 ["description"]
       53 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       55 CALL                             R3 3 1
       56 LOADK                            R5 K25 ["page_index"]
       57 DUPTABLE                         R6 K27 [{["type"] = "integer", ["description"] = "Zero-based page to return. Defaults to 0; the result's has_more says whether another page exists."}]
       58 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       60 CALL                             R3 3 1
       61 LOADK                            R5 K28 ["group_id"]
       62 DUPTABLE                         R6 K30 [{["type"] = "integer", ["description"] = "Group to list when source is \"group\". Get ids from source \"groups\"."}]
       63 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       65 CALL                             R3 3 1
       66 LOADK                            R5 K31 ["universe_id"]
       67 DUPTABLE                         R6 K33 [{["type"] = "integer", ["description"] = "Experience whose places to list when source is \"universe_places\"."}]
       68 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       70 CALL                             R3 3 1
       71 DUPTABLE                         R5 K41 [{["title"] = "List Places", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
       72 NAMECALL                         R3 R3 K42 ["setAnnotations"]
       74 CALL                             R3 2 1
       75 MOVE                             R5 R2
       76 NAMECALL                         R3 R3 K43 ["setHandler"]
       78 CALL                             R3 2 1
       79 NAMECALL                         R3 R3 K44 ["build"]
       81 CALL                             R3 1 1
       82 DUPTABLE                         R4 K46 [{"definition"}]
       83 SETTABLEKS                       R3 R4 K45 ["definition"]
       85 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["DataModelType"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Tools"]
       38 GETTABLEKS                       R6 R6 K17 ["ToolTypes"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K10 ["Util"]
       43 GETTABLEKS                       R6 R6 K18 ["ToolBuilder"]
       45 GETTABLEKS                       R7 R4 K10 ["Util"]
       47 GETTABLEKS                       R7 R7 K19 ["ToolResult"]
       49 GETTABLEKS                       R8 R5 K20 ["ToolNames"]
       51 DUPTABLE                         R9 K27 [{["mine"] = "User", ["group"] = "Group", ["shared"] = "Team"}]
       52 NEWTABLE                         R10 0 8
       54 LOADK                            R11 K28 ["recent"]
       55 LOADK                            R12 K29 ["local"]
       56 LOADK                            R13 K21 ["mine"]
       57 LOADK                            R14 K23 ["group"]
       58 LOADK                            R15 K25 ["shared"]
       59 LOADK                            R16 K30 ["groups"]
       60 LOADK                            R17 K31 ["templates"]
       61 LOADK                            R18 K32 ["universe_places"]
       62 SETLIST                          R10 R11 8 [1]
       64 NEWTABLE                         R11 0 0
       66 MOVE                             R12 R10
       67 LOADNIL                          R13
       68 LOADNIL                          R14
       69 FORGPREP                         R12
       70 LOADB                            R17 1
       71 SETTABLE                         R17 R11 R16
       72 FORGLOOP                         R12 2 ; [-3]
       74 DUPCLOSURE                       R12 K33 [PROTO_0]
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R13 K34 [PROTO_1]
       77 DUPCLOSURE                       R14 K35 [PROTO_2]
       78 DUPCLOSURE                       R15 K36 [PROTO_3]
       79 DUPCLOSURE                       R16 K37 [PROTO_4]
       80 DUPCLOSURE                       R17 K38 [PROTO_5]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R15
       83 CAPTURE                          VAL R16
       84 DUPCLOSURE                       R18 K39 [PROTO_6]
       85 DUPCLOSURE                       R19 K40 [PROTO_7]
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R10
       88 DUPCLOSURE                       R20 K41 [PROTO_9]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R19
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R10
       99 RETURN                           R20 1
