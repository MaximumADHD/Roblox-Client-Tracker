PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["TextButton"]
        4 NEWTABLE                         R3 4 0
        6 LOADK                            R4 K2 [""]
        7 SETTABLEKS                       R4 R3 K3 ["Text"]
        9 GETTABLEKS                       R4 R0 K4 ["ForwardRef"]
       11 SETTABLEKS                       R4 R3 K5 ["ref"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["Event"]
       16 GETTABLEKS                       R4 R4 K7 ["Activated"]
       18 GETTABLEKS                       R5 R0 K8 ["OnClick"]
       20 SETTABLE                         R5 R3 R4
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K9 ["Tag"]
       24 LOADK                            R5 K10 ["SequencePreviewButton X-Corner Stroke-Border"]
       25 SETTABLE                         R5 R3 R4
       26 DUPTABLE                         R4 K12 [{"Gradient"}]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 LOADK                            R6 K13 ["UIGradient"]
       31 DUPTABLE                         R7 K16 [{"Color", "Transparency"}]
       32 GETTABLEKS                       R8 R0 K14 ["Color"]
       34 SETTABLEKS                       R8 R7 K14 ["Color"]
       36 GETTABLEKS                       R8 R0 K15 ["Transparency"]
       38 SETTABLEKS                       R8 R7 K15 ["Transparency"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K11 ["Gradient"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Types"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K9 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 RETURN                           R3 1
