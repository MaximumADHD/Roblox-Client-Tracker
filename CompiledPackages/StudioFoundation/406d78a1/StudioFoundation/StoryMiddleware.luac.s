PROTO_0:
        0 NEWTABLE                         R0 0 5
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["focus"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["new"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["plugin"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K0 ["new"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["plugin"]
       22 NAMECALL                         R4 R4 K3 ["GetMouse"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 1
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K4 ["mock"]
       29 CALL                             R4 0 1
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K0 ["new"]
       33 GETUPVAL                         R7 6
       34 JUMPIFNOT                        R7 ; [+5]
       35 GETIMPORT                        R6 K6 [Instance.new]
       37 LOADK                            R7 K7 ["StyleSheet"]
       38 CALL                             R6 1 1
       39 JUMP                             ; [+1]
       40 GETUPVAL                         R6 7
       41 CALL                             R5 1 -1
       42 SETLIST                          R0 R1 -1 [1]
       44 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useStyleSheet"]
        5 CALL                             R1 0 1
        6 JUMPIF                           R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 4
       25 MOVE                             R5 R1
       26 GETTABLEKS                       R6 R0 K3 ["focus"]
       28 GETTABLEKS                       R7 R0 K4 ["plugin"]
       30 GETUPVAL                         R8 1
       31 SETLIST                          R4 R5 4 [1]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 8
       35 GETTABLEKS                       R3 R3 K5 ["provide"]
       37 MOVE                             R4 R2
       38 GETTABLEKS                       R5 R0 K6 ["children"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"theme", "device", "preferences", "scale"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R6 R0 K1 ["theme"]
        8 GETTABLE                         R4 R5 R6
        9 SETTABLEKS                       R4 R3 K1 ["theme"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R6 R0 K6 ["platform"]
       14 GETTABLE                         R4 R5 R6
       15 SETTABLEKS                       R4 R3 K2 ["device"]
       17 GETTABLEKS                       R4 R0 K7 ["settings"]
       19 SETTABLEKS                       R4 R3 K3 ["preferences"]
       21 GETTABLEKS                       R4 R0 K7 ["settings"]
       23 JUMPIFNOT                        R4 ; [+4]
       24 GETTABLEKS                       R4 R0 K7 ["settings"]
       26 GETTABLEKS                       R4 R4 K4 ["scale"]
       28 SETTABLEKS                       R4 R3 K4 ["scale"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["createElement"]
       33 GETUPVAL                         R5 4
       34 DUPTABLE                         R6 K10 [{"focus", "plugin"}]
       35 GETTABLEKS                       R7 R0 K8 ["focus"]
       37 SETTABLEKS                       R7 R6 K8 ["focus"]
       39 GETTABLEKS                       R7 R0 K9 ["plugin"]
       41 SETTABLEKS                       R7 R6 K9 ["plugin"]
       43 DUPTABLE                         R7 K12 [{"Child"}]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K0 ["createElement"]
       47 GETUPVAL                         R9 5
       48 MOVE                             R10 R0
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K11 ["Child"]
       52 CALL                             R4 3 -1
       53 CALL                             R1 -1 -1
       54 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R3 K10 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K11 ["Analytics"]
       28 GETTABLEKS                       R7 R5 K12 ["Design"]
       30 GETTABLEKS                       R8 R5 K13 ["Focus"]
       32 GETTABLEKS                       R9 R5 K14 ["Mouse"]
       34 GETTABLEKS                       R10 R5 K15 ["Plugin"]
       36 GETTABLEKS                       R11 R4 K16 ["FoundationProvider"]
       38 GETIMPORT                        R12 K6 [require]
       40 GETTABLEKS                       R13 R0 K17 ["Util"]
       42 GETTABLEKS                       R13 R13 K18 ["isStyleSheetPolyfillOn"]
       44 CALL                             R12 1 1
       45 CALL                             R12 0 1
       46 GETTABLEKS                       R13 R4 K19 ["Enums"]
       48 GETTABLEKS                       R13 R13 K20 ["Theme"]
       50 GETTABLEKS                       R14 R4 K19 ["Enums"]
       52 GETTABLEKS                       R14 R14 K21 ["Device"]
       54 DUPCLOSURE                       R15 K22 [PROTO_1]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R16 K23 [PROTO_3]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R15
       70 RETURN                           R16 1
