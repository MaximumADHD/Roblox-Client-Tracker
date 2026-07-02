PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R2 K1 ["keycode"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K4 [{"name"}]
       12 SETTABLEKS                       R1 R4 K3 ["name"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["createElement"]
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K8 [{["Text"], ["tag"] = "text-align-x-left size-full-0 auto-y"}]
       21 LOADK                            R6 K9 ["No BuilderIcon associated with: %*"]
       22 GETTABLEKS                       R8 R0 K0 ["controls"]
       24 GETTABLEKS                       R8 R8 K1 ["keycode"]
       26 NAMECALL                         R6 R6 K10 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 SETTABLEKS                       R5 R4 K5 ["Text"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

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
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["getBuilderIconForKeycode"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Icon"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Text"]
       41 CALL                             R6 1 1
       42 DUPTABLE                         R7 K16 [{["name"] = "getBuilderIconForKeycode", ["story"], ["controls"]}]
       43 DUPCLOSURE                       R8 K17 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 SETTABLEKS                       R8 R7 K14 ["story"]
       50 DUPTABLE                         R8 K19 [{"keycode"}]
       51 GETTABLEKS                       R9 R2 K20 ["values"]
       53 GETIMPORT                        R10 K23 [Enum.KeyCode]
       55 NAMECALL                         R10 R10 K24 ["GetEnumItems"]
       57 CALL                             R10 1 -1
       58 CALL                             R9 -1 1
       59 SETTABLEKS                       R9 R8 K18 ["keycode"]
       61 SETTABLEKS                       R8 R7 K15 ["controls"]
       63 RETURN                           R7 1
