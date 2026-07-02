PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["parse"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 GETTABLEKS                       R3 R0 K2 ["source"]
        7 GETTABLEKS                       R3 R3 K3 ["Parent"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["Typecheck"]
       32 GETTABLEKS                       R4 R4 K12 ["DocParser"]
       34 DUPTABLE                         R5 K19 [{["name"] = "Ribbon", ["storyRoots"], ["mapStory"], ["roact"], ["reactRoblox"], ["mapDefinition"]}]
       35 NEWTABLE                         R6 0 1
       37 GETTABLEKS                       R7 R0 K20 ["Src"]
       39 GETTABLEKS                       R7 R7 K21 ["Components"]
       41 SETLIST                          R6 R7 1 [1]
       43 SETTABLEKS                       R6 R5 K14 ["storyRoots"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETIMPORT                        R7 K1 [script]
       49 GETTABLEKS                       R7 R7 K22 ["Parent"]
       51 GETTABLEKS                       R7 R7 K23 ["StoryMiddleware"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K15 ["mapStory"]
       56 SETTABLEKS                       R2 R5 K16 ["roact"]
       58 SETTABLEKS                       R3 R5 K17 ["reactRoblox"]
       60 DUPCLOSURE                       R6 K24 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R6 R5 K18 ["mapDefinition"]
       64 RETURN                           R5 1
