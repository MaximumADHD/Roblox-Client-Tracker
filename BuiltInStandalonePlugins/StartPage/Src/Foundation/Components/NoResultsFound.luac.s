PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 [95206881]
  LOADK R3 K1 [28220420]
  LOADB R4 0
  NAMECALL R0 R0 K2 ["openPlace"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K3 [{"tag"}]
  LOADK R6 K4 ["align-x-center align-y-center col size-full"]
  SETTABLEKS R6 R5 K2 ["tag"]
  DUPTABLE R6 K10 [{"NoDisplayImage", "EmptySpace", "Title", "EmptySpace2", "Button"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"LayoutOrder", "tag"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  LOADK R10 K13 ["size-full-0 auto-y align-x-center align-y-center"]
  SETTABLEKS R10 R9 K2 ["tag"]
  DUPTABLE R10 K15 [{"Image"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K3 [{"tag"}]
  LOADK R14 K16 ["StartPage-NoExperiences"]
  SETTABLEKS R14 R13 K2 ["tag"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Image"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["NoDisplayImage"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"tag", "LayoutOrder"}]
  LOADK R10 K18 ["size-full-800"]
  SETTABLEKS R10 R9 K2 ["tag"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["EmptySpace"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K20 [{"Text", "LayoutOrder", "tag"}]
  GETTABLEKS R10 R0 K21 ["title"]
  SETTABLEKS R10 R9 K19 ["Text"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  LOADK R10 K22 ["auto-xy text-heading-small content-emphasis wrap text-align-x-center"]
  SETTABLEKS R10 R9 K2 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"LayoutOrder", "tag"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  LOADK R10 K23 ["size-full-400"]
  SETTABLEKS R10 R9 K2 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["EmptySpace2"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K27 [{"text", "variant", "LayoutOrder", "onActivated"}]
  LOADK R12 K28 ["Plugin"]
  LOADK R13 K29 ["CreateANewExperience"]
  NAMECALL R10 R1 K30 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K24 ["text"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K31 ["Emphasis"]
  SETTABLEKS R10 R9 K25 ["variant"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  DUPCLOSURE R10 K32 [PROTO_0]
  CAPTURE UPVAL U8
  SETTABLEKS R10 R9 K26 ["onActivated"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Button"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["counter"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Foundation"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["Text"]
  GETTABLEKS R7 R5 K15 ["Image"]
  GETTABLEKS R8 R5 K16 ["Button"]
  GETTABLEKS R10 R5 K17 ["Enums"]
  GETTABLEKS R9 R10 K18 ["ButtonVariant"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K13 ["Foundation"]
  GETTABLEKS R12 R13 K20 ["Components"]
  GETTABLEKS R11 R12 K21 ["Frame"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K9 ["Util"]
  GETTABLEKS R12 R13 K22 ["Services"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K23 ["StartPageManager"]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  RETURN R13 1
