MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"SelectedBorderColor", "UnselectedBorderColor", "SelectedBorderMode", "UnselectedBorderMode", "BorderSizePixel"}]
  GETIMPORT R1 K8 [Color3.new]
  LOADN R2 1
  LOADN R3 1
  LOADN R4 1
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["SelectedBorderColor"]
  GETIMPORT R1 K8 [Color3.new]
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["UnselectedBorderColor"]
  GETIMPORT R1 K12 [Enum.BorderMode.Middle]
  SETTABLEKS R1 R0 K2 ["SelectedBorderMode"]
  GETIMPORT R1 K14 [Enum.BorderMode.Inset]
  SETTABLEKS R1 R0 K3 ["UnselectedBorderMode"]
  LOADN R1 2
  SETTABLEKS R1 R0 K4 ["BorderSizePixel"]
  RETURN R0 1
