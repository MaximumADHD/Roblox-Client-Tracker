MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["ACEImportScale"]
       17 LOADN                            R5 2
       18 NAMECALL                         R2 R2 K11 ["SetFlagVersion"]
       20 CALL                             R2 3 0
       21 GETTABLEKS                       R2 R1 K12 ["createGetFFlag"]
       23 LOADK                            R3 K10 ["ACEImportScale"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
