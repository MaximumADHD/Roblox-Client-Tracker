PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["No PopoverProvider found for Popover"]
  NAMECALL R1 R1 K1 ["warning"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Utility"]
  GETTABLEKS R4 R5 K9 ["Logger"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createContext"]
  DUPTABLE R5 K14 [{"anchor", "setAnchor", "isOpen"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["anchor"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K12 ["setAnchor"]
  LOADB R6 0
  SETTABLEKS R6 R5 K13 ["isOpen"]
  CALL R4 1 -1
  RETURN R4 -1
