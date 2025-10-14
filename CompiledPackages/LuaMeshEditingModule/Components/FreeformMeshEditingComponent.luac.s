PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["new"]
  GETTABLEKS R4 R1 K3 ["VertexToolBase"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K4 ["selection"]
  GETTABLEKS R3 R1 K3 ["VertexToolBase"]
  GETTABLEKS R5 R1 K1 ["Mouse"]
  NAMECALL R3 R3 K5 ["setMouse"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["VertexToolBase"]
  GETTABLEKS R5 R1 K6 ["Radius"]
  NAMECALL R3 R3 K7 ["setRadius"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["VertexToolBase"]
  GETTABLEKS R5 R1 K8 ["Falloff"]
  NAMECALL R3 R3 K9 ["setFalloff"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["VertexToolBase"]
  GETTABLEKS R5 R1 K10 ["Mannequin"]
  NAMECALL R3 R3 K11 ["setMannequin"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["VertexToolBase"]
  GETTABLEKS R5 R1 K12 ["OnChangeSelectedPositions"]
  NAMECALL R3 R3 K13 ["setOnChangeSelectedPositions"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  GETTABLEKS R4 R1 K14 ["Plugin"]
  GETIMPORT R5 K16 [game]
  GETIMPORT R6 K18 [settings]
  CALL R6 0 1
  GETTABLEKS R7 R0 K4 ["selection"]
  CALL R3 4 1
  SETTABLEKS R3 R0 K19 ["draggerContext"]
  GETTABLEKS R3 R0 K19 ["draggerContext"]
  GETTABLEKS R4 R1 K3 ["VertexToolBase"]
  SETTABLEKS R4 R3 K20 ["vertexEditingTool"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  LOADB R3 1
  NAMECALL R1 R1 K2 ["Activate"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Mouse"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"Mouse", "DraggerType", "Context"}]
  SETTABLEKS R3 R6 K2 ["Mouse"]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["DraggerType"]
  GETTABLEKS R7 R0 K7 ["draggerContext"]
  SETTABLEKS R7 R6 K5 ["Context"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["VertexToolBase"]
  JUMPIFEQ R2 R3 [+42]
  GETTABLEKS R2 R0 K2 ["draggerContext"]
  JUMPIFNOT R2 [+38]
  GETTABLEKS R2 R0 K3 ["draggerHandleChanged"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K3 ["draggerHandleChanged"]
  NAMECALL R2 R2 K4 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["selection"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R2 R0 K5 ["selection"]
  GETTABLEKS R4 R1 K0 ["VertexToolBase"]
  NAMECALL R2 R2 K6 ["setVertexToolBase"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["draggerContext"]
  GETTABLEKS R3 R1 K0 ["VertexToolBase"]
  SETTABLEKS R3 R2 K7 ["vertexToolBase"]
  GETTABLEKS R3 R0 K5 ["selection"]
  GETTABLEKS R2 R3 K8 ["SelectionChanged"]
  NAMECALL R2 R2 K9 ["Fire"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R1 K10 ["Mouse"]
  NAMECALL R2 R2 K11 ["setMouse"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["Falloff"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K12 ["Falloff"]
  JUMPIFEQ R2 R3 [+8]
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R1 K12 ["Falloff"]
  NAMECALL R2 R2 K13 ["setFalloff"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K14 ["Radius"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K14 ["Radius"]
  JUMPIFEQ R2 R3 [+8]
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R1 K14 ["Radius"]
  NAMECALL R2 R2 K15 ["setRadius"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K16 ["Mannequin"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K16 ["Mannequin"]
  JUMPIFEQ R2 R3 [+8]
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R1 K16 ["Mannequin"]
  NAMECALL R2 R2 K17 ["setMannequin"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["LuaMeshEditingModule"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["DraggerFramework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K9 ["Implementation"]
  GETTABLEKS R4 R5 K10 ["DraggerContext_PluginImpl"]
  GETTABLEKS R5 R0 K11 ["Components"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K12 ["MeshEditingDragger"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K13 ["DraggerSchema"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R7 K14 ["Selection"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K15 ["PureComponent"]
  LOADK R11 K16 ["FreeformMeshEditingComponent"]
  NAMECALL R9 R9 K17 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K19 ["init"]
  DUPCLOSURE R10 K20 [PROTO_1]
  SETTABLEKS R10 R9 K21 ["didMount"]
  DUPCLOSURE R10 K22 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K23 ["render"]
  DUPCLOSURE R10 K24 [PROTO_3]
  SETTABLEKS R10 R9 K25 ["didUpdate"]
  RETURN R9 1
