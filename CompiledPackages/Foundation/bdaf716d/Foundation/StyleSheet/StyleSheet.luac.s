PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setStyleSheetRef"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["setStyleSheetRef"]
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["setStyleSheetRef"]
       13 GETTABLEKS                       R0 R0 K1 ["current"]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["derives"]
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 NAMECALL                         R0 R0 K1 ["SetDerives"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["tags"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K1 ["current"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["scale"]
       14 CALL                             R0 5 -1
       15 RETURN                           R0 -1
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["useLayoutEffect"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R1
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R5 R0 K3 ["theme"]
       26 GETTABLEKS                       R6 R0 K4 ["device"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K2 ["useLayoutEffect"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R1
       38 GETTABLEKS                       R9 R0 K5 ["derives"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       46 NEWCLOSURE                       R6 P2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R7 0 4
       54 MOVE                             R8 R1
       55 MOVE                             R9 R4
       56 GETTABLEKS                       R10 R0 K7 ["tags"]
       58 GETTABLEKS                       R11 R0 K8 ["scale"]
       60 SETLIST                          R7 R8 4 [1]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K9 ["createElement"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K10 ["Fragment"]
       69 LOADNIL                          R8
       70 DUPTABLE                         R9 K13 [{"FoundationStyleSheet", "FoundationStyleLink"}]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K9 ["createElement"]
       74 LOADK                            R11 K14 ["StyleSheet"]
       75 DUPTABLE                         R12 K16 [{"ref"}]
       76 SETTABLEKS                       R2 R12 K15 ["ref"]
       78 MOVE                             R13 R5
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K11 ["FoundationStyleSheet"]
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R10 R10 K9 ["createElement"]
       85 LOADK                            R11 K17 ["StyleLink"]
       86 DUPTABLE                         R12 K18 [{"StyleSheet"}]
       87 SETTABLEKS                       R1 R12 K14 ["StyleSheet"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K12 ["FoundationStyleLink"]
       92 CALL                             R6 3 -1
       93 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K8 ["Rules"]
       22 GETTABLEKS                       R5 R5 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["createStyleSheetRules"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R1 K11 ["Utility"]
       34 GETTABLEKS                       R7 R7 K12 ["useGeneratedRules"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R1 K13 ["Enums"]
       41 GETTABLEKS                       R8 R8 K14 ["Device"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R1 K13 ["Enums"]
       48 GETTABLEKS                       R9 R9 K15 ["Theme"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K16 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 GETTABLEKS                       R10 R3 K17 ["memo"]
       57 MOVE                             R11 R9
       58 CALL                             R10 1 -1
       59 RETURN                           R10 -1
