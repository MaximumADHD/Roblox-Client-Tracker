PROTO_0:
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+33]
  GETTABLEKS R2 R0 K3 ["AnchorPoint"]
  SETTABLEKS R2 R1 K3 ["AnchorPoint"]
  GETTABLEKS R2 R0 K4 ["LayoutOrder"]
  SETTABLEKS R2 R1 K4 ["LayoutOrder"]
  GETTABLEKS R2 R0 K5 ["Position"]
  SETTABLEKS R2 R1 K5 ["Position"]
  GETTABLEKS R2 R0 K6 ["Visible"]
  SETTABLEKS R2 R1 K6 ["Visible"]
  GETTABLEKS R2 R0 K7 ["ZIndex"]
  SETTABLEKS R2 R1 K7 ["ZIndex"]
  GETTABLEKS R2 R0 K8 ["onAbsoluteSizeChanged"]
  SETTABLEKS R2 R1 K8 ["onAbsoluteSizeChanged"]
  GETTABLEKS R2 R0 K9 ["onAbsolutePositionChanged"]
  SETTABLEKS R2 R1 K9 ["onAbsolutePositionChanged"]
  GETTABLEKS R2 R0 K10 ["testId"]
  SETTABLEKS R2 R1 K10 ["testId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1
