PROTO_0:
  GETTABLEKS R1 R0 K0 ["tutorialData"]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag", "Size"}]
  LOADK R5 K5 ["col align-x-center align-y-center flex-between bg-surface-100 padding-x-medium"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 32
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  DUPTABLE R5 K11 [{"Content", "Divider"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K4 [{"tag", "Size"}]
  LOADK R9 K12 ["row align-x-center fill align-y-center flex-between"]
  SETTABLEKS R9 R8 K2 ["tag"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K3 ["Size"]
  DUPTABLE R9 K15 [{"Title", "TableOfContents"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K18 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K19 ["text-align-x-left text-body-medium auto-x size-0-full"]
  SETTABLEKS R13 R12 K2 ["tag"]
  GETTABLEKS R14 R1 K20 ["info"]
  GETTABLEKS R13 R14 K21 ["title"]
  SETTABLEKS R13 R12 K16 ["Text"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Title"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K17 ["LayoutOrder"]
  GETTABLEKS R14 R0 K27 ["isTableOfContentsOpen"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K28 ["icons/navigation/close"]
  JUMP [+1]
  LOADK R13 K29 ["icons/common/hamburgermenu"]
  SETTABLEKS R13 R12 K22 ["icon"]
  LOADB R13 1
  SETTABLEKS R13 R12 K23 ["isCircular"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K30 ["Enums"]
  GETTABLEKS R14 R15 K31 ["IconSize"]
  GETTABLEKS R13 R14 K32 ["Small"]
  SETTABLEKS R13 R12 K24 ["size"]
  GETTABLEKS R13 R0 K33 ["onTableOfContentsClicked"]
  SETTABLEKS R13 R12 K25 ["onActivated"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["TableOfContents"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["Content"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K34 [{"LayoutOrder"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Divider"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R3 K11 ["View"]
  GETTABLEKS R5 R3 K12 ["Text"]
  GETTABLEKS R6 R3 K13 ["IconButton"]
  GETTABLEKS R7 R3 K14 ["Divider"]
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
