PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["FileController"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Row"]
  NAMECALL R0 R0 K3 ["requestPreview"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["FileController"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Row"]
  GETTABLEKS R2 R3 K3 ["filepath"]
  NAMECALL R0 R0 K4 ["requestFileSwap"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["Model"]
  NAMECALL R1 R0 K5 ["GetClassIcon"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_2]
  CALL R0 1 2
  JUMPIFNOT R0 [+7]
  GETIMPORT R2 K4 [next]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R1 1
  DUPTABLE R2 K8 [{"Image", "ImageRectOffset", "ImageRectSize"}]
  LOADK R3 K9 ["rbxasset://textures/ClassImages.png"]
  SETTABLEKS R3 R2 K5 ["Image"]
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["ImageRectOffset"]
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 16
  LOADN R5 16
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["ImageRectSize"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["Uploading"]
  JUMPIF R1 [+10]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K3 ["OnCheckboxToggle"]
  MOVE R2 R1
  GETTABLEKS R4 R0 K4 ["Row"]
  GETTABLEKS R3 R4 K5 ["filepath"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["ShowUploadWidget"]
  GETTABLEKS R2 R0 K3 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["Row"]
  GETTABLEKS R1 R2 K2 ["currentPreset"]
  GETTABLEKS R2 R0 K3 ["PresetController"]
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["applyPresetToAllSessions"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["QueueController"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Row"]
  NAMECALL R0 R0 K3 ["removeSelectedQueuedFile"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["Localization"]
  NEWTABLE R3 0 2
  DUPTABLE R4 K6 [{"Text", "OnItemClicked"}]
  LOADK R7 K7 ["AssetImportTree"]
  LOADK R8 K8 ["RightClickApplyToAll"]
  NAMECALL R5 R2 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Text"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K5 ["OnItemClicked"]
  DUPTABLE R5 K6 [{"Text", "OnItemClicked"}]
  LOADK R8 K10 ["ImportQueue"]
  LOADK R9 K11 ["RemoveFromQueue"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["Text"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K5 ["OnItemClicked"]
  SETLIST R3 R4 2 [1]
  GETUPVAL R4 3
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Row"]
  GETTABLEKS R2 R0 K2 ["enabled"]
  NOT R1 R2
  JUMPIF R1 [+5]
  GETTABLEKS R1 R0 K3 ["uploaded"]
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K4 ["importDataError"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Row"]
  GETTABLEKS R1 R0 K2 ["uploaded"]
  JUMPIF R1 [+3]
  GETTABLEKS R2 R0 K3 ["validSession"]
  NOT R1 R2
  RETURN R1 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Row"]
  GETTABLEKS R1 R0 K2 ["validSession"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Row"]
  GETTABLEKS R1 R0 K2 ["uploaded"]
  JUMPIF R1 [+10]
  GETTABLEKS R1 R0 K3 ["importDataError"]
  JUMPIF R1 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["CellProps"]
  GETTABLEKS R1 R2 K5 ["Uploading"]
  RETURN R1 1

PROTO_13:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["openImportPreview"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["reopenFileSelection"]
  DUPCLOSURE R1 K2 [PROTO_3]
  SETTABLEKS R1 R0 K3 ["getModelIcon"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["toggleCheckbox"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onStatusClicked"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  NEWCLOSURE R3 P7
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  SETTABLEKS R3 R0 K6 ["showContextMenu"]
  NEWCLOSURE R3 P8
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K7 ["isDisabled"]
  NEWCLOSURE R3 P9
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K8 ["isInactive"]
  NEWCLOSURE R3 P10
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K9 ["showCheckbox"]
  NEWCLOSURE R3 P11
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K10 ["disableCheckbox"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Row"]
  GETTABLEKS R3 R2 K2 ["enabled"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R2 K3 ["uploaded"]
  GETTABLEKS R5 R0 K4 ["showCheckbox"]
  CALL R5 0 1
  JUMPIFNOT R5 [+49]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createFragment"]
  DUPTABLE R5 K8 [{"Layout", "Checkbox"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  LOADK R7 K10 ["UIListLayout"]
  DUPTABLE R8 K14 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R9 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K11 ["FillDirection"]
  GETIMPORT R9 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K12 ["HorizontalAlignment"]
  GETIMPORT R9 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K13 ["VerticalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Layout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K25 [{"OnClick", "Key", "Checked", "Disabled"}]
  GETTABLEKS R9 R0 K26 ["toggleCheckbox"]
  SETTABLEKS R9 R8 K21 ["OnClick"]
  GETTABLEKS R9 R1 K27 ["RowIndex"]
  SETTABLEKS R9 R8 K22 ["Key"]
  SETTABLEKS R3 R8 K23 ["Checked"]
  GETTABLEKS R9 R0 K28 ["disableCheckbox"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K24 ["Disabled"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Checkbox"]
  CALL R4 1 1
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Style"]
  GETTABLEKS R4 R3 K3 ["ImportQueue"]
  GETTABLEKS R5 R4 K4 ["Padding"]
  GETTABLEKS R6 R4 K5 ["DisabledTransparancy"]
  GETTABLEKS R7 R1 K6 ["Row"]
  GETTABLEKS R9 R7 K7 ["errors"]
  GETTABLEKS R10 R7 K8 ["warnings"]
  ADD R8 R9 R10
  GETTABLEKS R9 R0 K9 ["getModelIcon"]
  CALL R9 0 1
  GETTABLEKS R11 R9 K10 ["ImageRectSize"]
  GETTABLEKS R10 R11 K11 ["X"]
  GETTABLEKS R12 R1 K12 ["CellProps"]
  GETTABLEKS R11 R12 K13 ["StatusIconSize"]
  LOADN R13 0
  JUMPIFNOTLT R13 R8 [+3]
  ADD R12 R11 R5
  JUMP [+1]
  LOADN R12 0
  GETTABLEKS R14 R7 K7 ["errors"]
  LOADN R15 0
  JUMPIFNOTLT R15 R14 [+4]
  GETTABLEKS R13 R3 K14 ["ErrorIcon"]
  JUMP [+2]
  GETTABLEKS R13 R3 K15 ["WarningIcon"]
  GETTABLEKS R15 R7 K7 ["errors"]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+4]
  GETTABLEKS R14 R7 K7 ["errors"]
  JUMP [+2]
  GETTABLEKS R14 R7 K8 ["warnings"]
  GETTABLEKS R16 R7 K7 ["errors"]
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+7]
  LOADK R17 K16 ["AssetImportTree"]
  LOADK R18 K17 ["Errors"]
  NAMECALL R15 R2 K18 ["getText"]
  CALL R15 3 1
  JUMP [+5]
  LOADK R17 K16 ["AssetImportTree"]
  LOADK R18 K19 ["Warnings"]
  NAMECALL R15 R2 K18 ["getText"]
  CALL R15 3 1
  LOADK R18 K16 ["AssetImportTree"]
  LOADK R19 K20 ["DescendantsContain2"]
  DUPTABLE R20 K23 [{"statusCount", "statusType"}]
  FASTCALL1 TOSTRING R14 [+3]
  MOVE R22 R14
  GETIMPORT R21 K25 [tostring]
  CALL R21 1 1
  SETTABLEKS R21 R20 K21 ["statusCount"]
  SETTABLEKS R15 R20 K22 ["statusType"]
  NAMECALL R16 R2 K18 ["getText"]
  CALL R16 4 1
  ADD R18 R10 R5
  ADD R17 R18 R12
  GETTABLEKS R18 R0 K26 ["isInactive"]
  CALL R18 0 1
  GETTABLEKS R19 R0 K27 ["isDisabled"]
  CALL R19 0 1
  GETTABLEKS R21 R1 K12 ["CellProps"]
  GETTABLEKS R20 R21 K28 ["Uploading"]
  JUMPIFNOT R18 [+2]
  GETUPVAL R21 0
  JUMP [+1]
  GETUPVAL R21 1
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K29 ["createElement"]
  GETUPVAL R23 3
  DUPTABLE R24 K33 [{"Layout", "HorizontalAlignment", "Padding", "Spacing"}]
  GETIMPORT R25 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K30 ["Layout"]
  GETIMPORT R25 K39 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R25 R24 K31 ["HorizontalAlignment"]
  DUPTABLE R25 K41 [{"Left", "Right"}]
  SETTABLEKS R5 R25 K38 ["Left"]
  SETTABLEKS R5 R25 K40 ["Right"]
  SETTABLEKS R25 R24 K4 ["Padding"]
  SETTABLEKS R5 R24 K32 ["Spacing"]
  DUPTABLE R25 K45 [{"Icon", "AssetName", "Status"}]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K29 ["createElement"]
  GETUPVAL R27 3
  DUPTABLE R28 K50 [{"LayoutOrder", "Size", "Image", "ImageTransparency"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K46 ["LayoutOrder"]
  GETIMPORT R29 K53 [UDim2.fromOffset]
  GETTABLEKS R31 R9 K10 ["ImageRectSize"]
  GETTABLEKS R30 R31 K11 ["X"]
  GETTABLEKS R32 R9 K10 ["ImageRectSize"]
  GETTABLEKS R31 R32 K54 ["Y"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K47 ["Size"]
  GETTABLEKS R29 R9 K48 ["Image"]
  SETTABLEKS R29 R28 K48 ["Image"]
  JUMPIFNOT R19 [+2]
  MOVE R29 R6
  JUMP [+1]
  LOADN R29 0
  SETTABLEKS R29 R28 K49 ["ImageTransparency"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K42 ["Icon"]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K29 ["createElement"]
  MOVE R27 R21
  DUPTABLE R28 K59 [{"LayoutOrder", "TextXAlignment", "OnClick", "Text", "Size", "TextTruncate", "Style"}]
  LOADN R29 2
  SETTABLEKS R29 R28 K46 ["LayoutOrder"]
  GETIMPORT R29 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K55 ["TextXAlignment"]
  JUMPIF R18 [+4]
  JUMPIF R20 [+3]
  GETTABLEKS R29 R0 K61 ["openImportPreview"]
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K56 ["OnClick"]
  GETTABLEKS R29 R7 K62 ["assetName"]
  SETTABLEKS R29 R28 K57 ["Text"]
  GETIMPORT R29 K64 [UDim2.new]
  LOADN R30 1
  MINUS R31 R17
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K47 ["Size"]
  GETIMPORT R29 K66 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R29 R28 K58 ["TextTruncate"]
  JUMPIFNOT R19 [+3]
  JUMPIF R18 [+2]
  LOADK R29 K67 ["Disabled"]
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K2 ["Style"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K43 ["AssetName"]
  LOADN R27 0
  JUMPIFNOTLT R27 R8 [+36]
  GETTABLEKS R27 R7 K68 ["uploaded"]
  JUMPIF R27 [+32]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K29 ["createElement"]
  GETUPVAL R27 4
  DUPTABLE R28 K69 [{"LayoutOrder", "Style", "Size"}]
  LOADN R29 3
  SETTABLEKS R29 R28 K46 ["LayoutOrder"]
  DUPTABLE R29 K70 [{"Image"}]
  GETTABLEKS R30 R13 K48 ["Image"]
  SETTABLEKS R30 R29 K48 ["Image"]
  SETTABLEKS R29 R28 K2 ["Style"]
  GETTABLEKS R29 R13 K47 ["Size"]
  SETTABLEKS R29 R28 K47 ["Size"]
  DUPTABLE R29 K72 [{"Tooltip"}]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K29 ["createElement"]
  GETUPVAL R31 5
  DUPTABLE R32 K73 [{"Text"}]
  SETTABLEKS R16 R32 K57 ["Text"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K71 ["Tooltip"]
  CALL R26 3 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K44 ["Status"]
  CALL R22 3 -1
  RETURN R22 -1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Row"]
  GETTABLEKS R3 R1 K2 ["Style"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R6 K4 ["Error"]
  LOADK R7 K5 ["WindowTitle"]
  NAMECALL R4 R4 K6 ["getText"]
  CALL R4 3 1
  GETTABLEKS R6 R0 K7 ["isInactive"]
  CALL R6 0 1
  NOT R5 R6
  JUMPIFNOT R5 [+5]
  GETTABLEKS R7 R1 K8 ["CellProps"]
  GETTABLEKS R6 R7 K9 ["Uploading"]
  NOT R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["createFragment"]
  DUPTABLE R7 K13 [{"PresetSelector", "Padding"}]
  JUMPIFNOT R5 [+13]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K17 [{"QueueItem", "Enabled"}]
  SETTABLEKS R2 R10 K15 ["QueueItem"]
  GETTABLEKS R11 R2 K18 ["enabled"]
  SETTABLEKS R11 R10 K16 ["Enabled"]
  CALL R8 2 1
  JUMP [+15]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K20 [{"Text"}]
  GETTABLEKS R12 R2 K21 ["validSession"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R2 K22 ["currentPreset"]
  JUMP [+1]
  MOVE R11 R4
  SETTABLEKS R11 R10 K19 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["PresetSelector"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["createElement"]
  LOADK R9 K23 ["UIPadding"]
  GETTABLEKS R11 R3 K24 ["AssetListCell"]
  GETTABLEKS R10 R11 K12 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Padding"]
  CALL R6 1 -1
  RETURN R6 -1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Style"]
  GETTABLEKS R3 R2 K2 ["ImportQueue"]
  GETTABLEKS R4 R3 K3 ["Padding"]
  GETTABLEKS R5 R1 K4 ["Width"]
  JUMPIF R5 [+8]
  GETIMPORT R5 K7 [UDim.new]
  GETTABLEKS R8 R1 K9 ["Columns"]
  LENGTH R7 R8
  DIVRK R6 R8 K7 [UDim.new]
  LOADN R7 0
  CALL R5 2 1
  GETTABLEKS R7 R1 K10 ["CellProps"]
  GETTABLEKS R6 R7 K11 ["Uploading"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["createFragment"]
  DUPTABLE R8 K14 [{"Padding", "Path"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K15 ["createElement"]
  LOADK R10 K16 ["UIPadding"]
  DUPTABLE R11 K19 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K7 [UDim.new]
  LOADN R13 0
  MOVE R14 R4
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["PaddingLeft"]
  GETIMPORT R12 K7 [UDim.new]
  LOADN R13 0
  MOVE R14 R4
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K3 ["Padding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K24 [{"Layout", "HorizontalAlignment", "Spacing", "ClipsDescendants"}]
  GETIMPORT R12 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K20 ["Layout"]
  GETIMPORT R12 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K21 ["HorizontalAlignment"]
  SETTABLEKS R4 R11 K22 ["Spacing"]
  LOADB R12 1
  SETTABLEKS R12 R11 K23 ["ClipsDescendants"]
  DUPTABLE R12 K32 [{"PathText"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K39 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextWrapped", "OnClick", "Style"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K33 ["LayoutOrder"]
  GETIMPORT R16 K41 [UDim2.new]
  GETTABLEKS R17 R5 K42 ["Scale"]
  GETTABLEKS R18 R5 K43 ["Offset"]
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K34 ["Size"]
  GETIMPORT R16 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K35 ["AutomaticSize"]
  GETTABLEKS R17 R1 K46 ["Row"]
  GETTABLEKS R16 R17 K47 ["filepath"]
  SETTABLEKS R16 R15 K36 ["Text"]
  LOADB R16 0
  SETTABLEKS R16 R15 K37 ["TextWrapped"]
  JUMPIF R6 [+3]
  GETTABLEKS R16 R0 K48 ["reopenFileSelection"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K38 ["OnClick"]
  GETTABLEKS R17 R0 K49 ["isDisabled"]
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADK R16 K50 ["Disabled"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K1 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["PathText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Path"]
  CALL R7 1 -1
  RETURN R7 -1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Row"]
  GETTABLEKS R3 R2 K2 ["uploadResults"]
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R1 K3 ["Style"]
  GETTABLEKS R5 R3 K4 ["Icons"]
  GETTABLEKS R4 R5 K5 ["SuccessIconSolid"]
  GETTABLEKS R6 R3 K4 ["Icons"]
  GETTABLEKS R5 R6 K6 ["ErrorIcon"]
  GETTABLEKS R7 R3 K4 ["Icons"]
  GETTABLEKS R6 R7 K7 ["SmallLength"]
  GETTABLEKS R8 R3 K8 ["ImportQueue"]
  GETTABLEKS R7 R8 K9 ["IconButtonSize"]
  GETTABLEKS R10 R2 K2 ["uploadResults"]
  GETTABLEKS R9 R10 K10 ["Succeeded"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R4
  JUMP [+1]
  MOVE R8 R5
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["createFragment"]
  DUPTABLE R10 K14 [{"Layout", "Alert"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K15 ["createElement"]
  LOADK R12 K16 ["UIListLayout"]
  DUPTABLE R13 K19 [{"HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R14 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K17 ["HorizontalAlignment"]
  GETIMPORT R14 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K18 ["VerticalAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["Layout"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K15 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K29 [{"IconSize", "LeftIcon", "OnClick", "Style", "Size", "LayoutOrder"}]
  SETTABLEKS R6 R13 K24 ["IconSize"]
  SETTABLEKS R8 R13 K25 ["LeftIcon"]
  GETTABLEKS R14 R0 K30 ["onStatusClicked"]
  SETTABLEKS R14 R13 K26 ["OnClick"]
  LOADK R14 K31 ["IconOnly"]
  SETTABLEKS R14 R13 K3 ["Style"]
  GETIMPORT R14 K34 [UDim2.fromOffset]
  MOVE R15 R7
  MOVE R16 R7
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K28 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Alert"]
  CALL R9 1 -1
  RETURN R9 -1

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["Columns"]
  GETTABLEKS R5 R1 K2 ["ColumnIndex"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K3 ["Key"]
  JUMPIFNOTEQKS R2 K4 ["Checkbox"] [+5]
  NAMECALL R3 R0 K5 ["renderCheckboxCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K6 ["Asset"] [+5]
  NAMECALL R3 R0 K7 ["renderAssetCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K8 ["Preset"] [+5]
  NAMECALL R3 R0 K9 ["renderPresetCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K10 ["Path"] [+5]
  NAMECALL R3 R0 K11 ["renderPathCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K12 ["Status"] [+5]
  NAMECALL R3 R0 K13 ["renderStatusCell"]
  CALL R3 1 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Style"]
  GETTABLEKS R3 R1 K2 ["Width"]
  JUMPIF R3 [+8]
  GETIMPORT R3 K5 [UDim.new]
  GETTABLEKS R6 R1 K7 ["Columns"]
  LENGTH R5 R6
  DIVRK R4 R6 K5 [UDim.new]
  LOADN R5 0
  CALL R3 2 1
  GETTABLEKS R5 R1 K8 ["StyleModifier"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["Hover"]
  JUMPIFNOTEQ R5 R6 [+6]
  GETTABLEKS R5 R1 K10 ["CellProps"]
  GETTABLEKS R4 R5 K11 ["ActionSelectedOverride"]
  JUMP [+2]
  GETTABLEKS R4 R1 K12 ["BackgroundOdd"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K21 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants", "OnRightClick"}]
  GETTABLEKS R8 R1 K22 ["ColumnIndex"]
  SETTABLEKS R8 R7 K14 ["LayoutOrder"]
  SETTABLEKS R4 R7 K15 ["BackgroundColor3"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BorderSizePixel"]
  GETTABLEKS R8 R2 K23 ["Border"]
  SETTABLEKS R8 R7 K17 ["BorderColor3"]
  GETIMPORT R8 K25 [UDim2.new]
  GETTABLEKS R9 R3 K26 ["Scale"]
  GETTABLEKS R10 R3 K27 ["Offset"]
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["ClipsDescendants"]
  GETTABLEKS R8 R0 K28 ["showContextMenu"]
  SETTABLEKS R8 R7 K20 ["OnRightClick"]
  DUPTABLE R8 K30 [{"Content"}]
  NAMECALL R9 R0 K31 ["getContent"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K29 ["Content"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R6 R2 K13 ["UI"]
  GETTABLEKS R7 R6 K14 ["Checkbox"]
  GETTABLEKS R8 R6 K15 ["IconButton"]
  GETTABLEKS R9 R6 K16 ["Image"]
  GETTABLEKS R10 R6 K17 ["LinkText"]
  GETTABLEKS R11 R6 K18 ["Pane"]
  GETTABLEKS R12 R6 K19 ["showContextMenu"]
  GETTABLEKS R13 R6 K20 ["TextLabel"]
  GETTABLEKS R14 R6 K21 ["Tooltip"]
  GETTABLEKS R16 R0 K22 ["Src"]
  GETTABLEKS R15 R16 K23 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R15 K24 ["Presets"]
  GETTABLEKS R17 R18 K25 ["PresetSelector"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K26 ["Controllers"]
  GETTABLEKS R18 R19 K27 ["FileController"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K22 ["Src"]
  GETTABLEKS R20 R21 K26 ["Controllers"]
  GETTABLEKS R19 R20 K28 ["PresetController"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K22 ["Src"]
  GETTABLEKS R21 R22 K26 ["Controllers"]
  GETTABLEKS R20 R21 K29 ["QueueController"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K30 ["PureComponent"]
  LOADK R22 K31 ["AssetListCell"]
  NAMECALL R20 R20 K32 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K33 [PROTO_13]
  CAPTURE VAL R12
  SETTABLEKS R21 R20 K34 ["init"]
  DUPCLOSURE R21 K35 [PROTO_14]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K36 ["renderCheckboxCell"]
  DUPCLOSURE R21 K37 [PROTO_15]
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R14
  SETTABLEKS R21 R20 K38 ["renderAssetCell"]
  DUPCLOSURE R21 K39 [PROTO_16]
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K40 ["renderPresetCell"]
  DUPCLOSURE R21 K41 [PROTO_17]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K42 ["renderPathCell"]
  DUPCLOSURE R21 K43 [PROTO_18]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R21 R20 K44 ["renderStatusCell"]
  DUPCLOSURE R21 K45 [PROTO_19]
  SETTABLEKS R21 R20 K46 ["getContent"]
  DUPCLOSURE R21 K47 [PROTO_20]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K48 ["render"]
  GETTABLEKS R21 R3 K49 ["withContext"]
  DUPTABLE R22 K51 [{"Localization", "FileController", "PresetController", "QueueController", "Plugin"}]
  SETTABLEKS R4 R22 K10 ["Localization"]
  SETTABLEKS R17 R22 K27 ["FileController"]
  SETTABLEKS R18 R22 K28 ["PresetController"]
  SETTABLEKS R19 R22 K29 ["QueueController"]
  GETTABLEKS R23 R3 K50 ["Plugin"]
  SETTABLEKS R23 R22 K50 ["Plugin"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  RETURN R20 1
