MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["MarkdownCore"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K6 ["StoryMiddleware"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Dev"]
       18 GETTABLEKS                       R4 R4 K8 ["Roact"]
       20 CALL                             R3 1 1
       21 DUPTABLE                         R4 K14 [{"name", "exclude", "storyRoots", "mapStory", "roact"}]
       22 LOADK                            R5 K15 ["InlineLayout"]
       23 SETTABLEKS                       R5 R4 K9 ["name"]
       25 NEWTABLE                         R5 0 1
       27 LOADK                            R6 K16 ["_Index"]
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K10 ["exclude"]
       32 NEWTABLE                         R5 0 1
       34 MOVE                             R6 R0
       35 SETLIST                          R5 R6 1 [1]
       37 SETTABLEKS                       R5 R4 K11 ["storyRoots"]
       39 SETTABLEKS                       R2 R4 K12 ["mapStory"]
       41 SETTABLEKS                       R3 R4 K13 ["roact"]
       43 RETURN                           R4 1
