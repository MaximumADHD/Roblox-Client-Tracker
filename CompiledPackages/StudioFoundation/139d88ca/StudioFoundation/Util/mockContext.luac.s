PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["Fragment"]
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R0 K3 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 DUPTABLE                         R3 K1 [{"Root"}]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 DUPTABLE                         R6 K5 [{["theme"] = "Dark", ["overlayGui"]}]
        7 GETUPVAL                         R7 3
        8 GETTABLEKS                       R7 R7 K6 ["Parent"]
       10 SETTABLEKS                       R7 R6 K4 ["overlayGui"]
       12 DUPTABLE                         R7 K8 [{"Wrapped"}]
       13 GETUPVAL                         R8 1
       14 GETUPVAL                         R9 4
       15 LOADNIL                          R10
       16 MOVE                             R11 R0
       17 CALL                             R8 3 1
       18 SETTABLEKS                       R8 R7 K7 ["Wrapped"]
       20 CALL                             R4 3 1
       21 SETTABLEKS                       R4 R3 K0 ["Root"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [game]
       11 LOADK                            R4 K7 ["StylingService"]
       12 NAMECALL                         R2 R2 K8 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Framework"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R1 K13 ["Dev"]
       29 GETTABLEKS                       R6 R6 K14 ["ReactTestingLibrary"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Components"]
       36 GETTABLEKS                       R7 R7 K16 ["FoundationProviderAdapter"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K17 ["TestHelpers"]
       41 GETTABLEKS                       R7 R7 K18 ["provideMockContext"]
       43 GETTABLEKS                       R8 R5 K19 ["document"]
       45 GETTABLEKS                       R9 R4 K20 ["createElement"]
       47 DUPCLOSURE                       R10 K21 [PROTO_1]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R9
       51 DUPCLOSURE                       R11 K22 [PROTO_2]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R10
       57 RETURN                           R11 1
