PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Mouse"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
        7 GETTABLEKS                       R4 R1 K3 ["VertexToolBase"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R0 K4 ["selection"]
       12 GETTABLEKS                       R3 R1 K3 ["VertexToolBase"]
       14 GETTABLEKS                       R5 R1 K1 ["Mouse"]
       16 NAMECALL                         R3 R3 K5 ["setMouse"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R3 R1 K3 ["VertexToolBase"]
       21 GETTABLEKS                       R5 R1 K6 ["Radius"]
       23 NAMECALL                         R3 R3 K7 ["setRadius"]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R3 R1 K3 ["VertexToolBase"]
       28 GETTABLEKS                       R5 R1 K8 ["Falloff"]
       30 NAMECALL                         R3 R3 K9 ["setFalloff"]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R1 K3 ["VertexToolBase"]
       35 GETTABLEKS                       R5 R1 K10 ["Mannequin"]
       37 NAMECALL                         R3 R3 K11 ["setMannequin"]
       39 CALL                             R3 2 0
       40 GETTABLEKS                       R3 R1 K3 ["VertexToolBase"]
       42 GETTABLEKS                       R5 R1 K12 ["OnChangeSelectedPositions"]
       44 NAMECALL                         R3 R3 K13 ["setOnChangeSelectedPositions"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R3 R4 K2 ["new"]
       50 GETTABLEKS                       R4 R1 K14 ["Plugin"]
       52 GETIMPORT                        R5 K16 [game]
       54 GETIMPORT                        R6 K18 [settings]
       56 CALL                             R6 0 1
       57 GETTABLEKS                       R7 R0 K4 ["selection"]
       59 CALL                             R3 4 1
       60 SETTABLEKS                       R3 R0 K19 ["draggerContext"]
       62 GETTABLEKS                       R3 R0 K19 ["draggerContext"]
       64 GETTABLEKS                       R4 R1 K3 ["VertexToolBase"]
       66 SETTABLEKS                       R4 R3 K20 ["vertexEditingTool"]
       68 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 LOADB                            R3 1
        5 NAMECALL                         R1 R1 K2 ["Activate"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Mouse"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K6 [{"Mouse", "DraggerType", "Context"}]
       11 SETTABLEKS                       R3 R6 K2 ["Mouse"]
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K4 ["DraggerType"]
       16 GETTABLEKS                       R7 R0 K7 ["draggerContext"]
       18 SETTABLEKS                       R7 R6 K5 ["Context"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["VertexToolBase"]
        6 JUMPIFEQ                         R2 R3 ; [+42]
        8 GETTABLEKS                       R2 R0 K2 ["draggerContext"]
       10 JUMPIFNOT                        R2 ; [+38]
       11 GETTABLEKS                       R2 R0 K3 ["draggerHandleChanged"]
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETTABLEKS                       R2 R0 K3 ["draggerHandleChanged"]
       16 NAMECALL                         R2 R2 K4 ["Disconnect"]
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R0 K5 ["selection"]
       21 JUMPIFNOT                        R2 ; [+20]
       22 GETTABLEKS                       R2 R0 K5 ["selection"]
       24 GETTABLEKS                       R4 R1 K0 ["VertexToolBase"]
       26 NAMECALL                         R2 R2 K6 ["setVertexToolBase"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R0 K2 ["draggerContext"]
       31 GETTABLEKS                       R3 R1 K0 ["VertexToolBase"]
       33 SETTABLEKS                       R3 R2 K7 ["vertexToolBase"]
       35 GETTABLEKS                       R3 R0 K5 ["selection"]
       37 GETTABLEKS                       R2 R3 K8 ["SelectionChanged"]
       39 NAMECALL                         R2 R2 K9 ["Fire"]
       41 CALL                             R2 1 0
       42 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       44 GETTABLEKS                       R4 R1 K10 ["Mouse"]
       46 NAMECALL                         R2 R2 K11 ["setMouse"]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R2 R1 K12 ["Falloff"]
       51 GETTABLEKS                       R4 R0 K1 ["props"]
       53 GETTABLEKS                       R3 R4 K12 ["Falloff"]
       55 JUMPIFEQ                         R2 R3 ; [+8]
       57 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       59 GETTABLEKS                       R4 R1 K12 ["Falloff"]
       61 NAMECALL                         R2 R2 K13 ["setFalloff"]
       63 CALL                             R2 2 0
       64 GETTABLEKS                       R2 R1 K14 ["Radius"]
       66 GETTABLEKS                       R4 R0 K1 ["props"]
       68 GETTABLEKS                       R3 R4 K14 ["Radius"]
       70 JUMPIFEQ                         R2 R3 ; [+8]
       72 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       74 GETTABLEKS                       R4 R1 K14 ["Radius"]
       76 NAMECALL                         R2 R2 K15 ["setRadius"]
       78 CALL                             R2 2 0
       79 GETTABLEKS                       R2 R1 K16 ["Mannequin"]
       81 GETTABLEKS                       R4 R0 K1 ["props"]
       83 GETTABLEKS                       R3 R4 K16 ["Mannequin"]
       85 JUMPIFEQ                         R2 R3 ; [+8]
       87 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       89 GETTABLEKS                       R4 R1 K16 ["Mannequin"]
       91 NAMECALL                         R2 R2 K17 ["setMannequin"]
       93 CALL                             R2 2 0
       94 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DraggerFramework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R2 K9 ["Implementation"]
       21 GETTABLEKS                       R4 R5 K10 ["DraggerContext_PluginImpl"]
       23 GETTABLEKS                       R5 R0 K11 ["Components"]
       25 GETIMPORT                        R6 K6 [require]
       27 GETTABLEKS                       R7 R5 K12 ["MeshEditingDragger"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R7 R0 K13 ["DraggerSchema"]
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R9 R7 K14 ["Selection"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R9 R3 K15 ["PureComponent"]
       39 LOADK                            R11 K16 ["FreeformMeshEditingComponent"]
       40 NAMECALL                         R9 R9 K17 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K18 [PROTO_0]
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R10 R9 K19 ["init"]
       48 DUPCLOSURE                       R10 K20 [PROTO_1]
       49 SETTABLEKS                       R10 R9 K21 ["didMount"]
       51 DUPCLOSURE                       R10 K22 [PROTO_2]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R10 R9 K23 ["render"]
       56 DUPCLOSURE                       R10 K24 [PROTO_3]
       57 SETTABLEKS                       R10 R9 K25 ["didUpdate"]
       59 RETURN                           R9 1
