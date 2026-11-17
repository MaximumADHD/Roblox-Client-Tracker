PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NEWTABLE                         R1 0 0
        5 GETTABLEKS                       R2 R0 K0 ["paramName"]
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETTABLEKS                       R2 R0 K1 ["paramValue"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K0 ["paramName"]
       13 GETTABLEKS                       R3 R0 K1 ["paramValue"]
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R5 R0 K2 ["scope"]
       20 GETTABLEKS                       R6 R0 K3 ["key"]
       22 MOVE                             R7 R1
       23 NAMECALL                         R3 R3 K4 ["getText"]
       25 CALL                             R3 4 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U3
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R3 R3 K2 ["use"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 3
       19 MOVE                             R7 R0
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 SETLIST                          R6 R7 3 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R4
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U5
       45 NEWTABLE                         R7 0 3
       47 MOVE                             R8 R0
       48 MOVE                             R9 R4
       49 MOVE                             R10 R1
       50 SETLIST                          R7 R8 3 [1]
       52 CALL                             R5 2 0
       53 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["LuauPolyfill"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R4 K10 ["Localization"]
       34 GETTABLEKS                       R5 R3 K11 ["setTimeout"]
       36 GETTABLEKS                       R6 R3 K12 ["clearTimeout"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R8 K14 ["Util"]
       44 GETTABLEKS                       R8 R8 K15 ["RelativeTime"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["calculateRelativeTime"]
       49 GETTABLEKS                       R9 R7 K17 ["getRefreshIntervalInMS"]
       51 DUPCLOSURE                       R10 K18 [PROTO_5]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 RETURN                           R10 1
