PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["NumberSequence"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K1 ["Keypoints"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["fromUnorderedKeypoints"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["setPart"]
       16 GETIMPORT                        R5 K7 [NumberSequence.new]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 -1
       20 CALL                             R4 -1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["NumberSequence"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R2 R2 K2 ["Keypoints"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R6 0 1
       21 GETTABLEKS                       R7 R0 K1 ["NumberSequence"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 2
       36 MOVE                             R7 R1
       37 GETTABLEKS                       R8 R0 K5 ["setPart"]
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 1
       42 MOVE                             R5 R1
       43 MOVE                             R6 R3
       44 DUPTABLE                         R7 K7 [{"updateKeypoint"}]
       45 SETTABLEKS                       R4 R7 K6 ["updateKeypoint"]
       47 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["NumberSequenceUtil"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Signals"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["useBindingToState"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K16 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 RETURN                           R6 1
