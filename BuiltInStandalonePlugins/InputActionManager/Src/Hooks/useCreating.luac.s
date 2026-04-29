PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"parentUuid", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["parentUuid"]
        4 SETTABLEKS                       R0 R1 K1 ["name"]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQKS                    R2 K3 ["InputContext"] ; [+8]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["updateContext"]
       12 LOADNIL                          R3
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 JUMP                             ; [+19]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOTEQKS                    R2 K5 ["InputAction"] ; [+8]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K6 ["updateAction"]
       22 LOADNIL                          R3
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R2 1
       27 JUMPIFNOTEQKS                    R2 K7 ["InputBinding"] ; [+7]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K8 ["updateBinding"]
       32 LOADNIL                          R3
       33 MOVE                             R4 R1
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 3
       36 LOADB                            R3 0
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["useState"]
       10 LOADB                            R4 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K3 ["useEventCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R8 0 3
       28 MOVE                             R9 R1
       29 MOVE                             R10 R0
       30 MOVE                             R11 R2
       31 SETLIST                          R8 R9 3 [1]
       33 CALL                             R6 2 1
       34 MOVE                             R7 R3
       35 MOVE                             R8 R5
       36 MOVE                             R9 R6
       37 RETURN                           R7 3

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
