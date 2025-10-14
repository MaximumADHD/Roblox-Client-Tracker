PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  LOADB R1 0
  LOADK R3 K0 ["The current renderer does not support test selectors. "]
  LOADK R4 K1 ["This error is likely caused by a bug in React. "]
  LOADK R5 K2 ["Please file an issue."]
  CONCAT R2 R3 R5
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["invariant"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  CAPTURE VAL R0
  DUPTABLE R2 K15 [{"supportsTestSelectors", "findFiberRoot", "getBoundingRect", "getTextContent", "isHiddenSubtree", "matchAccessibilityRole", "setFocusIfFocusable", "setupIntersectionObserver"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["supportsTestSelectors"]
  SETTABLEKS R1 R2 K8 ["findFiberRoot"]
  SETTABLEKS R1 R2 K9 ["getBoundingRect"]
  SETTABLEKS R1 R2 K10 ["getTextContent"]
  SETTABLEKS R1 R2 K11 ["isHiddenSubtree"]
  SETTABLEKS R1 R2 K12 ["matchAccessibilityRole"]
  SETTABLEKS R1 R2 K13 ["setFocusIfFocusable"]
  SETTABLEKS R1 R2 K14 ["setupIntersectionObserver"]
  RETURN R2 1
