PROTO_0:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 1
        2 DUPTABLE                         R2 K2 [{"Color3", "Transparency"}]
        3 GETTABLEKS                       R3 R0 K0 ["Color3"]
        5 SETTABLEKS                       R3 R2 K0 ["Color3"]
        7 GETTABLEKS                       R7 R0 K1 ["Transparency"]
        9 ORK                              R6 R7 K4 [0]
       10 SUBRK                            R5 R3 K6 [NULL]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K5 ["DISABLED_TRANSPARENCY"]
       14 MUL                              R4 R5 R6
       15 SUBRK                            R3 R3 K4 [0]
       16 SETTABLEKS                       R3 R2 K1 ["Transparency"]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R4 K8 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
