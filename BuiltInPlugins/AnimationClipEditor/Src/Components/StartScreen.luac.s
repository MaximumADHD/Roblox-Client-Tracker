PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETTABLEKS R3 R1 K3 ["startScreenTheme"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K4 ["Size"]
  GETTABLEKS R6 R4 K5 ["LayoutOrder"]
  GETTABLEKS R7 R4 K6 ["RootInstance"]
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADNIL R8
  JUMP [+2]
  GETTABLEKS R8 R4 K7 ["OnCreateAnimation"]
  GETTABLEKS R9 R1 K8 ["button"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K10 ["Frame"]
  DUPTABLE R12 K12 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R5 R12 K4 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K11 ["BackgroundTransparency"]
  SETTABLEKS R6 R12 K5 ["LayoutOrder"]
  DUPTABLE R13 K15 [{"SelectScreen", "CreateNewPrompt"}]
  LOADB R14 0
  JUMPIFNOTEQKNIL R7 [+51]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K16 ["TextLabel"]
  DUPTABLE R16 K23 [{"Size", "Text", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundColor3"}]
  GETIMPORT R17 K26 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K4 ["Size"]
  LOADK R19 K27 ["Title"]
  LOADK R20 K28 ["SelectARig"]
  NAMECALL R17 R2 K29 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K17 ["Text"]
  GETTABLEKS R17 R1 K30 ["font"]
  SETTABLEKS R17 R16 K18 ["Font"]
  GETTABLEKS R17 R3 K31 ["textSize"]
  SETTABLEKS R17 R16 K19 ["TextSize"]
  GETTABLEKS R17 R3 K32 ["textColor"]
  SETTABLEKS R17 R16 K20 ["TextColor3"]
  GETIMPORT R17 K35 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K21 ["TextTruncate"]
  GETTABLEKS R17 R1 K36 ["backgroundColor"]
  SETTABLEKS R17 R16 K22 ["BackgroundColor3"]
  DUPTABLE R17 K38 [{"CaptureFocus"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 2
  CALL R18 1 1
  SETTABLEKS R18 R17 K37 ["CaptureFocus"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K13 ["SelectScreen"]
  GETUPVAL R15 0
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+64]
  LOADB R14 0
  JUMPIFEQKNIL R7 [+62]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K44 [{"PromptText", "NoticeText", "InputText", "Text", "Buttons", "OnTextSubmitted"}]
  LOADK R19 K27 ["Title"]
  LOADK R20 K45 ["CreateToStart"]
  NAMECALL R17 R2 K29 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K39 ["PromptText"]
  LOADK R19 K27 ["Title"]
  LOADK R20 K46 ["NoAnimationExists_Migrated"]
  DUPTABLE R21 K48 [{"rig"}]
  GETTABLEKS R22 R7 K49 ["Name"]
  SETTABLEKS R22 R21 K47 ["rig"]
  NAMECALL R17 R2 K29 ["getText"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K40 ["NoticeText"]
  LOADK R19 K50 ["Dialog"]
  LOADK R20 K51 ["AnimationName"]
  NAMECALL R17 R2 K29 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K41 ["InputText"]
  LOADK R19 K27 ["Title"]
  LOADK R20 K52 ["DefaultAnimationName"]
  NAMECALL R17 R2 K29 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K17 ["Text"]
  NEWTABLE R17 0 1
  DUPTABLE R18 K55 [{"Key", "Text", "Style"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K53 ["Key"]
  LOADK R21 K50 ["Dialog"]
  LOADK R22 K56 ["Create"]
  NAMECALL R19 R2 K29 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K17 ["Text"]
  LOADK R19 K57 ["RoundPrimary"]
  SETTABLEKS R19 R18 K54 ["Style"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K42 ["Buttons"]
  SETTABLEKS R8 R16 K43 ["OnTextSubmitted"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["CreateNewPrompt"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["TextEntryPrompt"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K12 ["UI"]
  GETTABLEKS R4 R5 K13 ["CaptureFocus"]
  GETTABLEKS R5 R2 K14 ["ContextServices"]
  GETTABLEKS R6 R5 K15 ["withContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K16 ["LuaFlags"]
  GETTABLEKS R8 R9 K17 ["GetFFlagRenameClip"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K18 ["PureComponent"]
  LOADK R10 K19 ["StartScreen"]
  NAMECALL R8 R8 K20 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K21 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K22 ["render"]
  MOVE R9 R6
  DUPTABLE R10 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R5 K23 ["Stylizer"]
  SETTABLEKS R11 R10 K23 ["Stylizer"]
  GETTABLEKS R11 R5 K24 ["Localization"]
  SETTABLEKS R11 R10 K24 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
