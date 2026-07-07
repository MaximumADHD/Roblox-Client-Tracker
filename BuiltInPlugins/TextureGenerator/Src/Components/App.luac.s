PROTO_0:
        0 LOADNIL                          R1
        1 NEWTABLE                         R2 0 4
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createElement"]
        6 GETUPVAL                         R4 1
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 3
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K0 ["createElement"]
       21 GETUPVAL                         R7 4
       22 CALL                             R6 1 -1
       23 SETLIST                          R2 R3 -1 [1]
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["createElement"]
       29 GETUPVAL                         R3 5
       30 DUPTABLE                         R4 K2 [{"providers"}]
       31 SETTABLEKS                       R1 R4 K1 ["providers"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["createElement"]
       36 GETUPVAL                         R6 6
       37 CALL                             R5 1 -1
       38 CALL                             R2 -1 -1
       39 RETURN                           R2 -1

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
       72 DUPCLOSURE                       R10 K19 [PROTO_0]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 RETURN                           R10 1
