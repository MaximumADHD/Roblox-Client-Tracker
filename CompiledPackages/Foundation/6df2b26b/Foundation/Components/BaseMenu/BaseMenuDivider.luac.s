PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "Size", "tag", "testId"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETIMPORT                        R5 K8 [UDim2.new]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 LOADN                            R8 0
       16 GETTABLEKS                       R10 R1 K9 ["Stroke"]
       18 GETTABLEKS                       R9 R10 K10 ["Standard"]
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K2 ["Size"]
       23 LOADK                            R5 K11 ["row flex-x-fill"]
       24 SETTABLEKS                       R5 R4 K3 ["tag"]
       26 LOADK                            R5 K12 ["--foundation-menu-divider-item"]
       27 SETTABLEKS                       R5 R4 K4 ["testId"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K0 ["createElement"]
       32 GETUPVAL                         R6 2
       33 DUPTABLE                         R7 K14 [{"tag", "backgroundStyle"}]
       34 LOADK                            R8 K15 ["size-0-full grow"]
       35 SETTABLEKS                       R8 R7 K3 ["tag"]
       37 GETTABLEKS                       R10 R1 K16 ["Color"]
       39 GETTABLEKS                       R9 R10 K9 ["Stroke"]
       41 GETTABLEKS                       R8 R9 K17 ["Default"]
       43 SETTABLEKS                       R8 R7 K13 ["backgroundStyle"]
       45 CALL                             R5 2 -1
       46 CALL                             R2 -1 -1
       47 RETURN                           R2 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
