PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["interactor"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 LOADB                            R2 1
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 1
        3 MOVE                             R6 R1
        4 CALL                             R5 1 1
        5 GETTABLE                         R3 R4 R5
        6 GETTABLEKS                       R3 R3 K0 ["read"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 RETURN                           R2 -1

PROTO_2:
        0 LOADB                            R3 1
        1 GETUPVAL                         R5 0
        2 GETUPVAL                         R6 1
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 GETTABLE                         R4 R5 R6
        6 GETTABLEKS                       R4 R4 K0 ["write"]
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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["InteractorTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K10 ["VirtualPropertyDataTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["PropertyInteraction"]
       39 GETTABLEKS                       R7 R7 K12 ["VirtualPropertyDefinitions"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K11 ["PropertyInteraction"]
       46 GETTABLEKS                       R8 R8 K13 ["propertyIdToString"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R2 K14 ["Dictionary"]
       51 GETTABLEKS                       R8 R8 K15 ["map"]
       53 MOVE                             R9 R6
       54 DUPCLOSURE                       R10 K16 [PROTO_0]
       55 CAPTURE                          VAL R7
       56 CALL                             R8 2 1
       57 DUPCLOSURE                       R9 K17 [PROTO_1]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R10 K18 [PROTO_2]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R11 K19 [PROTO_3]
       64 DUPTABLE                         R12 K23 [{"read", "write", "has"}]
       65 SETTABLEKS                       R9 R12 K20 ["read"]
       67 SETTABLEKS                       R10 R12 K21 ["write"]
       69 SETTABLEKS                       R11 R12 K22 ["has"]
       71 RETURN                           R12 1
