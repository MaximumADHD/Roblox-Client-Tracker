PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["InputContext"] ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["updateContext"]
        5 LOADNIL                          R3
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 JUMP                             ; [+17]
        9 JUMPIFNOTEQKS                    R0 K2 ["InputAction"] ; [+8]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["updateAction"]
       14 LOADNIL                          R3
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 JUMP                             ; [+8]
       18 JUMPIFNOTEQKS                    R0 K4 ["InputBinding"] ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K5 ["updateBinding"]
       23 LOADNIL                          R3
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 1
       27 LOADB                            R3 0
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["useEventCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R1
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 MOVE                             R6 R2
       31 MOVE                             R7 R4
       32 MOVE                             R8 R5
       33 RETURN                           R6 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K12 ["DatamodelReference"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 RETURN                           R5 1
