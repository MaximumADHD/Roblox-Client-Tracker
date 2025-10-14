MAIN:
  PREPVARARGS 0
  LOADK R1 K0 ["Compared values serialize to the same structure.
"]
  LOADK R2 K1 ["Printing internal object structure without calling `toJSON` instead."]
  CONCAT R0 R1 R2
  DUPTABLE R1 K4 [{"NO_DIFF_MESSAGE", "SIMILAR_MESSAGE"}]
  LOADK R2 K5 ["Compared values have no visual difference."]
  SETTABLEKS R2 R1 K2 ["NO_DIFF_MESSAGE"]
  SETTABLEKS R0 R1 K3 ["SIMILAR_MESSAGE"]
  RETURN R1 1
