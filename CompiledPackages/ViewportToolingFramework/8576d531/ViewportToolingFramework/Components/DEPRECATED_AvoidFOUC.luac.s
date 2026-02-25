PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["createElement"]
        6 LOADK                            R3 K1 ["Frame"]
        7 NEWTABLE                         R4 8 0
        9 GETIMPORT                        R5 K5 [Enum.AutomaticSize.XY]
       11 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       13 LOADN                            R5 1
       14 SETTABLEKS                       R5 R4 K6 ["BackgroundTransparency"]
       16 GETTABLEKS                       R5 R1 K7 ["enabled"]
       18 SETTABLEKS                       R5 R4 K8 ["Visible"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K9 ["Change"]
       23 GETTABLEKS                       R5 R6 K10 ["BackgroundColor3"]
       25 GETTABLEKS                       R6 R1 K11 ["enable"]
       27 SETTABLE                         R6 R4 R5
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K12 ["Tag"]
       31 LOADK                            R6 K13 ["VPF-AvoidFOUC"]
       32 SETTABLE                         R6 R4 R5
       33 GETTABLEKS                       R5 R0 K14 ["children"]
       35 CALL                             R2 3 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useToggleState"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
