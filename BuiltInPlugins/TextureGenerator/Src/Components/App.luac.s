PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+26]
        4 NEWTABLE                         R2 0 4
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["createElement"]
        9 GETUPVAL                         R4 2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["createElement"]
       14 GETUPVAL                         R5 3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 4
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K0 ["createElement"]
       24 GETUPVAL                         R7 5
       25 CALL                             R6 1 -1
       26 SETLIST                          R2 R3 -1 [1]
       28 MOVE                             R1 R2
       29 JUMP                             ; [+20]
       30 NEWTABLE                         R2 0 3
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K0 ["createElement"]
       35 GETUPVAL                         R4 2
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K0 ["createElement"]
       40 GETUPVAL                         R5 4
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 GETUPVAL                         R6 5
       46 CALL                             R5 1 -1
       47 SETLIST                          R2 R3 -1 [1]
       49 MOVE                             R1 R2
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K0 ["createElement"]
       53 GETUPVAL                         R3 6
       54 DUPTABLE                         R4 K2 [{"providers"}]
       55 SETTABLEKS                       R1 R4 K1 ["providers"]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K0 ["createElement"]
       60 GETUPVAL                         R6 7
       61 CALL                             R5 1 -1
       62 CALL                             R2 -1 -1
       63 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextStack"]
       23 GETTABLEKS                       R4 R2 K10 ["useToggleState"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["GenerationsProvider"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Components"]
       40 GETTABLEKS                       R7 R7 K14 ["GenerationAnglesProvider"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K12 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["OptionsProvider"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Src"]
       56 GETTABLEKS                       R9 R9 K12 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["PreviewProvider"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Src"]
       65 GETTABLEKS                       R10 R10 K12 ["Components"]
       67 GETTABLEKS                       R10 R10 K17 ["Screens"]
       69 GETTABLEKS                       R10 R10 K18 ["GenerationScreen"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K11 ["Src"]
       76 GETTABLEKS                       R11 R11 K19 ["Flags"]
       78 GETTABLEKS                       R11 R11 K20 ["getFFlagTextureGeneratorMultiStagePreview"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K21 [PROTO_0]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R9
       90 RETURN                           R11 1
