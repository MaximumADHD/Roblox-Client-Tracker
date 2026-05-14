PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["viewportRectGetter"]
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R3
       10 SETLIST                          R4 R5 1 [1]
       12 JUMPIFNOT                        R1 ; [+13]
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       19 MOVE                             R11 R4
       20 MOVE                             R12 R9
       21 GETIMPORT                        R10 K4 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R5 2 ; [-8]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 MOVE                             R7 R4
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K6 ["useSignalBinding"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 -1
       41 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["viewportRectGetter"]
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R3
       10 SETLIST                          R4 R5 1 [1]
       12 JUMPIFNOT                        R1 ; [+13]
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       19 MOVE                             R11 R4
       20 MOVE                             R12 R9
       21 GETIMPORT                        R10 K4 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R5 2 ; [-8]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 MOVE                             R7 R4
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K6 ["useSignalState"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 -1
       41 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Signals"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["SignalsReact"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["CanvasContext"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Types"]
       33 CALL                             R6 1 1
       34 DUPCLOSURE                       R7 K12 [PROTO_2]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R8 K13 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 DUPTABLE                         R9 K16 [{"useViewportBinding", "useViewportVisibility"}]
       45 SETTABLEKS                       R7 R9 K14 ["useViewportBinding"]
       47 SETTABLEKS                       R8 R9 K15 ["useViewportVisibility"]
       49 RETURN                           R9 1
