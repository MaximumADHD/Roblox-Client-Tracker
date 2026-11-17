PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETIMPORT                        R1 K2 [task.cancel]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETIMPORT                        R1 K4 [task.defer]
       16 GETUPVAL                         R2 4
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 1
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 3
       13 GETUPVAL                         R0 0
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETIMPORT                        R0 K2 [task.cancel]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 4
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETIMPORT                        R0 K4 [task.defer]
       23 GETUPVAL                         R1 5
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [coroutine.running]
        2 CALL                             R2 0 1
        3 LOADB                            R3 0
        4 LOADB                            R4 0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R5
       10 CAPTURE                          REF R6
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R2
       13 MOVE                             R10 R7
       14 NAMECALL                         R8 R0 K3 ["send"]
       16 CALL                             R8 2 1
       17 JUMPIF                           R3 ; [+13]
       18 JUMPIFNOT                        R1 ; [+12]
       19 GETIMPORT                        R9 K6 [task.delay]
       21 DIVK                             R10 R1 K7 [1000]
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          REF R6
       24 CAPTURE                          REF R3
       25 CAPTURE                          VAL R8
       26 CAPTURE                          REF R5
       27 CAPTURE                          REF R4
       28 CAPTURE                          VAL R2
       29 CALL                             R9 2 1
       30 MOVE                             R6 R9
       31 JUMPIF                           R3 ; [+4]
       32 LOADB                            R4 1
       33 GETIMPORT                        R9 K9 [coroutine.yield]
       35 CALL                             R9 0 0
       36 CLOSEUPVALS                      R3
       37 RETURN                           R5 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["timeoutMs"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R4 R1 K1 ["retryCount"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R3 R1 K1 ["retryCount"]
       11 JUMP                             ; [+1]
       12 LOADN                            R3 0
       13 LOADN                            R5 1
       14 ADD                              R4 R5 R3
       15 LOADNIL                          R5
       16 LOADN                            R8 1
       17 MOVE                             R6 R4
       18 LOADN                            R7 1
       19 FORNPREP                         R6
       20 GETUPVAL                         R9 0
       21 MOVE                             R10 R0
       22 MOVE                             R11 R2
       23 CALL                             R9 2 1
       24 MOVE                             R5 R9
       25 LOADB                            R9 1
       26 JUMPIFEQKNIL                     R5 ; [+16]
       28 GETTABLEKS                       R10 R5 K2 ["success"]
       30 NOT                              R9 R10
       31 JUMPIFNOT                        R9 ; [+11]
       32 GETTABLEKS                       R10 R5 K3 ["errorDetails"]
       34 GETTABLEKS                       R10 R10 K4 ["kind"]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K5 ["Network"]
       39 JUMPIFEQ                         R10 R11 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 JUMPIF                           R9 ; [+1]
       44 RETURN                           R5 1
       45 JUMPIFNOTLT                      R8 R4 ; [+38]
       47 JUMPIFNOT                        R1 ; [+11]
       48 GETTABLEKS                       R11 R1 K6 ["useExponentialBackoff"]
       50 JUMPIFNOT                        R11 ; [+8]
       51 LOADN                            R11 2
       52 SUBK                             R12 R8 K7 [1]
       53 FASTCALL2                        MATH_POW R11 R12 ; [+3]
       55 GETIMPORT                        R10 K10 [math.pow]
       57 CALL                             R10 2 1
       58 JUMP                             ; [+8]
       59 JUMPIFNOT                        R1 ; [+6]
       60 GETTABLEKS                       R11 R1 K11 ["retryIntervalSeconds"]
       62 JUMPIFNOT                        R11 ; [+3]
       63 GETTABLEKS                       R10 R1 K11 ["retryIntervalSeconds"]
       65 JUMP                             ; [+1]
       66 LOADN                            R10 1
       67 JUMPIFNOT                        R1 ; [+12]
       68 GETTABLEKS                       R11 R1 K12 ["maxRetryTimeSeconds"]
       70 JUMPIFNOT                        R11 ; [+9]
       71 GETTABLEKS                       R13 R1 K12 ["maxRetryTimeSeconds"]
       73 FASTCALL2                        MATH_MIN R10 R13 ; [+4]
       75 MOVE                             R12 R10
       76 GETIMPORT                        R11 K14 [math.min]
       78 CALL                             R11 2 1
       79 MOVE                             R10 R11
       80 GETIMPORT                        R11 K17 [task.wait]
       82 MOVE                             R12 R10
       83 CALL                             R11 1 0
       84 FORNLOOP                         R6
       85 JUMPIFEQKNIL                     R5 ; [+4]
       87 JUMPIFNOTEQKN                    R4 K7 [1] ; [+2]
       89 RETURN                           R5 1
       90 JUMPIFEQKNIL                     R5 ; [+18]
       92 GETTABLEKS                       R7 R5 K2 ["success"]
       94 JUMPIF                           R7 ; [+14]
       95 GETTABLEKS                       R7 R5 K3 ["errorDetails"]
       97 GETTABLEKS                       R7 R7 K4 ["kind"]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K5 ["Network"]
      102 JUMPIFNOTEQ                      R7 R8 ; [+6]
      104 GETTABLEKS                       R6 R5 K3 ["errorDetails"]
      106 GETTABLEKS                       R6 R6 K18 ["networkError"]
      108 JUMP                             ; [+1]
      109 LOADK                            R6 K19 ["Operation timed out"]
      110 DUPTABLE                         R7 K21 [{["success"] = False, ["errorDetails"]}]
      111 DUPTABLE                         R8 K22 [{"kind", "networkError"}]
      112 GETUPVAL                         R9 1
      113 GETTABLEKS                       R9 R9 K5 ["Network"]
      115 SETTABLEKS                       R9 R8 K4 ["kind"]
      117 LOADK                            R9 K23 ["Operation failed after %* attempt(s). Last error: %*"]
      118 MOVE                             R11 R4
      119 MOVE                             R12 R6
      120 NAMECALL                         R9 R9 K24 ["format"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K18 ["networkError"]
      125 SETTABLEKS                       R8 R7 K3 ["errorDetails"]
      127 RETURN                           R7 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ERROR_KIND"]
       21 DUPCLOSURE                       R5 K10 [PROTO_2]
       22 DUPCLOSURE                       R6 K11 [PROTO_3]
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R4
       25 RETURN                           R6 1
