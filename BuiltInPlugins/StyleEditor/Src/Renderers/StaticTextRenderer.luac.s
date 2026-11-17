PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K2 [{"Label"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 NEWTABLE                         R7 2 0
       13 GETTABLEKS                       R8 R0 K3 ["Value"]
       15 SETTABLEKS                       R8 R7 K4 ["Text"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K5 ["Tag"]
       20 LOADK                            R9 K6 ["X-FitX TextXAlignLeft"]
       21 SETTABLE                         R9 R7 R8
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K1 ["Label"]
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Pane"]
       27 GETTABLEKS                       R4 R2 K8 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["TextLabel"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R6 K12 ["Renderers"]
       37 GETTABLEKS                       R6 R6 K13 ["RendererTypes"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
