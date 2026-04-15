PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["CreatorContextAsset"] ; [+8]
        2 LOADK                            R4 K1 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Utility"]
       16 GETTABLEKS                       R3 R4 K9 ["getRbxThumb"]
       18 DUPCLOSURE                       R4 K10 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1
