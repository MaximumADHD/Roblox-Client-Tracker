PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AssetId"]
        2 DUPTABLE                         R3 K7 [{"Id", "Name", "Type", "Uid", "Parent", "Path"}]
        3 SETTABLEKS                       R2 R3 K1 ["Id"]
        5 GETTABLEKS                       R4 R0 K8 ["DisplayName"]
        7 SETTABLEKS                       R4 R3 K2 ["Name"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K9 ["ScopeType"]
       12 GETTABLEKS                       R4 R5 K10 ["Folder"]
       14 SETTABLEKS                       R4 R3 K3 ["Type"]
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K9 ["ScopeType"]
       20 GETTABLEKS                       R5 R6 K10 ["Folder"]
       22 MOVE                             R6 R2
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["Uid"]
       26 SETTABLEKS                       R1 R3 K5 ["Parent"]
       28 GETTABLEKS                       R4 R0 K6 ["Path"]
       30 SETTABLEKS                       R4 R3 K6 ["Path"]
       32 RETURN                           R3 1

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
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["createScopeUid"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
