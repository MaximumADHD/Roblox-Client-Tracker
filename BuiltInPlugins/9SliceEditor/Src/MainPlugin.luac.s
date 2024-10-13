PROTO_0:
  GETUPVAL R0 0
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["timeOpened"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["analytics"]
  LOADK R2 K4 ["sliceEditorOpened"]
  NAMECALL R0 R0 K5 ["report"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["timeOpened"]
  JUMPIFNOT R0 [+14]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["analytics"]
  LOADK R2 K2 ["sliceEditorOpenTime"]
  GETIMPORT R4 K4 [tick]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["timeOpened"]
  SUB R3 R4 R5
  NAMECALL R0 R0 K5 ["report"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["reportClose"]
  CALL R0 0 0
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["enabled"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  JUMPIF R2 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["reportOpen"]
  CALL R2 0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["analytics"]
  LOADK R4 K4 ["sliceEditorImageLoadedIntoEditor"]
  NAMECALL R2 R2 K5 ["report"]
  CALL R2 2 0
  DUPTABLE R2 K7 [{"enabled", "selectedInstance"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["enabled"]
  MOVE R3 R0
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["None"]
  SETTABLEKS R3 R2 K6 ["selectedInstance"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["Dictionary"]
  GETTABLEKS R3 R4 K10 ["join"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"sliceRect"}]
  SETTABLEKS R0 R3 K0 ["sliceRect"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"loading"}]
  SETTABLEKS R0 R3 K0 ["loading"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOTEQKS R0 K0 ["ImageRectOffset"] [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"imageRectOffset"}]
  SETTABLEKS R1 R4 K1 ["imageRectOffset"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["ImageRectSize"] [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"imageRectSize"}]
  SETTABLEKS R1 R4 K5 ["imageRectSize"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K7 ["ImageColor3"] [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K9 [{"imageColor3"}]
  SETTABLEKS R1 R4 K8 ["imageColor3"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K10 ["ResampleMode"] [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K12 [{"resampleMode"}]
  SETTABLEKS R1 R4 K11 ["resampleMode"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"contentIdToLoad"}]
  SETTABLEKS R0 R3 K0 ["contentIdToLoad"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Localization"]
  GETTABLEKS R2 R3 K1 ["new"]
  DUPTABLE R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["translationResourceTable"]
  LOADK R4 K6 ["9SliceEditor"]
  SETTABLEKS R4 R3 K4 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["localization"]
  LOADNIL R2
  SETTABLEKS R2 R0 K8 ["analytics"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["Analytics"]
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 3
  CALL R2 1 1
  SETTABLEKS R2 R0 K8 ["analytics"]
  DUPTABLE R2 K20 [{"enabled", "pixelDimensions", "sliceRect", "revertSliceRect", "imageRectSize", "imageRectOffset", "imageColor3", "selectedInstance", "title", "loading"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["enabled"]
  GETIMPORT R3 K22 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K11 ["pixelDimensions"]
  NEWTABLE R3 0 4
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  SETLIST R3 R4 4 [1]
  SETTABLEKS R3 R2 K12 ["sliceRect"]
  NEWTABLE R3 0 4
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  SETLIST R3 R4 4 [1]
  SETTABLEKS R3 R2 K13 ["revertSliceRect"]
  GETIMPORT R3 K22 [Vector2.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K14 ["imageRectSize"]
  GETIMPORT R3 K22 [Vector2.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K15 ["imageRectOffset"]
  GETIMPORT R3 K24 [Color3.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["imageColor3"]
  LOADNIL R3
  SETTABLEKS R3 R2 K17 ["selectedInstance"]
  GETTABLEKS R3 R0 K7 ["localization"]
  LOADK R5 K25 ["Plugin"]
  LOADK R6 K26 ["Name"]
  NAMECALL R3 R3 K27 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K18 ["title"]
  LOADB R3 0
  SETTABLEKS R3 R2 K19 ["loading"]
  SETTABLEKS R2 R0 K28 ["state"]
  LOADNIL R2
  SETTABLEKS R2 R0 K29 ["timeOpened"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K30 ["reportOpen"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K31 ["reportClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K32 ["onClose"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K33 ["onInstanceUnderEditChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K34 ["onSliceRectChanged"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K35 ["onLoadingChanged"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K36 ["onInstancePropertyChanged"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K37 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K38 ["loadingImageRef"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K39 ["onRequestToLoadImage"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["enabled"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["reportClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_10:
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
  GETUPVAL R9 3
  CALL R9 0 1
  GETTABLEKS R10 R0 K7 ["localization"]
  GETTABLEKS R11 R0 K8 ["analytics"]
  SETLIST R6 R7 5 [1]
  DUPTABLE R7 K11 [{"InstanceUnderEditManager", "MainWidget"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K21 [{"WidgetEnabled", "InstanceUnderEditChanged", "InstancePropertyChanged", "SliceRectChanged", "LoadingChanged", "InitialEditorInstanceRequest", "RequestToLoadImage", "LoadingImageRef"}]
  SETTABLEKS R4 R10 K13 ["WidgetEnabled"]
  GETTABLEKS R11 R0 K22 ["onInstanceUnderEditChanged"]
  SETTABLEKS R11 R10 K14 ["InstanceUnderEditChanged"]
  GETTABLEKS R11 R0 K23 ["onInstancePropertyChanged"]
  SETTABLEKS R11 R10 K15 ["InstancePropertyChanged"]
  GETTABLEKS R11 R0 K24 ["onSliceRectChanged"]
  SETTABLEKS R11 R10 K16 ["SliceRectChanged"]
  GETTABLEKS R11 R0 K25 ["onLoadingChanged"]
  SETTABLEKS R11 R10 K17 ["LoadingChanged"]
  GETTABLEKS R11 R1 K18 ["InitialEditorInstanceRequest"]
  SETTABLEKS R11 R10 K18 ["InitialEditorInstanceRequest"]
  GETTABLEKS R11 R0 K26 ["onRequestToLoadImage"]
  SETTABLEKS R11 R10 K19 ["RequestToLoadImage"]
  GETTABLEKS R11 R0 K27 ["loadingImageRef"]
  SETTABLEKS R11 R10 K20 ["LoadingImageRef"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["InstanceUnderEditManager"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K37 [{"Id", "Enabled", "Title", "InitialDockState", "ZIndexBehavior", "Size", "MinSize", "OnClose", "ShouldRestore"}]
  LOADK R11 K38 ["SliceEditor"]
  SETTABLEKS R11 R10 K28 ["Id"]
  SETTABLEKS R4 R10 K29 ["Enabled"]
  GETTABLEKS R11 R2 K39 ["title"]
  SETTABLEKS R11 R10 K30 ["Title"]
  GETIMPORT R11 K42 [Enum.InitialDockState.Float]
  SETTABLEKS R11 R10 K31 ["InitialDockState"]
  GETIMPORT R11 K44 [Enum.ZIndexBehavior.Global]
  SETTABLEKS R11 R10 K32 ["ZIndexBehavior"]
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K45 ["WIDGET_SIZE"]
  SETTABLEKS R11 R10 K33 ["Size"]
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K45 ["WIDGET_SIZE"]
  SETTABLEKS R11 R10 K34 ["MinSize"]
  GETTABLEKS R11 R0 K46 ["onClose"]
  SETTABLEKS R11 R10 K35 ["OnClose"]
  LOADB R11 0
  SETTABLEKS R11 R10 K36 ["ShouldRestore"]
  DUPTABLE R11 K47 [{"SliceEditor"}]
  MOVE R12 R4
  JUMPIFNOT R12 [+54]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K58 [{"onClose", "pixelDimensions", "selectedObject", "sliceRect", "revertSliceRect", "loading", "imageRectSize", "imageRectOffset", "imageColor3", "resampleMode", "contentIdToLoad", "loadingImageRef"}]
  GETTABLEKS R15 R0 K46 ["onClose"]
  SETTABLEKS R15 R14 K46 ["onClose"]
  GETTABLEKS R15 R2 K48 ["pixelDimensions"]
  SETTABLEKS R15 R14 K48 ["pixelDimensions"]
  GETTABLEKS R15 R2 K59 ["selectedInstance"]
  SETTABLEKS R15 R14 K49 ["selectedObject"]
  GETTABLEKS R15 R2 K50 ["sliceRect"]
  SETTABLEKS R15 R14 K50 ["sliceRect"]
  GETTABLEKS R15 R2 K51 ["revertSliceRect"]
  SETTABLEKS R15 R14 K51 ["revertSliceRect"]
  GETTABLEKS R15 R2 K52 ["loading"]
  SETTABLEKS R15 R14 K52 ["loading"]
  GETTABLEKS R15 R2 K53 ["imageRectSize"]
  SETTABLEKS R15 R14 K53 ["imageRectSize"]
  GETTABLEKS R15 R2 K54 ["imageRectOffset"]
  SETTABLEKS R15 R14 K54 ["imageRectOffset"]
  GETTABLEKS R15 R2 K55 ["imageColor3"]
  SETTABLEKS R15 R14 K55 ["imageColor3"]
  GETTABLEKS R15 R2 K56 ["resampleMode"]
  SETTABLEKS R15 R14 K56 ["resampleMode"]
  GETTABLEKS R15 R2 K57 ["contentIdToLoad"]
  SETTABLEKS R15 R14 K57 ["contentIdToLoad"]
  GETTABLEKS R15 R0 K27 ["loadingImageRef"]
  SETTABLEKS R15 R14 K27 ["loadingImageRef"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["SliceEditor"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["Plugin"]
  GETTABLEKS R8 R6 K15 ["Mouse"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["MakeTheme"]
  CALL R9 1 1
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K16 ["Resources"]
  GETTABLEKS R11 R12 K18 ["Localization"]
  GETTABLEKS R10 R11 K19 ["SourceStrings"]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K16 ["Resources"]
  GETTABLEKS R12 R13 K18 ["Localization"]
  GETTABLEKS R11 R12 K20 ["LocalizedStrings"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K21 ["Components"]
  GETTABLEKS R13 R14 K22 ["SliceEditorMain"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K23 ["InstanceUnderEditManager"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K16 ["Resources"]
  GETTABLEKS R15 R16 K24 ["AnalyticsHandlers"]
  CALL R14 1 1
  GETTABLEKS R15 R3 K25 ["UI"]
  GETTABLEKS R16 R15 K26 ["DockWidget"]
  GETTABLEKS R17 R1 K27 ["PureComponent"]
  LOADK R19 K28 ["MainPlugin"]
  NAMECALL R17 R17 K29 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K31 ["init"]
  DUPCLOSURE R18 K32 [PROTO_9]
  SETTABLEKS R18 R17 K33 ["willUnmount"]
  DUPCLOSURE R18 K34 [PROTO_10]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K35 ["render"]
  RETURN R17 1
