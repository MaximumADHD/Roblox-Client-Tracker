PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R3 R0 K0 ["current"]
        7 GETTABLEKS                       R3 R3 K1 ["plugin"]
        9 GETUPVAL                         R4 3
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 1
       12 GETUPVAL                         R2 4
       13 NAMECALL                         R2 R2 K2 ["UpdateUnitTestOnly"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 5
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R4 0 0
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K0 ["current"]
       25 DUPTABLE                         R4 K5 [{"StyleLink", "Container"}]
       26 GETUPVAL                         R5 7
       27 GETTABLEKS                       R5 R5 K6 ["createElement"]
       29 LOADK                            R6 K3 ["StyleLink"]
       30 DUPTABLE                         R7 K8 [{"StyleSheet"}]
       31 GETTABLEKS                       R8 R1 K0 ["current"]
       33 SETTABLEKS                       R8 R7 K7 ["StyleSheet"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K3 ["StyleLink"]
       38 GETUPVAL                         R5 7
       39 GETTABLEKS                       R5 R5 K6 ["createElement"]
       41 LOADK                            R6 K9 ["Frame"]
       42 DUPTABLE                         R7 K11 [{"Size"}]
       43 GETUPVAL                         R9 8
       44 JUMPIFNOT                        R9 ; [+6]
       45 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       47 LOADN                            R9 188
       48 LOADN                            R10 188
       49 CALL                             R8 2 1
       50 JUMP                             ; [+5]
       51 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       53 LOADN                            R9 32
       54 LOADN                            R10 32
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K10 ["Size"]
       58 DUPTABLE                         R8 K16 [{"Element"}]
       59 GETUPVAL                         R9 7
       60 GETTABLEKS                       R9 R9 K6 ["createElement"]
       62 GETUPVAL                         R10 9
       63 GETUPVAL                         R11 10
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K15 ["Element"]
       67 CALL                             R5 3 1
       68 SETTABLEKS                       R5 R4 K4 ["Container"]
       70 NAMECALL                         R2 R2 K17 ["provide"]
       72 CALL                             R2 2 -1
       73 RETURN                           R2 -1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["MockContextProps"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R4 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["new"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 GETUPVAL                         R6 6
       26 GETTABLEKS                       R6 R6 K2 ["createElement"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 -1
       30 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["Styling"]
       31 GETTABLEKS                       R4 R4 K13 ["registerPluginStyles"]
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R1 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Flags"]
       39 GETTABLEKS                       R6 R6 K16 ["getFFlagStyleEditorPluginStyleSheets"]
       41 CALL                             R5 1 1
       42 CALL                             R5 0 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["Testing"]
       49 GETTABLEKS                       R7 R7 K18 ["MockContext"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R2 K19 ["useEffect"]
       54 GETTABLEKS                       R8 R2 K20 ["useRef"]
       56 DUPCLOSURE                       R9 K21 [PROTO_3]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 RETURN                           R9 1
