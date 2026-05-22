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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["expansionsRef"]
        4 GETTABLEKS                       R2 R2 K1 ["current"]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useState"]
       10 GETTABLEKS                       R5 R2 K3 ["expansionsRef"]
       12 GETTABLEKS                       R5 R5 K4 ["current"]
       14 GETTABLE                         R4 R5 R0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R0
       26 MOVE                             R9 R4
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R0
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 MOVE                             R6 R3
       44 JUMPIF                           R6 ; [+4]
       45 JUMPIFEQKNIL                     R3 ; [+2]
       47 LOADB                            R6 0 +1
       48 LOADB                            R6 1
       49 JUMPIFNOT                        R1 ; [+2]
       50 MOVE                             R7 R6
       51 JUMP                             ; [+1]
       52 LOADNIL                          R7
       53 JUMPIFNOT                        R1 ; [+2]
       54 MOVE                             R8 R5
       55 RETURN                           R7 2
       56 LOADNIL                          R8
       57 RETURN                           R7 2

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
       20 GETTABLEKS                       R3 R3 K10 ["PluginConfiguration"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
