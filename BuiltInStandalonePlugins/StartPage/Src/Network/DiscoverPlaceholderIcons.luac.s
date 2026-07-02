PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R2 K8 [{["returnPolicy"] = "Placeholder", ["size"] = "256x256", ["format"] = "png", ["universeIds"]}]
        5 SETTABLEKS                       R0 R2 K7 ["universeIds"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Network"]
       20 GETTABLEKS                       R3 R3 K9 ["DiscoverGameIcons"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
