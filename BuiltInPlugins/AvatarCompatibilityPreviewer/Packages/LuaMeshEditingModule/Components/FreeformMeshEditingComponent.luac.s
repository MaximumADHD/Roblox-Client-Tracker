PROTO_0:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R1 K1 ["VertexToolBase"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K2 ["selection"]
        8 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       10 GETTABLEKS                       R4 R1 K3 ["Mouse"]
       12 NAMECALL                         R2 R2 K4 ["setMouse"]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       17 GETTABLEKS                       R4 R1 K5 ["Radius"]
       19 NAMECALL                         R2 R2 K6 ["setRadius"]
       21 CALL                             R2 2 0
       22 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       24 GETTABLEKS                       R4 R1 K7 ["Falloff"]
       26 NAMECALL                         R2 R2 K8 ["setFalloff"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       31 GETTABLEKS                       R4 R1 K9 ["Mannequin"]
       33 NAMECALL                         R2 R2 K10 ["setDummy"]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K0 ["new"]
       39 GETTABLEKS                       R3 R1 K11 ["Plugin"]
       41 GETIMPORT                        R4 K13 [game]
       43 GETIMPORT                        R5 K15 [settings]
       45 CALL                             R5 0 1
       46 GETTABLEKS                       R6 R0 K2 ["selection"]
       48 CALL                             R2 4 1
       49 SETTABLEKS                       R2 R0 K16 ["draggerContext"]
       51 GETTABLEKS                       R2 R0 K16 ["draggerContext"]
       53 GETTABLEKS                       R3 R1 K1 ["VertexToolBase"]
       55 SETTABLEKS                       R3 R2 K17 ["vertexEditingTool"]
       57 GETTABLEKS                       R2 R1 K18 ["OnChangeSelectedPositions"]
       59 JUMPIFNOT                        R2 ; [+9]
       60 GETTABLEKS                       R2 R1 K1 ["VertexToolBase"]
       62 GETTABLEKS                       R2 R2 K19 ["selectedPositionsChanged"]
       64 GETTABLEKS                       R4 R1 K18 ["OnChangeSelectedPositions"]
       66 NAMECALL                         R2 R2 K20 ["Connect"]
       68 CALL                             R2 2 0
       69 DUPCLOSURE                       R2 K21 [PROTO_0]
       70 GETTABLEKS                       R3 R0 K16 ["draggerContext"]
       72 SETTABLEKS                       R2 R3 K22 ["shouldExtendSelection"]
       74 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 LOADB                            R3 1
        5 NAMECALL                         R1 R1 K2 ["Activate"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{"Mouse", "DraggerType", "Context"}]
        9 SETTABLEKS                       R2 R5 K1 ["Mouse"]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K3 ["DraggerType"]
       14 GETTABLEKS                       R6 R0 K6 ["draggerContext"]
       16 SETTABLEKS                       R6 R5 K4 ["Context"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["VertexToolBase"]
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
       35 GETTABLEKS                       R2 R0 K5 ["selection"]
       37 GETTABLEKS                       R2 R2 K8 ["SelectionChanged"]
       39 NAMECALL                         R2 R2 K9 ["Fire"]
       41 CALL                             R2 1 0
       42 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       44 GETTABLEKS                       R4 R1 K10 ["Mouse"]
       46 NAMECALL                         R2 R2 K11 ["setMouse"]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R2 R1 K12 ["Falloff"]
       51 GETTABLEKS                       R3 R0 K1 ["props"]
       53 GETTABLEKS                       R3 R3 K12 ["Falloff"]
       55 JUMPIFEQ                         R2 R3 ; [+8]
       57 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       59 GETTABLEKS                       R4 R1 K12 ["Falloff"]
       61 NAMECALL                         R2 R2 K13 ["setFalloff"]
       63 CALL                             R2 2 0
       64 GETTABLEKS                       R2 R1 K14 ["Radius"]
       66 GETTABLEKS                       R3 R0 K1 ["props"]
       68 GETTABLEKS                       R3 R3 K14 ["Radius"]
       70 JUMPIFEQ                         R2 R3 ; [+8]
       72 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       74 GETTABLEKS                       R4 R1 K14 ["Radius"]
       76 NAMECALL                         R2 R2 K15 ["setRadius"]
       78 CALL                             R2 2 0
       79 GETTABLEKS                       R2 R1 K16 ["Mannequin"]
       81 GETTABLEKS                       R3 R0 K1 ["props"]
       83 GETTABLEKS                       R3 R3 K16 ["Mannequin"]
       85 JUMPIFEQ                         R2 R3 ; [+8]
       87 GETTABLEKS                       R2 R1 K0 ["VertexToolBase"]
       89 GETTABLEKS                       R4 R1 K16 ["Mannequin"]
       91 NAMECALL                         R2 R2 K17 ["setDummy"]
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
       19 GETTABLEKS                       R4 R2 K9 ["Implementation"]
       21 GETTABLEKS                       R4 R4 K10 ["DraggerContext_PluginImpl"]
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
       43 DUPCLOSURE                       R10 K18 [PROTO_1]
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R10 R9 K19 ["init"]
       48 DUPCLOSURE                       R10 K20 [PROTO_2]
       49 SETTABLEKS                       R10 R9 K21 ["didMount"]
       51 DUPCLOSURE                       R10 K22 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R10 R9 K23 ["render"]
       56 DUPCLOSURE                       R10 K24 [PROTO_4]
       57 SETTABLEKS                       R10 R9 K25 ["didUpdate"]
       59 RETURN                           R9 1
