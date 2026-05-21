MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["StoryMiddleware"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K2 ["Parent"]
       14 GETTABLEKS                       R3 R3 K6 ["Dev"]
       16 GETTABLEKS                       R3 R3 K7 ["Roact"]
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K13 [{"name", "exclude", "storyRoots", "mapStory", "roact"}]
       20 LOADK                            R4 K14 ["MarkdownCore"]
       21 SETTABLEKS                       R4 R3 K8 ["name"]
       23 NEWTABLE                         R4 0 1
       25 LOADK                            R5 K15 ["_Index"]
       26 SETLIST                          R4 R5 1 [1]
       28 SETTABLEKS                       R4 R3 K9 ["exclude"]
       30 NEWTABLE                         R4 0 1
       32 MOVE                             R5 R0
       33 SETLIST                          R4 R5 1 [1]
       35 SETTABLEKS                       R4 R3 K10 ["storyRoots"]
       37 SETTABLEKS                       R1 R3 K11 ["mapStory"]
       39 SETTABLEKS                       R2 R3 K12 ["roact"]
       41 RETURN                           R3 1
