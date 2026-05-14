PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"tag", "testId"}]
        5 LOADK                            R6 K4 ["col gap-small auto-y size-full-0"]
        6 SETTABLEKS                       R6 R5 K1 ["tag"]
        8 LOADK                            R6 K5 ["--knowledge-tutorials-MarkdownRoot"]
        9 SETTABLEKS                       R6 R5 K2 ["testId"]
       11 GETTABLEKS                       R6 R1 K6 ["processChildren"]
       13 GETTABLEKS                       R7 R0 K7 ["children"]
       15 MOVE                             R8 R1
       16 CALL                             R6 2 -1
       17 CALL                             R3 -1 -1
       18 RETURN                           R3 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
