MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 DUPTABLE                         R4 K13 [{["name"] = "Dragbox", ["storyRoots"], ["roact"], ["reactRoblox"]}]
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R0 K14 ["Components"]
       24 SETLIST                          R5 R6 1 [1]
       26 SETTABLEKS                       R5 R4 K10 ["storyRoots"]
       28 SETTABLEKS                       R2 R4 K11 ["roact"]
       30 SETTABLEKS                       R3 R4 K12 ["reactRoblox"]
       32 RETURN                           R4 1
