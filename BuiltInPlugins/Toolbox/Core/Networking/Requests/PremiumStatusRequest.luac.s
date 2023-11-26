PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETTABLEKS R2 R1 K1 ["subscriptionProductModel"]
  JUMPIFEQKNIL R2 [+38]
  GETTABLEKS R3 R1 K1 ["subscriptionProductModel"]
  GETTABLEKS R2 R3 K2 ["subscriptionTypeName"]
  JUMPIFEQKNIL R2 [+32]
  GETTABLEKS R4 R1 K1 ["subscriptionProductModel"]
  GETTABLEKS R3 R4 K3 ["robuxStipendAmount"]
  JUMPIFEQKNIL R3 [+6]
  GETTABLEKS R3 R1 K1 ["subscriptionProductModel"]
  GETTABLEKS R2 R3 K3 ["robuxStipendAmount"]
  JUMP [+1]
  LOADN R2 0
  GETTABLEKS R4 R1 K1 ["subscriptionProductModel"]
  GETTABLEKS R3 R4 K2 ["subscriptionTypeName"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  LOADK R5 K4 ["Roblox"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K6 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  JUMP [+1]
  MOVE R4 R3
  LOADB R5 1
  MOVE R6 R4
  RETURN R5 2
  LOADB R2 1
  LOADK R3 K7 ["NoPremium"]
  RETURN R2 2

PROTO_1:
  LOADB R1 0
  LOADK R2 K0 ["NoPremium"]
  RETURN R1 2

PROTO_2:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  DUPCLOSURE R3 K1 [PROTO_1]
  MOVE R6 R1
  NAMECALL R4 R0 K2 ["getPremiumStatus"]
  CALL R4 2 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K3 ["andThen"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["NetworkError"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Core"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["DebugFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R2 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K12 ["getFFlagEnableRobuxStipendPremiumCheck"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_2]
  CAPTURE VAL R5
  RETURN R6 1
