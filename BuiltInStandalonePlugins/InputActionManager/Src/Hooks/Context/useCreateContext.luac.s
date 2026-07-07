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
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["useContext"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K1 ["Context"]
       16 CALL                             R1 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["useState"]
       22 LOADB                            R3 0
       23 CALL                             R2 1 2
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R3
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R7 0 3
       44 MOVE                             R8 R0
       45 MOVE                             R9 R3
       46 MOVE                             R10 R1
       47 SETLIST                          R7 R8 3 [1]
       49 CALL                             R5 2 1
       50 MOVE                             R6 R2
       51 MOVE                             R7 R4
       52 MOVE                             R8 R5
       53 RETURN                           R6 3

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
       32 GETTABLEKS                       R4 R0 K8 ["Src"]
       34 GETTABLEKS                       R4 R4 K12 ["Flags"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R4 K13 ["getFFlagIAMTelemetry"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K14 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 RETURN                           R6 1
