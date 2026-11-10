PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["metaType"]
        3 GETTABLE                         R2 R3 R4
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Interactors"]
       15 GETTABLEKS                       R2 R2 K8 ["AttributeInteractor"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K6 ["Parent"]
       24 GETTABLEKS                       R3 R3 K7 ["Interactors"]
       26 GETTABLEKS                       R3 R3 K9 ["PropertyInteractor"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K7 ["Interactors"]
       42 GETTABLEKS                       R5 R5 K11 ["TagInteractor"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K6 ["Parent"]
       51 GETTABLEKS                       R6 R6 K7 ["Interactors"]
       53 GETTABLEKS                       R6 R6 K12 ["VirtualInteractor"]
       55 CALL                             R5 1 1
       56 DUPTABLE                         R6 K17 [{"Property", "Attribute", "Tag", "Virtual"}]
       57 GETTABLEKS                       R7 R2 K18 ["has"]
       59 SETTABLEKS                       R7 R6 K13 ["Property"]
       61 GETTABLEKS                       R7 R1 K18 ["has"]
       63 SETTABLEKS                       R7 R6 K14 ["Attribute"]
       65 GETTABLEKS                       R7 R4 K19 ["canWrite"]
       67 SETTABLEKS                       R7 R6 K15 ["Tag"]
       69 GETTABLEKS                       R7 R5 K18 ["has"]
       71 SETTABLEKS                       R7 R6 K16 ["Virtual"]
       73 DUPCLOSURE                       R7 K20 [PROTO_0]
       74 CAPTURE                          VAL R6
       75 RETURN                           R7 1
