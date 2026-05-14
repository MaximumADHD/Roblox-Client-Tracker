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
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Framework"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Util"]
       14 GETTABLEKS                       R3 R3 K7 ["Typecheck"]
       16 GETTABLEKS                       R3 R3 K8 ["DocParser"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Middleware"]
       22 GETTABLEKS                       R5 R5 K10 ["StoryMiddleware"]
       24 CALL                             R4 1 1
       25 DUPTABLE                         R5 K16 [{"name", "exclude", "storyRoots", "mapStory", "mapDefinition"}]
       26 LOADK                            R6 K17 ["Material Framework"]
       27 SETTABLEKS                       R6 R5 K11 ["name"]
       29 NEWTABLE                         R6 0 1
       31 LOADK                            R7 K18 ["_Index"]
       32 SETLIST                          R6 R7 1 [1]
       34 SETTABLEKS                       R6 R5 K12 ["exclude"]
       36 NEWTABLE                         R6 0 1
       38 MOVE                             R7 R0
       39 SETLIST                          R6 R7 1 [1]
       41 SETTABLEKS                       R6 R5 K13 ["storyRoots"]
       43 SETTABLEKS                       R4 R5 K14 ["mapStory"]
       45 DUPCLOSURE                       R6 K19 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R5 K15 ["mapDefinition"]
       49 RETURN                           R5 1
