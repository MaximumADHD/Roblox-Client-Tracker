PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"FrameBuffer"}]
        3 GETTABLEKS                       R5 R1 K2 ["frameBuffer"]
        5 SETTABLEKS                       R5 R4 K0 ["FrameBuffer"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Overrides"}]
        3 GETTABLEKS                       R5 R1 K2 ["overrides"]
        5 SETTABLEKS                       R5 R4 K0 ["Overrides"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["join"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K12 ["Actions"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["SetFrameBuffer"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K14 ["SetOverrides"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R2 K15 ["createReducer"]
       46 DUPTABLE                         R9 K18 [{"FrameBuffer", "Overrides"}]
       47 LOADNIL                          R10
       48 SETTABLEKS                       R10 R9 K16 ["FrameBuffer"]
       50 NEWTABLE                         R10 0 0
       52 SETTABLEKS                       R10 R9 K17 ["Overrides"]
       54 NEWTABLE                         R10 2 0
       56 GETTABLEKS                       R11 R6 K19 ["name"]
       58 DUPCLOSURE                       R12 K20 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 SETTABLE                         R12 R10 R11
       61 GETTABLEKS                       R11 R7 K19 ["name"]
       63 DUPCLOSURE                       R12 K21 [PROTO_1]
       64 CAPTURE                          VAL R3
       65 SETTABLE                         R12 R10 R11
       66 CALL                             R8 2 1
       67 RETURN                           R8 1
