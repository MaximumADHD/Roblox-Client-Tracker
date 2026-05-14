MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K7 ["UI"]
       16 GETTABLEKS                       R2 R2 K8 ["Stories"]
       18 GETTABLEKS                       R2 R2 K9 ["getStoryMiddleware"]
       20 CALL                             R2 0 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R1 K10 ["Roact"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K15 [{"name", "mapStory", "storyRoots", "roact"}]
       27 LOADK                            R5 K16 ["Toolbox"]
       28 SETTABLEKS                       R5 R4 K11 ["name"]
       30 SETTABLEKS                       R2 R4 K12 ["mapStory"]
       32 NEWTABLE                         R5 0 2
       34 GETTABLEKS                       R6 R0 K8 ["Stories"]
       36 GETTABLEKS                       R7 R0 K17 ["Src"]
       38 GETTABLEKS                       R7 R7 K18 ["Components"]
       40 SETLIST                          R5 R6 2 [1]
       42 SETTABLEKS                       R5 R4 K13 ["storyRoots"]
       44 SETTABLEKS                       R3 R4 K14 ["roact"]
       46 RETURN                           R4 1
