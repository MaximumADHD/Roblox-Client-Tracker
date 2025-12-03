MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["t"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["interface"]
  DUPTABLE R3 K11 [{"nextPageCursor", "data"}]
  GETTABLEKS R4 R1 K12 ["optional"]
  GETTABLEKS R5 R1 K13 ["string"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["nextPageCursor"]
  GETTABLEKS R4 R1 K14 ["array"]
  GETTABLEKS R5 R1 K8 ["interface"]
  DUPTABLE R6 K19 [{"id", "universeId", "name", "description"}]
  GETTABLEKS R7 R1 K20 ["number"]
  SETTABLEKS R7 R6 K15 ["id"]
  GETTABLEKS R7 R1 K20 ["number"]
  SETTABLEKS R7 R6 K16 ["universeId"]
  GETTABLEKS R7 R1 K13 ["string"]
  SETTABLEKS R7 R6 K17 ["name"]
  GETTABLEKS R7 R1 K13 ["string"]
  SETTABLEKS R7 R6 K18 ["description"]
  CALL R5 1 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["data"]
  CALL R2 1 1
  DUPTABLE R3 K22 [{"validate"}]
  SETTABLEKS R2 R3 K21 ["validate"]
  RETURN R3 1
