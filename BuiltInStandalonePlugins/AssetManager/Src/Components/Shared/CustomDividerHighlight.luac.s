PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["View"]
       12 DUPTABLE                         R4 K7 [{"Size", "backgroundStyle", "testId"}]
       13 GETTABLEKS                       R6 R0 K8 ["orientation"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K9 ["Enums"]
       18 GETTABLEKS                       R7 R7 K10 ["DividerOrientation"]
       20 GETTABLEKS                       R7 R7 K11 ["Vertical"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+12]
       24 GETIMPORT                        R5 K14 [UDim2.new]
       26 LOADN                            R6 0
       27 GETTABLEKS                       R7 R1 K15 ["Stroke"]
       29 GETTABLEKS                       R7 R7 K16 ["Standard"]
       31 LOADN                            R8 1
       32 LOADN                            R9 0
       33 CALL                             R5 4 1
       34 JUMP                             ; [+10]
       35 GETIMPORT                        R5 K14 [UDim2.new]
       37 LOADN                            R6 1
       38 LOADN                            R7 0
       39 LOADN                            R8 0
       40 GETTABLEKS                       R9 R1 K15 ["Stroke"]
       42 GETTABLEKS                       R9 R9 K16 ["Standard"]
       44 CALL                             R5 4 1
       45 SETTABLEKS                       R5 R4 K4 ["Size"]
       47 DUPTABLE                         R5 K20 [{["Color3"], ["Transparency"] = 0.5}]
       48 GETTABLEKS                       R6 R1 K21 ["Color"]
       50 GETTABLEKS                       R6 R6 K15 ["Stroke"]
       52 GETTABLEKS                       R6 R6 K22 ["Emphasis"]
       54 GETTABLEKS                       R6 R6 K17 ["Color3"]
       56 SETTABLEKS                       R6 R5 K17 ["Color3"]
       58 SETTABLEKS                       R5 R4 K5 ["backgroundStyle"]
       60 GETTABLEKS                       R5 R0 K6 ["testId"]
       62 SETTABLEKS                       R5 R4 K6 ["testId"]
       64 CALL                             R2 2 -1
       65 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
