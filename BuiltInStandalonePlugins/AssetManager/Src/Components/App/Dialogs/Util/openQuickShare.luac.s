PROTO_0:
        0 DUPTABLE                         R4 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R7 K4 ["QuickShare"]
        2 LOADK                            R8 K5 ["DialogTitle"]
        3 NAMECALL                         R5 R1 K6 ["getText"]
        5 CALL                             R5 3 1
        6 SETTABLEKS                       R5 R4 K0 ["Title"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K7 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K8 ["DialogType"]
       16 GETTABLEKS                       R5 R6 K4 ["QuickShare"]
       18 SETTABLEKS                       R5 R4 K2 ["Type"]
       20 DUPTABLE                         R5 K11 [{"AssetPaths", "TestError"}]
       21 SETTABLEKS                       R2 R5 K9 ["AssetPaths"]
       23 SETTABLEKS                       R3 R5 K10 ["TestError"]
       25 MOVE                             R8 R4
       26 MOVE                             R9 R5
       27 NAMECALL                         R6 R0 K12 ["setDialog"]
       29 CALL                             R6 3 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
