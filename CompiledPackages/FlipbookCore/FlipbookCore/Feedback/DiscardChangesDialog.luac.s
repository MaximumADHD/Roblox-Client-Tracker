PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Dialog"]
  GETTABLEKS R2 R3 K2 ["Root"]
  DUPTABLE R3 K5 [{"disablePortal", "hasBackdrop"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["disablePortal"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["hasBackdrop"]
  DUPTABLE R4 K9 [{"Title", "Content", "Actions"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Dialog"]
  GETTABLEKS R6 R7 K6 ["Title"]
  DUPTABLE R7 K11 [{"text"}]
  LOADK R8 K12 ["Discard feedback"]
  SETTABLEKS R8 R7 K10 ["text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Title"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Dialog"]
  GETTABLEKS R6 R7 K7 ["Content"]
  LOADNIL R7
  DUPTABLE R8 K14 [{"Message"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["Text"]
  DUPTABLE R11 K18 [{"tag", "Text", "LayoutOrder"}]
  LOADK R12 K19 ["auto-xy padding-top-medium"]
  SETTABLEKS R12 R11 K16 ["tag"]
  LOADK R12 K20 ["Are you sure you want to discard your changes?"]
  SETTABLEKS R12 R11 K15 ["Text"]
  GETUPVAL R12 2
  CALL R12 0 1
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Message"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K7 ["Content"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Dialog"]
  GETTABLEKS R6 R7 K8 ["Actions"]
  DUPTABLE R7 K22 [{"actions", "LayoutOrder"}]
  NEWTABLE R8 0 2
  DUPTABLE R9 K25 [{"variant", "text", "onActivated"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K26 ["Enums"]
  GETTABLEKS R11 R12 K27 ["ButtonVariant"]
  GETTABLEKS R10 R11 K28 ["Standard"]
  SETTABLEKS R10 R9 K23 ["variant"]
  LOADK R10 K29 ["Keep editing"]
  SETTABLEKS R10 R9 K10 ["text"]
  GETTABLEKS R10 R0 K30 ["onKeepEditing"]
  SETTABLEKS R10 R9 K24 ["onActivated"]
  DUPTABLE R10 K25 [{"variant", "text", "onActivated"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K26 ["Enums"]
  GETTABLEKS R12 R13 K27 ["ButtonVariant"]
  GETTABLEKS R11 R12 K31 ["Emphasis"]
  SETTABLEKS R11 R10 K23 ["variant"]
  LOADK R11 K32 ["Discard"]
  SETTABLEKS R11 R10 K10 ["text"]
  GETTABLEKS R11 R0 K33 ["onDiscard"]
  SETTABLEKS R11 R10 K24 ["onActivated"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K21 ["actions"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K17 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Actions"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Foundation"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["nextLayoutOrder"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
