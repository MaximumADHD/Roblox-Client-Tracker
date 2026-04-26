PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"Size", "Position", "Rotation", "ZIndex", "backgroundStyle", "tag", "testId"}]
        5 GETIMPORT                        R4 K11 [UDim2.fromOffset]
        7 GETTABLEKS                       R5 R0 K12 ["size"]
        9 GETTABLEKS                       R6 R0 K12 ["size"]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K13 ["position"]
       16 SETTABLEKS                       R4 R3 K2 ["Position"]
       18 LOADN                            R4 45
       19 SETTABLEKS                       R4 R3 K3 ["Rotation"]
       21 GETTABLEKS                       R4 R0 K4 ["ZIndex"]
       23 SETTABLEKS                       R4 R3 K4 ["ZIndex"]
       25 GETTABLEKS                       R4 R0 K5 ["backgroundStyle"]
       27 SETTABLEKS                       R4 R3 K5 ["backgroundStyle"]
       29 LOADK                            R4 K14 ["anchor-center-center"]
       30 SETTABLEKS                       R4 R3 K6 ["tag"]
       32 GETTABLEKS                       R4 R0 K7 ["testId"]
       34 SETTABLEKS                       R4 R3 K7 ["testId"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
