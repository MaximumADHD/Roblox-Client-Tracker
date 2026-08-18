PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onExpansionsChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K2 ["useStagnatingState"]
       17 GETTABLEKS                       R6 R3 K3 ["expansionsRef"]
       19 GETTABLEKS                       R6 R6 K4 ["current"]
       21 GETTABLE                         R5 R6 R0
       22 NEWTABLE                         R6 0 2
       24 GETTABLEKS                       R7 R2 K5 ["datamodelType"]
       26 MOVE                             R8 R0
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 2
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R8 0 2
       39 MOVE                             R9 R0
       40 MOVE                             R10 R5
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 1
       44 MOVE                             R7 R4
       45 JUMPIF                           R7 ; [+4]
       46 JUMPIFEQKNIL                     R4 ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 JUMPIFNOT                        R1 ; [+2]
       51 MOVE                             R8 R7
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 JUMPIFNOT                        R1 ; [+2]
       55 MOVE                             R9 R6
       56 RETURN                           R8 2
       57 LOADNIL                          R9
       58 RETURN                           R8 2

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["PluginConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K14 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 RETURN                           R6 1
