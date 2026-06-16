PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateContext"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"name"}]
        5 SETTABLEKS                       R0 R3 K1 ["name"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 1
       19 MOVE                             R6 R2
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R2
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 MOVE                             R5 R1
       36 MOVE                             R6 R3
       37 MOVE                             R7 R4
       38 RETURN                           R5 3

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
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["InputConfiguration"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
