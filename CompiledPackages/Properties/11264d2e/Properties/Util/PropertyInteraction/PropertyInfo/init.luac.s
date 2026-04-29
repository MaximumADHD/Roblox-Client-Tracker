PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromEnumType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Static"]
        5 LOADK                            R4 K2 ["Axis"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromEnumType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Dynamic"]
        5 LOADK                            R4 K2 ["CollisionGroup"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromInstanceRefType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Instance"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromContentType"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K4 [Enum.AssetType.Animation]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R4 K1 [script]
       16 GETTABLEKS                       R3 R4 K7 ["createFromType"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R4 R5 K8 ["createFromTypePlaceHolder"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 8 0
       28 GETIMPORT                        R5 K5 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K9 ["fromInstanceRefType"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K9 ["fromInstanceRefType"]
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R6 R7 K10 ["fromEnumType"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K10 ["fromEnumType"]
       46 GETIMPORT                        R5 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R6 R7 K11 ["fromContentType"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K11 ["fromContentType"]
       55 DUPTABLE                         R5 K16 [{"Enum", "DynamicEnum", "InstanceRef", "Content"}]
       56 DUPCLOSURE                       R6 K17 [PROTO_0]
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R6 R5 K12 ["Enum"]
       60 DUPCLOSURE                       R6 K18 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R6 R5 K13 ["DynamicEnum"]
       64 DUPCLOSURE                       R6 K19 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R6 R5 K14 ["InstanceRef"]
       68 DUPCLOSURE                       R6 K20 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R6 R5 K15 ["Content"]
       72 MOVE                             R6 R2
       73 MOVE                             R7 R5
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R4 K21 ["fromType"]
       77 MOVE                             R6 R3
       78 MOVE                             R7 R5
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R4 K22 ["fromTypePlaceHolder"]
       82 RETURN                           R4 1
