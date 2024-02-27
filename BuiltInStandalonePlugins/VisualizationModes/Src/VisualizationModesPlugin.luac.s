PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["pluginButtonRef"]
  DUPTABLE R2 K3 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["enabled"]
  SETTABLEKS R2 R0 K4 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onDockWidgetCreated"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R2 R3 K11 ["new"]
  DUPTABLE R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["stringResourceTable"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["translationResourceTable"]
  LOADK R4 K16 ["VisualizationModes"]
  SETTABLEKS R4 R3 K14 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K17 ["localization"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K18 ["Analytics"]
  GETTABLEKS R2 R3 K11 ["new"]
  DUPCLOSURE R3 K19 [PROTO_6]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K20 ["analytics"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K21 ["DEPRECATED_stylizer"]
  GETUPVAL R2 5
  GETTABLEKS R3 R1 K22 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K23 ["design"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K16 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnDropdownClick", "OnClick", "ButtonType", "ClickableWhenViewportHidden", "ref"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K17 ["VisualizationModes"]
  SETTABLEKS R7 R6 K7 ["Id"]
  GETTABLEKS R7 R0 K18 ["localization"]
  LOADK R9 K19 ["Plugin"]
  LOADK R10 K20 ["Button"]
  NAMECALL R7 R7 K21 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Title"]
  GETTABLEKS R7 R0 K18 ["localization"]
  LOADK R9 K19 ["Plugin"]
  LOADK R10 K9 ["Tooltip"]
  NAMECALL R7 R7 K21 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Tooltip"]
  LOADK R7 K22 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R7 R6 K10 ["Icon"]
  GETTABLEKS R7 R0 K23 ["toggleEnabled"]
  SETTABLEKS R7 R6 K11 ["OnDropdownClick"]
  GETTABLEKS R7 R0 K23 ["toggleEnabled"]
  SETTABLEKS R7 R6 K12 ["OnClick"]
  LOADK R7 K24 ["Dropdown"]
  SETTABLEKS R7 R6 K13 ["ButtonType"]
  LOADB R7 0
  SETTABLEKS R7 R6 K14 ["ClickableWhenViewportHidden"]
  GETTABLEKS R7 R0 K25 ["pluginButtonRef"]
  SETTABLEKS R7 R6 K15 ["ref"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K2 [+5]
  MOVE R4 R2
  LOADK R5 K2 ["PluginButton not initialized"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETIMPORT R3 K6 [settings]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K15 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose", "PopupTarget"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K8 ["CreateWidgetImmediately"]
  GETTABLEKS R8 R0 K16 ["state"]
  GETTABLEKS R7 R8 K17 ["enabled"]
  SETTABLEKS R7 R6 K9 ["Enabled"]
  LOADB R7 0
  SETTABLEKS R7 R6 K10 ["Modal"]
  GETTABLEKS R7 R0 K18 ["localization"]
  LOADK R9 K19 ["Plugin"]
  LOADK R10 K20 ["Name"]
  NAMECALL R7 R7 K21 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Title"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADN R8 18
  LOADN R9 94
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Size"]
  GETTABLEKS R7 R0 K25 ["onClose"]
  SETTABLEKS R7 R6 K13 ["OnClose"]
  GETTABLEKS R7 R2 K26 ["button"]
  SETTABLEKS R7 R6 K14 ["PopupTarget"]
  DUPTABLE R7 K29 [{"Wrapper", "StyleLink"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["Tag"]
  LOADK R12 K31 ["X-Fill X-Column"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K33 [{"VisualizationModesMainView"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K35 [{"VisualizationModeGroups"}]
  NEWTABLE R15 0 6
  DUPTABLE R16 K38 [{"title", "entries"}]
  LOADK R17 K39 ["Physics"]
  SETTABLEKS R17 R16 K36 ["title"]
  NEWTABLE R17 0 5
  DUPTABLE R18 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R19 K43 ["Decomposition geometry"]
  SETTABLEKS R19 R18 K36 ["title"]
  GETTABLEKS R19 R3 K39 ["Physics"]
  SETTABLEKS R19 R18 K40 ["settingInstance"]
  LOADK R19 K44 ["ShowDecompositionGeometry"]
  SETTABLEKS R19 R18 K41 ["propertyName"]
  DUPTABLE R19 K45 [{"title"}]
  LOADK R20 K46 ["Wind direction"]
  SETTABLEKS R20 R19 K36 ["title"]
  DUPTABLE R20 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R21 K47 ["Constraint details"]
  SETTABLEKS R21 R20 K36 ["title"]
  GETUPVAL R21 4
  SETTABLEKS R21 R20 K40 ["settingInstance"]
  LOADK R21 K48 ["ShowConstraintDetails"]
  SETTABLEKS R21 R20 K41 ["propertyName"]
  DUPTABLE R21 K45 [{"title"}]
  LOADK R22 K49 ["Welds"]
  SETTABLEKS R22 R21 K36 ["title"]
  DUPTABLE R22 K45 [{"title"}]
  LOADK R23 K50 ["Constraints on top"]
  SETTABLEKS R23 R22 K36 ["title"]
  SETLIST R17 R18 5 [1]
  SETTABLEKS R17 R16 K37 ["entries"]
  DUPTABLE R17 K38 [{"title", "entries"}]
  LOADK R18 K51 ["Rendering"]
  SETTABLEKS R18 R17 K36 ["title"]
  NEWTABLE R18 0 2
  DUPTABLE R19 K45 [{"title"}]
  LOADK R20 K52 ["Wireframe"]
  SETTABLEKS R20 R19 K36 ["title"]
  DUPTABLE R20 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R21 K53 ["Light guides"]
  SETTABLEKS R21 R20 K36 ["title"]
  GETTABLEKS R21 R3 K54 ["Studio"]
  SETTABLEKS R21 R20 K40 ["settingInstance"]
  LOADK R21 K55 ["Show Light Guides"]
  SETTABLEKS R21 R20 K41 ["propertyName"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K37 ["entries"]
  DUPTABLE R18 K38 [{"title", "entries"}]
  LOADK R19 K56 ["Pathfinding"]
  SETTABLEKS R19 R18 K36 ["title"]
  NEWTABLE R19 0 3
  DUPTABLE R20 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R21 K57 ["Pathfinding mesh"]
  SETTABLEKS R21 R20 K36 ["title"]
  GETTABLEKS R21 R3 K54 ["Studio"]
  SETTABLEKS R21 R20 K40 ["settingInstance"]
  LOADK R21 K58 ["Show Navigation Mesh"]
  SETTABLEKS R21 R20 K41 ["propertyName"]
  DUPTABLE R21 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R22 K59 ["Pathfinding labels"]
  SETTABLEKS R22 R21 K36 ["title"]
  GETTABLEKS R22 R3 K54 ["Studio"]
  SETTABLEKS R22 R21 K40 ["settingInstance"]
  LOADK R22 K60 ["Show Navigation Labels"]
  SETTABLEKS R22 R21 K41 ["propertyName"]
  DUPTABLE R22 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R23 K61 ["Pathfinding links"]
  SETTABLEKS R23 R22 K36 ["title"]
  GETTABLEKS R23 R3 K54 ["Studio"]
  SETTABLEKS R23 R22 K40 ["settingInstance"]
  LOADK R23 K62 ["Show Pathfinding Links"]
  SETTABLEKS R23 R22 K41 ["propertyName"]
  SETLIST R19 R20 3 [1]
  SETTABLEKS R19 R18 K37 ["entries"]
  DUPTABLE R19 K38 [{"title", "entries"}]
  LOADK R20 K63 ["Physics debug"]
  SETTABLEKS R20 R19 K36 ["title"]
  NEWTABLE R20 0 6
  DUPTABLE R21 K45 [{"title"}]
  LOADK R22 K64 ["Forces"]
  SETTABLEKS R22 R21 K36 ["title"]
  DUPTABLE R22 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R23 K65 ["Network owner"]
  SETTABLEKS R23 R22 K36 ["title"]
  GETTABLEKS R23 R3 K39 ["Physics"]
  SETTABLEKS R23 R22 K40 ["settingInstance"]
  LOADK R23 K66 ["AreOwnersShown"]
  SETTABLEKS R23 R22 K41 ["propertyName"]
  DUPTABLE R23 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R24 K67 ["Assemblies"]
  SETTABLEKS R24 R23 K36 ["title"]
  GETTABLEKS R24 R3 K39 ["Physics"]
  SETTABLEKS R24 R23 K40 ["settingInstance"]
  LOADK R24 K68 ["AreAssembliesShown"]
  SETTABLEKS R24 R23 K41 ["propertyName"]
  DUPTABLE R24 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R25 K69 ["Contact points"]
  SETTABLEKS R25 R24 K36 ["title"]
  GETTABLEKS R25 R3 K39 ["Physics"]
  SETTABLEKS R25 R24 K40 ["settingInstance"]
  LOADK R25 K70 ["AreContactPointsShown"]
  SETTABLEKS R25 R24 K41 ["propertyName"]
  DUPTABLE R25 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R26 K71 ["Awake parts"]
  SETTABLEKS R26 R25 K36 ["title"]
  GETTABLEKS R26 R3 K39 ["Physics"]
  SETTABLEKS R26 R25 K40 ["settingInstance"]
  LOADK R26 K72 ["AreAwakePartsHighlighted"]
  SETTABLEKS R26 R25 K41 ["propertyName"]
  DUPTABLE R26 K42 [{"title", "settingInstance", "propertyName"}]
  LOADK R27 K73 ["Mechanisms"]
  SETTABLEKS R27 R26 K36 ["title"]
  GETTABLEKS R27 R3 K39 ["Physics"]
  SETTABLEKS R27 R26 K40 ["settingInstance"]
  LOADK R27 K74 ["AreMechanismsShown"]
  SETTABLEKS R27 R26 K41 ["propertyName"]
  SETLIST R20 R21 6 [1]
  SETTABLEKS R20 R19 K37 ["entries"]
  DUPTABLE R20 K38 [{"title", "entries"}]
  LOADK R21 K75 ["Camera"]
  SETTABLEKS R21 R20 K36 ["title"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K45 [{"title"}]
  LOADK R23 K76 ["View slector"]
  SETTABLEKS R23 R22 K36 ["title"]
  DUPTABLE R23 K45 [{"title"}]
  LOADK R24 K77 ["Selection style"]
  SETTABLEKS R24 R23 K36 ["title"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K37 ["entries"]
  DUPTABLE R21 K38 [{"title", "entries"}]
  LOADK R22 K78 ["User"]
  SETTABLEKS R22 R21 K36 ["title"]
  NEWTABLE R22 0 2
  DUPTABLE R23 K45 [{"title"}]
  LOADK R24 K79 ["World view tags"]
  SETTABLEKS R24 R23 K36 ["title"]
  DUPTABLE R24 K45 [{"title"}]
  LOADK R25 K80 ["Audio regions"]
  SETTABLEKS R25 R24 K36 ["title"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K37 ["entries"]
  SETLIST R15 R16 6 [1]
  SETTABLEKS R15 R14 K34 ["VisualizationModeGroups"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["VisualizationModesMainView"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K27 ["Wrapper"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K28 ["StyleLink"]
  DUPTABLE R10 K82 [{"StyleSheet"}]
  GETTABLEKS R11 R0 K83 ["design"]
  SETTABLEKS R11 R10 K81 ["StyleSheet"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K28 ["StyleLink"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_10:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 5
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K7 ["DEPRECATED_stylizer"]
  GETTABLEKS R10 R0 K8 ["localization"]
  GETTABLEKS R11 R0 K9 ["analytics"]
  SETLIST R6 R7 5 [1]
  DUPTABLE R7 K12 [{"Toolbar", "Popup"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K16 [{"Title", "RenderButtons"}]
  LOADK R11 K17 ["Edit"]
  SETTABLEKS R11 R10 K14 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K15 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Toolbar"]
  JUMPIFNOT R4 [+5]
  MOVE R10 R3
  NAMECALL R8 R0 K18 ["renderPopup"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K11 ["Popup"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["VisualizationModes"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["UI"]
  GETTABLEKS R5 R4 K14 ["PluginButton"]
  GETTABLEKS R6 R4 K15 ["PluginToolbar"]
  GETTABLEKS R7 R4 K16 ["Pane"]
  GETTABLEKS R8 R4 K17 ["Popup"]
  GETTABLEKS R9 R3 K18 ["ContextServices"]
  GETTABLEKS R10 R9 K19 ["Plugin"]
  GETTABLEKS R11 R9 K20 ["Mouse"]
  GETTABLEKS R14 R3 K21 ["Style"]
  GETTABLEKS R13 R14 K22 ["Themes"]
  GETTABLEKS R12 R13 K23 ["StudioTheme"]
  GETTABLEKS R14 R3 K24 ["Styling"]
  GETTABLEKS R13 R14 K25 ["registerPluginStyles"]
  GETTABLEKS R17 R1 K26 ["Src"]
  GETTABLEKS R16 R17 K27 ["Resources"]
  GETTABLEKS R15 R16 K28 ["Localization"]
  GETTABLEKS R14 R15 K29 ["SourceStrings"]
  GETTABLEKS R18 R1 K26 ["Src"]
  GETTABLEKS R17 R18 K27 ["Resources"]
  GETTABLEKS R16 R17 K28 ["Localization"]
  GETTABLEKS R15 R16 K30 ["LocalizedStrings"]
  GETTABLEKS R17 R1 K26 ["Src"]
  GETTABLEKS R16 R17 K31 ["Components"]
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R16 K32 ["VisualizationModesMainView"]
  CALL R17 1 1
  GETTABLEKS R18 R2 K33 ["PureComponent"]
  LOADK R20 K34 ["VisualizationModesPlugin"]
  NAMECALL R18 R18 K35 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K36 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R19 R18 K37 ["init"]
  DUPCLOSURE R19 K38 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K39 ["renderButtons"]
  DUPCLOSURE R19 K40 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K41 ["renderPopup"]
  DUPCLOSURE R19 K42 [PROTO_11]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K43 ["render"]
  RETURN R18 1
