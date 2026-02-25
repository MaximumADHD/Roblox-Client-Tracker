PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["destroy"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R4 R0 K1 ["current"]
       11 GETTABLEKS                       R3 R4 K2 ["plugin"]
       13 GETUPVAL                         R4 4
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 1
       16 GETUPVAL                         R2 5
       17 NAMECALL                         R2 R2 K3 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 6
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R4 0 0
       25 CALL                             R2 2 0
       26 GETTABLEKS                       R2 R0 K1 ["current"]
       28 DUPTABLE                         R4 K6 [{"StyleLink", "Container"}]
       29 GETUPVAL                         R6 7
       30 GETTABLEKS                       R5 R6 K7 ["createElement"]
       32 LOADK                            R6 K4 ["StyleLink"]
       33 DUPTABLE                         R7 K9 [{"StyleSheet"}]
       34 GETTABLEKS                       R8 R1 K1 ["current"]
       36 SETTABLEKS                       R8 R7 K8 ["StyleSheet"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K4 ["StyleLink"]
       41 GETUPVAL                         R6 7
       42 GETTABLEKS                       R5 R6 K7 ["createElement"]
       44 LOADK                            R6 K10 ["Frame"]
       45 DUPTABLE                         R7 K12 [{"Size"}]
       46 GETUPVAL                         R9 8
       47 JUMPIFNOT                        R9 ; [+6]
       48 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       50 LOADN                            R9 188
       51 LOADN                            R10 188
       52 CALL                             R8 2 1
       53 JUMP                             ; [+5]
       54 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       56 LOADN                            R9 32
       57 LOADN                            R10 32
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K11 ["Size"]
       61 DUPTABLE                         R8 K17 [{"Element"}]
       62 GETUPVAL                         R10 7
       63 GETTABLEKS                       R9 R10 K7 ["createElement"]
       65 GETUPVAL                         R10 9
       66 GETUPVAL                         R11 10
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K16 ["Element"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K5 ["Container"]
       73 NAMECALL                         R2 R2 K18 ["provide"]
       75 CALL                             R2 2 -1
       76 RETURN                           R2 -1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["MockContextProps"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 GETUPVAL                         R5 6
       18 GETTABLEKS                       R4 R5 K1 ["createElement"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R5 R3 K12 ["Styling"]
       31 GETTABLEKS                       R4 R5 K13 ["registerPluginStyles"]
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R8 R1 K14 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Flags"]
       39 GETTABLEKS                       R6 R7 K16 ["getFFlagStyleEditorPluginStyleSheets"]
       41 CALL                             R5 1 1
       42 CALL                             R5 0 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R9 R1 K14 ["Src"]
       47 GETTABLEKS                       R8 R9 K17 ["Testing"]
       49 GETTABLEKS                       R7 R8 K18 ["MockContext"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R2 K19 ["useEffect"]
       54 GETTABLEKS                       R8 R2 K20 ["useRef"]
       56 DUPCLOSURE                       R9 K21 [PROTO_3]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 RETURN                           R9 1
