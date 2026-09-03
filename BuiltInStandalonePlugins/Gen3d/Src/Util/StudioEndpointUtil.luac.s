PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["success"]
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["throwError should only be called with failed results"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 JUMPIFNOT                        R1 ; [+7]
       10 LOADK                            R3 K4 ["Operation %* failed"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 JUMP                             ; [+1]
       17 LOADK                            R2 K6 ["Operation failed"]
       18 GETTABLEKS                       R3 R0 K7 ["errorDetails"]
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K9 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+9]
       27 GETTABLEKS                       R5 R3 K11 ["kind"]
       29 FASTCALL1                        TYPEOF R5 ; [+2]
       30 GETIMPORT                        R4 K9 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K12 ["string"] ; [+11]
       35 GETIMPORT                        R4 K14 [error]
       37 LOADK                            R6 K15 ["%* with unknown HTTP error"]
       38 MOVE                             R8 R2
       39 NAMECALL                         R6 R6 K5 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 LOADN                            R6 0
       44 CALL                             R4 2 0
       45 GETTABLEKS                       R4 R3 K11 ["kind"]
       47 JUMPIFNOTEQKS                    R4 K16 ["HttpStatusCode"] ; [+24]
       49 GETTABLEKS                       R5 R3 K18 ["statusCode"]
       51 ORK                              R4 R5 K17 ["Unknown"]
       52 GETTABLEKS                       R6 R3 K19 ["statusMessage"]
       54 ORK                              R5 R6 K17 ["Unknown"]
       55 GETTABLEKS                       R7 R3 K20 ["body"]
       57 ORK                              R6 R7 K17 ["Unknown"]
       58 GETIMPORT                        R7 K14 [error]
       60 LOADK                            R9 K21 ["%* with HTTP error (status=%*, statusMessage=%*, body=%*)"]
       61 MOVE                             R11 R2
       62 MOVE                             R12 R4
       63 MOVE                             R13 R5
       64 MOVE                             R14 R6
       65 NAMECALL                         R9 R9 K5 ["format"]
       67 CALL                             R9 5 1
       68 MOVE                             R8 R9
       69 LOADN                            R9 0
       70 CALL                             R7 2 0
       71 JUMP                             ; [+45]
       72 GETTABLEKS                       R4 R3 K11 ["kind"]
       74 JUMPIFNOTEQKS                    R4 K22 ["Validation"] ; [+24]
       76 GETTABLEKS                       R5 R3 K23 ["validationErrors"]
       78 JUMPIFNOT                        R5 ; [+7]
       79 GETIMPORT                        R4 K25 [table.concat]
       81 GETTABLEKS                       R5 R3 K23 ["validationErrors"]
       83 LOADK                            R6 K26 [", "]
       84 CALL                             R4 2 1
       85 JUMPIF                           R4 ; [+1]
       86 LOADK                            R4 K17 ["Unknown"]
       87 GETIMPORT                        R5 K14 [error]
       89 LOADK                            R7 K27 ["%* with validation error (%*)"]
       90 MOVE                             R9 R2
       91 MOVE                             R10 R4
       92 NAMECALL                         R7 R7 K5 ["format"]
       94 CALL                             R7 3 1
       95 MOVE                             R6 R7
       96 LOADN                            R7 0
       97 CALL                             R5 2 0
       98 JUMP                             ; [+18]
       99 GETTABLEKS                       R4 R3 K11 ["kind"]
      101 JUMPIFNOTEQKS                    R4 K28 ["Network"] ; [+15]
      103 GETTABLEKS                       R5 R3 K29 ["networkError"]
      105 ORK                              R4 R5 K17 ["Unknown"]
      106 GETIMPORT                        R5 K14 [error]
      108 LOADK                            R7 K30 ["%* with network error (%*)"]
      109 MOVE                             R9 R2
      110 MOVE                             R10 R4
      111 NAMECALL                         R7 R7 K5 ["format"]
      113 CALL                             R7 3 1
      114 MOVE                             R6 R7
      115 LOADN                            R7 0
      116 CALL                             R5 2 0
      117 GETIMPORT                        R4 K14 [error]
      119 LOADK                            R6 K15 ["%* with unknown HTTP error"]
      120 MOVE                             R8 R2
      121 NAMECALL                         R6 R6 K5 ["format"]
      123 CALL                             R6 2 1
      124 MOVE                             R5 R6
      125 LOADN                            R6 0
      126 CALL                             R4 2 0
      127 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [task.wait]
        2 GETUPVAL                         R4 0
        3 DIVK                             R3 R4 K3 [1000]
        4 CALL                             R2 1 0
        5 MOVE                             R2 R1
        6 LOADK                            R3 K4 ["Operation timed out"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.create]
        2 LOADN                            R1 2
        3 CALL                             R0 1 1
        4 MOVE                             R2 R0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["new"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R1 K5 [table.insert]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 JUMPIFNOT                        R1 ; [+11]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["new"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U2
       23 CALL                             R3 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R1 K5 [table.insert]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K6 ["race"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K1 ["timeoutMs"]
        2 ORK                              R2 R3 K0 []
        3 GETTABLEKS                       R4 R1 K3 ["retryCount"]
        5 ORK                              R3 R4 K2 [0]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 LOADNIL                          R5
       11 LOADN                            R7 1
       12 ADD                              R6 R7 R3
       13 LOADN                            R7 0
       14 JUMPIFNOTLT                      R7 R6 ; [+48]
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R4
       19 CALL                             R8 0 1
       20 NAMECALL                         R8 R8 K4 ["await"]
       22 CALL                             R8 1 -1
       23 SETLIST                          R7 R8 -1 [1]
       25 MOVE                             R5 R7
       26 GETTABLEN                        R7 R5 1
       27 JUMPIF                           R7 ; [+35]
       28 SUBK                             R6 R6 K5 [1]
       29 LOADN                            R7 0
       30 JUMPIFNOTLT                      R7 R6 ; [+31]
       32 GETTABLEKS                       R8 R1 K6 ["useExponentialBackoff"]
       34 JUMPIFNOT                        R8 ; [+8]
       35 LOADN                            R8 2
       36 SUB                              R9 R3 R6
       37 FASTCALL2                        MATH_POW R8 R9 ; [+3]
       39 GETIMPORT                        R7 K9 [math.pow]
       41 CALL                             R7 2 1
       42 JUMP                             ; [+3]
       43 GETTABLEKS                       R8 R1 K10 ["retryIntervalSeconds"]
       45 ORK                              R7 R8 K5 [1]
       46 GETTABLEKS                       R8 R1 K11 ["maxRetryTimeSeconds"]
       48 JUMPIFNOT                        R8 ; [+9]
       49 GETTABLEKS                       R10 R1 K11 ["maxRetryTimeSeconds"]
       51 FASTCALL2                        MATH_MIN R7 R10 ; [+4]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K13 [math.min]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 GETIMPORT                        R8 K16 [task.wait]
       60 MOVE                             R9 R7
       61 CALL                             R8 1 0
       62 JUMPBACK                         ; [-50]
       63 GETTABLEN                        R7 R5 1
       64 JUMPIF                           R7 ; [+14]
       65 DUPTABLE                         R7 K20 [{["success"] = False, ["errorDetails"]}]
       66 DUPTABLE                         R8 K24 [{["kind"] = "Network", ["networkError"]}]
       67 LOADK                            R10 K25 ["Operation failed after %* attempt(s). Last error: %*"]
       68 ADDK                             R12 R3 K5 [1]
       69 GETTABLEN                        R13 R5 2
       70 NAMECALL                         R10 R10 K26 ["format"]
       72 CALL                             R10 3 1
       73 MOVE                             R9 R10
       74 SETTABLEKS                       R9 R8 K23 ["networkError"]
       76 SETTABLEKS                       R8 R7 K19 ["errorDetails"]
       78 RETURN                           R7 1
       79 GETIMPORT                        R7 K28 [select]
       81 LOADN                            R8 2
       82 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       83 MOVE                             R10 R5
       84 GETIMPORT                        R9 K31 [table.unpack]
       86 CALL                             R9 1 -1
       87 CALL                             R7 -1 -1
       88 RETURN                           R7 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 RETURN                           R2 1

PROTO_8:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R0 ; [+24]
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R0 K0 ["fromResponse"]
        6 GETIMPORT                        R6 K2 [pcall]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CALL                             R6 1 2
       12 JUMPIF                           R6 ; [+3]
       13 NEWTABLE                         R5 0 0
       15 JUMP                             ; [+1]
       16 MOVE                             R5 R7
       17 MOVE                             R6 R3
       18 LOADK                            R7 K3 [""]
       19 CALL                             R4 3 1
       20 MOVE                             R2 R4
       21 LENGTH                           R4 R3
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+2]
       25 RETURN                           R0 0
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["HttpWrapper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Promise"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 DUPCLOSURE                       R5 K14 [PROTO_5]
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R6 K15 [PROTO_7]
       31 CAPTURE                          VAL R1
       32 DUPCLOSURE                       R7 K16 [PROTO_8]
       33 CAPTURE                          VAL R1
       34 DUPTABLE                         R8 K20 [{"throwError", "callWithOptions", "parseResponseModel"}]
       35 SETTABLEKS                       R4 R8 K17 ["throwError"]
       37 SETTABLEKS                       R5 R8 K18 ["callWithOptions"]
       39 SETTABLEKS                       R7 R8 K19 ["parseResponseModel"]
       41 RETURN                           R8 1
