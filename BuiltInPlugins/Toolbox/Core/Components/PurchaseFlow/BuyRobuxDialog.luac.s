PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnButtonClicked"]
  GETTABLEKS R3 R1 K2 ["OnClose"]
  GETTABLEKS R4 R1 K3 ["Thumbnail"]
  GETTABLEKS R5 R1 K4 ["Name"]
  GETTABLEKS R6 R1 K5 ["Creator"]
  GETTABLEKS R7 R1 K6 ["Cost"]
  GETTABLEKS R8 R1 K7 ["Balance"]
  SUB R9 R7 R8
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
  NEWTABLE R13 0 2
  DUPTABLE R14 K15 [{"Key", "Text"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K13 ["Key"]
  GETTABLEKS R15 R1 K16 ["Localization"]
  LOADK R17 K17 ["Purchase"]
  LOADK R18 K18 ["Cancel"]
  NAMECALL R15 R15 K19 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K14 ["Text"]
  DUPTABLE R15 K21 [{"Key", "Text", "Style"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K13 ["Key"]
  GETTABLEKS R16 R1 K16 ["Localization"]
  LOADK R18 K17 ["Purchase"]
  LOADK R19 K22 ["BuyRobux"]
  NAMECALL R16 R16 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K14 ["Text"]
  LOADK R16 K23 ["RoundPrimary"]
  SETTABLEKS R16 R15 K20 ["Style"]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K9 ["Buttons"]
  SETTABLEKS R2 R12 K1 ["OnButtonClicked"]
  SETTABLEKS R3 R12 K2 ["OnClose"]
  GETTABLEKS R13 R1 K16 ["Localization"]
  LOADK R15 K17 ["Purchase"]
  LOADK R16 K24 ["InsufficientTitle"]
  NAMECALL R13 R13 K19 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K10 ["Title"]
  GETTABLEKS R13 R1 K16 ["Localization"]
  LOADK R15 K17 ["Purchase"]
  LOADK R16 K25 ["InsufficientPrompt"]
  DUPTABLE R17 K29 [{"robux", "name", "creator"}]
  SETTABLEKS R9 R17 K26 ["robux"]
  SETTABLEKS R5 R17 K27 ["name"]
  SETTABLEKS R6 R17 K28 ["creator"]
  NAMECALL R13 R13 K19 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Prompt"]
  SETTABLEKS R4 R12 K3 ["Thumbnail"]
  SETTABLEKS R8 R12 K7 ["Balance"]
  CALL R10 2 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["PurchaseFlow"]
  GETTABLEKS R5 R6 K11 ["PurchaseDialog"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R7 R2 K14 ["PureComponent"]
  LOADK R9 K15 ["BuyRobuxDialog"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K18 ["render"]
  MOVE R8 R6
  DUPTABLE R9 K20 [{"Localization"}]
  GETTABLEKS R10 R5 K19 ["Localization"]
  SETTABLEKS R10 R9 K19 ["Localization"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
