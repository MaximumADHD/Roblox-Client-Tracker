PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["change"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["search-bar--input--textbox"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Search bar not found"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["click"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 2
       17 CALL                             R3 0 0
       18 GETUPVAL                         R3 3
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["TestHelper"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["awaitDeferAsync"]
       34 GETTABLEKS                       R5 R2 K13 ["act"]
       36 GETTABLEKS                       R6 R2 K14 ["queryByTestId"]
       38 GETTABLEKS                       R7 R2 K15 ["fireEvent"]
       40 NEWTABLE                         R8 1 0
       42 DUPCLOSURE                       R9 K16 [PROTO_1]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R9 R8 K17 ["Search"]
       49 RETURN                           R8 1
