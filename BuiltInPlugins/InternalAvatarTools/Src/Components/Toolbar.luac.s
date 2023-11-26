PROTO_0:
  DUPTABLE R2 K1 [{"Export"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"Active", "Toolbar", "Title", "Tooltip", "OnClick", "ClickableWhenViewportHidden"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["Active"]
  SETTABLEKS R1 R5 K4 ["Toolbar"]
  GETTABLEKS R7 R0 K10 ["props"]
  GETTABLEKS R6 R7 K11 ["Localization"]
  LOADK R8 K12 ["Plugin"]
  LOADK R9 K0 ["Export"]
  NAMECALL R6 R6 K13 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Title"]
  GETTABLEKS R7 R0 K10 ["props"]
  GETTABLEKS R6 R7 K11 ["Localization"]
  LOADK R8 K12 ["Plugin"]
  LOADK R9 K14 ["ExportTip"]
  NAMECALL R6 R6 K13 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Tooltip"]
  GETTABLEKS R7 R0 K10 ["props"]
  GETTABLEKS R6 R7 K15 ["onExportClicked"]
  SETTABLEKS R6 R5 K7 ["OnClick"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["ClickableWhenViewportHidden"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["Export"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Title", "RenderButtons"}]
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R4 R5 K5 ["Localization"]
  LOADK R6 K6 ["Plugin"]
  LOADK R7 K7 ["Name"]
  NAMECALL R4 R4 K8 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Title"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K2 ["RenderButtons"]
  CALL R1 2 -1
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
  GETTABLEKS R4 R3 K9 ["PluginButton"]
  GETTABLEKS R5 R3 K10 ["PluginToolbar"]
  GETTABLEKS R6 R2 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETTABLEKS R8 R6 K13 ["Plugin"]
  GETTABLEKS R9 R6 K14 ["Localization"]
  GETTABLEKS R10 R1 K15 ["PureComponent"]
  LOADK R12 K16 ["Toolbar"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K19 ["renderButtons"]
  DUPCLOSURE R11 K20 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K21 ["render"]
  MOVE R11 R7
  DUPTABLE R12 K22 [{"Plugin", "Localization"}]
  SETTABLEKS R8 R12 K13 ["Plugin"]
  SETTABLEKS R9 R12 K14 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
