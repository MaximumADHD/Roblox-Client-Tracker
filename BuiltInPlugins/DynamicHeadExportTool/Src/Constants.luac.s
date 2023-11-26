MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPTABLE R1 K4 [{"Head", "Accessory", "Mood", "Export"}]
  LOADK R2 K0 ["Head"]
  SETTABLEKS R2 R1 K0 ["Head"]
  LOADK R2 K1 ["Accessory"]
  SETTABLEKS R2 R1 K1 ["Accessory"]
  LOADK R2 K2 ["Mood"]
  SETTABLEKS R2 R1 K2 ["Mood"]
  LOADK R2 K3 ["Export"]
  SETTABLEKS R2 R1 K3 ["Export"]
  SETTABLEKS R1 R0 K5 ["Modes"]
  DUPTABLE R1 K12 [{"SelectRig", "InputSurfaceAppearanceIds", "InputAccessoryType", "InputAnimationId", "Error", "OwnershipTransfer"}]
  LOADK R2 K6 ["SelectRig"]
  SETTABLEKS R2 R1 K6 ["SelectRig"]
  LOADK R2 K7 ["InputSurfaceAppearanceIds"]
  SETTABLEKS R2 R1 K7 ["InputSurfaceAppearanceIds"]
  LOADK R2 K8 ["InputAccessoryType"]
  SETTABLEKS R2 R1 K8 ["InputAccessoryType"]
  LOADK R2 K9 ["InputAnimationId"]
  SETTABLEKS R2 R1 K9 ["InputAnimationId"]
  LOADK R2 K10 ["Error"]
  SETTABLEKS R2 R1 K10 ["Error"]
  LOADK R2 K11 ["OwnershipTransfer"]
  SETTABLEKS R2 R1 K11 ["OwnershipTransfer"]
  SETTABLEKS R1 R0 K13 ["Screens"]
  DUPTABLE R1 K18 [{"ImportedRthroRig", "ImportedRthroSlenderRig", "ImportedR15Rig", "FBXImportGeneric"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K14 ["ImportedRthroRig"]
  LOADB R2 1
  SETTABLEKS R2 R1 K15 ["ImportedRthroSlenderRig"]
  LOADB R2 1
  SETTABLEKS R2 R1 K16 ["ImportedR15Rig"]
  LOADB R2 1
  SETTABLEKS R2 R1 K17 ["FBXImportGeneric"]
  SETTABLEKS R1 R0 K19 ["AvatarImporterRigNames"]
  GETIMPORT R1 K22 [Vector2.new]
  LOADN R2 128
  LOADN R3 224
  CALL R1 2 1
  SETTABLEKS R1 R0 K23 ["WindowSize"]
  LOADN R1 15
  SETTABLEKS R1 R0 K24 ["Padding"]
  LOADK R1 K25 ["DynamicHeadExportTool"]
  SETTABLEKS R1 R0 K26 ["Tag"]
  RETURN R0 1
