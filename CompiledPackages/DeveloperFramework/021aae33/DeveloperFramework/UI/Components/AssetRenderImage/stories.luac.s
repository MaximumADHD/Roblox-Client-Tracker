PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R2 K3 [script]
        4 GETTABLEKS                       R1 R2 K4 ["Parent"]
        6 CALL                             R0 1 1
        7 GETIMPORT                        R1 K7 [Instance.new]
        9 LOADK                            R2 K8 ["Decal"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K9 ["rbxassetid://23156312"]
       12 SETTABLEKS                       R2 R1 K10 ["Texture"]
       14 GETIMPORT                        R2 K7 [Instance.new]
       16 LOADK                            R3 K10 ["Texture"]
       17 CALL                             R2 1 1
       18 LOADK                            R3 K9 ["rbxassetid://23156312"]
       19 SETTABLEKS                       R3 R2 K10 ["Texture"]
       21 GETIMPORT                        R3 K7 [Instance.new]
       23 LOADK                            R4 K11 ["Sky"]
       24 CALL                             R3 1 1
       25 LOADK                            R4 K12 ["rbxasset://textures/sky/sky512_ft.tex"]
       26 SETTABLEKS                       R4 R3 K13 ["SkyboxFt"]
       28 GETIMPORT                        R4 K15 [UDim2.new]
       30 LOADN                            R5 1
       31 LOADN                            R6 0
       32 LOADN                            R7 0
       33 LOADN                            R8 100
       34 CALL                             R4 4 1
       35 DUPTABLE                         R5 K17 [{"Decal", "Texture", "Sky", "Thumbnail"}]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K18 ["createElement"]
       39 MOVE                             R7 R0
       40 DUPTABLE                         R8 K21 [{"Size", "Image"}]
       41 SETTABLEKS                       R4 R8 K19 ["Size"]
       43 SETTABLEKS                       R1 R8 K20 ["Image"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K8 ["Decal"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K18 ["createElement"]
       51 MOVE                             R7 R0
       52 DUPTABLE                         R8 K21 [{"Size", "Image"}]
       53 SETTABLEKS                       R4 R8 K19 ["Size"]
       55 SETTABLEKS                       R2 R8 K20 ["Image"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K10 ["Texture"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R6 R7 K18 ["createElement"]
       63 MOVE                             R7 R0
       64 DUPTABLE                         R8 K21 [{"Size", "Image"}]
       65 SETTABLEKS                       R4 R8 K19 ["Size"]
       67 SETTABLEKS                       R3 R8 K20 ["Image"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K11 ["Sky"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R6 R7 K18 ["createElement"]
       75 MOVE                             R7 R0
       76 DUPTABLE                         R8 K21 [{"Size", "Image"}]
       77 SETTABLEKS                       R4 R8 K19 ["Size"]
       79 LOADK                            R9 K22 ["rbxthumb://type=Asset&id=23156312&w=420&h=420"]
       80 SETTABLEKS                       R9 R8 K20 ["Image"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K16 ["Thumbnail"]
       85 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
