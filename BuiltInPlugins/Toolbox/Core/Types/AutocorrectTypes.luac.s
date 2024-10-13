MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPTABLE R1 K3 [{"OriginalUserQuery", "CorrectedQuery", "ReversionToUserQuery"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["OriginalUserQuery"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["CorrectedQuery"]
  LOADN R2 2
  SETTABLEKS R2 R1 K2 ["ReversionToUserQuery"]
  SETTABLEKS R1 R0 K4 ["QuerySource"]
  DUPTABLE R1 K8 [{"NoCorrection", "CorrectionAvailable", "CorrectionAccepted"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["NoCorrection"]
  LOADN R2 1
  SETTABLEKS R2 R1 K6 ["CorrectionAvailable"]
  LOADN R2 2
  SETTABLEKS R2 R1 K7 ["CorrectionAccepted"]
  SETTABLEKS R1 R0 K9 ["AutocorrectResponseState"]
  RETURN R0 1
