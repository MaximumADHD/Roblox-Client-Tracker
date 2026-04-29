PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setStyleSheetRef"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["setStyleSheetRef"]
        7 GETTABLEKS                       R0 R1 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["setStyleSheetRef"]
       13 GETTABLEKS                       R0 R1 K1 ["current"]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["FoundationDisableStyleProviderDerives"]
        5 JUMPIF                           R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["derives"]
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 NAMECALL                         R0 R0 K2 ["SetDerives"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["theme"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["device"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["tokenOverrides"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["tags"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K1 ["current"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K2 ["scale"]
       14 GETUPVAL                         R6 5
       15 CALL                             R0 6 -1
       16 RETURN                           R0 -1
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["useLayoutEffect"]
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
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K2 ["useLayoutEffect"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R8 R1
       39 GETTABLEKS                       R9 R0 K5 ["derives"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K6 ["useMemo"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R7 0 3
       52 GETTABLEKS                       R8 R0 K3 ["theme"]
       54 GETTABLEKS                       R9 R0 K4 ["device"]
       56 GETTABLEKS                       R10 R0 K7 ["tokenOverrides"]
       58 SETLIST                          R7 R8 3 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       64 NEWCLOSURE                       R7 P3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 NEWTABLE                         R8 0 5
       73 MOVE                             R9 R1
       74 MOVE                             R10 R4
       75 GETTABLEKS                       R11 R0 K8 ["tags"]
       77 GETTABLEKS                       R12 R0 K9 ["scale"]
       79 MOVE                             R13 R5
       80 SETLIST                          R8 R9 5 [1]
       82 CALL                             R6 2 1
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R7 R8 K10 ["createElement"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K11 ["Fragment"]
       89 LOADNIL                          R9
       90 DUPTABLE                         R10 K14 [{"FoundationStyleSheet", "FoundationStyleLink"}]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R11 R12 K10 ["createElement"]
       94 LOADK                            R12 K15 ["StyleSheet"]
       95 DUPTABLE                         R13 K17 [{"ref"}]
       96 SETTABLEKS                       R2 R13 K16 ["ref"]
       98 MOVE                             R14 R6
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R10 K12 ["FoundationStyleSheet"]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R11 R12 K10 ["createElement"]
      105 LOADK                            R12 K18 ["StyleLink"]
      106 DUPTABLE                         R13 K19 [{"StyleSheet"}]
      107 SETTABLEKS                       R1 R13 K15 ["StyleSheet"]
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K13 ["FoundationStyleLink"]
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R5 R1 K7 ["Utility"]
       17 GETTABLEKS                       R4 R5 K8 ["Flags"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R8 R1 K10 ["Providers"]
       29 GETTABLEKS                       R7 R8 K11 ["Style"]
       31 GETTABLEKS                       R6 R7 K12 ["Tokens"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Rules"]
       38 GETTABLEKS                       R7 R8 K14 ["Types"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R0 K15 ["createStyleSheetRules"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K16 ["getOverrideAttributes"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R11 R1 K7 ["Utility"]
       55 GETTABLEKS                       R10 R11 K17 ["useGeneratedRules"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R12 R1 K18 ["Enums"]
       62 GETTABLEKS                       R11 R12 K19 ["Device"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R13 R1 K18 ["Enums"]
       69 GETTABLEKS                       R12 R13 K20 ["Theme"]
       71 CALL                             R11 1 1
       72 DUPCLOSURE                       R12 K21 [PROTO_4]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 GETTABLEKS                       R13 R4 K22 ["memo"]
       80 MOVE                             R14 R12
       81 CALL                             R13 1 -1
       82 RETURN                           R13 -1
