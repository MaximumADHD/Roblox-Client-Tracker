PROTO_0:
  DUPTABLE R2 K3 [{"_currentTool", "_tools", "_toolChangedSignal"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["_currentTool"]
  SETTABLEKS R0 R2 K1 ["_tools"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K2 ["_toolChangedSignal"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K6 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_innerCageContext"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_innerCageContext"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_innerCageContext"]
  JUMPIFNOT R2 [+13]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R0 K3 ["_tools"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R0 K0 ["_innerCageContext"]
  NAMECALL R7 R6 K4 ["removeContext"]
  CALL R7 2 0
  FORGLOOP R2 2 [-6]
  SETTABLEKS R1 R0 K0 ["_innerCageContext"]
  JUMPIFNOT R1 [+13]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R0 K3 ["_tools"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R0 K0 ["_innerCageContext"]
  NAMECALL R7 R6 K5 ["addContext"]
  CALL R7 2 0
  FORGLOOP R2 2 [-6]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_outerCageContext"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_outerCageContext"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_outerCageContext"]
  JUMPIFNOT R2 [+13]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R0 K3 ["_tools"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R0 K0 ["_outerCageContext"]
  NAMECALL R7 R6 K4 ["removeContext"]
  CALL R7 2 0
  FORGLOOP R2 2 [-6]
  SETTABLEKS R1 R0 K0 ["_outerCageContext"]
  JUMPIFNOT R1 [+13]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R0 K3 ["_tools"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R0 K0 ["_outerCageContext"]
  NAMECALL R7 R6 K5 ["addContext"]
  CALL R7 2 0
  FORGLOOP R2 2 [-6]
  RETURN R0 0

PROTO_5:
  LOADB R4 0
  NAMECALL R2 R0 K0 ["setCurrentToolEnabled"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_outerCageContext"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_outerCageContext"]
  GETIMPORT R4 K5 [Enum.CageType.Outer]
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["updateCageLocationFromInstance"]
  CALL R2 3 0
  GETTABLEKS R2 R0 K7 ["_innerCageContext"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K7 ["_innerCageContext"]
  GETIMPORT R4 K9 [Enum.CageType.Inner]
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["updateCageLocationFromInstance"]
  CALL R2 3 0
  LOADB R4 1
  NAMECALL R2 R0 K0 ["setCurrentToolEnabled"]
  CALL R2 2 0
  NAMECALL R2 R0 K10 ["getCurrentTool"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  NAMECALL R3 R2 K11 ["getCurrentContext"]
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  NAMECALL R4 R3 K12 ["getMeshDataChangedSignal"]
  CALL R4 1 1
  NAMECALL R4 R4 K13 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_currentToolKey"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K4 [Enum.CageType.Outer]
  JUMPIFNOTEQ R1 R2 [+10]
  NAMECALL R2 R0 K5 ["getCurrentTool"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K6 ["_outerCageContext"]
  NAMECALL R2 R2 K7 ["setCurrentContext"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K9 [Enum.CageType.Inner]
  JUMPIFNOTEQ R1 R2 [+9]
  NAMECALL R2 R0 K5 ["getCurrentTool"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K10 ["_innerCageContext"]
  NAMECALL R2 R2 K7 ["setCurrentContext"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_tools"]
  GETTABLEKS R3 R0 K1 ["_currentToolKey"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_currentToolKey"]
  JUMPIFNOT R1 [+7]
  NAMECALL R1 R0 K1 ["getCurrentTool"]
  CALL R1 1 1
  NAMECALL R1 R1 K2 ["getCurrentContext"]
  CALL R1 1 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_currentToolKey"]
  JUMPIFNOT R2 [+7]
  NAMECALL R2 R0 K1 ["getCurrentTool"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["setEnabled"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  LOADB R4 0
  NAMECALL R2 R0 K0 ["setCurrentToolEnabled"]
  CALL R2 2 0
  JUMPIF R1 [+4]
  LOADNIL R2
  SETTABLEKS R2 R0 K1 ["_currentToolKey"]
  RETURN R0 0
  GETTABLEKS R3 R0 K2 ["_tools"]
  GETTABLE R2 R3 R1
  FASTCALL2K ASSERT R2 K3 [+5]
  MOVE R4 R2
  LOADK R5 K3 ["Tool not found in context."]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  SETTABLEKS R1 R0 K1 ["_currentToolKey"]
  LOADB R5 1
  NAMECALL R3 R0 K0 ["setCurrentToolEnabled"]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  NAMECALL R2 R0 K0 ["getCurrentTool"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  NAMECALL R3 R2 K1 ["getTransparency"]
  CALL R3 1 -1
  RETURN R3 -1
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["_tools"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R9 R1
  NAMECALL R7 R6 K3 ["setTransparency"]
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_13:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["_tools"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["resetCurrentContext"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_toolChangedSignal"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_currentToolKey"]
  JUMPIFNOT R1 [+13]
  NAMECALL R1 R0 K1 ["getCurrentContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["_previousContext"]
  GETTABLEKS R1 R0 K0 ["_currentToolKey"]
  SETTABLEKS R1 R0 K3 ["_previousTool"]
  LOADNIL R3
  NAMECALL R1 R0 K4 ["setCurrentTool"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_previousTool"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R3 R0 K0 ["_previousTool"]
  NAMECALL R1 R0 K1 ["setCurrentTool"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["getCurrentTool"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K3 ["_previousContext"]
  NAMECALL R1 R1 K4 ["setCurrentContext"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_previousTool"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_previousContext"]
  RETURN R0 0

PROTO_17:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["_tools"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R0 K3 ["_innerCageContext"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R8 R0 K3 ["_innerCageContext"]
  NAMECALL R6 R5 K4 ["removeContext"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K5 ["_outerCageContext"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R8 R0 K5 ["_outerCageContext"]
  NAMECALL R6 R5 K4 ["removeContext"]
  CALL R6 2 0
  NAMECALL R6 R5 K6 ["cleanup"]
  CALL R6 1 0
  FORGLOOP R1 2 [-20]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_currentToolKey"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_innerCageContext"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_outerCageContext"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K6 ["ContextServices"]
  GETTABLEKS R3 R4 K7 ["ContextItem"]
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R5 R4 K9 ["Signal"]
  LOADK R8 K10 ["LuaMeshEditingModuleContext"]
  NAMECALL R6 R3 K11 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K12 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K13 ["new"]
  DUPCLOSURE R7 K14 [PROTO_1]
  SETTABLEKS R7 R6 K15 ["getInnerCageContext"]
  DUPCLOSURE R7 K16 [PROTO_2]
  SETTABLEKS R7 R6 K17 ["setInnerCageContext"]
  DUPCLOSURE R7 K18 [PROTO_3]
  SETTABLEKS R7 R6 K19 ["getOuterCageContext"]
  DUPCLOSURE R7 K20 [PROTO_4]
  SETTABLEKS R7 R6 K21 ["setOuterCageContext"]
  DUPCLOSURE R7 K22 [PROTO_5]
  SETTABLEKS R7 R6 K23 ["updateCageLocationsFromInstance"]
  DUPCLOSURE R7 K24 [PROTO_6]
  SETTABLEKS R7 R6 K25 ["changeEditingCage"]
  DUPCLOSURE R7 K26 [PROTO_7]
  SETTABLEKS R7 R6 K27 ["getCurrentTool"]
  DUPCLOSURE R7 K28 [PROTO_8]
  SETTABLEKS R7 R6 K29 ["getCurrentContext"]
  DUPCLOSURE R7 K30 [PROTO_9]
  SETTABLEKS R7 R6 K31 ["setCurrentToolEnabled"]
  DUPCLOSURE R7 K32 [PROTO_10]
  SETTABLEKS R7 R6 K33 ["setCurrentTool"]
  DUPCLOSURE R7 K34 [PROTO_11]
  SETTABLEKS R7 R6 K35 ["getTransparency"]
  DUPCLOSURE R7 K36 [PROTO_12]
  SETTABLEKS R7 R6 K37 ["setTransparency"]
  DUPCLOSURE R7 K38 [PROTO_13]
  SETTABLEKS R7 R6 K39 ["resetTools"]
  DUPCLOSURE R7 K40 [PROTO_14]
  SETTABLEKS R7 R6 K41 ["getToolChangedSignal"]
  DUPCLOSURE R7 K42 [PROTO_15]
  SETTABLEKS R7 R6 K43 ["disableEditing"]
  DUPCLOSURE R7 K44 [PROTO_16]
  SETTABLEKS R7 R6 K45 ["enableEditing"]
  DUPCLOSURE R7 K46 [PROTO_17]
  SETTABLEKS R7 R6 K47 ["cleanup"]
  RETURN R6 1
