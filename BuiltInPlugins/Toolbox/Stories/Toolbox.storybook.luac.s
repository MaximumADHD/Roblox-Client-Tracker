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
       26 DUPTABLE                         R4 K16 [{["name"] = "Toolbox", ["mapStory"], ["storyRoots"], ["roact"]}]
       27 SETTABLEKS                       R2 R4 K13 ["mapStory"]
       29 NEWTABLE                         R5 0 2
       31 GETTABLEKS                       R6 R0 K8 ["Stories"]
       33 GETTABLEKS                       R7 R0 K17 ["Src"]
       35 GETTABLEKS                       R7 R7 K18 ["Components"]
       37 SETLIST                          R5 R6 2 [1]
       39 SETTABLEKS                       R5 R4 K14 ["storyRoots"]
       41 SETTABLEKS                       R3 R4 K15 ["roact"]
       43 RETURN                           R4 1
