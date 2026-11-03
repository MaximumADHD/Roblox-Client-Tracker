PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Timestamp"] ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["createElement"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeLibraryContext"]
        6 GETTABLEKS                       R1 R1 K2 ["Provider"]
        8 DUPTABLE                         R2 K4 [{"value"}]
        9 DUPTABLE                         R3 K7 [{"nodeLibrary", "renderProperty"}]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K5 ["nodeLibrary"]
       14 GETUPVAL                         R4 2
       15 SETTABLEKS                       R4 R3 K6 ["renderProperty"]
       17 SETTABLEKS                       R3 R2 K3 ["value"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["TimestampProperty"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
