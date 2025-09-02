PROTO_0:
  GETTABLEKS R1 R0 K0 ["visible"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["tutorialHome"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K2 ["ast"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K6 [{"tag"}]
  LOADK R6 K7 ["col align-x-right gap-medium size-full bg-surface-100"]
  SETTABLEKS R6 R5 K5 ["tag"]
  DUPTABLE R6 K10 [{"ScrollView", "StartButton"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K14 [{"scroll", "Size", "LayoutOrder"}]
  DUPTABLE R10 K18 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R11 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K15 ["AutomaticCanvasSize"]
  GETIMPORT R11 K23 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K16 ["ScrollingDirection"]
  GETIMPORT R11 K26 [UDim2.new]
  CALL R11 0 1
  SETTABLEKS R11 R10 K17 ["CanvasSize"]
  SETTABLEKS R10 R9 K11 ["scroll"]
  GETIMPORT R10 K26 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 204
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  DUPTABLE R10 K28 [{"OffsetWrapper"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  LOADK R12 K29 ["Frame"]
  DUPTABLE R13 K31 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R14 K33 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["Size"]
  GETIMPORT R14 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K20 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K30 ["BackgroundTransparency"]
  DUPTABLE R14 K36 [{"ScrollBarOffset", "Markdown"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K37 ["UIPadding"]
  DUPTABLE R17 K39 [{"PaddingRight"}]
  GETIMPORT R18 K41 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K38 ["PaddingRight"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["ScrollBarOffset"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K42 [{"ast"}]
  GETTABLEKS R18 R1 K2 ["ast"]
  SETTABLEKS R18 R17 K2 ["ast"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["Markdown"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K27 ["OffsetWrapper"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["ScrollView"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K47 [{"LayoutOrder", "tag", "testId", "text", "variant", "onActivated"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  LOADK R10 K48 ["anchor-bottom-right position-bottom-right"]
  SETTABLEKS R10 R9 K5 ["tag"]
  LOADK R10 K49 ["--knowledge-tutorials-NextButton"]
  SETTABLEKS R10 R9 K43 ["testId"]
  LOADK R12 K50 ["Plugin"]
  LOADK R13 K51 ["Start"]
  NAMECALL R10 R2 K52 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K44 ["text"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K53 ["Enums"]
  GETTABLEKS R11 R12 K54 ["ButtonVariant"]
  GETTABLEKS R10 R11 K55 ["Emphasis"]
  SETTABLEKS R10 R9 K45 ["variant"]
  GETTABLEKS R10 R0 K56 ["onStartTutorial"]
  SETTABLEKS R10 R9 K46 ["onActivated"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["StartButton"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["Localization"]
  GETTABLEKS R7 R3 K14 ["View"]
  GETTABLEKS R8 R3 K15 ["ScrollView"]
  GETTABLEKS R9 R3 K16 ["Button"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["Markdown"]
  CALL R10 1 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  RETURN R11 1
