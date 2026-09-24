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
        0 JUMPIFNOT                        R1 ; [+12]
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R1
        3 LOADK                            R6 K0 ["%* is not a valid SubjectType"]
        4 MOVE                             R8 R1
        5 NAMECALL                         R6 R6 K1 ["format"]
        7 CALL                             R6 2 1
        8 FASTCALL2                        ASSERT R5 R6 ; [+3]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R5 R6 R3
       16 LOADK                            R6 K4 ["%* is not a valid Action"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R6 R6 K1 ["format"]
       20 CALL                             R6 2 1
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K3 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K5 ["composeUrl"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K6 ["APIS_URL"]
       32 LOADK                            R6 K7 ["asset-permissions-api/v1/assets/permissions"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K9 [next]
       36 MOVE                             R6 R0
       37 CALL                             R5 1 2
       38 FASTCALL1                        TYPE R6 ; [+3]
       39 MOVE                             R9 R6
       40 GETIMPORT                        R8 K11 [type]
       42 CALL                             R8 1 1
       43 JUMPIFNOTEQKS                    R8 K12 ["number"] ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 DUPTABLE                         R8 K18 [{"subjectType", "subjectId", "action", "assetIds", "requests"}]
       48 SETTABLEKS                       R1 R8 K13 ["subjectType"]
       50 FASTCALL1                        TOSTRING R2 ; [+3]
       51 MOVE                             R10 R2
       52 GETIMPORT                        R9 K20 [tostring]
       54 CALL                             R9 1 1
       55 SETTABLEKS                       R9 R8 K14 ["subjectId"]
       57 SETTABLEKS                       R3 R8 K15 ["action"]
       59 JUMPIFNOT                        R7 ; [+2]
       60 LOADNIL                          R9
       61 JUMP                             ; [+1]
       62 MOVE                             R9 R0
       63 SETTABLEKS                       R9 R8 K16 ["assetIds"]
       65 JUMPIFNOT                        R7 ; [+2]
       66 MOVE                             R9 R0
       67 JUMP                             ; [+1]
       68 LOADNIL                          R9
       69 SETTABLEKS                       R9 R8 K17 ["requests"]
       71 GETUPVAL                         R9 3
       72 MOVE                             R11 R8
       73 NAMECALL                         R9 R9 K21 ["JSONEncode"]
       75 CALL                             R9 2 1
       76 NEWTABLE                         R10 1 0
       78 LOADK                            R11 K22 ["application/json"]
       79 SETTABLEKS                       R11 R10 K23 ["Content-Type"]
       81 DUPTABLE                         R11 K26 [{"getUrl", "makeRequest"}]
       82 NEWCLOSURE                       R12 P0
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R12 R11 K24 ["getUrl"]
       86 NEWCLOSURE                       R12 P1
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 SETTABLEKS                       R12 R11 K25 ["makeRequest"]
       93 RETURN                           R11 1

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
        7 DUPTABLE                         R1 K11 [{["Invalid"] = True, ["User"] = True, ["Group"] = True, ["GroupRoleset"] = True, ["All"] = True, ["Universe"] = True}]
        8 DUPTABLE                         R2 K17 [{["Invalid"] = True, ["Edit"] = True, ["Download"] = True, ["Use"] = True, ["CopyFromRcc"] = True, ["UpdateFromRcc"] = True}]
        9 DUPCLOSURE                       R3 K18 [PROTO_3]
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 RETURN                           R3 1
