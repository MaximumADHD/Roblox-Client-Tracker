PROTO_0:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETIMPORT                        R1 K5 [coroutine.resume]
        4 GETIMPORT                        R2 K7 [coroutine.running]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 0
        8 GETIMPORT                        R0 K9 [coroutine.yield]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K1 ["awaitDeferAsync"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Packages"]
       17 GETTABLEKS                       R4 R5 K11 ["Dev"]
       19 GETTABLEKS                       R3 R4 K12 ["ReactTestingLibrary"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K13 ["act"]
       24 NEWTABLE                         R4 2 0
       26 DUPCLOSURE                       R5 K14 [PROTO_0]
       27 SETTABLEKS                       R5 R4 K15 ["awaitDeferAsync"]
       29 DUPCLOSURE                       R5 K16 [PROTO_2]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R4 K17 ["updateStyling"]
       35 RETURN                           R4 1
