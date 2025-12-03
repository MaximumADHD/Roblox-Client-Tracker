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
  DUPTABLE R3 K12 [{"hasMore", "nextCursor", "placeVersions"}]
  GETTABLEKS R4 R1 K13 ["boolean"]
  SETTABLEKS R4 R3 K9 ["hasMore"]
  GETTABLEKS R4 R1 K14 ["optional"]
  GETTABLEKS R5 R1 K15 ["string"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["nextCursor"]
  GETTABLEKS R4 R1 K14 ["optional"]
  GETTABLEKS R5 R1 K16 ["array"]
  GETTABLEKS R6 R1 K8 ["interface"]
  DUPTABLE R7 K26 [{"version", "title", "description", "contributors", "createdBy", "saveType", "isPublished", "hasNotes", "createdTime"}]
  GETTABLEKS R8 R1 K15 ["string"]
  SETTABLEKS R8 R7 K17 ["version"]
  GETTABLEKS R8 R1 K14 ["optional"]
  GETTABLEKS R9 R1 K15 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["title"]
  GETTABLEKS R8 R1 K14 ["optional"]
  GETTABLEKS R9 R1 K15 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["description"]
  GETTABLEKS R8 R1 K14 ["optional"]
  GETTABLEKS R9 R1 K16 ["array"]
  GETTABLEKS R10 R1 K27 ["number"]
  CALL R9 1 1
  CALL R8 1 1
  SETTABLEKS R8 R7 K20 ["contributors"]
  GETTABLEKS R8 R1 K14 ["optional"]
  GETTABLEKS R9 R1 K28 ["integer"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K21 ["createdBy"]
  GETTABLEKS R8 R1 K29 ["intersection"]
  GETTABLEKS R9 R1 K28 ["integer"]
  GETTABLEKS R10 R1 K30 ["numberConstrained"]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["saveType"]
  GETTABLEKS R8 R1 K13 ["boolean"]
  SETTABLEKS R8 R7 K23 ["isPublished"]
  GETTABLEKS R8 R1 K13 ["boolean"]
  SETTABLEKS R8 R7 K24 ["hasNotes"]
  GETTABLEKS R8 R1 K15 ["string"]
  SETTABLEKS R8 R7 K25 ["createdTime"]
  CALL R6 1 1
  CALL R5 1 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["placeVersions"]
  CALL R2 1 1
  DUPTABLE R3 K32 [{"validate"}]
  SETTABLEKS R2 R3 K31 ["validate"]
  RETURN R3 1
