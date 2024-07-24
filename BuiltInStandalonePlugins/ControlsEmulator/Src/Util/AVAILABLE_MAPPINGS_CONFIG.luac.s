MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K6 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K10 ["L Thumbstick Click"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K6 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 1
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K11 ["L Thumbstick Up"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K6 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 255
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K12 ["L Thumbstick Down"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K6 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K13 ["L Thumbstick Right"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K6 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 255
  LOADN R4 0
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K14 ["L Thumbstick Left"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K16 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K17 ["R Thumbstick Click"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K16 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 1
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K18 ["R Thumbstick Up"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K16 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 255
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K19 ["R Thumbstick Down"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K16 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K20 ["R Thumbstick Right"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K16 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 255
  LOADN R4 0
  LOADN R5 0
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K21 ["R Thumbstick Left"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K23 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K24 ["DPad Up"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K26 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K27 ["DPad Left"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K29 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K30 ["DPad Right"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K32 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K33 ["DPad Down"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K35 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K36 ["X"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K38 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K39 ["Y"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K41 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K42 ["B"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K44 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K45 ["A"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K47 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K48 ["L1"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K50 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K51 ["R1"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K53 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K54 ["L2"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K56 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K57 ["R2"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K59 [Enum.KeyCode.ButtonL3]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K60 ["L3"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K62 [Enum.KeyCode.ButtonR3]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K63 ["R3"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K65 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K66 ["Start"]
  DUPTABLE R1 K2 [{"keyCode", "direction"}]
  GETIMPORT R2 K68 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K0 ["keyCode"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K9 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["direction"]
  SETTABLEKS R1 R0 K69 ["Select"]
  RETURN R0 1
