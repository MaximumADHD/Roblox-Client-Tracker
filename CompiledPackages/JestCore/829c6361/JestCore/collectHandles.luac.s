PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K1 [{"noStackTrace"}]
        4 LOADB                            R5 0
        5 SETTABLEKS                       R5 R4 K0 ["noStackTrace"]
        7 LOADNIL                          R5
        8 LOADB                            R6 1
        9 CALL                             R1 5 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [string.match]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K3 ["%s+at(.*)"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 LOADB                            R3 1
       11 RETURN                           R3 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["trim"]
       15 GETIMPORT                        R6 K6 [string.find]
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 CALL                             R6 2 1
       20 FASTCALL2                        STRING_SUB R1 R6 ; [+4]
       22 MOVE                             R5 R1
       23 GETIMPORT                        R4 K8 [string.sub]
       25 CALL                             R4 2 1
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 2
       28 MOVE                             R6 R3
       29 NAMECALL                         R4 R4 K9 ["has"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADB                            R4 0
       34 RETURN                           R4 1
       35 GETUPVAL                         R4 2
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K10 ["add"]
       39 CALL                             R4 2 0
       40 LOADB                            R4 1
       41 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["filter"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["map"]
       10 MOVE                             R5 R0
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CALL                             R4 2 1
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Set"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETIMPORT                        R10 K1 [script]
       24 GETTABLEKS                       R9 R10 K2 ["Parent"]
       26 GETTABLEKS                       R8 R9 K9 ["jsHelpers"]
       28 GETTABLEKS                       R7 R8 K10 ["stripAnsi"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K11 ["JestTypes"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R9 K4 [require]
       38 GETTABLEKS                       R10 R0 K12 ["JestMessageUtil"]
       40 CALL                             R9 1 1
       41 GETTABLEKS                       R8 R9 K13 ["formatExecError"]
       43 DUPCLOSURE                       R9 K14 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R9 R5 K15 ["formatHandleErrors"]
       51 RETURN                           R5 1
