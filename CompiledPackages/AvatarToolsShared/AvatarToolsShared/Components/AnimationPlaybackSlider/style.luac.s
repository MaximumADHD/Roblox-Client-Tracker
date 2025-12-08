MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
  LOADK R1 K6 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
  SETTABLEKS R1 R0 K0 ["PlayImage"]
  LOADK R1 K7 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
  SETTABLEKS R1 R0 K1 ["PauseImage"]
  LOADN R1 20
  SETTABLEKS R1 R0 K2 ["PlayButtonWidth"]
  LOADN R1 60
  SETTABLEKS R1 R0 K3 ["PlayTimeLabelWidth"]
  LOADN R1 24
  SETTABLEKS R1 R0 K4 ["Padding"]
  RETURN R0 1
