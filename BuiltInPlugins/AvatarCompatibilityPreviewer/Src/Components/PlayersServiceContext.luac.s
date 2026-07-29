PROTO_0:
        0 JUMPIFEQKNIL                     R2 ; [+9]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K0 ["CreateHumanoidModelFromDescriptionAsync"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1
       10 GETUPVAL                         R3 0
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 NAMECALL                         R3 R3 K0 ["CreateHumanoidModelFromDescriptionAsync"]
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 DUPTABLE                         R3 K13 [{"createHumanoidModelFromDescription"}]
       21 DUPCLOSURE                       R4 K14 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K12 ["createHumanoidModelFromDescription"]
       25 GETTABLEKS                       R4 R2 K15 ["createContext"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 RETURN                           R4 1
