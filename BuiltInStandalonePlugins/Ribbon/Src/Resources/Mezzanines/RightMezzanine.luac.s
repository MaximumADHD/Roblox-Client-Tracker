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
  NEWTABLE R4 0 8
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
  LOADK R7 K24 ["ShareGame"]
  SETTABLEKS R7 R6 K11 ["Id"]
  LOADK R7 K25 ["IconButton"]
  SETTABLEKS R7 R6 K12 ["Type"]
  MOVE R7 R3
  LOADK R8 K24 ["ShareGame"]
  LOADK R9 K19 ["Toggle"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Action"]
  LOADK R7 K20 ["Small"]
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K22 ["IconOnly"]
  DUPTABLE R7 K26 [{"Type"}]
  LOADK R8 K27 ["Separator"]
  SETTABLEKS R8 R7 K12 ["Type"]
  DUPTABLE R8 K29 [{"Id", "Type", "Action", "Size", "IconOnly", "FastFlag"}]
  LOADK R9 K30 ["Assistant"]
  SETTABLEKS R9 R8 K11 ["Id"]
  LOADK R9 K25 ["IconButton"]
  SETTABLEKS R9 R8 K12 ["Type"]
  MOVE R9 R3
  LOADK R10 K30 ["Assistant"]
  LOADK R11 K19 ["Toggle"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Action"]
  LOADK R9 K20 ["Small"]
  SETTABLEKS R9 R8 K14 ["Size"]
  LOADB R9 1
  SETTABLEKS R9 R8 K22 ["IconOnly"]
  LOADK R9 K31 ["AICOChatBot"]
  SETTABLEKS R9 R8 K28 ["FastFlag"]
  DUPTABLE R9 K23 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R10 K32 ["ConnectionIndicator"]
  SETTABLEKS R10 R9 K11 ["Id"]
  LOADK R10 K25 ["IconButton"]
  SETTABLEKS R10 R9 K12 ["Type"]
  MOVE R10 R3
  LOADK R11 K32 ["ConnectionIndicator"]
  LOADK R12 K19 ["Toggle"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Action"]
  LOADK R10 K20 ["Small"]
  SETTABLEKS R10 R9 K14 ["Size"]
  LOADB R10 1
  SETTABLEKS R10 R9 K22 ["IconOnly"]
  DUPTABLE R10 K26 [{"Type"}]
  LOADK R11 K27 ["Separator"]
  SETTABLEKS R11 R10 K12 ["Type"]
  DUPTABLE R11 K23 [{"Id", "Type", "Action", "Size", "IconOnly"}]
  LOADK R12 K33 ["Notifications"]
  SETTABLEKS R12 R11 K11 ["Id"]
  LOADK R12 K25 ["IconButton"]
  SETTABLEKS R12 R11 K12 ["Type"]
  MOVE R12 R3
  LOADK R13 K33 ["Notifications"]
  LOADK R14 K19 ["Toggle"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Action"]
  LOADK R12 K20 ["Small"]
  SETTABLEKS R12 R11 K14 ["Size"]
  LOADB R12 1
  SETTABLEKS R12 R11 K22 ["IconOnly"]
  DUPTABLE R12 K34 [{"Id", "Type", "Action", "Size"}]
  LOADK R13 K35 ["LogoutMenu"]
  SETTABLEKS R13 R12 K11 ["Id"]
  LOADK R13 K18 ["Button"]
  SETTABLEKS R13 R12 K12 ["Type"]
  MOVE R13 R3
  LOADK R14 K35 ["LogoutMenu"]
  LOADK R15 K19 ["Toggle"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["Action"]
  LOADK R13 K20 ["Small"]
  SETTABLEKS R13 R12 K14 ["Size"]
  SETLIST R4 R5 8 [1]
  RETURN R4 1
