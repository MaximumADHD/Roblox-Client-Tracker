PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedGraphInstance"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["selectionService"]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R0
       11 SETLIST                          R3 R4 1 [1]
       13 NAMECALL                         R1 R1 K2 ["Set"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 2
       17 NAMECALL                         R1 R1 K3 ["SaveSelectedToRoblox"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["useContext"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K5 ["Context"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K4 ["useContext"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["Context"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R5 0 3
       34 MOVE                             R6 R0
       35 GETTABLEKS                       R7 R1 K7 ["selectionService"]
       37 GETTABLEKS                       R8 R2 K8 ["getSelectedGraphInstance"]
       39 SETLIST                          R5 R6 3 [1]
       41 CALL                             R3 2 1
       42 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["SelectionServiceContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
