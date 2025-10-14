PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["ContextStack"]
  DUPTABLE R3 K2 [{"providers"}]
  NEWTABLE R4 0 2
  GETUPVAL R5 0
  GETUPVAL R6 2
  CALL R5 1 1
  GETUPVAL R6 0
  GETUPVAL R7 3
  CALL R6 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["providers"]
  DUPTABLE R4 K4 [{"FindReplaceAllMainView"}]
  GETUPVAL R5 0
  GETUPVAL R6 4
  DUPTABLE R7 K8 [{"findActivationData", "enabled", "textBoxRef"}]
  GETTABLEKS R8 R0 K5 ["findActivationData"]
  SETTABLEKS R8 R7 K5 ["findActivationData"]
  GETTABLEKS R8 R0 K6 ["enabled"]
  SETTABLEKS R8 R7 K6 ["enabled"]
  GETTABLEKS R8 R0 K7 ["textBoxRef"]
  SETTABLEKS R8 R7 K7 ["textBoxRef"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["FindReplaceAllMainView"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["FindReplaceMainView"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Providers"]
  GETTABLEKS R5 R6 K13 ["ThemeContextProvider"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Providers"]
  GETTABLEKS R6 R7 K14 ["MouseContextProvider"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["createElement"]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R7 1
