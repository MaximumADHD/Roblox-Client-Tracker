PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["variant"]
       10 GETTABLEKS                       R7 R2 K1 ["orientation"]
       12 CALL                             R4 3 1
       13 LOADB                            R5 0
       14 GETTABLEKS                       R6 R2 K0 ["variant"]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K2 ["Heavy"]
       19 JUMPIFNOTEQ                      R6 R7 ; [+10]
       21 GETTABLEKS                       R6 R2 K1 ["orientation"]
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K3 ["Vertical"]
       26 JUMPIFNOTEQ                      R6 R7 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETUPVAL                         R6 6
       31 GETTABLEKS                       R6 R6 K4 ["createElement"]
       33 GETUPVAL                         R7 7
       34 GETUPVAL                         R8 8
       35 MOVE                             R9 R2
       36 DUPTABLE                         R10 K7 [{"tag", "ref"}]
       37 GETTABLEKS                       R11 R4 K8 ["container"]
       39 GETTABLEKS                       R11 R11 K5 ["tag"]
       41 SETTABLEKS                       R11 R10 K5 ["tag"]
       43 SETTABLEKS                       R1 R10 K6 ["ref"]
       45 CALL                             R8 2 1
       46 DUPTABLE                         R9 K11 [{"DividerStroke", "DividerLine"}]
       47 GETUPVAL                         R10 6
       48 GETTABLEKS                       R10 R10 K4 ["createElement"]
       50 GETUPVAL                         R11 7
       51 DUPTABLE                         R12 K14 [{"Size", "backgroundStyle"}]
       52 GETTABLEKS                       R13 R4 K15 ["stroke"]
       54 GETTABLEKS                       R13 R13 K12 ["Size"]
       56 SETTABLEKS                       R13 R12 K12 ["Size"]
       58 GETTABLEKS                       R13 R4 K15 ["stroke"]
       60 GETTABLEKS                       R13 R13 K13 ["backgroundStyle"]
       62 SETTABLEKS                       R13 R12 K13 ["backgroundStyle"]
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K9 ["DividerStroke"]
       67 JUMPIFNOT                        R5 ; [+25]
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R10 R10 K4 ["createElement"]
       71 GETUPVAL                         R11 7
       72 DUPTABLE                         R12 K17 [{"tag", "Position", "backgroundStyle"}]
       73 GETTABLEKS                       R13 R4 K18 ["line"]
       75 GETTABLEKS                       R13 R13 K5 ["tag"]
       77 SETTABLEKS                       R13 R12 K5 ["tag"]
       79 GETTABLEKS                       R13 R4 K18 ["line"]
       81 GETTABLEKS                       R13 R13 K19 ["position"]
       83 SETTABLEKS                       R13 R12 K16 ["Position"]
       85 GETTABLEKS                       R13 R4 K18 ["line"]
       87 GETTABLEKS                       R13 R13 K13 ["backgroundStyle"]
       89 SETTABLEKS                       R13 R12 K13 ["backgroundStyle"]
       91 CALL                             R10 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 SETTABLEKS                       R10 R9 K10 ["DividerLine"]
       96 CALL                             R6 3 -1
       97 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["DividerVariant"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["Orientation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["useDividerVariants"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K15 ["Providers"]
       55 GETTABLEKS                       R9 R9 K16 ["Style"]
       57 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K18 ["Utility"]
       64 GETTABLEKS                       R10 R10 K19 ["withCommonProps"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K18 ["Utility"]
       71 GETTABLEKS                       R11 R11 K20 ["withDefaults"]
       73 CALL                             R10 1 1
       74 DUPTABLE                         R11 K25 [{["variant"], ["orientation"], ["testId"] = "--foundation-divider"}]
       75 GETTABLEKS                       R12 R3 K26 ["Default"]
       77 SETTABLEKS                       R12 R11 K21 ["variant"]
       79 GETTABLEKS                       R12 R4 K27 ["Horizontal"]
       81 SETTABLEKS                       R12 R11 K22 ["orientation"]
       83 DUPCLOSURE                       R12 K28 [PROTO_0]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R9
       93 GETTABLEKS                       R13 R2 K29 ["memo"]
       95 GETTABLEKS                       R14 R2 K30 ["forwardRef"]
       97 MOVE                             R15 R12
       98 CALL                             R14 1 -1
       99 CALL                             R13 -1 -1
      100 RETURN                           R13 -1
