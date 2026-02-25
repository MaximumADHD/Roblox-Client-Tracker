PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Transparency"]
        2 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
        4 DUPTABLE                         R2 K3 [{"Color3", "Transparency"}]
        5 GETTABLEKS                       R3 R0 K2 ["Color3"]
        7 SETTABLEKS                       R3 R2 K2 ["Color3"]
        9 GETTABLEKS                       R3 R0 K0 ["Transparency"]
       11 SETTABLEKS                       R3 R2 K0 ["Transparency"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K2 ["Color3"]
       16 JUMPIFEQKNIL                     R2 ; [+5]
       18 GETTABLEKS                       R2 R0 K0 ["Transparency"]
       20 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
       22 DUPTABLE                         R2 K3 [{"Color3", "Transparency"}]
       23 GETTABLEKS                       R3 R1 K2 ["Color3"]
       25 SETTABLEKS                       R3 R2 K2 ["Color3"]
       27 GETTABLEKS                       R3 R1 K0 ["Transparency"]
       29 SETTABLEKS                       R3 R2 K0 ["Transparency"]
       31 RETURN                           R2 1
       32 GETTABLEKS                       R3 R0 K0 ["Transparency"]
       34 ORK                              R2 R3 K4 [0]
       35 DUPTABLE                         R3 K3 [{"Color3", "Transparency"}]
       36 GETTABLEKS                       R4 R0 K2 ["Color3"]
       38 GETTABLEKS                       R6 R1 K2 ["Color3"]
       40 GETTABLEKS                       R8 R1 K0 ["Transparency"]
       42 SUBRK                            R7 R1 K8 [NULL]
       43 NAMECALL                         R4 R4 K5 ["Lerp"]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K2 ["Color3"]
       48 GETUPVAL                         R4 0
       49 MOVE                             R5 R2
       50 GETTABLEKS                       R6 R1 K0 ["Transparency"]
       52 MOVE                             R7 R2
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K0 ["Transparency"]
       56 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["lerp"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
