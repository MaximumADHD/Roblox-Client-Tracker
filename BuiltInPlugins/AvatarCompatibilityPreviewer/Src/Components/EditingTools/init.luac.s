PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Deactivate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R1 K0 ["joint"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["cage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R1 K0 ["attachments"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
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
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["Fragment"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K10 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R9 R10 K11 ["EditingToolbar"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K12 ["Toolbar"]
  DUPTABLE R12 K15 [{"InitialPosition", "VerticalItems"}]
  LOADK R13 K16 ["Top"]
  SETTABLEKS R13 R12 K13 ["InitialPosition"]
  NEWTABLE R13 0 3
  DUPTABLE R14 K22 [{"Type", "Tooltip", "Icon", "Selected", "OnClick"}]
  LOADK R15 K23 ["Button"]
  SETTABLEKS R15 R14 K17 ["Type"]
  LOADK R17 K24 ["EditingTools"]
  LOADK R18 K25 ["JointTool"]
  NAMECALL R15 R1 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["Tooltip"]
  LOADK R16 K27 ["%*/joint_tool.png"]
  LOADK R18 K28 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large"]
  NAMECALL R16 R16 K29 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K19 ["Icon"]
  JUMPIFEQKS R2 K30 ["joint"] [+2]
  LOADB R15 0 +1
  LOADB R15 1
  SETTABLEKS R15 R14 K20 ["Selected"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K21 ["OnClick"]
  DUPTABLE R15 K22 [{"Type", "Tooltip", "Icon", "Selected", "OnClick"}]
  LOADK R16 K23 ["Button"]
  SETTABLEKS R16 R15 K17 ["Type"]
  LOADK R18 K24 ["EditingTools"]
  LOADK R19 K31 ["CageTool"]
  NAMECALL R16 R1 K26 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K18 ["Tooltip"]
  LOADK R17 K32 ["%*/cage_tool.png"]
  LOADK R19 K28 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large"]
  NAMECALL R17 R17 K29 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K19 ["Icon"]
  JUMPIFEQKS R2 K33 ["cage"] [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K20 ["Selected"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R3
  SETTABLEKS R16 R15 K21 ["OnClick"]
  DUPTABLE R16 K22 [{"Type", "Tooltip", "Icon", "Selected", "OnClick"}]
  LOADK R17 K23 ["Button"]
  SETTABLEKS R17 R16 K17 ["Type"]
  LOADK R19 K24 ["EditingTools"]
  LOADK R20 K34 ["AttachmentsTool"]
  NAMECALL R17 R1 K26 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K18 ["Tooltip"]
  LOADK R18 K35 ["%*/attachments_tool.png"]
  LOADK R20 K28 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large"]
  NAMECALL R18 R18 K29 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K19 ["Icon"]
  JUMPIFEQKS R2 K5 ["attachments"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K20 ["Selected"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K21 ["OnClick"]
  SETLIST R13 R14 3 [1]
  SETTABLEKS R13 R12 K14 ["VerticalItems"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  JUMPIFNOTEQKS R2 K5 ["attachments"] [+12]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K37 [{"worldModel"}]
  GETTABLEKS R12 R0 K36 ["worldModel"]
  SETTABLEKS R12 R11 K36 ["worldModel"]
  CALL R9 2 1
  JUMP [+4]
  GETIMPORT R9 K39 [error]
  LOADK R10 K40 ["prtodo: Other tools"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K41 ["Tool"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K14 ["AttachmentTool"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K16 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R7 1 1
  GETTABLEKS R9 R1 K17 ["ContextServices"]
  GETTABLEKS R8 R9 K18 ["Localization"]
  GETTABLEKS R10 R1 K17 ["ContextServices"]
  GETTABLEKS R9 R10 K19 ["Plugin"]
  DUPCLOSURE R10 K20 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R10 1
