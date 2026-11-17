MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{"generationAngles", "updateGenerationAngle"}]
       24 NEWTABLE                         R4 0 0
       26 SETTABLEKS                       R4 R3 K11 ["generationAngles"]
       28 MOVE                             R4 R2
       29 LOADK                            R5 K12 ["updateGenerationAngle"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K12 ["updateGenerationAngle"]
       33 GETTABLEKS                       R4 R1 K14 ["createContext"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 RETURN                           R4 1
