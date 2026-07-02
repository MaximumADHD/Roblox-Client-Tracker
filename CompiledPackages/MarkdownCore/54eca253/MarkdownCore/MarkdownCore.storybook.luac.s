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
       19 DUPTABLE                         R3 K14 [{["name"] = "MarkdownCore", ["exclude"], ["storyRoots"], ["mapStory"], ["roact"]}]
       20 NEWTABLE                         R4 0 1
       22 LOADK                            R5 K15 ["_Index"]
       23 SETLIST                          R4 R5 1 [1]
       25 SETTABLEKS                       R4 R3 K10 ["exclude"]
       27 NEWTABLE                         R4 0 1
       29 MOVE                             R5 R0
       30 SETLIST                          R4 R5 1 [1]
       32 SETTABLEKS                       R4 R3 K11 ["storyRoots"]
       34 SETTABLEKS                       R1 R3 K12 ["mapStory"]
       36 SETTABLEKS                       R2 R3 K13 ["roact"]
       38 RETURN                           R3 1
