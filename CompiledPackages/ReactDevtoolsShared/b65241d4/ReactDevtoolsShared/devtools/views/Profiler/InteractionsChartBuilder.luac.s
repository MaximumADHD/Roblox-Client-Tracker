PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["duration"]
        3 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        5 GETIMPORT                        R1 K3 [math.max]
        7 CALL                             R1 2 1
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["profilerStore"]
        2 GETTABLEKS                       R2 R0 K1 ["rootID"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K2 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R3 0
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K3 ["get"]
       14 CALL                             R3 2 1
       15 RETURN                           R3 1
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R1 K4 ["getDataForRoot"]
       19 CALL                             R3 2 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+13]
       22 GETIMPORT                        R4 K6 [error]
       24 GETIMPORT                        R5 K9 [string.format]
       26 LOADK                            R6 K10 ["Could not find profiling data for root \"%s\""]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R8 R2
       29 GETIMPORT                        R7 K12 [tostring]
       31 CALL                             R7 1 1
       32 CALL                             R5 2 -1
       33 CALL                             R4 -1 0
       34 GETTABLEKS                       R4 R3 K13 ["commitData"]
       36 GETTABLEKS                       R5 R3 K14 ["interactions"]
       38 LENGTH                           R7 R4
       39 LOADN                            R8 0
       40 JUMPIFNOTLT                      R8 R7 ; [+6]
       42 LENGTH                           R8 R4
       43 GETTABLE                         R7 R4 R8
       44 GETTABLEKS                       R6 R7 K15 ["timestamp"]
       46 JUMP                             ; [+1]
       47 LOADN                            R6 0
       48 LOADN                            R7 0
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K16 ["forEach"]
       52 MOVE                             R9 R4
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          REF R7
       55 CALL                             R8 2 0
       56 DUPTABLE                         R8 K19 [{"interactions", "lastInteractionTime", "maxCommitDuration"}]
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R9 R10 K20 ["from"]
       60 NAMECALL                         R10 R5 K21 ["values"]
       62 CALL                             R10 1 -1
       63 CALL                             R9 -1 1
       64 SETTABLEKS                       R9 R8 K14 ["interactions"]
       66 SETTABLEKS                       R6 R8 K17 ["lastInteractionTime"]
       68 SETTABLEKS                       R7 R8 K18 ["maxCommitDuration"]
       70 GETUPVAL                         R9 0
       71 MOVE                             R11 R2
       72 MOVE                             R12 R8
       73 NAMECALL                         R9 R9 K22 ["set"]
       75 CALL                             R9 3 0
       76 CLOSEUPVALS                      R7
       77 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Array"]
       20 GETTABLEKS                       R3 R1 K7 ["Map"]
       22 NEWTABLE                         R4 2 0
       24 GETIMPORT                        R5 K4 [require]
       26 GETIMPORT                        R10 K1 [script]
       28 GETTABLEKS                       R9 R10 K2 ["Parent"]
       30 GETTABLEKS                       R8 R9 K2 ["Parent"]
       32 GETTABLEKS                       R7 R8 K2 ["Parent"]
       34 GETTABLEKS                       R6 R7 K8 ["types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETIMPORT                        R9 K1 [script]
       41 GETTABLEKS                       R8 R9 K2 ["Parent"]
       43 GETTABLEKS                       R7 R8 K8 ["types"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K9 ["new"]
       48 CALL                             R7 0 1
       49 DUPCLOSURE                       R8 K10 [PROTO_1]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R4 K11 ["getChartData"]
       54 DUPCLOSURE                       R9 K12 [PROTO_2]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R4 K13 ["invalidateChartData"]
       58 RETURN                           R4 1
