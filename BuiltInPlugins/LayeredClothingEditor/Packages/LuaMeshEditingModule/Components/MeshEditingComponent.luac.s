PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"draggerType"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["props"]
        5 GETTABLEKS                       R3 R3 K3 ["VertexToolBase"]
        7 NAMECALL                         R3 R3 K4 ["getCurrentHandle"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K0 ["draggerType"]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R1 K0 ["getDraggerHandleChangedSignal"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K2 ["draggerHandleChanged"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R1 K1 ["VertexToolBase"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K2 ["selection"]
        8 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       10 GETTABLEKS                       R4 R1 K3 ["Mouse"]
       12 NAMECALL                         R2 R2 K4 ["setMouse"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K0 ["new"]
       18 GETTABLEKS                       R3 R1 K5 ["Plugin"]
       20 GETIMPORT                        R4 K7 [game]
       22 GETIMPORT                        R5 K9 [settings]
       24 CALL                             R5 0 1
       25 GETTABLEKS                       R6 R0 K2 ["selection"]
       27 CALL                             R2 4 1
       28 SETTABLEKS                       R2 R0 K10 ["draggerContext"]
       30 GETTABLEKS                       R2 R0 K10 ["draggerContext"]
       32 GETTABLEKS                       R3 R1 K1 ["VertexToolBase"]
       34 SETTABLEKS                       R3 R2 K11 ["vertexEditingTool"]
       36 DUPTABLE                         R2 K13 [{"draggerType"}]
       37 GETTABLEKS                       R3 R1 K1 ["VertexToolBase"]
       39 NAMECALL                         R3 R3 K14 ["getCurrentHandle"]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K12 ["draggerType"]
       44 SETTABLEKS                       R2 R0 K15 ["state"]
       46 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       48 NAMECALL                         R3 R2 K16 ["getDraggerHandleChangedSignal"]
       50 CALL                             R3 1 1
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          VAL R0
       53 NAMECALL                         R3 R3 K17 ["Connect"]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R0 K18 ["draggerHandleChanged"]
       58 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Mouse"]
        6 GETTABLEKS                       R4 R2 K3 ["draggerType"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K7 [{"Mouse", "DraggerType", "Context"}]
       13 SETTABLEKS                       R3 R7 K2 ["Mouse"]
       15 SETTABLEKS                       R4 R7 K5 ["DraggerType"]
       17 GETTABLEKS                       R8 R0 K8 ["draggerContext"]
       19 SETTABLEKS                       R8 R7 K6 ["Context"]
       21 CALL                             R5 2 -1
       22 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["VertexToolBase"]
        6 JUMPIFEQ                         R2 R3 ; [+66]
        8 GETTABLEKS                       R2 R0 K2 ["selection"]
       10 JUMPIFNOT                        R2 ; [+62]
       11 GETTABLEKS                       R2 R0 K3 ["draggerContext"]
       13 JUMPIFNOT                        R2 ; [+59]
       14 GETTABLEKS                       R2 R0 K4 ["draggerHandleChanged"]
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETTABLEKS                       R2 R0 K4 ["draggerHandleChanged"]
       19 NAMECALL                         R2 R2 K5 ["Disconnect"]
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R2 R0 K2 ["selection"]
       24 GETTABLEKS                       R4 R1 K0 ["VertexToolBase"]
       26 NAMECALL                         R2 R2 K6 ["setVertexToolBase"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R0 K3 ["draggerContext"]
       31 GETTABLEKS                       R3 R1 K0 ["VertexToolBase"]
       33 SETTABLEKS                       R3 R2 K7 ["vertexToolBase"]
       35 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       37 GETTABLEKS                       R4 R0 K1 ["props"]
       39 GETTABLEKS                       R4 R4 K0 ["VertexToolBase"]
       41 NAMECALL                         R4 R4 K8 ["getCurrentHandle"]
       43 CALL                             R4 1 -1
       44 NAMECALL                         R2 R2 K9 ["setCurrentHandle"]
       46 CALL                             R2 -1 0
       47 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       49 GETTABLEKS                       R4 R1 K10 ["Mouse"]
       51 NAMECALL                         R2 R2 K11 ["setMouse"]
       53 CALL                             R2 2 0
       54 GETTABLEKS                       R2 R0 K2 ["selection"]
       56 GETTABLEKS                       R2 R2 K12 ["SelectionChanged"]
       58 NAMECALL                         R2 R2 K13 ["Fire"]
       60 CALL                             R2 1 0
       61 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       63 NAMECALL                         R3 R2 K14 ["getDraggerHandleChangedSignal"]
       65 CALL                             R3 1 1
       66 NEWCLOSURE                       R5 P0
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R3 R3 K15 ["Connect"]
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R0 K4 ["draggerHandleChanged"]
       73 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["draggerHandleChanged"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["draggerHandleChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["DraggerFramework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K7 ["Implementation"]
       21 GETTABLEKS                       R4 R4 K8 ["DraggerContext_PluginImpl"]
       23 GETTABLEKS                       R5 R0 K9 ["Components"]
       25 GETIMPORT                        R6 K4 [require]
       27 GETTABLEKS                       R7 R5 K10 ["MeshEditingDragger"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R7 R0 K11 ["DraggerSchema"]
       32 GETIMPORT                        R8 K4 [require]
       34 GETTABLEKS                       R9 R7 K12 ["Selection"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R9 R3 K13 ["PureComponent"]
       39 LOADK                            R11 K14 ["MeshEditingComponent"]
       40 NAMECALL                         R9 R9 K15 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K16 [PROTO_1]
       44 DUPCLOSURE                       R11 K17 [PROTO_2]
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R11 R9 K18 ["init"]
       49 DUPCLOSURE                       R11 K19 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R11 R9 K20 ["render"]
       54 DUPCLOSURE                       R11 K21 [PROTO_4]
       55 SETTABLEKS                       R11 R9 K22 ["willUpdate"]
       57 DUPCLOSURE                       R11 K23 [PROTO_5]
       58 SETTABLEKS                       R11 R9 K24 ["willUnmount"]
       60 RETURN                           R9 1
