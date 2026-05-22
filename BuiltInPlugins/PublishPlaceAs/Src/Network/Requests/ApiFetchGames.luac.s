PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["limit"]
        8 ORK                              R2 R3 K1 [10]
        9 NEWTABLE                         R3 2 0
       11 GETTABLEKS                       R4 R1 K3 ["nextResultIndex"]
       13 JUMPIFNOT                        R4 ; [+13]
       14 GETTABLEKS                       R7 R1 K3 ["nextResultIndex"]
       16 DIV                              R6 R7 R2
       17 FASTCALL1                        TONUMBER R6 ; [+2]
       18 GETIMPORT                        R5 K5 [tonumber]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R5 ; [+2]
       22 GETIMPORT                        R4 K7 [tostring]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K8 ["nextPageCursor"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K9 ["games"]
       31 GETIMPORT                        R4 K11 [pairs]
       33 GETTABLEKS                       R5 R1 K12 ["data"]
       35 CALL                             R4 1 3
       36 FORGPREP_NEXT                    R4
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K13 ["fromJsonData"]
       40 MOVE                             R10 R8
       41 CALL                             R9 1 2
       42 JUMPIFNOT                        R9 ; [+9]
       43 GETTABLEKS                       R12 R3 K9 ["games"]
       45 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       47 MOVE                             R13 R10
       48 GETIMPORT                        R11 K16 [table.insert]
       50 CALL                             R11 2 0
       51 JUMP                             ; [+6]
       52 GETIMPORT                        R11 K18 [error]
       54 LOADK                            R13 K19 ["Parsing error for ApiFetchGamesByUserId: "]
       55 MOVE                             R14 R10
       56 CONCAT                           R12 R13 R14
       57 CALL                             R11 1 0
       58 FORGLOOP                         R4 2 ; [-22]
       60 RETURN                           R3 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["type"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["SUBJECT_TYPE"]
        6 GETTABLEKS                       R4 R4 K2 ["GROUP"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+3]
       10 LOADK                            R2 K3 ["Group"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K4 ["User"]
       13 GETTABLEKS                       R3 R0 K5 ["id"]
       15 GETTABLEKS                       R4 R0 K6 ["cursor"]
       17 GETTABLEKS                       R6 R0 K8 ["limit"]
       19 ORK                              R5 R6 K7 [10]
       20 GETTABLEKS                       R7 R0 K10 ["search"]
       22 ORK                              R6 R7 K9 [""]
       23 GETTABLEKS                       R8 R0 K12 ["sortOrder"]
       25 ORK                              R7 R8 K11 ["Desc"]
       26 GETTABLEKS                       R9 R0 K14 ["sort"]
       28 ORK                              R8 R9 K13 ["LastUpdated"]
       29 GETTABLEKS                       R10 R0 K15 ["isPublish"]
       31 JUMPIFNOT                        R10 ; [+2]
       32 LOADK                            R9 K16 ["StudioPublishPlace"]
       33 JUMP                             ; [+1]
       34 LOADK                            R9 K17 ["StudioSavePlace"]
       35 DUPTABLE                         R10 K25 [{"creatorType", "creatorTargetId", "isArchived", "pageIndex", "pageSize", "search", "sortOrder", "sortParam", "surface"}]
       36 SETTABLEKS                       R2 R10 K18 ["creatorType"]
       38 SETTABLEKS                       R3 R10 K19 ["creatorTargetId"]
       40 LOADK                            R11 K26 ["false"]
       41 SETTABLEKS                       R11 R10 K20 ["isArchived"]
       43 SETTABLEKS                       R4 R10 K21 ["pageIndex"]
       45 SETTABLEKS                       R5 R10 K22 ["pageSize"]
       47 SETTABLEKS                       R6 R10 K10 ["search"]
       49 SETTABLEKS                       R7 R10 K12 ["sortOrder"]
       51 SETTABLEKS                       R8 R10 K23 ["sortParam"]
       53 SETTABLEKS                       R9 R10 K24 ["surface"]
       55 GETUPVAL                         R11 1
       56 CALL                             R11 0 1
       57 JUMPIFNOT                        R11 ; [+3]
       58 LOADK                            R11 K27 ["true"]
       59 SETTABLEKS                       R11 R10 K28 ["needsAssetOptions"]
       61 DUPTABLE                         R11 K32 [{"Url", "Method", "Params"}]
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K33 ["BuildRobloxUrl"]
       65 LOADK                            R13 K34 ["apis"]
       66 LOADK                            R14 K35 ["universes/v1/search"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K29 ["Url"]
       70 LOADK                            R12 K36 ["GET"]
       71 SETTABLEKS                       R12 R11 K30 ["Method"]
       73 SETTABLEKS                       R10 R11 K31 ["Params"]
       75 MOVE                             R1 R11
       76 GETUPVAL                         R11 2
       77 GETTABLEKS                       R11 R11 K37 ["Request"]
       79 MOVE                             R12 R1
       80 CALL                             R11 1 1
       81 NEWCLOSURE                       R13 P0
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U4
       85 NAMECALL                         R11 R11 K38 ["andThen"]
       87 CALL                             R11 2 -1
       88 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Network"]
       23 GETTABLEKS                       R3 R3 K11 ["Models"]
       25 GETTABLEKS                       R3 R3 K12 ["GameToPublish"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETTABLEKS                       R4 R1 K9 ["Src"]
       32 GETTABLEKS                       R4 R4 K10 ["Network"]
       34 GETTABLEKS                       R4 R4 K13 ["Http"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETTABLEKS                       R5 R1 K9 ["Src"]
       41 GETTABLEKS                       R5 R5 K14 ["Resources"]
       43 GETTABLEKS                       R5 R5 K15 ["Constants"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K8 [require]
       48 GETTABLEKS                       R6 R1 K9 ["Src"]
       50 GETTABLEKS                       R6 R6 K16 ["Flags"]
       52 GETTABLEKS                       R6 R6 K17 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       54 CALL                             R5 1 1
       55 DUPCLOSURE                       R6 K18 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 RETURN                           R6 1
