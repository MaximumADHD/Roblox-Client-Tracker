MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["StoryMiddleware"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K16 [{"name", "storyRoots", "mapStory", "roact", "reactRoblox"}]
       31 LOADK                            R5 K2 ["Dialog"]
       32 SETTABLEKS                       R5 R4 K11 ["name"]
       34 NEWTABLE                         R5 0 1
       36 GETTABLEKS                       R6 R0 K17 ["Src"]
       38 GETTABLEKS                       R6 R6 K18 ["Components"]
       40 SETLIST                          R5 R6 1 [1]
       42 SETTABLEKS                       R5 R4 K12 ["storyRoots"]
       44 SETTABLEKS                       R3 R4 K13 ["mapStory"]
       46 SETTABLEKS                       R1 R4 K14 ["roact"]
       48 SETTABLEKS                       R2 R4 K15 ["reactRoblox"]
       50 RETURN                           R4 1
