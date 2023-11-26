PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R4 K7 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K1 ["Layout"]
  GETIMPORT R4 K9 [Enum.VerticalAlignment.Top]
  SETTABLEKS R4 R3 K2 ["VerticalAlignment"]
  DUPTABLE R4 K12 [{"TagSettingsToggleButton", "TagSettingsList"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["TagSettingsToggleButton"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K14 [{"LayoutOrder"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K13 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["TagSettingsList"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["TagSettingsListView"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["TagSettingsToggleButton"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K12 ["PureComponent"]
  LOADK R9 K13 ["TagSettingsPane"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K16 ["render"]
  RETURN R7 1
