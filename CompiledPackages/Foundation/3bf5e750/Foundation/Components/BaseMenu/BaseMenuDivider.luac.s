PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K7 [{["LayoutOrder"], ["Size"], ["tag"] = "row flex-x-fill", ["testId"] = "--foundation-menu-divider-item"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETIMPORT                        R5 K10 [UDim2.new]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 LOADN                            R8 0
       16 GETTABLEKS                       R9 R1 K11 ["Stroke"]
       18 GETTABLEKS                       R9 R9 K12 ["Standard"]
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K2 ["Size"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K0 ["createElement"]
       26 GETUPVAL                         R6 2
       27 DUPTABLE                         R7 K15 [{["tag"] = "size-0-full grow", ["backgroundStyle"]}]
       28 GETTABLEKS                       R8 R1 K16 ["Color"]
       30 GETTABLEKS                       R8 R8 K11 ["Stroke"]
       32 GETTABLEKS                       R8 R8 K17 ["Default"]
       34 SETTABLEKS                       R8 R7 K14 ["backgroundStyle"]
       36 CALL                             R5 2 -1
       37 CALL                             R2 -1 -1
       38 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R5 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
