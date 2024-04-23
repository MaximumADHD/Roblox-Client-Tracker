PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIF R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["analytics"]
  LOADK R2 K3 ["PopupOpened"]
  NAMECALL R0 R0 K4 ["report"]
  CALL R0 2 0
  GETUPVAL R0 0
  DUPCLOSURE R2 K5 [PROTO_0]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedMaterialIdentifier"}]
  SETTABLEKS R0 R3 K0 ["selectedMaterialIdentifier"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["button"]
  SETTABLEKS R0 R1 K3 ["Icon"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"viewType"}]
  SETTABLEKS R0 R3 K0 ["viewType"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["savedFilterChips"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["List"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K1 ["savedListCanvasPosition"]
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Grid"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K3 ["savedGridCanvasPosition"]
  RETURN R0 0

PROTO_10:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R1 1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["pluginButtonRef"]
  DUPTABLE R2 K5 [{"recents", "appliedInPlace", "customMaterials"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["recents"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["appliedInPlace"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["customMaterials"]
  SETTABLEKS R2 R0 K6 ["savedFilterChips"]
  GETIMPORT R2 K9 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["savedListCanvasPosition"]
  GETIMPORT R2 K9 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K11 ["savedGridCanvasPosition"]
  DUPTABLE R4 K15 [{"enabled", "viewType", "selectedMaterialIdentifier"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["enabled"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["Grid"]
  SETTABLEKS R5 R4 K13 ["viewType"]
  GETIMPORT R6 K20 [Enum.Material.Plastic]
  GETTABLEKS R5 R6 K21 ["Name"]
  SETTABLEKS R5 R4 K14 ["selectedMaterialIdentifier"]
  NAMECALL R2 R0 K22 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K23 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K24 ["setSelectedMaterial"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K25 ["setButtonIcon"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K26 ["onClose"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K27 ["onRestore"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K28 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K29 ["setViewType"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K30 ["onFilterChipsUpdate"]
  NEWCLOSURE R2 P8
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K31 ["createOnScrollUpdate"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K32 ["Store"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 3
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K33 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K34 ["store"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K35 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K40 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K36 ["stringResourceTable"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K37 ["translationResourceTable"]
  LOADK R4 K41 ["MaterialPicker"]
  SETTABLEKS R4 R3 K38 ["pluginName"]
  NEWTABLE R4 1 0
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K42 ["Resources"]
  GETTABLEKS R5 R6 K43 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K44 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K42 ["Resources"]
  GETTABLEKS R7 R8 K45 ["SourceStrings"]
  SETTABLEKS R7 R6 K36 ["stringResourceTable"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K42 ["Resources"]
  GETTABLEKS R7 R8 K46 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K37 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K39 ["libraries"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K47 ["localization"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K48 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 8
  CALL R2 1 1
  SETTABLEKS R2 R0 K49 ["analytics"]
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K8 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K50 ["studioServices"]
  GETUPVAL R2 10
  CALL R2 0 1
  SETTABLEKS R2 R0 K51 ["themeTable"]
  RETURN R0 0

PROTO_12:
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
  GETUPVAL R2 2
  NAMECALL R2 R2 K9 ["Get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+19]
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R2 K10 ["MaterialVariant"]
  JUMP [+1]
  LOADK R2 K11 ["BaseMaterial"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["analytics"]
  LOADK R5 K13 ["MaterialApplied"]
  LOADK R6 K14 ["IconButton"]
  MOVE R7 R1
  MOVE R8 R0
  MOVE R9 R2
  NAMECALL R3 R3 K15 ["report"]
  CALL R3 6 0
  RETURN R0 0

PROTO_13:
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
  LOADK R9 K27 ["rbxasset://textures/MaterialFramework/PlasticWithBorder.png"]
  SETTABLEKS R9 R8 K14 ["Icon"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  SETTABLEKS R9 R8 K15 ["OnClick"]
  GETTABLEKS R9 R0 K28 ["toggleEnabled"]
  SETTABLEKS R9 R8 K16 ["OnDropdownClick"]
  LOADK R9 K29 ["Dropdown"]
  SETTABLEKS R9 R8 K17 ["ButtonType"]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["ClickableWhenViewportHidden"]
  GETTABLEKS R9 R0 K30 ["pluginButtonRef"]
  SETTABLEKS R9 R8 K19 ["ref"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Toggle"]
  RETURN R5 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setButtonIcon"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_15:
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
  GETTABLEKS R8 R0 K19 ["themeTable"]
  GETTABLEKS R7 R8 K20 ["Popup"]
  GETTABLEKS R6 R7 K10 ["Size"]
  SETTABLEKS R6 R5 K10 ["Size"]
  GETTABLEKS R6 R0 K21 ["onClose"]
  SETTABLEKS R6 R5 K11 ["OnClose"]
  GETTABLEKS R6 R2 K22 ["button"]
  SETTABLEKS R6 R5 K12 ["PopupTarget"]
  DUPTABLE R6 K24 [{"MainView"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K36 [{"plugin", "onClose", "onFilterChipsUpdate", "onMaterialSelected", "onScrollUpdate", "onSnapshotTaken", "savedFilterChips", "savedListCanvasPosition", "savedGridCanvasPosition", "setViewType", "selectedMaterialIdentifier", "viewType"}]
  SETTABLEKS R1 R9 K25 ["plugin"]
  GETTABLEKS R10 R0 K21 ["onClose"]
  SETTABLEKS R10 R9 K21 ["onClose"]
  GETTABLEKS R10 R0 K26 ["onFilterChipsUpdate"]
  SETTABLEKS R10 R9 K26 ["onFilterChipsUpdate"]
  GETTABLEKS R10 R0 K37 ["setSelectedMaterial"]
  SETTABLEKS R10 R9 K27 ["onMaterialSelected"]
  GETTABLEKS R10 R0 K38 ["createOnScrollUpdate"]
  GETTABLEKS R12 R0 K14 ["state"]
  GETTABLEKS R11 R12 K35 ["viewType"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K28 ["onScrollUpdate"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K29 ["onSnapshotTaken"]
  GETTABLEKS R10 R0 K30 ["savedFilterChips"]
  SETTABLEKS R10 R9 K30 ["savedFilterChips"]
  GETTABLEKS R10 R0 K31 ["savedListCanvasPosition"]
  SETTABLEKS R10 R9 K31 ["savedListCanvasPosition"]
  GETTABLEKS R10 R0 K32 ["savedGridCanvasPosition"]
  SETTABLEKS R10 R9 K32 ["savedGridCanvasPosition"]
  GETTABLEKS R10 R0 K33 ["setViewType"]
  SETTABLEKS R10 R9 K33 ["setViewType"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K34 ["selectedMaterialIdentifier"]
  SETTABLEKS R10 R9 K34 ["selectedMaterialIdentifier"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K35 ["viewType"]
  SETTABLEKS R10 R9 K35 ["viewType"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K23 ["MainView"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_16:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_17:
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
  GETTABLEKS R11 R0 K8 ["themeTable"]
  GETTABLEKS R10 R11 K9 ["createTheme"]
  CALL R10 0 1
  GETTABLEKS R11 R0 K10 ["localization"]
  GETTABLEKS R12 R0 K11 ["analytics"]
  GETTABLEKS R13 R0 K12 ["studioServices"]
  SETLIST R6 R7 7 [1]
  DUPTABLE R7 K15 [{"Toolbar", "Popup"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K19 [{"Title", "RenderButtons"}]
  LOADK R11 K20 ["Edit"]
  SETTABLEKS R11 R10 K17 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K18 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Toolbar"]
  JUMPIFNOT R4 [+5]
  MOVE R10 R3
  NAMECALL R8 R0 K21 ["renderPopup"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["Popup"]
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
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["applyToSelectionByIdentifier"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["isMaterialVariantByIdentifier"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["MaterialFramework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Rodux"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["PluginButton"]
  GETTABLEKS R9 R7 K17 ["PluginToolbar"]
  GETTABLEKS R10 R7 K18 ["Popup"]
  GETTABLEKS R11 R3 K19 ["ContextServices"]
  GETTABLEKS R12 R11 K20 ["Mouse"]
  GETTABLEKS R13 R11 K21 ["Store"]
  GETTABLEKS R15 R4 K22 ["Context"]
  GETTABLEKS R14 R15 K23 ["StudioServices"]
  GETTABLEKS R16 R4 K24 ["Enums"]
  GETTABLEKS R15 R16 K25 ["ViewType"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K26 ["Reducers"]
  GETTABLEKS R17 R18 K27 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K28 ["Resources"]
  GETTABLEKS R18 R19 K29 ["createAnalyticsHandlers"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K28 ["Resources"]
  GETTABLEKS R19 R20 K30 ["createThemeTable"]
  CALL R18 1 1
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K31 ["Localization"]
  GETTABLEKS R19 R20 K32 ["SourceStrings"]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K28 ["Resources"]
  GETTABLEKS R21 R22 K31 ["Localization"]
  GETTABLEKS R20 R21 K33 ["LocalizedStrings"]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K34 ["Components"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K35 ["MainView"]
  CALL R22 1 1
  GETTABLEKS R23 R5 K36 ["PureComponent"]
  LOADK R25 K37 ["MainPlugin"]
  NAMECALL R23 R23 K38 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K39 [PROTO_11]
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
  CAPTURE VAL R18
  SETTABLEKS R24 R23 K40 ["init"]
  DUPCLOSURE R24 K41 [PROTO_13]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K42 ["renderButtons"]
  DUPCLOSURE R24 K43 [PROTO_15]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R22
  SETTABLEKS R24 R23 K44 ["renderPopup"]
  DUPCLOSURE R24 K45 [PROTO_17]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R24 R23 K46 ["render"]
  RETURN R23 1
