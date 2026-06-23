PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorNode"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["NodeViewTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["CompositorNodeProperty"]
       27 GETTABLEKS                       R4 R4 K11 ["PropertyComponent"]
       29 GETTABLEKS                       R4 R4 K12 ["PropertyComponentTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["Signals"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R4 K16 ["createContext"]
       48 DUPTABLE                         R7 K19 [{"nodeLibrary", "renderProperty"}]
       49 NEWTABLE                         R8 0 0
       51 SETTABLEKS                       R8 R7 K17 ["nodeLibrary"]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K18 ["renderProperty"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K20 [PROTO_0]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 DUPTABLE                         R8 K23 [{"Context", "Provider"}]
       61 SETTABLEKS                       R6 R8 K21 ["Context"]
       63 SETTABLEKS                       R7 R8 K22 ["Provider"]
       65 RETURN                           R8 1
