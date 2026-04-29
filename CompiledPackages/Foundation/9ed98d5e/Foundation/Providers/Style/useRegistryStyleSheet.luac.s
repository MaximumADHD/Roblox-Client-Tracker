PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStyleSheet"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["current"]
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R6 R5
        9 FORGLOOP                         R1 2 ; [-6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["addStyleTags"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R4
       12 GETIMPORT                        R6 K3 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 1 ; [-8]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K4 ["addStyleTags"]
       20 GETUPVAL                         R2 2
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useRef"]
        3 NEWTABLE                         R5 0 0
        5 CALL                             R4 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["useMemo"]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R7 0 4
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 MOVE                             R10 R2
       20 MOVE                             R11 R3
       21 SETLIST                          R7 R8 4 [1]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K0 ["useRef"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R5 R6 K2 ["current"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R9 0 0
       40 CALL                             R7 2 1
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K4 ["useLayoutEffect"]
       44 NEWCLOSURE                       R9 P2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 1
       50 MOVE                             R11 R5
       51 SETLIST                          R10 R11 1 [1]
       53 CALL                             R8 2 0
       54 MOVE                             R8 R5
       55 MOVE                             R9 R7
       56 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R4 K8 ["Device"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K7 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["Theme"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Providers"]
       32 GETTABLEKS                       R7 R8 K12 ["Style"]
       34 GETTABLEKS                       R6 R7 K13 ["Tokens"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K14 ["StyleSheet"]
       41 GETTABLEKS                       R7 R8 K15 ["StyleSheetRegistry"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 RETURN                           R7 1
