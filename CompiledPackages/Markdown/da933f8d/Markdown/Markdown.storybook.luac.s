MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["Middleware"]
        9 GETTABLEKS                       R2 R3 K6 ["StoryMiddleware"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [script]
       14 LOADK                            R4 K7 ["Packages"]
       15 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R2 K9 ["Dev"]
       22 GETTABLEKS                       R4 R5 K10 ["Roact"]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K16 [{"name", "exclude", "storyRoots", "mapStory", "roact"}]
       26 LOADK                            R5 K17 ["Markdown"]
       27 SETTABLEKS                       R5 R4 K11 ["name"]
       29 NEWTABLE                         R5 0 1
       31 LOADK                            R6 K18 ["_Index"]
       32 SETLIST                          R5 R6 1 [1]
       34 SETTABLEKS                       R5 R4 K12 ["exclude"]
       36 NEWTABLE                         R5 0 1
       38 MOVE                             R6 R0
       39 SETLIST                          R5 R6 1 [1]
       41 SETTABLEKS                       R5 R4 K13 ["storyRoots"]
       43 SETTABLEKS                       R1 R4 K14 ["mapStory"]
       45 SETTABLEKS                       R3 R4 K15 ["roact"]
       47 RETURN                           R4 1
