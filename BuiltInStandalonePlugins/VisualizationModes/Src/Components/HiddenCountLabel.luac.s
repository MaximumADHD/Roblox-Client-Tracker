PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K2 ["Visible"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["createElement"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["UI"]
       17 GETTABLEKS                       R3 R3 K5 ["TextLabel"]
       19 NEWTABLE                         R4 4 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["Tag"]
       24 LOADK                            R6 K7 ["VisualizationModes-HiddenCountLabel"]
       25 SETTABLE                         R6 R4 R5
       26 GETTABLEKS                       R5 R0 K8 ["LayoutOrder"]
       28 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       30 GETTABLEKS                       R8 R0 K9 ["AllHidden"]
       32 JUMPIFNOT                        R8 ; [+2]
       33 LOADK                            R7 K10 ["AllHiddenCount"]
       34 JUMP                             ; [+1]
       35 LOADK                            R7 K11 ["HiddenCount"]
       36 LOADK                            R8 K12 ["Text"]
       37 DUPTABLE                         R9 K14 [{"hidden"}]
       38 GETTABLEKS                       R10 R0 K11 ["HiddenCount"]
       40 SETTABLEKS                       R10 R9 K13 ["hidden"]
       42 NAMECALL                         R5 R1 K15 ["getText"]
       44 CALL                             R5 4 1
       45 SETTABLEKS                       R5 R4 K12 ["Text"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
