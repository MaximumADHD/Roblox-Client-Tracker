MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K1 [script]
       21 LOADK                            R5 K9 ["MeshGen"]
       22 NAMECALL                         R3 R3 K3 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K10 ["MeshGenTypes"]
       29 CALL                             R4 1 1
       30 LOADNIL                          R5
       31 RETURN                           R5 1
