PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R6
        8 CAPTURE                          VAL R0
        9 SETTABLE                         R7 R1 R5
       10 FORGLOOP                         R2 2 ; [-5]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K12 [{"TAG", "ROOT"}]
       22 GETIMPORT                        R4 K5 [require]
       24 GETIMPORT                        R5 K1 [script]
       26 GETTABLEKS                       R5 R5 K13 ["tag"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K10 ["TAG"]
       31 GETIMPORT                        R4 K5 [require]
       33 GETIMPORT                        R5 K1 [script]
       35 GETTABLEKS                       R5 R5 K14 ["root"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K11 ["ROOT"]
       40 DUPCLOSURE                       R4 K15 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
