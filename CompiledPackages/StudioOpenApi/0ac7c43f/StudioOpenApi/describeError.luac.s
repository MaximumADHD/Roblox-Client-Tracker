PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["success"]
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["describeError should only be called with failed responses"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 JUMPIFNOT                        R1 ; [+6]
       10 LOADK                            R2 K4 ["Operation %* failed"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 2 1
       15 JUMP                             ; [+1]
       16 LOADK                            R2 K6 ["Operation failed"]
       17 GETTABLEKS                       R3 R0 K7 ["errorDetails"]
       19 GETTABLEKS                       R4 R3 K8 ["kind"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K9 ["HttpStatusCode"]
       24 JUMPIFNOTEQ                      R4 R5 ; [+15]
       26 GETTABLEKS                       R5 R3 K11 ["statusMessage"]
       28 ORK                              R4 R5 K10 ["Unknown"]
       29 LOADK                            R5 K12 ["%* with HTTP error (status=%*, statusMessage=%*, body=%*)"]
       30 MOVE                             R7 R2
       31 GETTABLEKS                       R8 R3 K13 ["statusCode"]
       33 MOVE                             R9 R4
       34 GETTABLEKS                       R10 R3 K14 ["body"]
       36 NAMECALL                         R5 R5 K5 ["format"]
       38 CALL                             R5 5 1
       39 RETURN                           R5 1
       40 GETTABLEKS                       R4 R3 K8 ["kind"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K15 ["Validation"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+13]
       47 LOADK                            R4 K16 ["%* with validation error (%*)"]
       48 MOVE                             R6 R2
       49 GETIMPORT                        R7 K19 [table.concat]
       51 GETTABLEKS                       R8 R3 K20 ["validationErrors"]
       53 LOADK                            R9 K21 [", "]
       54 CALL                             R7 2 1
       55 NAMECALL                         R4 R4 K5 ["format"]
       57 CALL                             R4 3 1
       58 RETURN                           R4 1
       59 GETTABLEKS                       R4 R3 K8 ["kind"]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K22 ["InvalidRequest"]
       64 JUMPIFNOTEQ                      R4 R5 ; [+13]
       66 LOADK                            R4 K23 ["%* with invalid request (%*)"]
       67 MOVE                             R6 R2
       68 GETIMPORT                        R7 K19 [table.concat]
       70 GETTABLEKS                       R8 R3 K20 ["validationErrors"]
       72 LOADK                            R9 K21 [", "]
       73 CALL                             R7 2 1
       74 NAMECALL                         R4 R4 K5 ["format"]
       76 CALL                             R4 3 1
       77 RETURN                           R4 1
       78 GETTABLEKS                       R4 R3 K8 ["kind"]
       80 GETUPVAL                         R5 0
       81 GETTABLEKS                       R5 R5 K24 ["Network"]
       83 JUMPIFNOTEQ                      R4 R5 ; [+9]
       85 LOADK                            R4 K25 ["%* with network error (%*)"]
       86 MOVE                             R6 R2
       87 GETTABLEKS                       R7 R3 K26 ["networkError"]
       89 NAMECALL                         R4 R4 K5 ["format"]
       91 CALL                             R4 3 1
       92 RETURN                           R4 1
       93 LOADK                            R4 K27 ["%* with unknown HTTP error"]
       94 MOVE                             R6 R2
       95 NAMECALL                         R4 R4 K5 ["format"]
       97 CALL                             R4 2 1
       98 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioOpenApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["OpenApi"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["ERROR_KIND"]
       16 DUPCLOSURE                       R4 K9 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 RETURN                           R4 1
