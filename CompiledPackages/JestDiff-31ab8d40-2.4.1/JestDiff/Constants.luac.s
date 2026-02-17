MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"NO_DIFF_MESSAGE", "SIMILAR_MESSAGE"}]
  LOADK R1 K3 ["Compared values have no visual difference."]
  SETTABLEKS R1 R0 K0 ["NO_DIFF_MESSAGE"]
  LOADK R1 K4 ["Compared values serialize to the same structure.
Printing internal object structure without calling `toJSON` instead."]
  SETTABLEKS R1 R0 K1 ["SIMILAR_MESSAGE"]
  RETURN R0 1
