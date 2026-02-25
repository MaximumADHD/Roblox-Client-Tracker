PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R3 3
        5 NEWTABLE                         R5 0 1
        7 MOVE                             R6 R0
        8 SETLIST                          R5 R6 1 [1]
       10 NAMECALL                         R3 R3 K0 ["GetAsync"]
       12 CALL                             R3 2 1
       13 GETTABLEN                        R2 R3 1
       14 GETTABLEKS                       R1 R2 K1 ["Checked"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        7 CALL                             R0 -1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U4
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 JUMPIFEQ                         R0 R1 ; [+9]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R4 4
        8 GETUPVAL                         R5 5
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R1 K0 ["ActivateAsync"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useContext"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["Context"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K2 ["actionsComponent"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K4 ["useState"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 2
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R9 0 2
       40 MOVE                             R10 R0
       41 MOVE                             R11 R1
       42 SETLIST                          R9 R10 2 [1]
       44 CALL                             R7 2 0
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R9 0 3
       57 MOVE                             R10 R0
       58 MOVE                             R11 R1
       59 MOVE                             R12 R5
       60 SETLIST                          R9 R10 3 [1]
       62 CALL                             R7 2 0
       63 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ActionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["getActionStudioUri"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_5]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
