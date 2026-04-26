PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStyleSheet"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useRef"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 3
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 MOVE                             R9 R2
       19 SETLIST                          R6 R7 3 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K0 ["useRef"]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R4 R5 K2 ["current"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K4 ["useLayoutEffect"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R9 0 1
       48 MOVE                             R10 R4
       49 SETLIST                          R9 R10 1 [1]
       51 CALL                             R7 2 0
       52 MOVE                             R7 R4
       53 MOVE                             R8 R6
       54 RETURN                           R7 2

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
       30 GETTABLEKS                       R7 R0 K11 ["StyleSheet"]
       32 GETTABLEKS                       R6 R7 K12 ["StyleSheetRegistry"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_3]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
