PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["watchForChanges"]
        5 MOVE                             R5 R0
        6 GETUPVAL                         R6 2
        7 CALL                             R4 2 -1
        8 NAMECALL                         R1 R1 K1 ["addNamed"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["watchForChanges"]
        5 MOVE                             R5 R0
        6 GETUPVAL                         R6 2
        7 CALL                             R4 2 -1
        8 NAMECALL                         R1 R1 K1 ["addNamed"]
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 2
       12 MOVE                             R2 R0
       13 LOADK                            R3 K2 ["Parent"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 NAMECALL                         R1 R1 K0 ["addNamed"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 ["Parent"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 GETTABLEKS                       R6 R0 K1 ["ChildAdded"]
       10 NEWCLOSURE                       R8 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 NAMECALL                         R6 R6 K2 ["Connect"]
       16 CALL                             R6 2 -1
       17 NAMECALL                         R4 R2 K3 ["giveTask"]
       19 CALL                             R4 -1 0
       20 GETTABLEKS                       R6 R0 K4 ["ChildRemoved"]
       22 NEWCLOSURE                       R8 P2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 NAMECALL                         R6 R6 K2 ["Connect"]
       27 CALL                             R6 2 -1
       28 NAMECALL                         R4 R2 K3 ["giveTask"]
       30 CALL                             R4 -1 0
       31 GETTABLEKS                       R6 R0 K5 ["Changed"]
       33 NEWCLOSURE                       R8 P3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R6 R6 K2 ["Connect"]
       38 CALL                             R6 2 -1
       39 NAMECALL                         R4 R2 K3 ["giveTask"]
       41 CALL                             R4 -1 0
       42 NAMECALL                         R4 R0 K6 ["GetChildren"]
       44 CALL                             R4 1 3
       45 FORGPREP                         R4
       46 MOVE                             R11 R8
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K7 ["watchForChanges"]
       50 MOVE                             R13 R8
       51 MOVE                             R14 R1
       52 CALL                             R12 2 -1
       53 NAMECALL                         R9 R2 K8 ["addNamed"]
       55 CALL                             R9 -1 0
       56 FORGLOOP                         R4 2 ; [-11]
       58 NEWCLOSURE                       R4 P4
       59 CAPTURE                          VAL R2
       60 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_currentQueue"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_currentQueue"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K3 [task.defer]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R1 1 1
       12 SETTABLEKS                       R1 R0 K0 ["_currentQueue"]
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["watchForChanges"]
        7 MOVE                             R6 R0
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R2 K2 ["giveTask"]
       14 CALL                             R3 -1 0
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_5]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K10 ["watchForChanges"]
       23 DUPCLOSURE                       R3 K11 [PROTO_9]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K12 ["throttleDeferWatchForChanges"]
       28 RETURN                           R2 1
