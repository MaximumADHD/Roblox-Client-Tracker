PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["filter"]
        6 MOVE                             R4 R0
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_2:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["includes"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1
       13 MOVE                             R1 R0
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["includes"]
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R0
       14 CALL                             R3 2 1
       15 JUMP                             ; [+1]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 NOT                              R1 R2
       19 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 1
       15 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isArray"]
        3 GETTABLEKS                       R4 R0 K1 ["selectProjects"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["selectProjects"]
        9 JUMP                             ; [+2]
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["isArray"]
       15 GETTABLEKS                       R4 R0 K2 ["ignoreProjects"]
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+3]
       19 GETTABLEKS                       R2 R0 K2 ["ignoreProjects"]
       21 JUMP                             ; [+2]
       22 NEWTABLE                         R2 0 0
       24 DUPCLOSURE                       R3 K3 [PROTO_2]
       25 LENGTH                           R5 R1
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+6]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 JUMP                             ; [+1]
       34 MOVE                             R4 R3
       35 LENGTH                           R6 R2
       36 LOADN                            R7 0
       37 JUMPIFNOTLT                      R7 R6 ; [+6]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          VAL R2
       43 JUMP                             ; [+1]
       44 MOVE                             R5 R3
       45 NEWCLOSURE                       R6 P3
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["JestTypes"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K2 ["Parent"]
       29 GETTABLEKS                       R7 R7 K9 ["getProjectDisplayName"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R6 R6 K10 ["default"]
       34 LOADNIL                          R7
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          REF R7
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R8 R4 K10 ["default"]
       41 DUPCLOSURE                       R7 K11 [PROTO_6]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CLOSEUPVALS                      R7
       45 RETURN                           R4 1
