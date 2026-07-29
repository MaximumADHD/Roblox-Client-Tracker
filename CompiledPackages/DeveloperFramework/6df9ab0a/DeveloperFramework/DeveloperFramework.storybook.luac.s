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
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 1
       17 SETTABLEKS                       R3 R0 K6 ["docs"]
       19 GETTABLEKS                       R4 R0 K7 ["summary"]
       21 JUMPIFEQKNIL                     R4 ; [+5]
       23 GETTABLEKS                       R4 R0 K7 ["summary"]
       25 JUMPIFNOTEQKS                    R4 K8 [""] ; [+5]
       27 GETTABLEKS                       R4 R3 K9 ["Summary"]
       29 SETTABLEKS                       R4 R0 K7 ["summary"]
       31 GETIMPORT                        R4 K11 [next]
       33 GETTABLEKS                       R5 R0 K6 ["docs"]
       35 GETTABLEKS                       R5 R5 K12 ["Props"]
       37 CALL                             R4 1 1
       38 JUMPIFNOTEQKNIL                  R4 ; [+22]
       40 GETTABLEKS                       R4 R0 K6 ["docs"]
       42 NAMECALL                         R5 R1 K13 ["parseProps"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K12 ["Props"]
       47 GETTABLEKS                       R4 R0 K6 ["docs"]
       49 NAMECALL                         R5 R1 K14 ["parseStyle"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K15 ["Style"]
       54 GETTABLEKS                       R4 R0 K6 ["docs"]
       56 NAMECALL                         R5 R1 K16 ["parseDependencies"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K17 ["Dependencies"]
       61 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["UI"]
        9 GETTABLEKS                       R2 R2 K6 ["Stories"]
       11 GETTABLEKS                       R2 R2 K7 ["StoryMiddleware"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Typecheck"]
       20 GETTABLEKS                       R3 R3 K10 ["DocParser"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K17 [{["name"] = "Developer Framework", ["exclude"], ["storyRoots"], ["mapStory"], ["mapDefinition"]}]
       24 NEWTABLE                         R4 0 1
       26 LOADK                            R5 K18 ["_Index"]
       27 SETLIST                          R4 R5 1 [1]
       29 SETTABLEKS                       R4 R3 K13 ["exclude"]
       31 NEWTABLE                         R4 0 1
       33 MOVE                             R5 R0
       34 SETLIST                          R4 R5 1 [1]
       36 SETTABLEKS                       R4 R3 K14 ["storyRoots"]
       38 SETTABLEKS                       R1 R3 K15 ["mapStory"]
       40 DUPCLOSURE                       R4 K19 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R4 R3 K16 ["mapDefinition"]
       44 RETURN                           R3 1
