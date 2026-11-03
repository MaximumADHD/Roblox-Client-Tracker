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
        9 LOADK                            R7 K3 ["assetIds must be table, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R10 R0
       12 GETIMPORT                        R9 K1 [type]
       14 CALL                             R9 1 1
       15 NAMECALL                         R7 R7 K4 ["format"]
       17 CALL                             R7 2 1
       18 FASTCALL2                        ASSERT R6 R7 ; [+3]
       20 GETIMPORT                        R5 K6 [assert]
       22 CALL                             R5 2 0
       23 JUMPIFNOT                        R1 ; [+12]
       24 GETUPVAL                         R7 0
       25 GETTABLE                         R6 R7 R1
       26 LOADK                            R7 K7 ["%* is not a valid SubjectType"]
       27 MOVE                             R9 R1
       28 NAMECALL                         R7 R7 K4 ["format"]
       30 CALL                             R7 2 1
       31 FASTCALL2                        ASSERT R6 R7 ; [+3]
       33 GETIMPORT                        R5 K6 [assert]
       35 CALL                             R5 2 0
       36 JUMPIFNOT                        R3 ; [+12]
       37 GETUPVAL                         R7 1
       38 GETTABLE                         R6 R7 R3
       39 LOADK                            R7 K8 ["%* is not a valid Action"]
       40 MOVE                             R9 R3
       41 NAMECALL                         R7 R7 K4 ["format"]
       43 CALL                             R7 2 1
       44 FASTCALL2                        ASSERT R6 R7 ; [+3]
       46 GETIMPORT                        R5 K6 [assert]
       48 CALL                             R5 2 0
       49 LOADNIL                          R5
       50 LENGTH                           R6 R0
       51 JUMPIFNOTEQKN                    R6 K9 [1] ; [+15]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K10 ["composeUrl"]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K11 ["APIS_URL"]
       59 LOADK                            R8 K12 ["asset-permissions-api/v1/assets/%*/permissions"]
       60 GETTABLEN                        R10 R0 1
       61 NAMECALL                         R8 R8 K4 ["format"]
       63 CALL                             R8 2 1
       64 CALL                             R6 2 1
       65 MOVE                             R5 R6
       66 JUMP                             ; [+9]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K10 ["composeUrl"]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K11 ["APIS_URL"]
       73 LOADK                            R8 K13 ["asset-permissions-api/v1/assets/permissions"]
       74 CALL                             R6 2 1
       75 MOVE                             R5 R6
       76 LOADNIL                          R6
       77 LENGTH                           R7 R0
       78 JUMPIFNOTEQKN                    R7 K9 [1] ; [+22]
       80 DUPTABLE                         R7 K15 [{"requests"}]
       81 NEWTABLE                         R8 0 1
       83 DUPTABLE                         R9 K19 [{"action", "subjectId", "subjectType"}]
       84 SETTABLEKS                       R3 R9 K16 ["action"]
       86 FASTCALL1                        TOSTRING R2 ; [+3]
       87 MOVE                             R11 R2
       88 GETIMPORT                        R10 K21 [tostring]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R10 R9 K17 ["subjectId"]
       93 SETTABLEKS                       R1 R9 K18 ["subjectType"]
       95 SETLIST                          R8 R9 1 [1]
       97 SETTABLEKS                       R8 R7 K14 ["requests"]
       99 MOVE                             R6 R7
      100 JUMP                             ; [+15]
      101 DUPTABLE                         R7 K23 [{"subjectType", "subjectId", "action", "assetIds"}]
      102 SETTABLEKS                       R1 R7 K18 ["subjectType"]
      104 FASTCALL1                        TOSTRING R2 ; [+3]
      105 MOVE                             R9 R2
      106 GETIMPORT                        R8 K21 [tostring]
      108 CALL                             R8 1 1
      109 SETTABLEKS                       R8 R7 K17 ["subjectId"]
      111 SETTABLEKS                       R3 R7 K16 ["action"]
      113 SETTABLEKS                       R0 R7 K22 ["assetIds"]
      115 MOVE                             R6 R7
      116 GETUPVAL                         R7 3
      117 MOVE                             R9 R6
      118 NAMECALL                         R7 R7 K24 ["JSONEncode"]
      120 CALL                             R7 2 1
      121 DUPTABLE                         R8 K27 [{"getUrl", "makeRequest"}]
      122 NEWCLOSURE                       R9 P0
      123 CAPTURE                          REF R5
      124 SETTABLEKS                       R9 R8 K25 ["getUrl"]
      126 NEWCLOSURE                       R9 P1
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R4
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          REF R5
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R9 R8 K26 ["makeRequest"]
      135 CLOSEUPVALS                      R5
      136 RETURN                           R8 1

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
