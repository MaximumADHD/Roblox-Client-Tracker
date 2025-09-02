PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  GETIMPORT R1 K3 [Vector2.zero]
  SETTABLEKS R1 R0 K4 ["CanvasPosition"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["visible"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["tutorialSection"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K2 ["ast"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["useRef"]
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K8 [{"tag"}]
  LOADK R7 K9 ["col gap-medium size-full bg-surface-100"]
  SETTABLEKS R7 R6 K7 ["tag"]
  DUPTABLE R7 K12 [{"ScrollView", "Buttons"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K17 [{"scroll", "scrollingFrameRef", "LayoutOrder", "Size"}]
  DUPTABLE R11 K21 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R12 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K18 ["AutomaticCanvasSize"]
  GETIMPORT R12 K26 [Enum.ScrollingDirection.Y]
  SETTABLEKS R12 R11 K19 ["ScrollingDirection"]
  GETIMPORT R12 K29 [UDim2.new]
  CALL R12 0 1
  SETTABLEKS R12 R11 K20 ["CanvasSize"]
  SETTABLEKS R11 R10 K13 ["scroll"]
  SETTABLEKS R3 R10 K14 ["scrollingFrameRef"]
  LOADN R11 0
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 204
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Size"]
  DUPTABLE R11 K31 [{"OffsetWrapper"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K32 ["Frame"]
  DUPTABLE R14 K34 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R15 K36 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["Size"]
  GETIMPORT R15 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K23 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K33 ["BackgroundTransparency"]
  DUPTABLE R15 K39 [{"ScrollBarOffset", "Markdown"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K40 ["UIPadding"]
  DUPTABLE R18 K42 [{"PaddingRight"}]
  GETIMPORT R19 K44 [UDim.new]
  LOADN R20 0
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K41 ["PaddingRight"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["ScrollBarOffset"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K45 [{"ast"}]
  GETTABLEKS R19 R1 K2 ["ast"]
  SETTABLEKS R19 R18 K2 ["ast"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["Markdown"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["OffsetWrapper"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["ScrollView"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K46 [{"tag", "LayoutOrder"}]
  LOADK R11 K47 ["row flex-between align-x-center size-full-0 auto-y anchor-bottom-center"]
  SETTABLEKS R11 R10 K7 ["tag"]
  LOADN R11 1
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  DUPTABLE R11 K50 [{"PreviousButton", "NextButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K55 [{"text", "variant", "onActivated", "LayoutOrder", "testId"}]
  LOADK R17 K56 ["Plugin"]
  LOADK R18 K57 ["Previous"]
  NAMECALL R15 R2 K58 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K51 ["text"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K59 ["Enums"]
  GETTABLEKS R16 R17 K60 ["ButtonVariant"]
  GETTABLEKS R15 R16 K61 ["Standard"]
  SETTABLEKS R15 R14 K52 ["variant"]
  GETTABLEKS R15 R0 K62 ["onPrevious"]
  SETTABLEKS R15 R14 K53 ["onActivated"]
  LOADN R15 0
  SETTABLEKS R15 R14 K15 ["LayoutOrder"]
  LOADK R15 K63 ["--knowledge-tutorials-PrevButton"]
  SETTABLEKS R15 R14 K54 ["testId"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K48 ["PreviousButton"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K55 [{"text", "variant", "onActivated", "LayoutOrder", "testId"}]
  LOADK R17 K56 ["Plugin"]
  GETTABLEKS R19 R0 K64 ["showFinish"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K65 ["Finish"]
  JUMP [+1]
  LOADK R18 K66 ["Next"]
  NAMECALL R15 R2 K58 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K51 ["text"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K59 ["Enums"]
  GETTABLEKS R16 R17 K60 ["ButtonVariant"]
  GETTABLEKS R15 R16 K67 ["Emphasis"]
  SETTABLEKS R15 R14 K52 ["variant"]
  GETTABLEKS R15 R0 K68 ["onNext"]
  SETTABLEKS R15 R14 K53 ["onActivated"]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["LayoutOrder"]
  LOADK R15 K69 ["--knowledge-tutorials-NextButton"]
  SETTABLEKS R15 R14 K54 ["testId"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K49 ["NextButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Buttons"]
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPCLOSURE R11 K19 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  RETURN R11 1
