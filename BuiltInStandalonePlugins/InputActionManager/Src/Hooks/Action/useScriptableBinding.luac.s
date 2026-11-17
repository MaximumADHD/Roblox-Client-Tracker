PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 GETIMPORT                        R2 K4 [Enum.InputBindingType.Scriptable]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["subscribe"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["uuid"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 RETURN                           R0 1
       12 DUPCLOSURE                       R0 K2 [PROTO_1]
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useStagnatingState"]
       10 GETUPVAL                         R3 3
       11 MOVE                             R4 R0
       12 GETTABLEKS                       R5 R1 K3 ["getBinding"]
       14 CALL                             R3 2 1
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 2
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["useEffect"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETTABLEKS                       R7 R2 K5 ["uuid"]
       34 JUMP                             ; [+1]
       35 LOADK                            R7 K6 [""]
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 0
       39 RETURN                           R2 1

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
       27 GETTABLEKS                       R4 R4 K11 ["InputConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Binding"]
       38 GETTABLEKS                       R5 R5 K14 ["getScriptableBinding"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Types"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 RETURN                           R6 1
