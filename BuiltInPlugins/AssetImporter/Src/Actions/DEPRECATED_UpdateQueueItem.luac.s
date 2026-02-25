PROTO_0:
        0 DUPTABLE                         R1 K1 [{"queueItem"}]
        1 SETTABLEKS                       R0 R1 K0 ["queueItem"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 GETTABLEKS                       R3 R4 K10 ["QueuedSession"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K11 ["Util"]
       25 GETTABLEKS                       R3 R4 K12 ["Action"]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R4 R5 K13 ["Name"]
       31 DUPCLOSURE                       R5 K14 [PROTO_0]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1
