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
  NEWTABLE R5 0 25
  DUPTABLE R6 K15 [{"Id", "Type", "Action"}]
  LOADK R7 K16 ["Back"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K18 ["ScriptTools"]
  LOADK R9 K16 ["Back"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  DUPTABLE R7 K15 [{"Id", "Type", "Action"}]
  LOADK R8 K19 ["Forward"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K17 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["ScriptTools"]
  LOADK R10 K19 ["Forward"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  DUPTABLE R8 K21 [{"Type", "Size"}]
  LOADK R9 K22 ["Separator"]
  SETTABLEKS R9 R8 K13 ["Type"]
  LOADK R9 K23 ["Large"]
  SETTABLEKS R9 R8 K20 ["Size"]
  DUPTABLE R9 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R10 K28 ["Script"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K29 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R4
  LOADK R11 K18 ["ScriptTools"]
  LOADK R12 K30 ["CreateScript"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["Setting"]
  MOVE R10 R3
  LOADK R11 K18 ["ScriptTools"]
  LOADK R12 K31 ["Insert/Script"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["DefaultAction"]
  LOADB R10 1
  SETTABLEKS R10 R9 K26 ["ShowSettingOptions"]
  DUPTABLE R10 K21 [{"Type", "Size"}]
  LOADK R11 K22 ["Separator"]
  SETTABLEKS R11 R10 K13 ["Type"]
  LOADK R11 K23 ["Large"]
  SETTABLEKS R11 R10 K20 ["Size"]
  DUPTABLE R11 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R12 K32 ["Format"]
  SETTABLEKS R12 R11 K12 ["Id"]
  LOADK R12 K29 ["SplitButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  MOVE R12 R4
  LOADK R13 K18 ["ScriptTools"]
  LOADK R14 K33 ["FormatScript"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["Setting"]
  MOVE R12 R3
  LOADK R13 K18 ["ScriptTools"]
  LOADK R14 K34 ["FormatSelection"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["DefaultAction"]
  LOADB R12 1
  SETTABLEKS R12 R11 K26 ["ShowSettingOptions"]
  DUPTABLE R12 K27 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R13 K35 ["Find"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K29 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R4
  LOADK R14 K18 ["ScriptTools"]
  LOADK R15 K35 ["Find"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["Setting"]
  MOVE R13 R3
  LOADK R14 K18 ["ScriptTools"]
  LOADK R15 K35 ["Find"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["DefaultAction"]
  LOADB R13 1
  SETTABLEKS R13 R12 K26 ["ShowSettingOptions"]
  DUPTABLE R13 K15 [{"Id", "Type", "Action"}]
  LOADK R14 K36 ["Line"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K17 ["IconButton"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R3
  LOADK R15 K18 ["ScriptTools"]
  LOADK R16 K37 ["GoToLine"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Action"]
  DUPTABLE R14 K21 [{"Type", "Size"}]
  LOADK R15 K22 ["Separator"]
  SETTABLEKS R15 R14 K13 ["Type"]
  LOADK R15 K23 ["Large"]
  SETTABLEKS R15 R14 K20 ["Size"]
  DUPTABLE R15 K15 [{"Id", "Type", "Action"}]
  LOADK R16 K38 ["CommandBar"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K17 ["IconButton"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R3
  LOADK R17 K38 ["CommandBar"]
  LOADK R18 K39 ["Toggle"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["Action"]
  DUPTABLE R16 K15 [{"Id", "Type", "Action"}]
  LOADK R17 K40 ["Output"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K17 ["IconButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R3
  LOADK R18 K40 ["Output"]
  LOADK R19 K39 ["Toggle"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Action"]
  DUPTABLE R17 K21 [{"Type", "Size"}]
  LOADK R18 K22 ["Separator"]
  SETTABLEKS R18 R17 K13 ["Type"]
  LOADK R18 K23 ["Large"]
  SETTABLEKS R18 R17 K20 ["Size"]
  DUPTABLE R18 K15 [{"Id", "Type", "Action"}]
  LOADK R19 K41 ["Breakpoints"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K17 ["IconButton"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R3
  LOADK R20 K41 ["Breakpoints"]
  LOADK R21 K39 ["Toggle"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Action"]
  DUPTABLE R19 K15 [{"Id", "Type", "Action"}]
  LOADK R20 K42 ["CallStack"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K17 ["IconButton"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R3
  LOADK R21 K42 ["CallStack"]
  LOADK R22 K39 ["Toggle"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Action"]
  DUPTABLE R20 K15 [{"Id", "Type", "Action"}]
  LOADK R21 K43 ["Watch"]
  SETTABLEKS R21 R20 K12 ["Id"]
  LOADK R21 K17 ["IconButton"]
  SETTABLEKS R21 R20 K13 ["Type"]
  MOVE R21 R3
  LOADK R22 K43 ["Watch"]
  LOADK R23 K39 ["Toggle"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K14 ["Action"]
  DUPTABLE R21 K21 [{"Type", "Size"}]
  LOADK R22 K22 ["Separator"]
  SETTABLEKS R22 R21 K13 ["Type"]
  LOADK R22 K23 ["Large"]
  SETTABLEKS R22 R21 K20 ["Size"]
  SETLIST R5 R6 16 [1]
  DUPTABLE R6 K15 [{"Id", "Type", "Action"}]
  LOADK R7 K44 ["StepOut"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K18 ["ScriptTools"]
  LOADK R9 K44 ["StepOut"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  DUPTABLE R7 K15 [{"Id", "Type", "Action"}]
  LOADK R8 K45 ["StepOver"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K17 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["ScriptTools"]
  LOADK R10 K45 ["StepOver"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  DUPTABLE R8 K15 [{"Id", "Type", "Action"}]
  LOADK R9 K46 ["StepInto"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K17 ["IconButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R3
  LOADK R10 K18 ["ScriptTools"]
  LOADK R11 K46 ["StepInto"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Action"]
  DUPTABLE R9 K21 [{"Type", "Size"}]
  LOADK R10 K22 ["Separator"]
  SETTABLEKS R10 R9 K13 ["Type"]
  LOADK R10 K23 ["Large"]
  SETTABLEKS R10 R9 K20 ["Size"]
  DUPTABLE R10 K15 [{"Id", "Type", "Action"}]
  LOADK R11 K47 ["Analysis"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K17 ["IconButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R3
  LOADK R12 K47 ["Analysis"]
  LOADK R13 K39 ["Toggle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Action"]
  DUPTABLE R11 K15 [{"Id", "Type", "Action"}]
  LOADK R12 K48 ["Performance"]
  SETTABLEKS R12 R11 K12 ["Id"]
  LOADK R12 K17 ["IconButton"]
  SETTABLEKS R12 R11 K13 ["Type"]
  MOVE R12 R3
  LOADK R13 K48 ["Performance"]
  LOADK R14 K39 ["Toggle"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Action"]
  DUPTABLE R12 K21 [{"Type", "Size"}]
  LOADK R13 K22 ["Separator"]
  SETTABLEKS R13 R12 K13 ["Type"]
  LOADK R13 K23 ["Large"]
  SETTABLEKS R13 R12 K20 ["Size"]
  DUPTABLE R13 K50 [{"Id", "Type", "Action", "FastFlag"}]
  LOADK R14 K51 ["CodeSnippets"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K17 ["IconButton"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R3
  LOADK R15 K51 ["CodeSnippets"]
  LOADK R16 K39 ["Toggle"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Action"]
  LOADK R14 K52 ["CodeSnippet_Alpha4"]
  SETTABLEKS R14 R13 K49 ["FastFlag"]
  DUPTABLE R14 K50 [{"Id", "Type", "Action", "FastFlag"}]
  LOADK R22 K53 ["ControlsEmulator"]
  SETTABLEKS R22 R14 K12 ["Id"]
  LOADK R22 K17 ["IconButton"]
  SETTABLEKS R22 R14 K13 ["Type"]
  MOVE R22 R3
  LOADK R23 K53 ["ControlsEmulator"]
  LOADK R24 K39 ["Toggle"]
  CALL R22 2 1
  SETTABLEKS R22 R14 K14 ["Action"]
  LOADK R22 K54 ["StudioDeviceEmulatorGamepadEmulation"]
  SETTABLEKS R22 R14 K49 ["FastFlag"]
  SETLIST R5 R6 9 [17]
  RETURN R5 1
