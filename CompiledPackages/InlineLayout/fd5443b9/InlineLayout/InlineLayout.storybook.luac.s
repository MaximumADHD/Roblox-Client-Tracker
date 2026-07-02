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
       21 DUPTABLE                         R4 K15 [{["name"] = "InlineLayout", ["exclude"], ["storyRoots"], ["mapStory"], ["roact"]}]
       22 NEWTABLE                         R5 0 1
       24 LOADK                            R6 K16 ["_Index"]
       25 SETLIST                          R5 R6 1 [1]
       27 SETTABLEKS                       R5 R4 K11 ["exclude"]
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R0
       32 SETLIST                          R5 R6 1 [1]
       34 SETTABLEKS                       R5 R4 K12 ["storyRoots"]
       36 SETTABLEKS                       R2 R4 K13 ["mapStory"]
       38 SETTABLEKS                       R3 R4 K14 ["roact"]
       40 RETURN                           R4 1
