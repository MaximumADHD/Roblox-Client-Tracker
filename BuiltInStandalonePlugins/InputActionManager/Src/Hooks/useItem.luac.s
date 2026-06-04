PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["InputContext"] ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["getContext"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 0
       10 JUMPIFNOTEQKS                    R0 K2 ["InputAction"] ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["getAction"]
       15 GETUPVAL                         R1 2
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1
       18 LOADNIL                          R0
       19 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["InputContext"] ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["getContext"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+10]
        9 GETUPVAL                         R1 0
       10 JUMPIFNOTEQKS                    R1 K2 ["InputAction"] ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["getAction"]
       15 GETUPVAL                         R1 2
       16 CALL                             R0 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R0
       19 GETUPVAL                         R1 3
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K4 ["subscribe"]
       25 GETUPVAL                         R2 2
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U3
       28 CALL                             R1 2 1
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          VAL R1
       31 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useState"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 3
       25 MOVE                             R8 R0
       26 MOVE                             R9 R1
       27 MOVE                             R10 R2
       28 SETLIST                          R7 R8 3 [1]
       30 CALL                             R5 2 0
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelReference"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_4]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
