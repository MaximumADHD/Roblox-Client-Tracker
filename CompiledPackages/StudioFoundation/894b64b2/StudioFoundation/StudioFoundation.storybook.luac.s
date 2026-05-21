MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["StoryMiddleware"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K15 [{"name", "roact", "reactRoblox", "storyRoots", "mapStory"}]
       29 LOADK                            R6 K2 ["StudioFoundation"]
       30 SETTABLEKS                       R6 R5 K10 ["name"]
       32 SETTABLEKS                       R2 R5 K11 ["roact"]
       34 SETTABLEKS                       R3 R5 K12 ["reactRoblox"]
       36 NEWTABLE                         R6 0 1
       38 MOVE                             R7 R0
       39 SETLIST                          R6 R7 1 [1]
       41 SETTABLEKS                       R6 R5 K13 ["storyRoots"]
       43 SETTABLEKS                       R4 R5 K14 ["mapStory"]
       45 RETURN                           R5 1
