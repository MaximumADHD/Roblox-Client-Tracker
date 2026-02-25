PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+43]
        9 GETTABLEKS                       R2 R0 K2 ["Visible"]
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K3 ["createElement"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K4 ["UI"]
       20 GETTABLEKS                       R3 R4 K5 ["TextLabel"]
       22 NEWTABLE                         R4 4 0
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K6 ["Tag"]
       27 LOADK                            R6 K7 ["VisualizationModes-HiddenCountLabel"]
       28 SETTABLE                         R6 R4 R5
       29 GETTABLEKS                       R5 R0 K8 ["LayoutOrder"]
       31 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       33 GETTABLEKS                       R8 R0 K9 ["AllHidden"]
       35 JUMPIFNOT                        R8 ; [+2]
       36 LOADK                            R7 K10 ["AllHiddenCount"]
       37 JUMP                             ; [+1]
       38 LOADK                            R7 K11 ["HiddenCount"]
       39 LOADK                            R8 K12 ["Text"]
       40 DUPTABLE                         R9 K14 [{"hidden"}]
       41 GETTABLEKS                       R10 R0 K11 ["HiddenCount"]
       43 SETTABLEKS                       R10 R9 K13 ["hidden"]
       45 NAMECALL                         R5 R1 K15 ["getText"]
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R4 K12 ["Text"]
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R2 R3 K3 ["createElement"]
       55 LOADK                            R3 K5 ["TextLabel"]
       56 NEWTABLE                         R4 4 0
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R5 R6 K6 ["Tag"]
       61 LOADK                            R6 K7 ["VisualizationModes-HiddenCountLabel"]
       62 SETTABLE                         R6 R4 R5
       63 GETTABLEKS                       R5 R0 K8 ["LayoutOrder"]
       65 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       67 GETTABLEKS                       R5 R0 K2 ["Visible"]
       69 SETTABLEKS                       R5 R4 K2 ["Visible"]
       71 GETTABLEKS                       R8 R0 K9 ["AllHidden"]
       73 JUMPIFNOT                        R8 ; [+2]
       74 LOADK                            R7 K10 ["AllHiddenCount"]
       75 JUMP                             ; [+1]
       76 LOADK                            R7 K11 ["HiddenCount"]
       77 LOADK                            R8 K12 ["Text"]
       78 DUPTABLE                         R9 K14 [{"hidden"}]
       79 GETTABLEKS                       R10 R0 K11 ["HiddenCount"]
       81 SETTABLEKS                       R10 R9 K13 ["hidden"]
       83 NAMECALL                         R5 R1 K15 ["getText"]
       85 CALL                             R5 4 1
       86 SETTABLEKS                       R5 R4 K12 ["Text"]
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["getFFlagStudioVisualizationModesFontFix"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
