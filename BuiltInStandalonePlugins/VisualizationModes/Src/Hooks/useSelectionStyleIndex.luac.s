PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["RequestSelectionStyleUpdate"]
        2 NAMECALL                         R1 R1 K1 ["Invoke"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R8 2
        9 MOVE                             R10 R5
       10 NAMECALL                         R8 R8 K1 ["BindToChangedAsync"]
       12 CALL                             R8 2 1
       13 NEWCLOSURE                       R10 P0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R8 R8 K2 ["Connect"]
       17 CALL                             R8 2 -1
       18 NAMECALL                         R6 R0 K3 ["add"]
       20 CALL                             R6 -1 0
       21 FORGLOOP                         R1 2 ; [-14]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R2 R3 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K1 ["UpdateSelectionStyle"]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R3 R3 K2 ["OnInvoke"]
       11 CALL                             R3 3 -1
       12 NAMECALL                         R1 R0 K3 ["giveTask"]
       14 CALL                             R1 -1 0
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R2 R3 R4
        6 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useContext"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["Context"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K2 ["actionsComponent"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["useState"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 2
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 3
       24 MOVE                             R9 R2
       25 MOVE                             R10 R0
       26 MOVE                             R11 R3
       27 SETLIST                          R8 R9 3 [1]
       29 CALL                             R6 2 0
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R8 0 2
       40 MOVE                             R9 R2
       41 MOVE                             R10 R1
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 0
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R8 0 3
       54 MOVE                             R9 R0
       55 MOVE                             R10 R4
       56 MOVE                             R11 R3
       57 SETLIST                          R8 R9 3 [1]
       59 CALL                             R6 2 0
       60 JUMPIF                           R4 ; [+4]
       61 LOADK                            R8 K5 ["RequestSelectionStyleUpdate"]
       62 NAMECALL                         R6 R2 K6 ["Invoke"]
       64 CALL                             R6 2 0
       65 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["ActionsContext"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_7]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
