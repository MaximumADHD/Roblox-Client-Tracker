PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getContextOrder"]
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["getContext"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["getContext"]
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContextOrderChanged"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["getContext"]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R7 R0
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K0 ["subscribe"]
       10 MOVE                             R9 R5
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R8 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R6 K3 [table.insert]
       20 CALL                             R6 -1 0
       21 FORGLOOP                         R1 2 ; [-16]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U2
       21 NEWTABLE                         R5 0 2
       23 GETTABLEKS                       R6 R0 K4 ["onContextOrderChanged"]
       25 GETTABLEKS                       R7 R0 K5 ["getContext"]
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U2
       38 NEWTABLE                         R5 0 2
       40 MOVE                             R6 R1
       41 MOVE                             R7 R0
       42 SETLIST                          R5 R6 2 [1]
       44 CALL                             R3 2 0
       45 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["InputConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["sortContextOrder"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_6]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
