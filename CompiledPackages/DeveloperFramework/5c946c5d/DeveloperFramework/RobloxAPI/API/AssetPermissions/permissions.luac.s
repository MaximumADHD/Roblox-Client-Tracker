PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K0 [1] ; [+29]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+19]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R3 4
       11 LOADNIL                          R4
       12 GETUPVAL                         R5 5
       13 NAMECALL                         R1 R1 K1 ["delete"]
       15 CALL                             R1 4 1
       16 MOVE                             R0 R1
       17 JUMP                             ; [+22]
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 5
       21 NAMECALL                         R1 R1 K2 ["patch"]
       23 CALL                             R1 3 1
       24 MOVE                             R0 R1
       25 JUMP                             ; [+14]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 4
       28 NAMECALL                         R1 R1 K3 ["get"]
       30 CALL                             R1 2 1
       31 MOVE                             R0 R1
       32 JUMP                             ; [+7]
       33 GETUPVAL                         R1 3
       34 GETUPVAL                         R3 4
       35 GETUPVAL                         R4 5
       36 NAMECALL                         R1 R1 K2 ["patch"]
       38 CALL                             R1 3 1
       39 MOVE                             R0 R1
       40 GETUPVAL                         R1 3
       41 MOVE                             R3 R0
       42 NAMECALL                         R1 R1 K4 ["handleRetry"]
       44 CALL                             R1 2 1
       45 GETUPVAL                         R2 3
       46 MOVE                             R4 R1
       47 NAMECALL                         R2 R2 K5 ["parseJson"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R8 R0
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 LOADK                            R8 K3 ["assetIds must be table, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R11 R0
       12 GETIMPORT                        R10 K1 [type]
       14 CALL                             R10 1 1
       15 NAMECALL                         R8 R8 K4 ["format"]
       17 CALL                             R8 2 1
       18 MOVE                             R7 R8
       19 FASTCALL2                        ASSERT R6 R7 ; [+3]
       21 GETIMPORT                        R5 K6 [assert]
       23 CALL                             R5 2 0
       24 JUMPIFNOT                        R1 ; [+13]
       25 GETUPVAL                         R7 0
       26 GETTABLE                         R6 R7 R1
       27 LOADK                            R8 K7 ["%* is not a valid SubjectType"]
       28 MOVE                             R10 R1
       29 NAMECALL                         R8 R8 K4 ["format"]
       31 CALL                             R8 2 1
       32 MOVE                             R7 R8
       33 FASTCALL2                        ASSERT R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [assert]
       37 CALL                             R5 2 0
       38 JUMPIFNOT                        R3 ; [+13]
       39 GETUPVAL                         R7 1
       40 GETTABLE                         R6 R7 R3
       41 LOADK                            R8 K8 ["%* is not a valid Action"]
       42 MOVE                             R10 R3
       43 NAMECALL                         R8 R8 K4 ["format"]
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 FASTCALL2                        ASSERT R6 R7 ; [+3]
       49 GETIMPORT                        R5 K6 [assert]
       51 CALL                             R5 2 0
       52 LOADNIL                          R5
       53 LENGTH                           R6 R0
       54 JUMPIFNOTEQKN                    R6 K9 [1] ; [+16]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K10 ["composeUrl"]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K11 ["APIS_URL"]
       62 LOADK                            R9 K12 ["asset-permissions-api/v1/assets/%*/permissions"]
       63 GETTABLEN                        R11 R0 1
       64 NAMECALL                         R9 R9 K4 ["format"]
       66 CALL                             R9 2 1
       67 MOVE                             R8 R9
       68 CALL                             R6 2 1
       69 MOVE                             R5 R6
       70 JUMP                             ; [+9]
       71 GETUPVAL                         R6 2
       72 GETTABLEKS                       R6 R6 K10 ["composeUrl"]
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K11 ["APIS_URL"]
       77 LOADK                            R8 K13 ["asset-permissions-api/v1/assets/permissions"]
       78 CALL                             R6 2 1
       79 MOVE                             R5 R6
       80 LOADNIL                          R6
       81 LENGTH                           R7 R0
       82 JUMPIFNOTEQKN                    R7 K9 [1] ; [+22]
       84 DUPTABLE                         R7 K15 [{"requests"}]
       85 NEWTABLE                         R8 0 1
       87 DUPTABLE                         R9 K19 [{"action", "subjectId", "subjectType"}]
       88 SETTABLEKS                       R3 R9 K16 ["action"]
       90 FASTCALL1                        TOSTRING R2 ; [+3]
       91 MOVE                             R11 R2
       92 GETIMPORT                        R10 K21 [tostring]
       94 CALL                             R10 1 1
       95 SETTABLEKS                       R10 R9 K17 ["subjectId"]
       97 SETTABLEKS                       R1 R9 K18 ["subjectType"]
       99 SETLIST                          R8 R9 1 [1]
      101 SETTABLEKS                       R8 R7 K14 ["requests"]
      103 MOVE                             R6 R7
      104 JUMP                             ; [+15]
      105 DUPTABLE                         R7 K23 [{"subjectType", "subjectId", "action", "assetIds"}]
      106 SETTABLEKS                       R1 R7 K18 ["subjectType"]
      108 FASTCALL1                        TOSTRING R2 ; [+3]
      109 MOVE                             R9 R2
      110 GETIMPORT                        R8 K21 [tostring]
      112 CALL                             R8 1 1
      113 SETTABLEKS                       R8 R7 K17 ["subjectId"]
      115 SETTABLEKS                       R3 R7 K16 ["action"]
      117 SETTABLEKS                       R0 R7 K22 ["assetIds"]
      119 MOVE                             R6 R7
      120 GETUPVAL                         R7 3
      121 MOVE                             R9 R6
      122 NAMECALL                         R7 R7 K24 ["JSONEncode"]
      124 CALL                             R7 2 1
      125 DUPTABLE                         R8 K27 [{"getUrl", "makeRequest"}]
      126 NEWCLOSURE                       R9 P0
      127 CAPTURE                          REF R5
      128 SETTABLEKS                       R9 R8 K25 ["getUrl"]
      130 NEWCLOSURE                       R9 P1
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          REF R5
      136 CAPTURE                          VAL R7
      137 SETTABLEKS                       R9 R8 K26 ["makeRequest"]
      139 CLOSEUPVALS                      R5
      140 RETURN                           R8 1

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
