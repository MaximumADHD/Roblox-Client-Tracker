PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["navigation"]
  DUPTABLE R2 K3 [{"isFocused"}]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R3 R1 K2 ["isFocused"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isFocused"]
  SETTABLEKS R2 R0 K4 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["navigation"]
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K2 ["withNavigationFocus can only be used within the view hierarchy of a navigator. The wrapped component cannot access 'navigation' from props or context."]
  CALL R2 2 0
  GETTABLEKS R2 R1 K3 ["addListener"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["DidFocus"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_didFocusListener"]
  GETTABLEKS R2 R1 K3 ["addListener"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["WillBlur"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_willBlurListener"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_didFocusListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_didFocusListener"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_didFocusListener"]
  GETTABLEKS R1 R0 K2 ["_willBlurListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_willBlurListener"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_willBlurListener"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isFocused"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["navigation"]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["render"]
  MOVE R4 R3
  MOVE R5 R2
  MOVE R6 R1
  CALL R4 2 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADK R3 K0 ["withNavigationFocus must be passed a render prop"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K3 [{"render"}]
  SETTABLEKS R0 R3 K2 ["render"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Roact"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["NavigationEvents"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["AppNavigationContext"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K8 ["utils"]
  GETTABLEKS R4 R5 K9 ["validate"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K10 ["Component"]
  LOADK R6 K11 ["NavigationFocusComponent"]
  NAMECALL R4 R4 K12 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_0]
  SETTABLEKS R5 R4 K14 ["init"]
  DUPCLOSURE R5 K15 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K16 ["didMount"]
  DUPCLOSURE R5 K17 [PROTO_4]
  SETTABLEKS R5 R4 K18 ["willUnmount"]
  DUPCLOSURE R5 K19 [PROTO_5]
  SETTABLEKS R5 R4 K20 ["render"]
  GETTABLEKS R5 R2 K21 ["connect"]
  MOVE R6 R4
  CALL R5 1 1
  MOVE R4 R5
  NEWCLOSURE R5 P4
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE REF R4
  CLOSEUPVALS R4
  RETURN R5 1
