PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["handleRetry"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["parseJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [type]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 GETIMPORT                        R6 K5 [string.format]
       11 LOADK                            R7 K6 ["universeId must be number, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R9 R0
       14 GETIMPORT                        R8 K1 [type]
       16 CALL                             R8 1 1
       17 CALL                             R6 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R4 K8 [assert]
       21 CALL                             R4 -1 0
       22 JUMPIFNOT                        R1 ; [+22]
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R7 R1
       25 GETIMPORT                        R6 K1 [type]
       27 CALL                             R6 1 1
       28 JUMPIFEQKS                       R6 K3 ["string"] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETIMPORT                        R6 K5 [string.format]
       34 LOADK                            R7 K9 ["cursor must be number, received %s"]
       35 FASTCALL1                        TYPE R1 ; [+3]
       36 MOVE                             R9 R1
       37 GETIMPORT                        R8 K1 [type]
       39 CALL                             R8 1 1
       40 CALL                             R6 2 -1
       41 FASTCALL                         ASSERT ; [+2]
       42 GETIMPORT                        R4 K8 [assert]
       44 CALL                             R4 -1 0
       45 ORK                              R2 R2 K10 [10]
       46 FASTCALL1                        TYPE R2 ; [+3]
       47 MOVE                             R7 R2
       48 GETIMPORT                        R6 K1 [type]
       50 CALL                             R6 1 1
       51 JUMPIFEQKS                       R6 K2 ["number"] ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETIMPORT                        R6 K5 [string.format]
       57 LOADK                            R7 K11 ["limit must be number, received %s"]
       58 FASTCALL1                        TYPE R2 ; [+3]
       59 MOVE                             R9 R2
       60 GETIMPORT                        R8 K1 [type]
       62 CALL                             R8 1 1
       63 CALL                             R6 2 -1
       64 FASTCALL                         ASSERT ; [+2]
       65 GETIMPORT                        R4 K8 [assert]
       67 CALL                             R4 -1 0
       68 ORK                              R3 R3 K12 ["Asc"]
       69 FASTCALL1                        TYPE R3 ; [+3]
       70 MOVE                             R7 R3
       71 GETIMPORT                        R6 K1 [type]
       73 CALL                             R6 1 1
       74 JUMPIFEQKS                       R6 K3 ["string"] ; [+2]
       76 LOADB                            R5 0 +1
       77 LOADB                            R5 1
       78 GETIMPORT                        R6 K5 [string.format]
       80 LOADK                            R7 K13 ["sortOrder must be string, received %s"]
       81 FASTCALL1                        TYPE R3 ; [+3]
       82 MOVE                             R9 R3
       83 GETIMPORT                        R8 K1 [type]
       85 CALL                             R8 1 1
       86 CALL                             R6 2 -1
       87 FASTCALL                         ASSERT ; [+2]
       88 GETIMPORT                        R4 K8 [assert]
       90 CALL                             R4 -1 0
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R4 R5 K14 ["composeUrl"]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R5 R6 K15 ["APIS_URL"]
       97 GETIMPORT                        R6 K5 [string.format]
       99 LOADK                            R7 K16 ["packages-api/v1/universes/%d/packages"]
      100 MOVE                             R8 R0
      101 CALL                             R6 2 1
      102 DUPTABLE                         R7 K20 [{"limit", "sortOrder", "cursor"}]
      103 SETTABLEKS                       R2 R7 K17 ["limit"]
      105 SETTABLEKS                       R3 R7 K18 ["sortOrder"]
      107 SETTABLEKS                       R1 R7 K19 ["cursor"]
      109 CALL                             R4 3 1
      110 DUPTABLE                         R5 K23 [{"getUrl", "makeRequest"}]
      111 NEWCLOSURE                       R6 P0
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R6 R5 K21 ["getUrl"]
      115 NEWCLOSURE                       R6 P1
      116 CAPTURE                          UPVAL U1
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R6 R5 K22 ["makeRequest"]
      120 RETURN                           R5 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
