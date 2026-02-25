PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["append"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETIMPORT                        R2 K3 [table.sort]
        8 MOVE                             R3 R0
        9 DUPCLOSURE                       R4 K4 [PROTO_0]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"items", "selection", "selectionSet"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["items"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["selection"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["selectionSet"]
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["items"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["append"]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K4 [table.sort]
       11 MOVE                             R3 R1
       12 DUPCLOSURE                       R4 K5 [PROTO_0]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 2
       15 GETIMPORT                        R2 K7 [table.clone]
       17 GETUPVAL                         R3 0
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["items"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["append"]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K4 [table.sort]
       11 MOVE                             R3 R1
       12 DUPCLOSURE                       R4 K5 [PROTO_0]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 2
       15 GETIMPORT                        R2 K7 [table.clone]
       17 GETUPVAL                         R3 0
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 2
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADK                            R1 K0 ["QuickShare: fetching initial items"]
        9 CALL                             R0 1 0
       10 NEWCLOSURE                       R0 P0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U8
       18 GETUPVAL                         R2 9
       19 GETUPVAL                         R3 10
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 CALL                             R2 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 0
       25 JUMPIFNOT                        R0 ; [+11]
       26 GETUPVAL                         R0 1
       27 JUMPIF                           R0 ; [+9]
       28 GETUPVAL                         R0 2
       29 LOADB                            R1 0
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 6
       32 GETUPVAL                         R1 11
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 8
       35 GETUPVAL                         R1 11
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 2
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 CALL                             R4 1 2
        6 GETUPVAL                         R6 0
        7 LOADB                            R7 0
        8 CALL                             R6 1 2
        9 GETUPVAL                         R8 2
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R6
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R7
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R5
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 NEWTABLE                         R10 0 3
       25 MOVE                             R11 R6
       26 MOVE                             R12 R0
       27 MOVE                             R13 R1
       28 SETLIST                          R10 R11 3 [1]
       30 CALL                             R8 2 0
       31 RETURN                           R2 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["useState"]
       30 GETTABLEKS                       R5 R1 K12 ["useEffect"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K9 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["logIfDebug"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R9 R10 K15 ["Parent"]
       47 GETTABLEKS                       R8 R9 K16 ["fetchInitialItemsAsync"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R9 K18 [PROTO_2]
       53 DUPCLOSURE                       R10 K19 [PROTO_6]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 RETURN                           R10 1
