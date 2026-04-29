PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["WARN"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETIMPORT                        R1 K4 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+3]
       13 LOADB                            R3 1
       14 SETUPVAL                         R3 2
       15 SETUPVAL                         R2 3
       16 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R1 K0 ["Expected never to warn with string containing \"%*\" but got \"%*\""]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R1 K0 ["Expected to warn with string containing \"%*\" but did not find a match"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 RETURN                           R0 1

PROTO_4:
        0 LOADB                            R3 0
        1 LOADK                            R4 K0 [""]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["spyOn"]
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K2 ["globalEnv"]
        8 LOADK                            R8 K3 ["warn"]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R5 R6 K4 ["mockImplementation"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          REF R3
       16 CAPTURE                          REF R4
       17 CALL                             R5 1 1
       18 GETIMPORT                        R6 K6 [pcall]
       20 MOVE                             R7 R1
       21 CALL                             R6 1 2
       22 JUMPIF                           R6 ; [+7]
       23 NAMECALL                         R8 R5 K7 ["mockRestore"]
       25 CALL                             R8 1 0
       26 GETIMPORT                        R8 K9 [error]
       28 MOVE                             R9 R7
       29 CALL                             R8 1 0
       30 LOADNIL                          R8
       31 JUMPIFNOT                        R3 ; [+4]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R4
       35 JUMP                             ; [+2]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          VAL R2
       38 NAMECALL                         R9 R5 K7 ["mockRestore"]
       40 CALL                             R9 1 0
       41 DUPTABLE                         R9 K12 [{"message", "pass"}]
       42 SETTABLEKS                       R8 R9 K10 ["message"]
       44 SETTABLEKS                       R3 R9 K11 ["pass"]
       46 CLOSEUPVALS                      R3
       47 RETURN                           R9 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["WARN"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 0
        6 ADDK                             R1 R2 K3 [1]
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R1 K0 ["Expected never to warn but got %* warnings"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R0 K0 ["Expected to warn but never did"]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADN                            R2 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["spyOn"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["globalEnv"]
        7 LOADK                            R6 K2 ["warn"]
        8 CALL                             R4 2 1
        9 GETTABLEKS                       R3 R4 K3 ["mockImplementation"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          REF R2
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K5 [pcall]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 2
       18 JUMPIF                           R4 ; [+7]
       19 NAMECALL                         R6 R3 K6 ["mockRestore"]
       21 CALL                             R6 1 0
       22 GETIMPORT                        R6 K8 [error]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 LOADNIL                          R6
       27 LOADN                            R7 0
       28 JUMPIFNOTLT                      R7 R2 ; [+4]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          REF R2
       32 JUMP                             ; [+1]
       33 DUPCLOSURE                       R6 K9 [PROTO_7]
       34 NAMECALL                         R7 R3 K6 ["mockRestore"]
       36 CALL                             R7 1 0
       37 DUPTABLE                         R7 K12 [{"message", "pass"}]
       38 SETTABLEKS                       R6 R7 K10 ["message"]
       40 LOADN                            R9 0
       41 JUMPIFLT                         R9 R2 ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K11 ["pass"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["extend"]
        3 DUPTABLE                         R1 K3 [{"toWarnWith", "toWarn"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toWarnWith"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["toWarn"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["MarkdownCore"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["beforeAll"]
       18 GETTABLEKS                       R3 R1 K10 ["expect"]
       20 GETTABLEKS                       R4 R1 K11 ["jest"]
       22 DUPCLOSURE                       R5 K12 [PROTO_4]
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 DUPCLOSURE                       R6 K13 [PROTO_8]
       26 CAPTURE                          VAL R4
       27 MOVE                             R7 R2
       28 DUPCLOSURE                       R8 K14 [PROTO_9]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 CALL                             R7 1 0
       33 RETURN                           R0 0
