MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Middleware"]
        9 GETTABLEKS                       R2 R2 K6 ["StoryMiddleware"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [script]
       14 LOADK                            R4 K7 ["Packages"]
       15 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R2 K9 ["Dev"]
       22 GETTABLEKS                       R4 R4 K10 ["Roact"]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K17 [{["name"] = "Markdown", ["exclude"], ["storyRoots"], ["mapStory"], ["roact"]}]
       26 NEWTABLE                         R5 0 1
       28 LOADK                            R6 K18 ["_Index"]
       29 SETLIST                          R5 R6 1 [1]
       31 SETTABLEKS                       R5 R4 K13 ["exclude"]
       33 NEWTABLE                         R5 0 1
       35 MOVE                             R6 R0
       36 SETLIST                          R5 R6 1 [1]
       38 SETTABLEKS                       R5 R4 K14 ["storyRoots"]
       40 SETTABLEKS                       R1 R4 K15 ["mapStory"]
       42 SETTABLEKS                       R3 R4 K16 ["roact"]
       44 RETURN                           R4 1
