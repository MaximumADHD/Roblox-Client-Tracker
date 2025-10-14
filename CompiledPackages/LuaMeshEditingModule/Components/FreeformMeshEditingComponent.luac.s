PROTO_0:
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K2 ["selection"]
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  GETTABLEKS R4 R1 K3 ["Mouse"]
  NAMECALL R2 R2 K4 ["setMouse"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  GETTABLEKS R4 R1 K5 ["Radius"]
  NAMECALL R2 R2 K6 ["setRadius"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  GETTABLEKS R4 R1 K7 ["Falloff"]
  NAMECALL R2 R2 K8 ["setFalloff"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  GETTABLEKS R4 R1 K9 ["Mannequin"]
  NAMECALL R2 R2 K10 ["setDummy"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R3 R1 K11 ["Plugin"]
  GETIMPORT R4 K13 [game]
  GETIMPORT R5 K15 [settings]
  CALL R5 0 1
  GETTABLEKS R6 R0 K2 ["selection"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K16 ["draggerContext"]
  GETTABLEKS R2 R0 K16 ["draggerContext"]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  SETTABLEKS R3 R2 K17 ["vertexEditingTool"]
  GETTABLEKS R2 R1 K18 ["OnChangeSelectedPositions"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  GETTABLEKS R2 R3 K19 ["selectedPositionsChanged"]
  GETTABLEKS R4 R1 K18 ["OnChangeSelectedPositions"]
  NAMECALL R2 R2 K20 ["Connect"]
  CALL R2 2 0
  DUPCLOSURE R2 K21 [PROTO_0]
  GETTABLEKS R3 R0 K16 ["draggerContext"]
  SETTABLEKS R2 R3 K22 ["shouldExtendSelection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  LOADB R3 1
  NAMECALL R1 R1 K2 ["Activate"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Mouse"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"Mouse", "DraggerType", "Context"}]
  SETTABLEKS R2 R5 K1 ["Mouse"]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["DraggerType"]
  GETTABLEKS R6 R0 K6 ["draggerContext"]
  SETTABLEKS R6 R5 K4 ["Context"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
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
  NAMECALL R2 R2 K17 ["setDummy"]
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
  DUPCLOSURE R10 K18 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K19 ["init"]
  DUPCLOSURE R10 K20 [PROTO_2]
  SETTABLEKS R10 R9 K21 ["didMount"]
  DUPCLOSURE R10 K22 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K23 ["render"]
  DUPCLOSURE R10 K24 [PROTO_4]
  SETTABLEKS R10 R9 K25 ["didUpdate"]
  RETURN R9 1
