PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onExpansionChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R0
       16 GETTABLEKS                       R7 R2 K3 ["onExpansionChanged"]
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R5 R2 K4 ["expansions"]
       23 GETTABLE                         R4 R5 R0
       24 JUMPIF                           R4 ; [+7]
       25 GETTABLEKS                       R6 R2 K4 ["expansions"]
       27 GETTABLE                         R5 R6 R0
       28 JUMPIFEQKNIL                     R5 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIFNOT                        R1 ; [+2]
       33 MOVE                             R5 R4
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 JUMPIFNOT                        R1 ; [+2]
       37 MOVE                             R6 R3
       38 RETURN                           R5 2
       39 LOADNIL                          R6
       40 RETURN                           R5 2

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
       20 GETTABLEKS                       R3 R3 K10 ["ExpansionConfiguration"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
