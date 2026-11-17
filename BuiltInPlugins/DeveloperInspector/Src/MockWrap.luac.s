PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K5 [{"plugin", "mouse", "store", "theme"}]
        5 SETTABLEKS                       R0 R1 K1 ["plugin"]
        7 NAMECALL                         R2 R0 K6 ["GetMouse"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["mouse"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K7 ["Store"]
       15 GETTABLEKS                       R2 R2 K0 ["new"]
       17 GETUPVAL                         R3 2
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K3 ["store"]
       21 GETUPVAL                         R2 3
       22 LOADB                            R3 1
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["theme"]
       26 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"plugin", "mouse", "store", "analytics"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["Plugin"]
        4 GETTABLEKS                       R2 R2 K6 ["new"]
        6 GETTABLEKS                       R3 R0 K0 ["plugin"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K0 ["plugin"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K7 ["Mouse"]
       14 GETTABLEKS                       R2 R2 K6 ["new"]
       16 GETTABLEKS                       R3 R0 K1 ["mouse"]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K1 ["mouse"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["Store"]
       24 GETTABLEKS                       R2 R2 K6 ["new"]
       26 GETTABLEKS                       R3 R0 K2 ["store"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K2 ["store"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K9 ["Analytics"]
       34 GETTABLEKS                       R2 R2 K10 ["mock"]
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R1 K3 ["analytics"]
       39 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["theme"]
        2 NAMECALL                         R2 R2 K1 ["destroy"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R0 K2 ["store"]
        7 NAMECALL                         R2 R2 K3 ["destruct"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K4 ["plugin"]
       12 NAMECALL                         R2 R2 K5 ["Destroy"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createMocks"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["mocks"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["createMockContextItems"]
        9 GETTABLEKS                       R2 R0 K1 ["mocks"]
       11 CALL                             R1 1 1
       12 SETTABLEKS                       R1 R0 K3 ["mockItems"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 5
        5 GETTABLEKS                       R3 R0 K1 ["mockItems"]
        7 GETTABLEKS                       R3 R3 K2 ["plugin"]
        9 GETTABLEKS                       R4 R0 K1 ["mockItems"]
       11 GETTABLEKS                       R4 R4 K3 ["mouse"]
       13 GETTABLEKS                       R5 R0 K1 ["mockItems"]
       15 GETTABLEKS                       R5 R5 K4 ["store"]
       17 GETTABLEKS                       R6 R0 K1 ["mockItems"]
       19 GETTABLEKS                       R6 R6 K5 ["theme"]
       21 GETTABLEKS                       R7 R0 K1 ["mockItems"]
       23 GETTABLEKS                       R7 R7 K6 ["analytics"]
       25 SETLIST                          R2 R3 5 [1]
       27 DUPTABLE                         R3 K8 [{"WrappedComponent"}]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K9 ["createElement"]
       31 LOADK                            R5 K10 ["Frame"]
       32 LOADNIL                          R6
       33 GETTABLEKS                       R8 R0 K11 ["props"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K12 ["Children"]
       38 GETTABLE                         R7 R8 R9
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K7 ["WrappedComponent"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_5:
        0 LOADB                            R4 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [type]
        5 CALL                             R5 1 1
        6 JUMPIFEQKS                       R5 K2 ["function"] ; [+19]
        8 LOADB                            R4 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R6 R0
       11 GETIMPORT                        R5 K1 [type]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+11]
       16 GETTABLEKS                       R6 R0 K4 ["render"]
       18 FASTCALL1                        TYPE R6 ; [+2]
       19 GETIMPORT                        R5 K1 [type]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       28 LOADK                            R5 K5 ["MockWrapper.createElementWithMockContext passed invalid component"]
       29 GETIMPORT                        R3 K7 [assert]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K8 ["createElement"]
       35 GETUPVAL                         R4 1
       36 DUPTABLE                         R5 K10 [{"MyComponent"}]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K8 ["createElement"]
       40 MOVE                             R7 R0
       41 MOVE                             R8 R1
       42 MOVE                             R9 R2
       43 CALL                             R6 3 1
       44 SETTABLEKS                       R6 R5 K9 ["MyComponent"]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElementWithMockContext"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       30 GETTABLEKS                       R5 R3 K10 ["TestHelpers"]
       32 GETTABLEKS                       R6 R5 K11 ["Instances"]
       34 GETTABLEKS                       R6 R6 K12 ["MockPlugin"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Src"]
       40 GETTABLEKS                       R8 R8 K14 ["Reducers"]
       42 GETTABLEKS                       R8 R8 K15 ["MainReducer"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R0 K13 ["Src"]
       49 GETTABLEKS                       R9 R9 K16 ["Resources"]
       51 GETTABLEKS                       R9 R9 K17 ["MakeTheme"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       56 LOADK                            R11 K19 ["MockProvider"]
       57 NAMECALL                         R9 R9 K20 ["extend"]
       59 CALL                             R9 2 1
       60 DUPCLOSURE                       R10 K21 [PROTO_0]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R10 R9 K22 ["createMocks"]
       67 DUPCLOSURE                       R10 K23 [PROTO_1]
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R10 R9 K24 ["createMockContextItems"]
       71 DUPCLOSURE                       R10 K25 [PROTO_2]
       72 SETTABLEKS                       R10 R9 K26 ["cleanupMocks"]
       74 DUPCLOSURE                       R10 K27 [PROTO_3]
       75 CAPTURE                          VAL R9
       76 SETTABLEKS                       R10 R9 K28 ["init"]
       78 DUPCLOSURE                       R10 K29 [PROTO_4]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R10 R9 K30 ["render"]
       83 DUPCLOSURE                       R10 K31 [PROTO_5]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R10 R9 K32 ["createElementWithMockContext"]
       88 DUPCLOSURE                       R10 K33 [PROTO_6]
       89 CAPTURE                          VAL R9
       90 SETGLOBAL                        R10 K34 ["mockWrap"]
       92 GETGLOBAL                        R10 K34 ["mockWrap"]
       94 RETURN                           R10 1
