MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Controllers"]
       13 GETTABLEKS                       R2 R2 K8 ["SingleMeshController"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       22 GETTABLEKS                       R3 R3 K10 ["makeHook"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 MOVE                             R4 R1
       27 LOADK                            R5 K11 ["getState"]
       28 LOADK                            R6 K12 ["onStateChanged"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1
