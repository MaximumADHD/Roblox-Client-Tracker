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
       20 GETTABLEKS                       R3 R0 K9 ["PropertyInteraction"]
       22 GETTABLEKS                       R3 R3 K7 ["Interactors"]
       24 GETTABLEKS                       R3 R3 K10 ["InteractorTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K6 ["Parent"]
       33 GETTABLEKS                       R4 R4 K7 ["Interactors"]
       35 GETTABLEKS                       R4 R4 K11 ["PropertyInteractor"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K6 ["Parent"]
       49 GETTABLEKS                       R6 R6 K7 ["Interactors"]
       51 GETTABLEKS                       R6 R6 K13 ["TagInteractor"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETIMPORT                        R7 K1 [script]
       58 GETTABLEKS                       R7 R7 K6 ["Parent"]
       60 GETTABLEKS                       R7 R7 K7 ["Interactors"]
       62 GETTABLEKS                       R7 R7 K14 ["VirtualInteractor"]
       64 CALL                             R6 1 1
       65 DUPTABLE                         R7 K19 [{"Property", "Attribute", "Tag", "Virtual"}]
       66 GETTABLEKS                       R8 R3 K20 ["read"]
       68 SETTABLEKS                       R8 R7 K15 ["Property"]
       70 GETTABLEKS                       R8 R1 K20 ["read"]
       72 SETTABLEKS                       R8 R7 K16 ["Attribute"]
       74 GETTABLEKS                       R8 R5 K20 ["read"]
       76 SETTABLEKS                       R8 R7 K17 ["Tag"]
       78 GETTABLEKS                       R8 R6 K20 ["read"]
       80 SETTABLEKS                       R8 R7 K18 ["Virtual"]
       82 DUPCLOSURE                       R8 K21 [PROTO_0]
       83 CAPTURE                          VAL R7
       84 RETURN                           R8 1
