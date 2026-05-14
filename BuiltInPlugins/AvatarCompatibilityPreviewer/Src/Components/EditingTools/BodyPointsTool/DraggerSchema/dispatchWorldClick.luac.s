PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFEQKNIL                     R3 ; [+7]
        5 GETTABLEKS                       R4 R0 K0 ["selection"]
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R4 K1 ["Set"]
       10 CALL                             R4 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["dispatchWorldClick"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 CALL                             R4 3 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerSchemaTemplate"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DraggerSchema"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Components"]
       22 GETTABLEKS                       R4 R4 K11 ["EditingTools"]
       24 GETTABLEKS                       R4 R4 K12 ["BodyPointsTool"]
       26 GETTABLEKS                       R4 R4 K13 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R5 R0 K9 ["Src"]
       33 GETTABLEKS                       R5 R5 K10 ["Components"]
       35 GETTABLEKS                       R5 R5 K11 ["EditingTools"]
       37 GETTABLEKS                       R5 R5 K12 ["BodyPointsTool"]
       39 GETTABLEKS                       R5 R5 K14 ["getHoveringPair"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K15 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 RETURN                           R5 1
