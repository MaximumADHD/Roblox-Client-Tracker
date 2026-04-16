PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["patch"]
        6 CALL                             R0 4 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["handleRetry"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["parseJson"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+13]
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R1
        3 LOADK                            R7 K0 ["%* is not a valid SubjectType"]
        4 MOVE                             R9 R1
        5 NAMECALL                         R7 R7 K1 ["format"]
        7 CALL                             R7 2 1
        8 MOVE                             R6 R7
        9 FASTCALL2                        ASSERT R5 R6 ; [+3]
       11 GETIMPORT                        R4 K3 [assert]
       13 CALL                             R4 2 0
       14 JUMPIFNOT                        R3 ; [+13]
       15 GETUPVAL                         R6 1
       16 GETTABLE                         R5 R6 R3
       17 LOADK                            R7 K4 ["%* is not a valid Action"]
       18 MOVE                             R9 R3
       19 NAMECALL                         R7 R7 K1 ["format"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 FASTCALL2                        ASSERT R5 R6 ; [+3]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K5 ["composeUrl"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K6 ["APIS_URL"]
       34 LOADK                            R6 K7 ["asset-permissions-api/v1/assets/permissions"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K9 [next]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 2
       40 FASTCALL1                        TYPE R6 ; [+3]
       41 MOVE                             R9 R6
       42 GETIMPORT                        R8 K11 [type]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K12 ["number"] ; [+2]
       47 LOADB                            R7 0 +1
       48 LOADB                            R7 1
       49 DUPTABLE                         R8 K18 [{"subjectType", "subjectId", "action", "assetIds", "requests"}]
       50 SETTABLEKS                       R1 R8 K13 ["subjectType"]
       52 FASTCALL1                        TOSTRING R2 ; [+3]
       53 MOVE                             R10 R2
       54 GETIMPORT                        R9 K20 [tostring]
       56 CALL                             R9 1 1
       57 SETTABLEKS                       R9 R8 K14 ["subjectId"]
       59 SETTABLEKS                       R3 R8 K15 ["action"]
       61 JUMPIFNOT                        R7 ; [+2]
       62 LOADNIL                          R9
       63 JUMP                             ; [+1]
       64 MOVE                             R9 R0
       65 SETTABLEKS                       R9 R8 K16 ["assetIds"]
       67 JUMPIFNOT                        R7 ; [+2]
       68 MOVE                             R9 R0
       69 JUMP                             ; [+1]
       70 LOADNIL                          R9
       71 SETTABLEKS                       R9 R8 K17 ["requests"]
       73 GETUPVAL                         R9 3
       74 MOVE                             R11 R8
       75 NAMECALL                         R9 R9 K21 ["JSONEncode"]
       77 CALL                             R9 2 1
       78 NEWTABLE                         R10 1 0
       80 LOADK                            R11 K22 ["application/json"]
       81 SETTABLEKS                       R11 R10 K23 ["Content-Type"]
       83 DUPTABLE                         R11 K26 [{"getUrl", "makeRequest"}]
       84 NEWCLOSURE                       R12 P0
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R12 R11 K24 ["getUrl"]
       88 NEWCLOSURE                       R12 P1
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 SETTABLEKS                       R12 R11 K25 ["makeRequest"]
       95 RETURN                           R11 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K10 [{"Invalid", "User", "Group", "GroupRoleset", "All", "Universe"}]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K4 ["Invalid"]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K5 ["User"]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K6 ["Group"]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K7 ["GroupRoleset"]
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K8 ["All"]
       23 LOADB                            R2 1
       24 SETTABLEKS                       R2 R1 K9 ["Universe"]
       26 DUPTABLE                         R2 K16 [{"Invalid", "Edit", "Download", "Use", "CopyFromRcc", "UpdateFromRcc"}]
       27 LOADB                            R3 1
       28 SETTABLEKS                       R3 R2 K4 ["Invalid"]
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K11 ["Edit"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K12 ["Download"]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K13 ["Use"]
       39 LOADB                            R3 1
       40 SETTABLEKS                       R3 R2 K14 ["CopyFromRcc"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K15 ["UpdateFromRcc"]
       45 DUPCLOSURE                       R3 K17 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 RETURN                           R3 1
