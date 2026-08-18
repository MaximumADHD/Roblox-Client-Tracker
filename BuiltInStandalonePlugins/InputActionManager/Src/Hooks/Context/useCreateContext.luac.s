PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["countContextCreated"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["updateContext"]
        9 LOADNIL                          R2
       10 DUPTABLE                         R3 K3 [{"name"}]
       11 SETTABLEKS                       R0 R3 K2 ["name"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 2
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["useState"]
       17 LOADB                            R3 0
       18 CALL                             R2 1 2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 1
       26 MOVE                             R7 R3
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R7 0 3
       39 MOVE                             R8 R0
       40 MOVE                             R9 R3
       41 MOVE                             R10 R1
       42 SETLIST                          R7 R8 3 [1]
       44 CALL                             R5 2 1
       45 MOVE                             R6 R2
       46 MOVE                             R7 R4
       47 MOVE                             R8 R5
       48 RETURN                           R6 3

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["Telemetry"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
