MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["fromAction"]
  GETTABLEKS R4 R1 K11 ["fromSetting"]
  NEWTABLE R5 0 4
  DUPTABLE R6 K19 [{"Type", "Id", "Setting", "DefaultAction", "Size", "ShowSettingOptions", "IconOnly"}]
  LOADK R7 K20 ["SplitButton"]
  SETTABLEKS R7 R6 K12 ["Type"]
  LOADK R7 K21 ["PlayControls/1"]
  SETTABLEKS R7 R6 K13 ["Id"]
  MOVE R7 R4
  LOADK R8 K22 ["RunTools"]
  LOADK R9 K23 ["RunMode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Setting"]
  MOVE R7 R3
  LOADK R8 K22 ["RunTools"]
  LOADK R9 K24 ["Play"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["DefaultAction"]
  LOADK R7 K25 ["Small"]
  SETTABLEKS R7 R6 K16 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["ShowSettingOptions"]
  LOADB R7 1
  SETTABLEKS R7 R6 K18 ["IconOnly"]
  DUPTABLE R7 K27 [{"Type", "Id", "ActionGroup", "Size", "IconOnly"}]
  LOADK R8 K28 ["IconButton"]
  SETTABLEKS R8 R7 K12 ["Type"]
  LOADK R8 K29 ["PlayControls/2"]
  SETTABLEKS R8 R7 K13 ["Id"]
  NEWTABLE R8 0 2
  MOVE R9 R3
  LOADK R10 K22 ["RunTools"]
  LOADK R11 K30 ["Pause"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K22 ["RunTools"]
  LOADK R12 K31 ["Resume"]
  CALL R10 2 -1
  SETLIST R8 R9 -1 [1]
  SETTABLEKS R8 R7 K26 ["ActionGroup"]
  LOADK R8 K25 ["Small"]
  SETTABLEKS R8 R7 K16 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["IconOnly"]
  DUPTABLE R8 K27 [{"Type", "Id", "ActionGroup", "Size", "IconOnly"}]
  LOADK R9 K28 ["IconButton"]
  SETTABLEKS R9 R8 K12 ["Type"]
  LOADK R9 K32 ["PlayControls/3"]
  SETTABLEKS R9 R8 K13 ["Id"]
  NEWTABLE R9 0 2
  MOVE R10 R3
  LOADK R11 K22 ["RunTools"]
  LOADK R12 K33 ["Stop"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K22 ["RunTools"]
  LOADK R13 K34 ["CleanupTeamTest"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  SETTABLEKS R9 R8 K26 ["ActionGroup"]
  LOADK R9 K25 ["Small"]
  SETTABLEKS R9 R8 K16 ["Size"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["IconOnly"]
  DUPTABLE R9 K27 [{"Type", "Id", "ActionGroup", "Size", "IconOnly"}]
  LOADK R10 K28 ["IconButton"]
  SETTABLEKS R10 R9 K12 ["Type"]
  LOADK R10 K35 ["PlayControls/4"]
  SETTABLEKS R10 R9 K13 ["Id"]
  NEWTABLE R10 0 2
  MOVE R11 R3
  LOADK R12 K22 ["RunTools"]
  LOADK R13 K36 ["ToggleDM"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K22 ["RunTools"]
  LOADK R14 K37 ["CleanupServerAndClients"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  SETTABLEKS R10 R9 K26 ["ActionGroup"]
  LOADK R10 K25 ["Small"]
  SETTABLEKS R10 R9 K16 ["Size"]
  LOADB R10 1
  SETTABLEKS R10 R9 K18 ["IconOnly"]
  SETLIST R5 R6 4 [1]
  RETURN R5 1
