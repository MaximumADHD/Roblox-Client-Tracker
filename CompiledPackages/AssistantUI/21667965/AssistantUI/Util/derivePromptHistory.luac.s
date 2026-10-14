PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isDeleted"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["hidden"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K2 ["role"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["ROLE"]
       13 GETTABLEKS                       R2 R2 K4 ["User"]
       15 JUMPIFEQ                         R1 R2 ; [+3]
       17 LOADB                            R1 0
       18 RETURN                           R1 1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sortMessages"]
        3 GETTABLEKS                       R3 R0 K1 ["messages"]
        5 DUPTABLE                         R4 K3 [{"allowMessage"}]
        6 DUPCLOSURE                       R5 K4 [PROTO_0]
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R5 R4 K2 ["allowMessage"]
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K7 [table.create]
       13 LENGTH                           R4 R2
       14 CALL                             R3 1 1
       15 MOVE                             R4 R2
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R10 R8 K8 ["contents"]
       22 CALL                             R9 1 1
       23 JUMPIFEQKNIL                     R9 ; [+12]
       25 LENGTH                           R11 R3
       26 GETTABLE                         R10 R3 R11
       27 JUMPIFEQ                         R10 R9 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       31 MOVE                             R11 R3
       32 MOVE                             R12 R9
       33 GETIMPORT                        R10 K10 [table.insert]
       35 CALL                             R10 2 0
       36 FORGLOOP                         R4 2 ; [-18]
       38 LENGTH                           R4 R3
       39 JUMPIFNOTLT                      R1 R4 ; [+10]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K11 ["slice"]
       44 MOVE                             R5 R3
       45 LENGTH                           R8 R3
       46 SUB                              R7 R8 R1
       47 ADDK                             R6 R7 K12 [1]
       48 CALL                             R4 2 1
       49 MOVE                             R3 R4
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["ThreadReader"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Util"]
       30 GETTABLEKS                       R6 R6 K11 ["readMessageText"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K12 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
