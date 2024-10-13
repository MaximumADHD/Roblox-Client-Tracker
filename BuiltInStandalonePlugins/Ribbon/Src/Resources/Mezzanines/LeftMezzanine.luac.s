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
  NEWTABLE R5 0 19
  DUPTABLE R6 K17 [{"Id", "Type", "Setting", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R7 K18 ["TestMode"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K19 ["SegmentedButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R4
  LOADK R8 K20 ["RunTools"]
  LOADK R9 K18 ["TestMode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Setting"]
  LOADK R7 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R7 R6 K15 ["DEPRECATED_FastFlag"]
  LOADK R7 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R7 R6 K16 ["FastFlag"]
  DUPTABLE R7 K25 [{"Id", "Type", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R8 K26 ["LaunchTestMode"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K27 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K20 ["RunTools"]
  LOADK R10 K26 ["LaunchTestMode"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["Action"]
  LOADK R8 K28 ["Small"]
  SETTABLEKS R8 R7 K23 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["IconOnly"]
  LOADK R8 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R8 R7 K15 ["DEPRECATED_FastFlag"]
  LOADK R8 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R8 R7 K16 ["FastFlag"]
  DUPTABLE R8 K17 [{"Id", "Type", "Setting", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R9 K29 ["PlayersMode"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K30 ["Spinbox"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R4
  LOADK R10 K20 ["RunTools"]
  LOADK R11 K29 ["PlayersMode"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Setting"]
  LOADK R9 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R9 R8 K15 ["DEPRECATED_FastFlag"]
  LOADK R9 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R9 R8 K16 ["FastFlag"]
  DUPTABLE R9 K32 [{"Id", "Type", "Size", "IconOnly", "Setting", "Children", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R10 K33 ["AddClients"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K34 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  LOADK R10 K28 ["Small"]
  SETTABLEKS R10 R9 K23 ["Size"]
  LOADB R10 1
  SETTABLEKS R10 R9 K24 ["IconOnly"]
  MOVE R10 R4
  LOADK R11 K20 ["RunTools"]
  LOADK R12 K33 ["AddClients"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Setting"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K36 [{"Type", "Tags", "Children"}]
  LOADK R12 K37 ["Row"]
  SETTABLEKS R12 R11 K13 ["Type"]
  LOADK R12 K38 ["X-RowSpace200"]
  SETTABLEKS R12 R11 K35 ["Tags"]
  NEWTABLE R12 0 2
  DUPTABLE R13 K39 [{"Id", "Type", "Setting"}]
  LOADK R14 K29 ["PlayersMode"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K30 ["Spinbox"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R4
  LOADK R15 K20 ["RunTools"]
  LOADK R16 K29 ["PlayersMode"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Setting"]
  DUPTABLE R14 K42 [{"Id", "Type", "Action", "Size", "Style", "TextOnly"}]
  LOADK R15 K43 ["ServerAndClients/1"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K44 ["Button"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R3
  LOADK R16 K20 ["RunTools"]
  LOADK R17 K45 ["ServerAndClients"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Action"]
  LOADK R15 K28 ["Small"]
  SETTABLEKS R15 R14 K23 ["Size"]
  LOADK R15 K46 ["Primary"]
  SETTABLEKS R15 R14 K40 ["Style"]
  LOADB R15 1
  SETTABLEKS R15 R14 K41 ["TextOnly"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K31 ["Children"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K31 ["Children"]
  LOADK R10 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R10 R9 K15 ["DEPRECATED_FastFlag"]
  LOADK R10 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R10 R9 K16 ["FastFlag"]
  DUPTABLE R10 K49 [{"Type", "Id", "Setting", "DefaultAction", "Size", "ShowSettingOptions", "IconOnly", "FastFlag"}]
  LOADK R11 K34 ["SplitButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  LOADK R11 K50 ["PlayControls/1"]
  SETTABLEKS R11 R10 K12 ["Id"]
  MOVE R11 R4
  LOADK R12 K20 ["RunTools"]
  LOADK R13 K51 ["RunMode"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Setting"]
  MOVE R11 R3
  LOADK R12 K20 ["RunTools"]
  LOADK R13 K52 ["Play"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K47 ["DefaultAction"]
  LOADK R11 K28 ["Small"]
  SETTABLEKS R11 R10 K23 ["Size"]
  LOADB R11 1
  SETTABLEKS R11 R10 K48 ["ShowSettingOptions"]
  LOADB R11 1
  SETTABLEKS R11 R10 K24 ["IconOnly"]
  LOADK R11 K53 ["!AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R11 R10 K16 ["FastFlag"]
  DUPTABLE R11 K54 [{"Type", "Id", "Setting", "DefaultAction", "Size", "ShowSettingOptions", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R12 K34 ["SplitButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  LOADK R12 K55 ["PlayControls/Pause"]
  SETTABLEKS R12 R11 K12 ["Id"]
  MOVE R12 R4
  LOADK R13 K20 ["RunTools"]
  LOADK R14 K56 ["PauseMode"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Setting"]
  MOVE R12 R3
  LOADK R13 K20 ["RunTools"]
  LOADK R14 K57 ["Pause"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K47 ["DefaultAction"]
  LOADK R12 K28 ["Small"]
  SETTABLEKS R12 R11 K23 ["Size"]
  LOADB R12 1
  SETTABLEKS R12 R11 K48 ["ShowSettingOptions"]
  LOADB R12 1
  SETTABLEKS R12 R11 K24 ["IconOnly"]
  LOADK R12 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R12 R11 K15 ["DEPRECATED_FastFlag"]
  LOADK R12 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R12 R11 K16 ["FastFlag"]
  DUPTABLE R12 K54 [{"Type", "Id", "Setting", "DefaultAction", "Size", "ShowSettingOptions", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R13 K34 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  LOADK R13 K58 ["PlayControls/Resume"]
  SETTABLEKS R13 R12 K12 ["Id"]
  MOVE R13 R4
  LOADK R14 K20 ["RunTools"]
  LOADK R15 K59 ["ResumeMode"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Setting"]
  MOVE R13 R3
  LOADK R14 K20 ["RunTools"]
  LOADK R15 K60 ["Resume"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K47 ["DefaultAction"]
  LOADK R13 K28 ["Small"]
  SETTABLEKS R13 R12 K23 ["Size"]
  LOADB R13 1
  SETTABLEKS R13 R12 K48 ["ShowSettingOptions"]
  LOADB R13 1
  SETTABLEKS R13 R12 K24 ["IconOnly"]
  LOADK R13 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R13 R12 K15 ["DEPRECATED_FastFlag"]
  LOADK R13 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R13 R12 K16 ["FastFlag"]
  DUPTABLE R13 K62 [{"Type", "Id", "ActionGroup", "Size", "IconOnly", "FastFlag"}]
  LOADK R14 K27 ["IconButton"]
  SETTABLEKS R14 R13 K13 ["Type"]
  LOADK R14 K63 ["PlayControls/2"]
  SETTABLEKS R14 R13 K12 ["Id"]
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K20 ["RunTools"]
  LOADK R17 K57 ["Pause"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K20 ["RunTools"]
  LOADK R18 K60 ["Resume"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  SETTABLEKS R14 R13 K61 ["ActionGroup"]
  LOADK R14 K28 ["Small"]
  SETTABLEKS R14 R13 K23 ["Size"]
  LOADB R14 1
  SETTABLEKS R14 R13 K24 ["IconOnly"]
  LOADK R14 K53 ["!AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R14 R13 K16 ["FastFlag"]
  DUPTABLE R14 K25 [{"Id", "Type", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R15 K64 ["Stop"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K27 ["IconButton"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R3
  LOADK R16 K20 ["RunTools"]
  LOADK R17 K64 ["Stop"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Action"]
  LOADK R15 K28 ["Small"]
  SETTABLEKS R15 R14 K23 ["Size"]
  LOADB R15 1
  SETTABLEKS R15 R14 K24 ["IconOnly"]
  LOADK R15 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R15 R14 K15 ["DEPRECATED_FastFlag"]
  LOADK R15 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R15 R14 K16 ["FastFlag"]
  DUPTABLE R15 K25 [{"Id", "Type", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R16 K65 ["ExitGame"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K27 ["IconButton"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R3
  LOADK R17 K20 ["RunTools"]
  LOADK R18 K66 ["CleanupTeamTest"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["Action"]
  LOADK R16 K28 ["Small"]
  SETTABLEKS R16 R15 K23 ["Size"]
  LOADB R16 1
  SETTABLEKS R16 R15 K24 ["IconOnly"]
  LOADK R16 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R16 R15 K15 ["DEPRECATED_FastFlag"]
  LOADK R16 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R16 R15 K16 ["FastFlag"]
  DUPTABLE R16 K62 [{"Type", "Id", "ActionGroup", "Size", "IconOnly", "FastFlag"}]
  LOADK R17 K27 ["IconButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  LOADK R17 K67 ["PlayControls/3"]
  SETTABLEKS R17 R16 K12 ["Id"]
  NEWTABLE R17 0 2
  MOVE R18 R3
  LOADK R19 K20 ["RunTools"]
  LOADK R20 K64 ["Stop"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K20 ["RunTools"]
  LOADK R21 K66 ["CleanupTeamTest"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  SETTABLEKS R17 R16 K61 ["ActionGroup"]
  LOADK R17 K28 ["Small"]
  SETTABLEKS R17 R16 K23 ["Size"]
  LOADB R17 1
  SETTABLEKS R17 R16 K24 ["IconOnly"]
  LOADK R17 K53 ["!AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R17 R16 K16 ["FastFlag"]
  DUPTABLE R17 K25 [{"Id", "Type", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R18 K68 ["ToggleDM"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K27 ["IconButton"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R3
  LOADK R19 K20 ["RunTools"]
  LOADK R20 K68 ["ToggleDM"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["Action"]
  LOADK R18 K28 ["Small"]
  SETTABLEKS R18 R17 K23 ["Size"]
  LOADB R18 1
  SETTABLEKS R18 R17 K24 ["IconOnly"]
  LOADK R18 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R18 R17 K15 ["DEPRECATED_FastFlag"]
  LOADK R18 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R18 R17 K16 ["FastFlag"]
  DUPTABLE R18 K25 [{"Id", "Type", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R19 K69 ["Cleanup"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K27 ["IconButton"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R3
  LOADK R20 K20 ["RunTools"]
  LOADK R21 K70 ["CleanupServerAndClients"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K22 ["Action"]
  LOADK R19 K28 ["Small"]
  SETTABLEKS R19 R18 K23 ["Size"]
  LOADB R19 1
  SETTABLEKS R19 R18 K24 ["IconOnly"]
  LOADK R19 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R19 R18 K15 ["DEPRECATED_FastFlag"]
  LOADK R19 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R19 R18 K16 ["FastFlag"]
  DUPTABLE R19 K62 [{"Type", "Id", "ActionGroup", "Size", "IconOnly", "FastFlag"}]
  LOADK R20 K27 ["IconButton"]
  SETTABLEKS R20 R19 K13 ["Type"]
  LOADK R20 K71 ["PlayControls/4"]
  SETTABLEKS R20 R19 K12 ["Id"]
  NEWTABLE R20 0 2
  MOVE R21 R3
  LOADK R22 K20 ["RunTools"]
  LOADK R23 K68 ["ToggleDM"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K20 ["RunTools"]
  LOADK R24 K70 ["CleanupServerAndClients"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  SETTABLEKS R20 R19 K61 ["ActionGroup"]
  LOADK R20 K28 ["Small"]
  SETTABLEKS R20 R19 K23 ["Size"]
  LOADB R20 1
  SETTABLEKS R20 R19 K24 ["IconOnly"]
  LOADK R20 K53 ["!AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R20 R19 K16 ["FastFlag"]
  DUPTABLE R20 K72 [{"Type", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R21 K73 ["Separator"]
  SETTABLEKS R21 R20 K13 ["Type"]
  LOADK R21 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R21 R20 K15 ["DEPRECATED_FastFlag"]
  LOADK R21 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R21 R20 K16 ["FastFlag"]
  DUPTABLE R21 K54 [{"Type", "Id", "Setting", "DefaultAction", "Size", "ShowSettingOptions", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R22 K34 ["SplitButton"]
  SETTABLEKS R22 R21 K13 ["Type"]
  LOADK R22 K74 ["PlayControls/StepForward"]
  SETTABLEKS R22 R21 K12 ["Id"]
  MOVE R22 R4
  LOADK R23 K20 ["RunTools"]
  LOADK R24 K75 ["StepForwardMode"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K14 ["Setting"]
  MOVE R22 R3
  LOADK R23 K20 ["RunTools"]
  LOADK R24 K76 ["StepForwardPhysicsAll"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K47 ["DefaultAction"]
  LOADK R22 K28 ["Small"]
  SETTABLEKS R22 R21 K23 ["Size"]
  LOADB R22 1
  SETTABLEKS R22 R21 K48 ["ShowSettingOptions"]
  LOADB R22 1
  SETTABLEKS R22 R21 K24 ["IconOnly"]
  LOADK R22 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R22 R21 K15 ["DEPRECATED_FastFlag"]
  LOADK R22 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R22 R21 K16 ["FastFlag"]
  SETLIST R5 R6 16 [1]
  DUPTABLE R6 K77 [{"Type", "Id", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R7 K27 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  LOADK R7 K78 ["StepInto"]
  SETTABLEKS R7 R6 K12 ["Id"]
  MOVE R7 R3
  LOADK R8 K79 ["ScriptTools"]
  LOADK R9 K78 ["StepInto"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Action"]
  LOADK R7 K28 ["Small"]
  SETTABLEKS R7 R6 K23 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K24 ["IconOnly"]
  LOADK R7 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R7 R6 K15 ["DEPRECATED_FastFlag"]
  LOADK R7 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R7 R6 K16 ["FastFlag"]
  DUPTABLE R7 K77 [{"Type", "Id", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R8 K27 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  LOADK R8 K80 ["StepOver"]
  SETTABLEKS R8 R7 K12 ["Id"]
  MOVE R8 R3
  LOADK R9 K79 ["ScriptTools"]
  LOADK R10 K80 ["StepOver"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["Action"]
  LOADK R8 K28 ["Small"]
  SETTABLEKS R8 R7 K23 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["IconOnly"]
  LOADK R8 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R8 R7 K15 ["DEPRECATED_FastFlag"]
  LOADK R8 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R8 R7 K16 ["FastFlag"]
  DUPTABLE R8 K77 [{"Type", "Id", "Action", "Size", "IconOnly", "DEPRECATED_FastFlag", "FastFlag"}]
  LOADK R22 K27 ["IconButton"]
  SETTABLEKS R22 R8 K13 ["Type"]
  LOADK R22 K81 ["StepOut"]
  SETTABLEKS R22 R8 K12 ["Id"]
  MOVE R22 R3
  LOADK R23 K79 ["ScriptTools"]
  LOADK R24 K81 ["StepOut"]
  CALL R22 2 1
  SETTABLEKS R22 R8 K22 ["Action"]
  LOADK R22 K28 ["Small"]
  SETTABLEKS R22 R8 K23 ["Size"]
  LOADB R22 1
  SETTABLEKS R22 R8 K24 ["IconOnly"]
  LOADK R22 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R22 R8 K15 ["DEPRECATED_FastFlag"]
  LOADK R22 K21 ["AddPauseResumeStepForwardDebugButtonsLuaRibbon"]
  SETTABLEKS R22 R8 K16 ["FastFlag"]
  SETLIST R5 R6 3 [17]
  RETURN R5 1
