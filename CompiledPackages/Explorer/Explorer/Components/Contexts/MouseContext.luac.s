PROTO_0:
  GETIMPORT R0 K2 [Vector2.new]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_1:
  LOADB R0 0
  RETURN R0 1

PROTO_2:
  LOADK R0 K0 [0.5]
  RETURN R0 1

PROTO_3:
  DUPTABLE R1 K6 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
  GETTABLEKS R2 R0 K0 ["getMousePosition"]
  SETTABLEKS R2 R1 K0 ["getMousePosition"]
  GETTABLEKS R2 R0 K1 ["mouseMoved"]
  SETTABLEKS R2 R1 K1 ["mouseMoved"]
  GETTABLEKS R2 R0 K2 ["mouseDownChanged"]
  SETTABLEKS R2 R1 K2 ["mouseDownChanged"]
  GETTABLEKS R2 R0 K3 ["isMouseDown"]
  SETTABLEKS R2 R1 K3 ["isMouseDown"]
  GETTABLEKS R2 R0 K4 ["isMouseHoverEnabledObservable"]
  SETTABLEKS R2 R1 K4 ["isMouseHoverEnabledObservable"]
  GETTABLEKS R2 R0 K5 ["getMouseDoubleClickTime"]
  SETTABLEKS R2 R1 K5 ["getMouseDoubleClickTime"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Provider"]
  DUPTABLE R4 K9 [{"value"}]
  SETTABLEKS R1 R4 K8 ["value"]
  GETTABLEKS R5 R0 K10 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetMouseLocation"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  GETIMPORT R3 K7 [Vector2.new]
  GETTABLEKS R5 R0 K8 ["Position"]
  GETTABLEKS R4 R5 K9 ["X"]
  GETTABLEKS R6 R0 K8 ["Position"]
  GETTABLEKS R5 R6 K10 ["Y"]
  CALL R3 2 -1
  NAMECALL R1 R1 K11 ["Fire"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K5 [Enum.UserInputType.Touch]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["current"]
  LOADB R3 1
  NAMECALL R1 R1 K7 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K5 [Enum.UserInputType.Touch]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["current"]
  LOADB R3 0
  NAMECALL R1 R1 K7 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  NAMECALL R0 R0 K4 ["IsMouseButtonPressed"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  LOADK R0 K0 [0.5]
  RETURN R0 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useRef"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["new"]
  CALL R3 0 -1
  CALL R2 -1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useCallback"]
  DUPCLOSURE R4 K3 [PROTO_4]
  CAPTURE UPVAL U2
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R4 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["InputChanged"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NEWTABLE R7 0 0
  CALL R4 3 0
  GETUPVAL R4 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["InputBegan"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R4 3 0
  GETUPVAL R4 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["InputEnded"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R4 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useCallback"]
  DUPCLOSURE R5 K7 [PROTO_8]
  CAPTURE UPVAL U2
  NEWTABLE R6 0 0
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["useCallback"]
  DUPCLOSURE R6 K8 [PROTO_9]
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R6 4
  GETUPVAL R7 5
  DUPTABLE R8 K15 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
  SETTABLEKS R3 R8 K9 ["getMousePosition"]
  GETTABLEKS R9 R1 K16 ["current"]
  SETTABLEKS R9 R8 K10 ["mouseMoved"]
  GETTABLEKS R9 R2 K16 ["current"]
  SETTABLEKS R9 R8 K11 ["mouseDownChanged"]
  SETTABLEKS R4 R8 K12 ["isMouseDown"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K17 ["create"]
  LOADB R10 1
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["isMouseHoverEnabledObservable"]
  SETTABLEKS R5 R8 K14 ["getMouseDoubleClickTime"]
  GETTABLEKS R9 R0 K18 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Explorer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Observable"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K12 ["Parent"]
  GETTABLEKS R4 R5 K13 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K12 ["Parent"]
  GETTABLEKS R5 R6 K14 ["Signal"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K15 ["Hooks"]
  GETTABLEKS R6 R7 K16 ["useEventConnection"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K17 ["createElement"]
  DUPTABLE R7 K24 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
  DUPCLOSURE R8 K25 [PROTO_0]
  SETTABLEKS R8 R7 K18 ["getMousePosition"]
  GETTABLEKS R8 R4 K26 ["new"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K19 ["mouseMoved"]
  GETTABLEKS R8 R4 K26 ["new"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K20 ["mouseDownChanged"]
  DUPCLOSURE R8 K27 [PROTO_1]
  SETTABLEKS R8 R7 K21 ["isMouseDown"]
  GETTABLEKS R8 R2 K28 ["create"]
  LOADB R9 1
  CALL R8 1 1
  SETTABLEKS R8 R7 K22 ["isMouseHoverEnabledObservable"]
  DUPCLOSURE R8 K29 [PROTO_2]
  SETTABLEKS R8 R7 K23 ["getMouseDoubleClickTime"]
  GETTABLEKS R8 R3 K30 ["createContext"]
  MOVE R9 R7
  CALL R8 1 1
  DUPCLOSURE R9 K31 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPCLOSURE R10 K32 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R2
  DUPTABLE R11 K36 [{"Context", "Provider", "StandardProvider"}]
  SETTABLEKS R8 R11 K33 ["Context"]
  SETTABLEKS R9 R11 K34 ["Provider"]
  SETTABLEKS R10 R11 K35 ["StandardProvider"]
  RETURN R11 1
