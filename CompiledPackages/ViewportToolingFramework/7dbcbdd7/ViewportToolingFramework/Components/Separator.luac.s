PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K2 ["NextOrder"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Tag"]
       14 LOADK                            R5 K5 ["VPF-Separator"]
       15 SETTABLE                         R5 R3 R4
       16 DUPTABLE                         R4 K7 [{"SeparatorBar"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 LOADK                            R6 K1 ["Frame"]
       21 NEWTABLE                         R7 1 0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K4 ["Tag"]
       26 LOADK                            R9 K8 ["VPF-SeparatorBar"]
       27 SETTABLE                         R9 R7 R8
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K6 ["SeparatorBar"]
       31 CALL                             R1 3 -1
       32 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
