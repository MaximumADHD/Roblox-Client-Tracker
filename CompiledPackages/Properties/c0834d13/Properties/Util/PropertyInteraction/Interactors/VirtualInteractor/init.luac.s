PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["interactor"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 LOADB                            R2 1
        1 GETUPVAL                         R5 0
        2 GETUPVAL                         R6 1
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 GETTABLE                         R4 R5 R6
        6 GETTABLEKS                       R3 R4 K0 ["read"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 RETURN                           R2 -1

PROTO_2:
        0 LOADB                            R3 1
        1 GETUPVAL                         R6 0
        2 GETUPVAL                         R7 1
        3 MOVE                             R8 R1
        4 CALL                             R7 1 1
        5 GETTABLE                         R5 R6 R7
        6 GETTABLEKS                       R4 R5 K0 ["write"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R2
       10 CALL                             R4 2 -1
       11 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["metaType"]
        2 JUMPIFEQKS                       R4 K1 ["Virtual"] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["Was not a virtual property"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R4 R1 K5 ["className"]
       14 NAMECALL                         R2 R0 K6 ["IsA"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["InteractorTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K10 ["VirtualPropertyDataTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R9 R0 K11 ["Util"]
       39 GETTABLEKS                       R8 R9 K12 ["PropertyInteraction"]
       41 GETTABLEKS                       R7 R8 K13 ["VirtualPropertyDefinitions"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Util"]
       48 GETTABLEKS                       R8 R9 K14 ["propertyIdToString"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R9 R2 K15 ["Dictionary"]
       53 GETTABLEKS                       R8 R9 K16 ["map"]
       55 MOVE                             R9 R6
       56 DUPCLOSURE                       R10 K17 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CALL                             R8 2 1
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R10 K19 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R11 K20 [PROTO_3]
       66 DUPTABLE                         R12 K24 [{"read", "write", "has"}]
       67 SETTABLEKS                       R9 R12 K21 ["read"]
       69 SETTABLEKS                       R10 R12 K22 ["write"]
       71 SETTABLEKS                       R11 R12 K23 ["has"]
       73 RETURN                           R12 1
