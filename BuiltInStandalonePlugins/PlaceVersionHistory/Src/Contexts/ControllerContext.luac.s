MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Hooks"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["usePageController"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K11 ["useContributorsController"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K12 ["usePlacesController"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["createContext"]
  NEWTABLE R7 0 0
  CALL R6 1 -1
  RETURN R6 -1
