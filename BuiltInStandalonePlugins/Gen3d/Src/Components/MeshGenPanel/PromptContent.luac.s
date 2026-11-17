PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["TextArea"]
       12 DUPTABLE                         R4 K18 [{["label"] = "", ["text"], ["placeholder"] = "Describe a mesh", ["onChanged"], ["numLines"] = 2, ["size"], ["variant"], ["width"], ["testId"] = "MeshGenPrompt", ["LayoutOrder"]}]
       13 GETTABLEKS                       R5 R0 K19 ["prompt"]
       15 SETTABLEKS                       R5 R4 K6 ["text"]
       17 GETTABLEKS                       R5 R0 K20 ["onPromptChanged"]
       19 SETTABLEKS                       R5 R4 K9 ["onChanged"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K21 ["Enums"]
       24 GETTABLEKS                       R5 R5 K22 ["InputSize"]
       26 GETTABLEKS                       R5 R5 K23 ["Small"]
       28 SETTABLEKS                       R5 R4 K12 ["size"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K21 ["Enums"]
       33 GETTABLEKS                       R5 R5 K24 ["InputVariant"]
       35 GETTABLEKS                       R5 R5 K25 ["Utility"]
       37 SETTABLEKS                       R5 R4 K13 ["variant"]
       39 GETIMPORT                        R5 K28 [UDim.new]
       41 LOADN                            R6 1
       42 GETTABLEKS                       R8 R1 K29 ["Size"]
       44 GETTABLEKS                       R8 R8 K30 ["Size_800"]
       46 MINUS                            R7 R8
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K14 ["width"]
       50 GETTABLEKS                       R5 R0 K17 ["LayoutOrder"]
       52 SETTABLEKS                       R5 R4 K17 ["LayoutOrder"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R4 R2 K10 ["memo"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
