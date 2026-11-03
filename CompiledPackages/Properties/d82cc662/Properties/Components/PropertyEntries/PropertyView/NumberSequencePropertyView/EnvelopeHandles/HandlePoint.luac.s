PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["NumberSequence"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Image"]
        8 DUPTABLE                         R4 K8 [{["Position"], ["tag"] = "anchor-center-center", ["Size"], ["Image"], ["imageStyle"], ["ZIndex"]}]
        9 GETTABLEKS                       R5 R0 K2 ["Position"]
       11 SETTABLEKS                       R5 R4 K2 ["Position"]
       13 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       15 GETTABLEKS                       R6 R0 K5 ["Size"]
       17 GETTABLEKS                       R7 R0 K5 ["Size"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K5 ["Size"]
       22 GETTABLEKS                       R5 R1 K12 ["EnvelopeHandles"]
       24 GETTABLEKS                       R5 R5 K13 ["CircleImage"]
       26 SETTABLEKS                       R5 R4 K1 ["Image"]
       28 DUPTABLE                         R5 K15 [{"Color3"}]
       29 GETTABLEKS                       R6 R0 K14 ["Color3"]
       31 SETTABLEKS                       R6 R5 K14 ["Color3"]
       33 SETTABLEKS                       R5 R4 K6 ["imageStyle"]
       35 GETTABLEKS                       R5 R0 K7 ["ZIndex"]
       37 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R5 R5 K10 ["useVisualValues"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K11 ["createElement"]
       28 DUPCLOSURE                       R6 K12 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R2
       32 RETURN                           R6 1
