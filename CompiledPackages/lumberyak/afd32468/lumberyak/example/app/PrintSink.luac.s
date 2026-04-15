PROTO_0:
        0 DUPTABLE                         R1 K1 [{"maxLevel"}]
        1 SETTABLEKS                       R0 R1 K0 ["maxLevel"]
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [setmetatable]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["level"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Levels"]
        5 GETTABLEKS                       R4 R5 K2 ["Error"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+7]
        9 GETIMPORT                        R3 K4 [error]
       11 MOVE                             R4 R1
       12 LOADN                            R5 5
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K0 ["level"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["Levels"]
       20 GETTABLEKS                       R4 R5 K5 ["Warning"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+6]
       24 GETIMPORT                        R3 K7 [warn]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K9 [print]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Logger"]
       13 CALL                             R0 1 1
       14 NEWTABLE                         R1 2 0
       16 DUPCLOSURE                       R2 K6 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R2 R1 K7 ["new"]
       20 DUPCLOSURE                       R2 K8 [PROTO_1]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K9 ["log"]
       24 RETURN                           R1 1
