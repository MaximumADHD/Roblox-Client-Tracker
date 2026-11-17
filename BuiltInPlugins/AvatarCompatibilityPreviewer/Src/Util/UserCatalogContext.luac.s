PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Calling default addNewItem"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling default removeItem"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K13 [{"equippableItems", "addNewItem", "removeItem"}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K10 ["equippableItems"]
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 SETTABLEKS                       R4 R3 K11 ["addNewItem"]
       29 DUPCLOSURE                       R4 K15 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K12 ["removeItem"]
       32 GETTABLEKS                       R4 R1 K16 ["createContext"]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 1
       36 RETURN                           R4 1
