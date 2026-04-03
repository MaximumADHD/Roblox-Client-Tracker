PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["metaType"]
        3 GETTABLE                         R3 R4 R5
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R5 K1 [script]
       11 GETTABLEKS                       R4 R5 K6 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Interactors"]
       15 GETTABLEKS                       R2 R3 K8 ["AttributeInteractor"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Util"]
       22 GETTABLEKS                       R5 R6 K10 ["PropertyInteraction"]
       24 GETTABLEKS                       R4 R5 K7 ["Interactors"]
       26 GETTABLEKS                       R3 R4 K11 ["InteractorTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R6 R7 K6 ["Parent"]
       35 GETTABLEKS                       R5 R6 K7 ["Interactors"]
       37 GETTABLEKS                       R4 R5 K12 ["PropertyInteractor"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K13 ["PropertyTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R8 R9 K6 ["Parent"]
       51 GETTABLEKS                       R7 R8 K7 ["Interactors"]
       53 GETTABLEKS                       R6 R7 K14 ["TagInteractor"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R9 R10 K6 ["Parent"]
       62 GETTABLEKS                       R8 R9 K7 ["Interactors"]
       64 GETTABLEKS                       R7 R8 K15 ["VirtualInteractor"]
       66 CALL                             R6 1 1
       67 DUPTABLE                         R7 K20 [{"Property", "Attribute", "Tag", "Virtual"}]
       68 GETTABLEKS                       R8 R3 K21 ["write"]
       70 SETTABLEKS                       R8 R7 K16 ["Property"]
       72 GETTABLEKS                       R8 R1 K21 ["write"]
       74 SETTABLEKS                       R8 R7 K17 ["Attribute"]
       76 GETTABLEKS                       R8 R5 K21 ["write"]
       78 SETTABLEKS                       R8 R7 K18 ["Tag"]
       80 GETTABLEKS                       R8 R6 K21 ["write"]
       82 SETTABLEKS                       R8 R7 K19 ["Virtual"]
       84 DUPCLOSURE                       R8 K22 [PROTO_0]
       85 CAPTURE                          VAL R7
       86 RETURN                           R8 1
