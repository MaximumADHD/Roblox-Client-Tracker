MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"PopupMessageSize", "Spacing", "Padding"}]
  GETIMPORT R1 K6 [Vector2.new]
  LOADN R2 200
  LOADN R3 100
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["PopupMessageSize"]
  LOADN R1 15
  SETTABLEKS R1 R0 K1 ["Spacing"]
  DUPTABLE R1 K9 [{"Left", "Right"}]
  LOADN R2 12
  SETTABLEKS R2 R1 K7 ["Left"]
  LOADN R2 12
  SETTABLEKS R2 R1 K8 ["Right"]
  SETTABLEKS R1 R0 K2 ["Padding"]
  RETURN R0 1
