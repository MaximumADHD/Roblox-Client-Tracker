PROTO_0:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K0 ["Name"]
  JUMPIFNOTEQ R6 R0 [+8]
  LOADK R7 K1 ["rbxasset://textures/MaterialGenerator/Materials/%*.png"]
  MOVE R9 R0
  NAMECALL R7 R7 K2 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R6 1
  FORGLOOP R1 2 [-12]
  LOADK R1 K3 ["rbxasset://studio_svg_textures/Shared/Modeling/Dark/Large/Material.png"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_1]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedMaterialIdentifier"}]
  SETTABLEKS R0 R3 K0 ["selectedMaterialIdentifier"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["button"]
  SETTABLEKS R0 R1 K3 ["Icon"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"viewType"}]
  SETTABLEKS R0 R3 K0 ["viewType"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["pluginButtonRef"]
  DUPTABLE R4 K5 [{"enabled", "viewType", "selectedMaterialIdentifier"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["enabled"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Grid"]
  SETTABLEKS R5 R4 K3 ["viewType"]
  GETIMPORT R6 K10 [Enum.Material.Plastic]
  GETTABLEKS R5 R6 K11 ["Name"]
  SETTABLEKS R5 R4 K4 ["selectedMaterialIdentifier"]
  NAMECALL R2 R0 K12 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K14 ["setSelectedMaterial"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K15 ["setButtonIcon"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["onClose"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K17 ["onRestore"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K18 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["setViewType"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K20 ["Store"]
  GETTABLEKS R2 R3 K21 ["new"]
  GETUPVAL R3 3
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K22 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K23 ["store"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K24 ["Localization"]
  GETTABLEKS R2 R3 K21 ["new"]
  DUPTABLE R3 K29 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K25 ["stringResourceTable"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K26 ["translationResourceTable"]
  LOADK R4 K30 ["MaterialPicker"]
  SETTABLEKS R4 R3 K27 ["pluginName"]
  NEWTABLE R4 1 0
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K31 ["Resources"]
  GETTABLEKS R5 R6 K32 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K33 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K31 ["Resources"]
  GETTABLEKS R7 R8 K34 ["SourceStrings"]
  SETTABLEKS R7 R6 K25 ["stringResourceTable"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K31 ["Resources"]
  GETTABLEKS R7 R8 K35 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K26 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K28 ["libraries"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K36 ["localization"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K37 ["Analytics"]
  GETTABLEKS R2 R3 K21 ["new"]
  GETUPVAL R3 8
  CALL R2 1 1
  SETTABLEKS R2 R0 K38 ["analytics"]
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K21 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K39 ["studioServices"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["pluginButtonRef"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K2 ["button"]
  LOADB R2 1
  NAMECALL R0 R0 K3 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["state"]
  GETTABLEKS R0 R1 K5 ["selectedMaterialIdentifier"]
  GETUPVAL R1 1
  MOVE R2 R0
  GETUPVAL R3 2
  CALL R1 2 0
  GETUPVAL R1 3
  LOADK R4 K6 ["Applied %* Material to Selection"]
  MOVE R6 R0
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  NAMECALL R1 R1 K8 ["SetWaypoint"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  GETTABLEKS R3 R0 K2 ["studioServices"]
  LOADK R5 K3 ["Selection"]
  NAMECALL R3 R3 K4 ["getService"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K2 ["studioServices"]
  LOADK R6 K5 ["ChangeHistoryService"]
  NAMECALL R4 R4 K4 ["getService"]
  CALL R4 2 1
  DUPTABLE R5 K7 [{"Toggle"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K20 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "OnDropdownClick", "ButtonType", "ClickableWhenViewportHidden", "ref"}]
  SETTABLEKS R1 R8 K9 ["Toolbar"]
  SETTABLEKS R2 R8 K10 ["Active"]
  LOADK R9 K21 ["MaterialPicker"]
  SETTABLEKS R9 R8 K11 ["Id"]
  GETTABLEKS R9 R0 K22 ["localization"]
  LOADK R11 K23 ["Plugin"]
  LOADK R12 K24 ["Button"]
  NAMECALL R9 R9 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["Title"]
  GETTABLEKS R9 R0 K22 ["localization"]
  LOADK R11 K23 ["Plugin"]
  LOADK R12 K26 ["Description"]
  NAMECALL R9 R9 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Tooltip"]
  GETGLOBAL R9 K27 ["getMaterialIconByIdentifier"]
  GETTABLEKS R11 R0 K0 ["state"]
  GETTABLEKS R10 R11 K28 ["selectedMaterialIdentifier"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["Icon"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K15 ["OnClick"]
  GETTABLEKS R9 R0 K29 ["toggleEnabled"]
  SETTABLEKS R9 R8 K16 ["OnDropdownClick"]
  LOADK R9 K30 ["Dropdown"]
  SETTABLEKS R9 R8 K17 ["ButtonType"]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["ClickableWhenViewportHidden"]
  GETTABLEKS R9 R0 K31 ["pluginButtonRef"]
  SETTABLEKS R9 R8 K19 ["ref"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Toggle"]
  RETURN R5 1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setButtonIcon"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K2 [+5]
  MOVE R4 R2
  LOADK R5 K2 ["PluginButton not initialized"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K13 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose", "PopupTarget"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["CreateWidgetImmediately"]
  GETTABLEKS R7 R0 K14 ["state"]
  GETTABLEKS R6 R7 K15 ["enabled"]
  SETTABLEKS R6 R5 K7 ["Enabled"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["Modal"]
  GETTABLEKS R6 R0 K16 ["localization"]
  LOADK R8 K17 ["Plugin"]
  LOADK R9 K9 ["Title"]
  NAMECALL R6 R6 K18 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["Title"]
  GETIMPORT R6 K21 [Vector2.new]
  LOADN R7 8
  LOADN R8 94
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETTABLEKS R6 R0 K22 ["onClose"]
  SETTABLEKS R6 R5 K11 ["OnClose"]
  GETTABLEKS R6 R2 K23 ["button"]
  SETTABLEKS R6 R5 K12 ["PopupTarget"]
  DUPTABLE R6 K25 [{"MainView"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K32 [{"plugin", "viewType", "setViewType", "selectedMaterialIdentifier", "onMaterialSelected", "onClose", "onSnapshotTaken"}]
  SETTABLEKS R1 R9 K26 ["plugin"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K27 ["viewType"]
  SETTABLEKS R10 R9 K27 ["viewType"]
  GETTABLEKS R10 R0 K28 ["setViewType"]
  SETTABLEKS R10 R9 K28 ["setViewType"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K29 ["selectedMaterialIdentifier"]
  SETTABLEKS R10 R9 K29 ["selectedMaterialIdentifier"]
  GETTABLEKS R10 R0 K33 ["setSelectedMaterial"]
  SETTABLEKS R10 R9 K30 ["onMaterialSelected"]
  GETTABLEKS R10 R0 K22 ["onClose"]
  SETTABLEKS R10 R9 K22 ["onClose"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K31 ["onSnapshotTaken"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K24 ["MainView"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_14:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Plugin"]
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 3
  CALL R10 0 1
  GETTABLEKS R11 R0 K8 ["localization"]
  GETTABLEKS R12 R0 K9 ["analytics"]
  GETTABLEKS R13 R0 K10 ["studioServices"]
  SETLIST R6 R7 7 [1]
  DUPTABLE R7 K13 [{"Toolbar", "Popup"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K17 [{"Title", "RenderButtons"}]
  LOADK R11 K18 ["Edit"]
  SETTABLEKS R11 R10 K15 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K16 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Toolbar"]
  JUMPIFNOT R4 [+5]
  MOVE R10 R3
  NAMECALL R8 R0 K19 ["renderPopup"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K12 ["Popup"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Constants"]
  GETTABLEKS R2 R3 K8 ["BASE_MATERIALS"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["applyToSelectionByIdentifier"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["MaterialFramework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Rodux"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K16 ["UI"]
  GETTABLEKS R8 R7 K17 ["PluginButton"]
  GETTABLEKS R9 R7 K18 ["PluginToolbar"]
  GETTABLEKS R10 R7 K19 ["Popup"]
  GETTABLEKS R11 R3 K20 ["ContextServices"]
  GETTABLEKS R12 R11 K21 ["Mouse"]
  GETTABLEKS R13 R11 K22 ["Store"]
  GETTABLEKS R15 R4 K23 ["Context"]
  GETTABLEKS R14 R15 K24 ["StudioServices"]
  GETTABLEKS R16 R4 K25 ["Enums"]
  GETTABLEKS R15 R16 K26 ["ViewType"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K27 ["Reducers"]
  GETTABLEKS R17 R18 K28 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K29 ["Resources"]
  GETTABLEKS R18 R19 K30 ["createAnalyticsHandlers"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K29 ["Resources"]
  GETTABLEKS R19 R20 K31 ["createTheme"]
  CALL R18 1 1
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K29 ["Resources"]
  GETTABLEKS R20 R21 K32 ["Localization"]
  GETTABLEKS R19 R20 K33 ["SourceStrings"]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K29 ["Resources"]
  GETTABLEKS R21 R22 K32 ["Localization"]
  GETTABLEKS R20 R21 K34 ["LocalizedStrings"]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K35 ["Components"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K36 ["MainView"]
  CALL R22 1 1
  GETTABLEKS R23 R5 K37 ["PureComponent"]
  LOADK R25 K38 ["MainPlugin"]
  NAMECALL R23 R23 K39 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K40 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R24 K41 ["getMaterialIconByIdentifier"]
  DUPCLOSURE R24 K42 [PROTO_9]
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R17
  CAPTURE VAL R14
  SETTABLEKS R24 R23 K43 ["init"]
  DUPCLOSURE R24 K44 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K45 ["renderButtons"]
  DUPCLOSURE R24 K46 [PROTO_13]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R22
  SETTABLEKS R24 R23 K47 ["renderPopup"]
  DUPCLOSURE R24 K48 [PROTO_15]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R24 R23 K49 ["render"]
  RETURN R23 1
