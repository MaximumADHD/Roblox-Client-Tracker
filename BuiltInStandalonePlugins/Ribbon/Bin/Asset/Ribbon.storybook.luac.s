PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["parse"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 GETTABLEKS                       R4 R0 K2 ["source"]
        7 GETTABLEKS                       R3 R4 K3 ["Parent"]
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [pcall]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 JUMPIFNOT                        R2 ; [+6]
       16 SETTABLEKS                       R3 R0 K6 ["docs"]
       18 GETTABLEKS                       R4 R3 K7 ["Summary"]
       20 SETTABLEKS                       R4 R0 K8 ["summary"]
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R6 R1 K10 ["Util"]
       30 GETTABLEKS                       R5 R6 K11 ["Typecheck"]
       32 GETTABLEKS                       R4 R5 K12 ["DocParser"]
       34 DUPTABLE                         R5 K19 [{"name", "storyRoots", "mapStory", "roact", "reactRoblox", "mapDefinition"}]
       35 LOADK                            R6 K2 ["Ribbon"]
       36 SETTABLEKS                       R6 R5 K13 ["name"]
       38 NEWTABLE                         R6 0 1
       40 GETTABLEKS                       R8 R0 K20 ["Src"]
       42 GETTABLEKS                       R7 R8 K21 ["Components"]
       44 SETLIST                          R6 R7 1 [1]
       46 SETTABLEKS                       R6 R5 K14 ["storyRoots"]
       48 GETIMPORT                        R6 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R8 R9 K22 ["Parent"]
       54 GETTABLEKS                       R7 R8 K23 ["StoryMiddleware"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K15 ["mapStory"]
       59 SETTABLEKS                       R2 R5 K16 ["roact"]
       61 SETTABLEKS                       R3 R5 K17 ["reactRoblox"]
       63 DUPCLOSURE                       R6 K24 [PROTO_1]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R6 R5 K18 ["mapDefinition"]
       67 RETURN                           R5 1
