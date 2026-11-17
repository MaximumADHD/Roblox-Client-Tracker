MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["StudioCameraUI"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K12 [game]
       27 LOADK                            R4 K13 ["NewCameraControls_StudioCameraUI"]
       28 NAMECALL                         R2 R2 K14 ["GetEngineFeature"]
       30 CALL                             R2 2 1
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K5 [require]
       35 GETTABLEKS                       R3 R0 K15 ["Bin"]
       37 GETTABLEKS                       R3 R3 K16 ["Common"]
       39 GETTABLEKS                       R3 R3 K17 ["main"]
       41 CALL                             R2 1 1
       42 MOVE                             R3 R2
       43 GETIMPORT                        R4 K19 [plugin]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
