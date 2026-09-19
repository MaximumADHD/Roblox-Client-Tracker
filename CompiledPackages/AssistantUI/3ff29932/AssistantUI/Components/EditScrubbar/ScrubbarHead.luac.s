PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["Content"]
        6 GETTABLEKS                       R2 R2 K2 ["Link"]
        8 GETTABLEKS                       R2 R2 K3 ["Color3"]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K10 [{["tag"] = "anchor-top-center", ["Size"], ["Position"], ["ZIndex"] = 3}]
       13 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       15 LOADN                            R7 9
       16 GETTABLEKS                       R8 R0 K14 ["trackHeight"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K6 ["Size"]
       21 GETIMPORT                        R6 K16 [UDim2.fromScale]
       23 GETTABLEKS                       R7 R0 K17 ["normalizedPosition"]
       25 LOADN                            R8 0
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K7 ["Position"]
       29 DUPTABLE                         R6 K20 [{"Head", "Line"}]
       30 GETUPVAL                         R7 1
       31 GETUPVAL                         R8 3
       32 DUPTABLE                         R9 K25 [{["tag"] = "position-top-center anchor-top-center", ["Image"] = "rbxasset://textures/AnimationEditor/img_scrubberhead.png", ["imageStyle"], ["Size"]}]
       33 DUPTABLE                         R10 K26 [{"Color3"}]
       34 SETTABLEKS                       R2 R10 K3 ["Color3"]
       36 SETTABLEKS                       R10 R9 K24 ["imageStyle"]
       38 GETIMPORT                        R10 K13 [UDim2.fromOffset]
       40 LOADN                            R11 9
       41 LOADN                            R12 9
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K6 ["Size"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K18 ["Head"]
       48 GETUPVAL                         R7 1
       49 GETUPVAL                         R8 2
       50 DUPTABLE                         R9 K30 [{["tag"] = "position-top-center anchor-top-center", ["Size"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       51 GETIMPORT                        R10 K32 [UDim2.new]
       53 LOADN                            R11 0
       54 LOADN                            R12 1
       55 LOADN                            R13 1
       56 LOADN                            R14 0
       57 CALL                             R10 4 1
       58 SETTABLEKS                       R10 R9 K6 ["Size"]
       60 DUPTABLE                         R10 K26 [{"Color3"}]
       61 SETTABLEKS                       R2 R10 K3 ["Color3"]
       63 SETTABLEKS                       R10 R9 K27 ["backgroundStyle"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K19 ["Line"]
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Image"]
       21 GETTABLEKS                       R5 R2 K10 ["View"]
       23 GETTABLEKS                       R6 R2 K11 ["Hooks"]
       25 GETTABLEKS                       R6 R6 K12 ["useTokens"]
       27 GETTABLEKS                       R7 R3 K13 ["createElement"]
       29 DUPCLOSURE                       R8 K14 [PROTO_0]
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 RETURN                           R8 1
