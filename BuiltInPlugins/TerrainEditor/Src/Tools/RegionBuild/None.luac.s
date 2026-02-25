MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Tools"]
       13 GETTABLEKS                       R2 R3 K8 ["BaseTool"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BuildSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["Gizmo"]
       29 GETTABLEKS                       R6 R2 K13 ["MaterialUnit"]
       31 GETTABLEKS                       R7 R2 K14 ["Tab"]
       33 GETTABLEKS                       R8 R2 K15 ["TerrainType"]
       35 NEWTABLE                         R9 0 1
       37 DUPTABLE                         R10 K18 [{"Defaults", "Id"}]
       38 NEWTABLE                         R11 0 0
       40 SETTABLEKS                       R11 R10 K16 ["Defaults"]
       42 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
       44 SETTABLEKS                       R11 R10 K17 ["Id"]
       46 SETLIST                          R9 R10 1 [1]
       48 NEWTABLE                         R10 0 0
       50 GETTABLEKS                       R13 R8 K19 ["None"]
       52 GETTABLEKS                       R14 R7 K19 ["None"]
       54 MOVE                             R15 R9
       55 MOVE                             R16 R10
       56 NAMECALL                         R11 R1 K20 ["new"]
       58 CALL                             R11 5 1
       59 RETURN                           R11 1
