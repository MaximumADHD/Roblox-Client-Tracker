PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{"AutomaticSize", "Size", "Text"}]
        7 GETIMPORT                        R5 K8 [Enum.AutomaticSize.Y]
        9 SETTABLEKS                       R5 R4 K2 ["AutomaticSize"]
       11 GETIMPORT                        R5 K11 [UDim2.fromScale]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K3 ["Size"]
       18 GETTABLEKS                       R5 R1 K4 ["Text"]
       20 SETTABLEKS                       R5 R4 K4 ["Text"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["UI"]
       23 GETTABLEKS                       R3 R4 K10 ["TextLabel"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
