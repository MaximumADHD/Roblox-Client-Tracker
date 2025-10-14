PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"draggerType"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["VertexToolBase"]
  NAMECALL R3 R3 K4 ["getCurrentHandle"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["draggerType"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R1 K0 ["getDraggerHandleChangedSignal"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["draggerHandleChanged"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K2 ["selection"]
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  GETTABLEKS R4 R1 K3 ["Mouse"]
  NAMECALL R2 R2 K4 ["setMouse"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R3 R1 K5 ["Plugin"]
  GETIMPORT R4 K7 [game]
  GETIMPORT R5 K9 [settings]
  CALL R5 0 1
  GETTABLEKS R6 R0 K2 ["selection"]
  CALL R2 4 1
  SETTABLEKS R2 R0 K10 ["draggerContext"]
  GETTABLEKS R2 R0 K10 ["draggerContext"]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  SETTABLEKS R3 R2 K11 ["vertexEditingTool"]
  DUPTABLE R2 K13 [{"draggerType"}]
  GETTABLEKS R3 R1 K1 ["VertexToolBase"]
  NAMECALL R3 R3 K14 ["getCurrentHandle"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K12 ["draggerType"]
  SETTABLEKS R2 R0 K15 ["state"]
  GETTABLEKS R2 R1 K1 ["VertexToolBase"]
  NAMECALL R3 R2 K16 ["getDraggerHandleChangedSignal"]
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K17 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K18 ["draggerHandleChanged"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Mouse"]
  GETTABLEKS R4 R2 K3 ["draggerType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K7 [{"Mouse", "DraggerType", "Context"}]
  SETTABLEKS R3 R7 K2 ["Mouse"]
  SETTABLEKS R4 R7 K5 ["DraggerType"]
  GETTABLEKS R8 R0 K8 ["draggerContext"]
  SETTABLEKS R8 R7 K6 ["Context"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["VertexToolBase"]
  JUMPIFEQ R2 R3 [+66]
  GETTABLEKS R2 R0 K2 ["selection"]
  JUMPIFNOT R2 [+62]
  GETTABLEKS R2 R0 K3 ["draggerContext"]
  JUMPIFNOT R2 [+59]
  GETTABLEKS R2 R0 K4 ["draggerHandleChanged"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K4 ["draggerHandleChanged"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["selection"]
  GETTABLEKS R4 R1 K0 ["VertexToolBase"]
  NAMECALL R2 R2 K6 ["setVertexToolBase"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["draggerContext"]
  GETTABLEKS R3 R1 K0 ["VertexToolBase"]
  SETTABLEKS R3 R2 K7 ["vertexToolBase"]
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["VertexToolBase"]
  NAMECALL R4 R4 K8 ["getCurrentHandle"]
  CALL R4 1 -1
  NAMECALL R2 R2 K9 ["setCurrentHandle"]
  CALL R2 -1 0
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  GETTABLEKS R4 R1 K10 ["Mouse"]
  NAMECALL R2 R2 K11 ["setMouse"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K2 ["selection"]
  GETTABLEKS R2 R3 K12 ["SelectionChanged"]
  NAMECALL R2 R2 K13 ["Fire"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K0 ["VertexToolBase"]
  NAMECALL R3 R2 K14 ["getDraggerHandleChangedSignal"]
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K15 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["draggerHandleChanged"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["draggerHandleChanged"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["draggerHandleChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["DraggerFramework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K7 ["Implementation"]
  GETTABLEKS R4 R5 K8 ["DraggerContext_PluginImpl"]
  GETTABLEKS R5 R0 K9 ["Components"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K10 ["MeshEditingDragger"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K11 ["DraggerSchema"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K12 ["Selection"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K13 ["PureComponent"]
  LOADK R11 K14 ["MeshEditingComponent"]
  NAMECALL R9 R9 K15 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K16 [PROTO_1]
  DUPCLOSURE R11 K17 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R11 R9 K18 ["init"]
  DUPCLOSURE R11 K19 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R11 R9 K20 ["render"]
  DUPCLOSURE R11 K21 [PROTO_4]
  SETTABLEKS R11 R9 K22 ["willUpdate"]
  DUPCLOSURE R11 K23 [PROTO_5]
  SETTABLEKS R11 R9 K24 ["willUnmount"]
  RETURN R9 1
