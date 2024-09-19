PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Material"]
  JUMPIFNOTEQ R0 R1 [+4]
  GETUPVAL R0 2
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 3
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Material"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plane"]
  GETTABLEKS R0 R1 K1 ["rawValue"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["setSetting"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Sphere"]
  GETTABLEKS R0 R1 K1 ["rawValue"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["setSetting"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R1 0 5
  DUPTABLE R2 K3 [{"Text", "Enabled", "OnItemClicked"}]
  GETUPVAL R3 0
  LOADK R5 K4 ["Browser"]
  LOADK R6 K5 ["Remove"]
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K0 ["Text"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["Enabled"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K2 ["OnItemClicked"]
  DUPTABLE R3 K3 [{"Text", "Enabled", "OnItemClicked"}]
  GETUPVAL R4 0
  LOADK R6 K4 ["Browser"]
  LOADK R7 K7 ["RemoveAll"]
  NAMECALL R4 R4 K6 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K0 ["Text"]
  GETUPVAL R6 4
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["Enabled"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  SETTABLEKS R4 R3 K2 ["OnItemClicked"]
  DUPTABLE R4 K9 [{"ShowSeparator"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["ShowSeparator"]
  DUPTABLE R5 K11 [{"Checked", "Text", "Enabled", "OnItemClicked"}]
  GETUPVAL R7 6
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K12 ["Plane"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K10 ["Checked"]
  GETUPVAL R6 0
  LOADK R8 K4 ["Browser"]
  LOADK R9 K13 ["PlanePreview"]
  NAMECALL R6 R6 K6 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K0 ["Text"]
  LOADB R6 1
  SETTABLEKS R6 R5 K1 ["Enabled"]
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  SETTABLEKS R6 R5 K2 ["OnItemClicked"]
  DUPTABLE R6 K11 [{"Checked", "Text", "Enabled", "OnItemClicked"}]
  GETUPVAL R8 6
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K14 ["Sphere"]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["Checked"]
  GETUPVAL R7 0
  LOADK R9 K4 ["Browser"]
  LOADK R10 K15 ["SpherePreview"]
  NAMECALL R7 R7 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K0 ["Text"]
  LOADB R7 1
  SETTABLEKS R7 R6 K1 ["Enabled"]
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  SETLIST R1 R2 5 [1]
  GETIMPORT R2 K18 [task.spawn]
  NEWCLOSURE R3 P4
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K3 [{"Id", "Loading", "Material"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["Loading"]
  SETTABLEKS R0 R1 K2 ["Material"]
  RETURN R1 1

PROTO_7:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+15]
  LOADN R3 1
  GETUPVAL R1 1
  LOADN R2 1
  FORNPREP R1
  DUPTABLE R6 K1 [{"Loading"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K0 ["Loading"]
  FASTCALL2 TABLE_INSERT R0 R6 [+4]
  MOVE R5 R0
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  FORNLOOP R1
  GETUPVAL R1 2
  GETUPVAL R2 3
  CALL R1 1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["append"]
  MOVE R3 R0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["map"]
  MOVE R5 R1
  DUPCLOSURE R6 K7 [PROTO_6]
  CALL R4 2 -1
  CALL R2 -1 0
  RETURN R0 1

PROTO_8:
  DUPTABLE R1 K2 [{"CellCount", "Text"}]
  GETTABLEKS R3 R0 K3 ["materialVariants"]
  LENGTH R2 R3
  SETTABLEKS R2 R1 K0 ["CellCount"]
  GETTABLEKS R2 R0 K4 ["filteredPromptText"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K5 ["promptText"]
  SETTABLEKS R2 R1 K1 ["Text"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["map"]
  GETUPVAL R1 1
  DUPCLOSURE R2 K1 [PROTO_8]
  CALL R0 2 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+31]
  GETUPVAL R2 1
  GETTABLEN R1 R2 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R2 R1 K2 ["promptText"]
  GETUPVAL R3 3
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEN R2 R0 1
  GETTABLEKS R3 R2 K3 ["CellCount"]
  GETUPVAL R4 4
  ADD R3 R3 R4
  SETTABLEKS R3 R2 K3 ["CellCount"]
  RETURN R0 1
  DUPTABLE R2 K5 [{"CellCount", "Text"}]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K3 ["CellCount"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K4 ["Text"]
  LOADN R5 1
  FASTCALL3 TABLE_INSERT R0 R5 R2
  MOVE R4 R0
  MOVE R6 R2
  GETIMPORT R3 K8 [table.insert]
  CALL R3 3 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getMaterialStatus"]
  GETTABLEKS R2 R0 K1 ["Material"]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["Uploaded"] [+32]
  DUPTABLE R2 K4 [{"StatusIcon"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K11 [{"BackgroundTransparency", "Image", "ImageColor3", "Position", "Size"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["BackgroundTransparency"]
  LOADK R6 K12 ["rbxasset://textures/StudioSharedUI/ready@2x.png"]
  SETTABLEKS R6 R5 K7 ["Image"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["StatusIconImageColor"]
  SETTABLEKS R6 R5 K8 ["ImageColor3"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K14 ["StatusIconPosition"]
  SETTABLEKS R6 R5 K9 ["Position"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["StatusIconSize"]
  SETTABLEKS R6 R5 K10 ["Size"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["StatusIcon"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Material"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["useContext"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETTABLEKS R2 R1 K4 ["promptGroups"]
  GETTABLEKS R3 R1 K5 ["removeMaterial"]
  GETTABLEKS R4 R1 K6 ["removeAllMaterials"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["useContext"]
  GETUPVAL R6 3
  CALL R5 1 1
  GETTABLEKS R6 R5 K7 ["lastGeneratedPromptText"]
  GETTABLEKS R7 R5 K8 ["isGenerating"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K9 ["Plugin"]
  GETTABLEKS R8 R9 K10 ["use"]
  CALL R8 0 1
  NAMECALL R8 R8 K11 ["get"]
  CALL R8 1 1
  GETUPVAL R9 5
  NAMECALL R9 R9 K10 ["use"]
  CALL R9 1 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["useContext"]
  GETUPVAL R11 6
  CALL R10 1 1
  GETTABLEKS R11 R10 K12 ["getSetting"]
  GETUPVAL R12 7
  CALL R11 1 1
  LOADNIL R12
  JUMPIFNOT R11 [+7]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K13 ["fromRawValue"]
  MOVE R14 R11
  CALL R13 1 1
  MOVE R12 R13
  JUMP [+5]
  GETTABLEKS R13 R10 K14 ["setSetting"]
  GETUPVAL R14 7
  GETUPVAL R15 9
  CALL R13 2 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K3 ["useContext"]
  GETUPVAL R14 10
  CALL R13 1 1
  GETTABLEKS R14 R13 K15 ["selectedMaterial"]
  GETTABLEKS R15 R13 K16 ["setSelectedMaterial"]
  JUMPIFNOT R14 [+4]
  GETUPVAL R16 11
  MOVE R17 R14
  CALL R16 1 1
  JUMP [+1]
  LOADNIL R16
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K17 ["useCallback"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE REF R12
  CAPTURE UPVAL U8
  CAPTURE VAL R10
  CAPTURE UPVAL U7
  CAPTURE UPVAL U12
  CAPTURE VAL R8
  NEWTABLE R19 0 5
  MOVE R20 R14
  MOVE R21 R2
  MOVE R22 R12
  MOVE R23 R3
  MOVE R24 R4
  SETLIST R19 R20 5 [1]
  CALL R17 2 1
  GETUPVAL R18 13
  CALL R18 0 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K18 ["useMemo"]
  NEWCLOSURE R20 P1
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE UPVAL U14
  CAPTURE VAL R2
  CAPTURE UPVAL U15
  NEWTABLE R21 0 2
  MOVE R22 R2
  MOVE R23 R7
  SETLIST R21 R22 2 [1]
  CALL R19 2 1
  GETUPVAL R20 16
  LOADK R22 K19 ["Browser"]
  NAMECALL R20 R20 K10 ["use"]
  CALL R20 2 1
  GETUPVAL R22 15
  GETTABLEKS R21 R22 K20 ["join"]
  GETTABLEKS R22 R20 K21 ["CellGroupHeader"]
  DUPTABLE R23 K23 [{"HeaderComponent"}]
  GETUPVAL R24 17
  SETTABLEKS R24 R23 K22 ["HeaderComponent"]
  CALL R21 2 1
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K18 ["useMemo"]
  NEWCLOSURE R23 P2
  CAPTURE UPVAL U15
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R18
  NEWTABLE R24 0 3
  MOVE R25 R2
  MOVE R26 R7
  MOVE R27 R6
  SETLIST R24 R25 3 [1]
  CALL R22 2 1
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K17 ["useCallback"]
  NEWCLOSURE R24 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U18
  CAPTURE VAL R20
  NEWTABLE R25 0 1
  MOVE R26 R1
  SETLIST R25 R26 1 [1]
  CALL R23 2 1
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K24 ["createElement"]
  GETUPVAL R25 19
  DUPTABLE R26 K27 [{"LayoutOrder", "Size"}]
  GETTABLEKS R27 R0 K25 ["LayoutOrder"]
  SETTABLEKS R27 R26 K25 ["LayoutOrder"]
  GETTABLEKS R27 R0 K26 ["Size"]
  SETTABLEKS R27 R26 K26 ["Size"]
  DUPTABLE R27 K29 [{"Grid"}]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K24 ["createElement"]
  GETUPVAL R29 20
  DUPTABLE R30 K40 [{"CellGroups", "CellGroupHeader", "Items", "MaterialPreviewGeometryType", "OnClick", "OnRenderItemChildren", "OnRightClick", "Padding", "ScrollingDirection", "SelectedItemId", "ShowGridLabels"}]
  SETTABLEKS R22 R30 K30 ["CellGroups"]
  SETTABLEKS R21 R30 K21 ["CellGroupHeader"]
  SETTABLEKS R19 R30 K31 ["Items"]
  SETTABLEKS R12 R30 K32 ["MaterialPreviewGeometryType"]
  NEWCLOSURE R31 P4
  CAPTURE VAL R15
  SETTABLEKS R31 R30 K33 ["OnClick"]
  SETTABLEKS R23 R30 K34 ["OnRenderItemChildren"]
  SETTABLEKS R17 R30 K35 ["OnRightClick"]
  GETTABLEKS R31 R20 K36 ["Padding"]
  SETTABLEKS R31 R30 K36 ["Padding"]
  GETIMPORT R31 K43 [Enum.ScrollingDirection.Y]
  SETTABLEKS R31 R30 K37 ["ScrollingDirection"]
  GETUPVAL R32 21
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  MOVE R31 R16
  JUMP [+1]
  MOVE R31 R14
  SETTABLEKS R31 R30 K38 ["SelectedItemId"]
  LOADB R31 0
  SETTABLEKS R31 R30 K39 ["ShowGridLabels"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K28 ["Grid"]
  CALL R24 3 -1
  CLOSEUPVALS R12
  RETURN R24 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["Localization"]
  GETTABLEKS R7 R5 K13 ["Stylizer"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Image"]
  GETTABLEKS R10 R8 K16 ["Pane"]
  GETTABLEKS R11 R8 K17 ["showContextMenu"]
  GETTABLEKS R13 R3 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["MaterialGrid"]
  GETTABLEKS R14 R3 K20 ["Enums"]
  GETTABLEKS R13 R14 K21 ["MaterialPreviewGeometryType"]
  GETTABLEKS R15 R3 K22 ["Util"]
  GETTABLEKS R14 R15 K23 ["getSerializedMaterialIdentifier"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K24 ["Src"]
  GETTABLEKS R17 R18 K18 ["Components"]
  GETTABLEKS R16 R17 K25 ["PromptGroupFooter"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K24 ["Src"]
  GETTABLEKS R18 R19 K26 ["Flags"]
  GETTABLEKS R17 R18 K27 ["getFFlagMaterialGeneratorNewUI"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K24 ["Src"]
  GETTABLEKS R19 R20 K26 ["Flags"]
  GETTABLEKS R18 R19 K28 ["getFFlagMaterialGeneratorFixSelectedMaterial"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K29 ["Resources"]
  GETTABLEKS R19 R20 K30 ["Theme"]
  CALL R18 1 1
  GETTABLEKS R20 R0 K24 ["Src"]
  GETTABLEKS R19 R20 K22 ["Util"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R19 K31 ["Constants"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R19 K32 ["GeneratedMaterialsContext"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R19 K33 ["GenerationContext"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R19 K34 ["PluginSettingsContext"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R25 R19 K35 ["PreviewContext"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R19 K36 ["getAllMaterialVariants"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R27 R19 K37 ["getSampleCount"]
  CALL R26 1 1
  GETTABLEKS R27 R20 K38 ["SETTING_GEOMETRY_TYPE"]
  GETTABLEKS R28 R20 K39 ["SETTING_GEOMETRY_TYPE_DEFAULT"]
  GETIMPORT R29 K5 [require]
  GETTABLEKS R31 R0 K24 ["Src"]
  GETTABLEKS R30 R31 K40 ["Types"]
  CALL R29 1 1
  DUPCLOSURE R30 K41 [PROTO_12]
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R23
  CAPTURE VAL R27
  CAPTURE VAL R13
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R17
  RETURN R30 1
