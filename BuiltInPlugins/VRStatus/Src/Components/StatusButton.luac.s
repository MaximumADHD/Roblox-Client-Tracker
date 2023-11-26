PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  LOADK R3 K2 ["rbxasset://textures/VRStatus/error.png"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["deviceName"]
  JUMPIFEQKS R4 K4 [""] [+9]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K5 ["vrEnabled"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K6 ["rbxasset://textures/VRStatus/ok.png"]
  JUMP [+1]
  LOADK R3 K7 ["rbxasset://textures/VRStatus/warning.png"]
  DUPTABLE R4 K9 [{"Toggle"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  GETTABLEKS R8 R1 K20 ["toolbar"]
  SETTABLEKS R8 R7 K11 ["Toolbar"]
  GETTABLEKS R8 R1 K21 ["enabled"]
  SETTABLEKS R8 R7 K12 ["Active"]
  LOADK R8 K22 ["status_button"]
  SETTABLEKS R8 R7 K13 ["Id"]
  LOADK R10 K23 ["StatusButton"]
  LOADK R11 K14 ["Title"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["Title"]
  LOADK R10 K23 ["StatusButton"]
  LOADK R11 K15 ["Tooltip"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["Tooltip"]
  SETTABLEKS R3 R7 K16 ["Icon"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K25 ["showAlert"]
  SETTABLEKS R8 R7 K17 ["OnClick"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["ClickableWhenViewportHidden"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Toggle"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Controllers"]
  GETTABLEKS R7 R8 K13 ["ServiceController"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R7 R8 K15 ["PluginButton"]
  GETTABLEKS R8 R1 K16 ["PureComponent"]
  LOADK R10 K17 ["StatusButton"]
  NAMECALL R8 R8 K18 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K20 ["render"]
  MOVE R9 R4
  DUPTABLE R10 K22 [{"Localization", "Stylizer", "ServiceController"}]
  SETTABLEKS R5 R10 K10 ["Localization"]
  GETTABLEKS R11 R3 K21 ["Stylizer"]
  SETTABLEKS R11 R10 K21 ["Stylizer"]
  SETTABLEKS R6 R10 K13 ["ServiceController"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
