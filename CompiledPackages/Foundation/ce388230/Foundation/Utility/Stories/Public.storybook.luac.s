MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R0 K7 ["GetStories"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["Roact"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["StoryMiddleware"]
       27 CALL                             R5 1 1
       28 DUPTABLE                         R6 K15 [{"name", "group", "roact", "storyRoots", "mapStory"}]
       29 LOADK                            R7 K16 ["Public"]
       30 SETTABLEKS                       R7 R6 K10 ["name"]
       32 LOADK                            R7 K3 ["Foundation"]
       33 SETTABLEKS                       R7 R6 K11 ["group"]
       35 SETTABLEKS                       R4 R6 K12 ["roact"]
       37 MOVE                             R7 R3
       38 LOADB                            R8 1
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R7 R6 K13 ["storyRoots"]
       42 SETTABLEKS                       R5 R6 K14 ["mapStory"]
       44 RETURN                           R6 1
