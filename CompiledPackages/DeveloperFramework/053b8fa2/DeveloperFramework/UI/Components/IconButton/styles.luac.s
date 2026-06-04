MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-IconButton"]
       18 DUPTABLE                         R4 K12 [{"AutoButtonColor", "BackgroundTransparency"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K10 ["AutoButtonColor"]
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K11 ["BackgroundTransparency"]
       25 NEWTABLE                         R5 0 0
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1
