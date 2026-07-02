PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K2 [{[1] = False}]
        4 LOADNIL                          R5
        5 LOADB                            R6 1
        6 CALL                             R1 5 -1
        7 RETURN                           R1 -1

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
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["trim"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["filter"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["map"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Set"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["RobloxShared"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K10 ["stripAnsi"]
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["JestTypes"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K4 [require]
       34 GETTABLEKS                       R10 R0 K12 ["JestMessageUtil"]
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R9 R9 K13 ["formatExecError"]
       39 DUPCLOSURE                       R10 K14 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R10 R5 K15 ["formatHandleErrors"]
       47 RETURN                           R5 1
