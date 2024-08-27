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
  NEWTABLE R4 0 4
  DUPTABLE R5 K16 [{"Id", "Type", "Action", "Size", "Style"}]
  LOADK R6 K17 ["UpdateAvailable"]
  SETTABLEKS R6 R5 K11 ["Id"]
  LOADK R6 K18 ["Button"]
  SETTABLEKS R6 R5 K12 ["Type"]
  MOVE R6 R3
  LOADK R7 K17 ["UpdateAvailable"]
  LOADK R8 K19 ["Toggle"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["Action"]
  LOADK R6 K20 ["Small"]
  SETTABLEKS R6 R5 K14 ["Size"]
  LOADK R6 K21 ["Outline"]
  SETTABLEKS R6 R5 K15 ["Style"]
  DUPTABLE R6 K23 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R7 K24 ["Notifications"]
  SETTABLEKS R7 R6 K11 ["Id"]
  LOADK R7 K25 ["IconButton"]
  SETTABLEKS R7 R6 K12 ["Type"]
  MOVE R7 R3
  LOADK R8 K24 ["Notifications"]
  LOADK R9 K19 ["Toggle"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Action"]
  LOADK R7 K20 ["Small"]
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K22 ["IconOnly"]
  DUPTABLE R7 K27 [{"Id", "Type", "Action", "Size", "FastFlag"}]
  LOADK R8 K28 ["LogoutMenu"]
  SETTABLEKS R8 R7 K11 ["Id"]
  LOADK R8 K18 ["Button"]
  SETTABLEKS R8 R7 K12 ["Type"]
  MOVE R8 R3
  LOADK R9 K28 ["LogoutMenu"]
  LOADK R10 K19 ["Toggle"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Action"]
  LOADK R8 K20 ["Small"]
  SETTABLEKS R8 R7 K14 ["Size"]
  LOADK R8 K29 ["!LoginAvatarThumbnail"]
  SETTABLEKS R8 R7 K26 ["FastFlag"]
  DUPTABLE R8 K31 [{"Id", "Type", "Action", "Size", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R9 K28 ["LogoutMenu"]
  SETTABLEKS R9 R8 K11 ["Id"]
  LOADK R9 K32 ["AvatarThumbnail"]
  SETTABLEKS R9 R8 K12 ["Type"]
  MOVE R9 R3
  LOADK R10 K28 ["LogoutMenu"]
  LOADK R11 K19 ["Toggle"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Action"]
  LOADK R9 K33 ["XSmall"]
  SETTABLEKS R9 R8 K14 ["Size"]
  LOADK R9 K34 ["LoginAvatarThumbnail"]
  SETTABLEKS R9 R8 K30 ["DEPRECATED_FastFlag"]
  LOADK R9 K34 ["LoginAvatarThumbnail"]
  SETTABLEKS R9 R8 K26 ["FastFlag"]
  SETLIST R4 R5 4 [1]
  RETURN R4 1
