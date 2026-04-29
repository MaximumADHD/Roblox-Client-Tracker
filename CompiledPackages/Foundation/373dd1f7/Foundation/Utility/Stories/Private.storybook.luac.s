MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["ReactRoblox"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R2 K9 ["Roact"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["GetStories"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["StoryMiddleware"]
       37 CALL                             R7 1 1
       38 DUPTABLE                         R8 K18 [{"name", "group", "roact", "storyRoots", "mapStory", "packages"}]
       39 LOADK                            R9 K19 ["Private"]
       40 SETTABLEKS                       R9 R8 K12 ["name"]
       42 LOADK                            R9 K3 ["Foundation"]
       43 SETTABLEKS                       R9 R8 K13 ["group"]
       45 SETTABLEKS                       R5 R8 K14 ["roact"]
       47 MOVE                             R9 R6
       48 LOADB                            R10 0
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R8 K15 ["storyRoots"]
       52 SETTABLEKS                       R7 R8 K16 ["mapStory"]
       54 DUPTABLE                         R9 K20 [{"React", "ReactRoblox"}]
       55 SETTABLEKS                       R3 R9 K7 ["React"]
       57 SETTABLEKS                       R4 R9 K8 ["ReactRoblox"]
       59 SETTABLEKS                       R9 R8 K17 ["packages"]
       61 RETURN                           R8 1
