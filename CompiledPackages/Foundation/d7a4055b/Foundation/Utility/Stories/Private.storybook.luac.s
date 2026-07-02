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
       15 GETTABLEKS                       R4 R0 K7 ["StoryMiddleware"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["Roact"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["GetStories"]
       27 CALL                             R5 1 1
       28 DUPTABLE                         R6 K16 [{["name"] = "Private", ["group"] = "Foundation", ["roact"], ["storyRoots"], ["mapStory"]}]
       29 SETTABLEKS                       R4 R6 K13 ["roact"]
       31 MOVE                             R7 R5
       32 LOADB                            R8 0
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K14 ["storyRoots"]
       36 SETTABLEKS                       R3 R6 K15 ["mapStory"]
       38 RETURN                           R6 1
