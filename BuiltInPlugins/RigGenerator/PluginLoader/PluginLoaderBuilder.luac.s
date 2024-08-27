PROTO_0:
  GETTABLEKS R4 R1 K0 ["id"]
  MOVE R7 R4
  GETTABLEKS R8 R1 K1 ["dockWidgetPluginGuiInfo"]
  NAMECALL R5 R0 K2 ["CreateDockWidgetPluginGui"]
  CALL R5 3 1
  SETTABLEKS R2 R5 K3 ["Title"]
  JUMPIFEQKNIL R3 [+3]
  SETTABLEKS R3 R5 K4 ["Name"]
  GETTABLEKS R6 R1 K5 ["zIndexBehavior"]
  JUMPIF R6 [+2]
  GETIMPORT R6 K9 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K7 ["ZIndexBehavior"]
  RETURN R5 1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["getLocalizedText"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["pluginLoader"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  GETIMPORT R0 K4 [pairs]
  GETUPVAL R3 1
  GETTABLEKS R1 R3 K5 ["signals"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  NAMECALL R5 R4 K0 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K7 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "shouldImmediatelyOpen"}]
  GETTABLEKS R2 R0 K0 ["plugin"]
  SETTABLEKS R2 R1 K0 ["plugin"]
  GETTABLEKS R2 R0 K1 ["pluginName"]
  SETTABLEKS R2 R1 K1 ["pluginName"]
  GETTABLEKS R2 R0 K2 ["translationResourceTable"]
  SETTABLEKS R2 R1 K2 ["translationResourceTable"]
  GETTABLEKS R2 R0 K3 ["fallbackResourceTable"]
  SETTABLEKS R2 R1 K3 ["fallbackResourceTable"]
  GETTABLEKS R2 R0 K4 ["overrideLocaleId"]
  SETTABLEKS R2 R1 K4 ["overrideLocaleId"]
  GETTABLEKS R2 R0 K5 ["localizationNamespace"]
  SETTABLEKS R2 R1 K5 ["localizationNamespace"]
  GETTABLEKS R2 R0 K6 ["shouldImmediatelyOpen"]
  SETTABLEKS R2 R1 K6 ["shouldImmediatelyOpen"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["new"]
  MOVE R3 R1
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE REF R2
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  GETTABLEKS R7 R0 K9 ["noToolbar"]
  JUMPIFEQKB R7 TRUE [+94]
  GETTABLEKS R7 R0 K10 ["getToolbarName"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R0 K10 ["getToolbarName"]
  MOVE R8 R3
  NAMECALL R9 R2 K11 ["getKeyNamespace"]
  CALL R9 1 1
  NAMECALL R10 R2 K12 ["getPluginName"]
  CALL R10 1 -1
  CALL R7 -1 1
  GETTABLEKS R8 R0 K0 ["plugin"]
  MOVE R10 R7
  NAMECALL R8 R8 K13 ["CreateToolbar"]
  CALL R8 2 1
  MOVE R4 R8
  GETTABLEKS R8 R0 K14 ["buttonInfo"]
  GETTABLEKS R11 R8 K15 ["getName"]
  MOVE R12 R3
  NAMECALL R13 R2 K11 ["getKeyNamespace"]
  CALL R13 1 1
  NAMECALL R14 R2 K12 ["getPluginName"]
  CALL R14 1 -1
  CALL R11 -1 1
  GETTABLEKS R12 R8 K16 ["getDescription"]
  MOVE R13 R3
  NAMECALL R14 R2 K11 ["getKeyNamespace"]
  CALL R14 1 1
  NAMECALL R15 R2 K12 ["getPluginName"]
  CALL R15 1 -1
  CALL R12 -1 1
  GETTABLEKS R13 R8 K17 ["icon"]
  GETTABLEKS R16 R8 K18 ["text"]
  FASTCALL1 TYPE R16 [+2]
  GETIMPORT R15 K20 [type]
  CALL R15 1 1
  JUMPIFNOTEQKS R15 K21 ["function"] [+12]
  GETTABLEKS R14 R8 K18 ["text"]
  MOVE R15 R3
  NAMECALL R16 R2 K11 ["getKeyNamespace"]
  CALL R16 1 1
  NAMECALL R17 R2 K12 ["getPluginName"]
  CALL R17 1 -1
  CALL R14 -1 1
  JUMP [+2]
  GETTABLEKS R14 R8 K18 ["text"]
  NAMECALL R9 R4 K22 ["CreateButton"]
  CALL R9 5 1
  MOVE R5 R9
  GETTABLEKS R9 R8 K23 ["clickableWhenViewportHidden"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R9 R8 K23 ["clickableWhenViewportHidden"]
  SETTABLEKS R9 R5 K24 ["ClickableWhenViewportHidden"]
  GETTABLEKS R9 R8 K25 ["enabled"]
  JUMPIFEQKNIL R9 [+5]
  GETTABLEKS R9 R8 K25 ["enabled"]
  SETTABLEKS R9 R5 K26 ["Enabled"]
  LOADB R11 0
  NAMECALL R9 R5 K27 ["SetActive"]
  CALL R9 2 0
  MOVE R11 R5
  NAMECALL R9 R2 K28 ["registerButton"]
  CALL R9 2 1
  MOVE R6 R9
  LOADNIL R7
  GETTABLEKS R8 R0 K29 ["dockWidgetInfo"]
  JUMPIFNOT R8 [+83]
  GETTABLEKS R9 R8 K30 ["getDockTitle"]
  MOVE R10 R3
  NAMECALL R11 R2 K11 ["getKeyNamespace"]
  CALL R11 1 1
  NAMECALL R12 R2 K12 ["getPluginName"]
  CALL R12 1 -1
  CALL R9 -1 1
  GETTABLEKS R10 R8 K31 ["name"]
  JUMPIFNOT R10 [+46]
  GETTABLEKS R12 R8 K31 ["name"]
  FASTCALL1 TYPE R12 [+2]
  GETIMPORT R11 K20 [type]
  CALL R11 1 1
  JUMPIFNOTEQKS R11 K21 ["function"] [+12]
  GETTABLEKS R10 R8 K31 ["name"]
  MOVE R11 R3
  NAMECALL R12 R2 K11 ["getKeyNamespace"]
  CALL R12 1 1
  NAMECALL R13 R2 K12 ["getPluginName"]
  CALL R13 1 -1
  CALL R10 -1 1
  JUMP [+2]
  GETTABLEKS R10 R8 K31 ["name"]
  GETTABLEKS R11 R0 K0 ["plugin"]
  GETTABLEKS R12 R8 K32 ["id"]
  MOVE R15 R12
  GETTABLEKS R16 R8 K33 ["dockWidgetPluginGuiInfo"]
  NAMECALL R13 R11 K34 ["CreateDockWidgetPluginGui"]
  CALL R13 3 1
  SETTABLEKS R9 R13 K35 ["Title"]
  JUMPIFEQKNIL R10 [+3]
  SETTABLEKS R10 R13 K36 ["Name"]
  GETTABLEKS R14 R8 K37 ["zIndexBehavior"]
  JUMPIF R14 [+2]
  GETIMPORT R14 K41 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R14 R13 K39 ["ZIndexBehavior"]
  MOVE R7 R13
  JUMP [+20]
  GETTABLEKS R10 R0 K0 ["plugin"]
  GETTABLEKS R11 R8 K32 ["id"]
  MOVE R14 R11
  GETTABLEKS R15 R8 K33 ["dockWidgetPluginGuiInfo"]
  NAMECALL R12 R10 K34 ["CreateDockWidgetPluginGui"]
  CALL R12 3 1
  SETTABLEKS R9 R12 K35 ["Title"]
  GETTABLEKS R13 R8 K37 ["zIndexBehavior"]
  JUMPIF R13 [+2]
  GETIMPORT R13 K41 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R13 R12 K39 ["ZIndexBehavior"]
  MOVE R7 R12
  MOVE R12 R7
  NAMECALL R10 R2 K42 ["registerWidget"]
  CALL R10 2 0
  NEWTABLE R9 0 0
  GETTABLEKS R10 R0 K43 ["extraTriggers"]
  JUMPIFNOT R10 [+15]
  GETIMPORT R10 K45 [pairs]
  GETTABLEKS R11 R0 K43 ["extraTriggers"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  MOVE R15 R14
  CALL R15 0 1
  MOVE R18 R15
  NAMECALL R16 R2 K46 ["registerSignal"]
  CALL R16 2 1
  SETTABLE R16 R9 R13
  FORGLOOP R10 2 [-8]
  DUPTABLE R10 K53 [{"pluginLoader", "plugin", "toolbar", "mainButton", "mainDockWidget", "mainButtonClickedSignal", "signals"}]
  SETTABLEKS R2 R10 K47 ["pluginLoader"]
  GETTABLEKS R11 R0 K0 ["plugin"]
  SETTABLEKS R11 R10 K0 ["plugin"]
  SETTABLEKS R4 R10 K48 ["toolbar"]
  SETTABLEKS R5 R10 K49 ["mainButton"]
  SETTABLEKS R7 R10 K50 ["mainDockWidget"]
  SETTABLEKS R6 R10 K51 ["mainButtonClickedSignal"]
  SETTABLEKS R9 R10 K52 ["signals"]
  GETTABLEKS R12 R0 K0 ["plugin"]
  GETTABLEKS R11 R12 K54 ["Unloading"]
  NEWCLOSURE R13 P1
  CAPTURE REF R2
  CAPTURE VAL R10
  NAMECALL R11 R11 K55 ["Connect"]
  CALL R11 2 0
  CLOSEUPVALS R2
  RETURN R10 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["PluginLoader"]
  CALL R0 1 1
  NEWTABLE R1 1 0
  DUPCLOSURE R2 K6 [PROTO_0]
  DUPCLOSURE R3 K7 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K8 ["build"]
  RETURN R1 1
