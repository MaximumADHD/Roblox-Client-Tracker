PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R3 K1 ["keycode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K4 [{"name"}]
       12 SETTABLEKS                       R1 R4 K3 ["name"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K2 ["createElement"]
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K7 [{"Text", "tag"}]
       21 LOADK                            R6 K8 ["No BuilderIcon associated with: %*"]
       22 GETTABLEKS                       R9 R0 K0 ["controls"]
       24 GETTABLEKS                       R8 R9 K1 ["keycode"]
       26 NAMECALL                         R6 R6 K9 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 SETTABLEKS                       R5 R4 K5 ["Text"]
       32 LOADK                            R5 K10 ["text-align-x-left size-full-0 auto-y"]
       33 SETTABLEKS                       R5 R4 K6 ["tag"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R8 R9 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K12 ["getBuilderIconForKeycode"]
       41 CALL                             R6 1 1
       42 DUPTABLE                         R7 K16 [{"name", "story", "controls"}]
       43 LOADK                            R8 K12 ["getBuilderIconForKeycode"]
       44 SETTABLEKS                       R8 R7 K13 ["name"]
       46 DUPCLOSURE                       R8 K17 [PROTO_0]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R8 R7 K14 ["story"]
       53 DUPTABLE                         R8 K19 [{"keycode"}]
       54 GETTABLEKS                       R9 R2 K20 ["values"]
       56 GETIMPORT                        R10 K23 [Enum.KeyCode]
       58 NAMECALL                         R10 R10 K24 ["GetEnumItems"]
       60 CALL                             R10 1 -1
       61 CALL                             R9 -1 1
       62 SETTABLEKS                       R9 R8 K18 ["keycode"]
       64 SETTABLEKS                       R8 R7 K15 ["controls"]
       66 RETURN                           R7 1
