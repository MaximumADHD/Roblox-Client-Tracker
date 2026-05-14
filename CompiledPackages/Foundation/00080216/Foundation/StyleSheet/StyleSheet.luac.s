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
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FoundationDisableStyleProviderDerives"]
        5 JUMPIF                           R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["derives"]
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 NAMECALL                         R0 R0 K2 ["SetDerives"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

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
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R8 R1
       39 GETTABLEKS                       R9 R0 K5 ["derives"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R7 0 4
       55 MOVE                             R8 R1
       56 MOVE                             R9 R4
       57 GETTABLEKS                       R10 R0 K7 ["tags"]
       59 GETTABLEKS                       R11 R0 K8 ["scale"]
       61 SETLIST                          R7 R8 4 [1]
       63 CALL                             R5 2 1
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K9 ["createElement"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K10 ["Fragment"]
       70 LOADNIL                          R8
       71 DUPTABLE                         R9 K13 [{"FoundationStyleSheet", "FoundationStyleLink"}]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K9 ["createElement"]
       75 LOADK                            R11 K14 ["StyleSheet"]
       76 DUPTABLE                         R12 K16 [{"ref"}]
       77 SETTABLEKS                       R2 R12 K15 ["ref"]
       79 MOVE                             R13 R5
       80 CALL                             R10 3 1
       81 SETTABLEKS                       R10 R9 K11 ["FoundationStyleSheet"]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K9 ["createElement"]
       86 LOADK                            R11 K17 ["StyleLink"]
       87 DUPTABLE                         R12 K18 [{"StyleSheet"}]
       88 SETTABLEKS                       R1 R12 K14 ["StyleSheet"]
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K12 ["FoundationStyleLink"]
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1

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
       15 GETTABLEKS                       R4 R1 K7 ["Utility"]
       17 GETTABLEKS                       R4 R4 K8 ["Flags"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Rules"]
       29 GETTABLEKS                       R6 R6 K11 ["Types"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K12 ["createStyleSheetRules"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R1 K7 ["Utility"]
       41 GETTABLEKS                       R8 R8 K13 ["useGeneratedRules"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R1 K14 ["Enums"]
       48 GETTABLEKS                       R9 R9 K15 ["Device"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R1 K14 ["Enums"]
       55 GETTABLEKS                       R10 R10 K16 ["Theme"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K17 [PROTO_3]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 GETTABLEKS                       R11 R4 K18 ["memo"]
       65 MOVE                             R12 R10
       66 CALL                             R11 1 -1
       67 RETURN                           R11 -1
