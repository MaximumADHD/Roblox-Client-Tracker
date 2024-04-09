PROTO_0:
  LOADB R1 1
  JUMPIFEQKS R0 K0 ["attachments"] [+5]
  JUMPIFEQKS R0 K1 ["none"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Deactivate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_3:
  NOT R1 R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_3]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R1 K0 ["none"]
  RETURN R1 1
  GETUPVAL R1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R3 K7 [{"Type", "Tooltip", "Icon", "Selected", "OnClick", "Enabled", "TooltipDescription"}]
  LOADK R4 K8 ["Button"]
  SETTABLEKS R4 R3 K0 ["Type"]
  SETTABLEKS R2 R3 K1 ["Tooltip"]
  LOADK R5 K9 ["%*/%*.png"]
  LOADK R7 K10 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large"]
  MOVE R8 R1
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["Icon"]
  GETUPVAL R5 0
  JUMPIFEQ R5 R0 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Selected"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K4 ["OnClick"]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["Enabled"]
  LOADNIL R4
  SETTABLEKS R4 R3 K6 ["TooltipDescription"]
  RETURN R3 1

PROTO_8:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["AvatarPreviewerEditingTools_Dev is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["useState"]
  LOADK R3 K5 ["attachments"]
  CALL R2 1 2
  GETUPVAL R4 3
  NAMECALL R4 R4 K3 ["use"]
  CALL R4 1 1
  NAMECALL R4 R4 K6 ["get"]
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R7 4
  GETUPVAL R8 5
  MOVE R9 R2
  CALL R7 2 2
  NEWTABLE R9 0 1
  DUPTABLE R10 K13 [{"Type", "Tooltip", "Icon", "Selected", "OnClick"}]
  LOADK R11 K14 ["Button"]
  SETTABLEKS R11 R10 K8 ["Type"]
  LOADK R13 K15 ["EditingTools"]
  LOADK R14 K16 ["ShowAccessories"]
  NAMECALL R11 R1 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Tooltip"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["createElement"]
  LOADK R12 K19 ["Frame"]
  DUPTABLE R13 K23 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R14 K26 [Color3.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  CALL R14 3 1
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K21 ["BackgroundTransparency"]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["Icon"]
  SETTABLEKS R7 R10 K11 ["Selected"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K12 ["OnClick"]
  SETLIST R9 R10 1 [1]
  NEWCLOSURE R10 P2
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K30 ["Fragment"]
  NEWTABLE R13 0 0
  NEWTABLE R14 4 0
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K31 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R15 R16 K32 ["EditingToolbar"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K18 ["createElement"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K33 ["Toolbar"]
  DUPTABLE R18 K36 [{"InitialPosition", "VerticalItems"}]
  LOADK R19 K37 ["Top"]
  SETTABLEKS R19 R18 K34 ["InitialPosition"]
  NEWTABLE R19 0 2
  MOVE R20 R10
  LOADK R21 K5 ["attachments"]
  LOADK R22 K38 ["attachments_tool"]
  LOADK R25 K15 ["EditingTools"]
  LOADK R26 K39 ["AttachmentsTool"]
  NAMECALL R23 R1 K17 ["getText"]
  CALL R23 3 -1
  CALL R20 -1 1
  MOVE R21 R10
  LOADK R22 K40 ["cage"]
  LOADK R23 K41 ["cage_tool"]
  LOADK R26 K15 ["EditingTools"]
  LOADK R27 K42 ["CageTool"]
  NAMECALL R24 R1 K17 ["getText"]
  CALL R24 3 -1
  CALL R21 -1 1
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K35 ["VerticalItems"]
  CALL R16 2 1
  SETTABLE R16 R14 R15
  MOVE R15 R5
  JUMPIFNOT R15 [+38]
  LOADB R15 0
  JUMPIFEQKS R2 K43 ["none"] [+36]
  JUMPIFNOTEQKS R2 K5 ["attachments"] [+12]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K18 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K46 [{"worldModel", "additionalToolbarItems"}]
  SETTABLEKS R5 R17 K44 ["worldModel"]
  SETTABLEKS R9 R17 K45 ["additionalToolbarItems"]
  CALL R15 2 1
  JUMP [+22]
  GETUPVAL R16 9
  CALL R16 0 1
  JUMPIFNOT R16 [+16]
  JUMPIFNOTEQKS R2 K40 ["cage"] [+15]
  LOADB R15 0
  JUMPIFEQKNIL R5 [+15]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K18 ["createElement"]
  GETUPVAL R16 10
  DUPTABLE R17 K48 [{"mannequin", "additionalToolbarItems"}]
  SETTABLEKS R5 R17 K47 ["mannequin"]
  SETTABLEKS R9 R17 K45 ["additionalToolbarItems"]
  CALL R15 2 1
  JUMP [+3]
  GETUPVAL R15 11
  MOVE R16 R2
  CALL R15 1 1
  SETTABLEKS R15 R14 K49 ["Tool"]
  LOADB R15 0
  JUMPIFEQKS R2 K43 ["none"] [+17]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K18 ["createElement"]
  GETUPVAL R16 12
  DUPTABLE R17 K54 [{"base", "clonedDummy", "setClonedDummy", "includeAccessories"}]
  GETTABLEKS R18 R0 K44 ["worldModel"]
  SETTABLEKS R18 R17 K50 ["base"]
  SETTABLEKS R5 R17 K51 ["clonedDummy"]
  SETTABLEKS R6 R17 K52 ["setClonedDummy"]
  SETTABLEKS R7 R17 K53 ["includeAccessories"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K55 ["ClonedDummy"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ViewportToolingFramework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K14 ["exhaustiveMatch"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useKeyedState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K17 ["AttachmentTool"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K18 ["CageEditingTool"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K19 ["ClonedDummy"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K20 ["Flags"]
  GETTABLEKS R12 R13 K21 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K20 ["Flags"]
  GETTABLEKS R13 R14 K22 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R12 1 1
  GETTABLEKS R14 R1 K23 ["ContextServices"]
  GETTABLEKS R13 R14 K24 ["Localization"]
  GETTABLEKS R15 R1 K23 ["ContextServices"]
  GETTABLEKS R14 R15 K25 ["Plugin"]
  DUPCLOSURE R15 K26 [PROTO_0]
  DUPCLOSURE R16 K27 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R10
  RETURN R16 1
