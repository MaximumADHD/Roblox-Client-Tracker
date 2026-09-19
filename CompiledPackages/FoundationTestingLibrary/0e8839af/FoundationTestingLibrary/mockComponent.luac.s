PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"theme", "preferences"}]
        5 MOVE                             R6 R2
        6 JUMPIF                           R6 ; [+3]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K4 ["Dark"]
       10 SETTABLEKS                       R6 R5 K1 ["theme"]
       12 SETTABLEKS                       R1 R5 K2 ["preferences"]
       14 DUPTABLE                         R6 K6 [{"Content"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["createElement"]
       18 GETUPVAL                         R8 3
       19 DUPTABLE                         R9 K8 [{"Size"}]
       20 GETIMPORT                        R10 K11 [UDim2.fromScale]
       22 LOADN                            R11 1
       23 LOADN                            R12 1
       24 CALL                             R10 2 1
       25 SETTABLEKS                       R10 R9 K7 ["Size"]
       27 MOVE                             R10 R0
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K5 ["Content"]
       31 CALL                             R3 3 -1
       32 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Enums"]
       21 GETTABLEKS                       R4 R4 K10 ["Theme"]
       23 GETTABLEKS                       R5 R2 K11 ["View"]
       25 GETTABLEKS                       R6 R2 K12 ["FoundationProvider"]
       27 DUPCLOSURE                       R7 K13 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 RETURN                           R7 1
