PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["OnButtonClicked"]
  GETTABLEKS R4 R2 K2 ["OnClose"]
  GETTABLEKS R5 R2 K3 ["Thumbnail"]
  GETTABLEKS R6 R2 K4 ["Name"]
  GETTABLEKS R7 R2 K5 ["Creator"]
  GETTABLEKS R8 R2 K6 ["Cost"]
  GETTABLEKS R9 R2 K7 ["Balance"]
  SUB R10 R8 R9
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
  NEWTABLE R14 0 2
  DUPTABLE R15 K15 [{"Key", "Text"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K13 ["Key"]
  GETTABLEKS R16 R2 K16 ["Localization"]
  LOADK R18 K17 ["Purchase"]
  LOADK R19 K18 ["Cancel"]
  NAMECALL R16 R16 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K14 ["Text"]
  DUPTABLE R16 K21 [{"Key", "Text", "Style"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K13 ["Key"]
  GETTABLEKS R17 R2 K16 ["Localization"]
  LOADK R19 K17 ["Purchase"]
  LOADK R20 K22 ["BuyRobux"]
  NAMECALL R17 R17 K19 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K14 ["Text"]
  LOADK R17 K23 ["RoundPrimary"]
  SETTABLEKS R17 R16 K20 ["Style"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K9 ["Buttons"]
  SETTABLEKS R3 R13 K1 ["OnButtonClicked"]
  SETTABLEKS R4 R13 K2 ["OnClose"]
  GETTABLEKS R14 R2 K16 ["Localization"]
  LOADK R16 K17 ["Purchase"]
  LOADK R17 K24 ["InsufficientTitle"]
  NAMECALL R14 R14 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K10 ["Title"]
  GETTABLEKS R14 R2 K16 ["Localization"]
  LOADK R16 K17 ["Purchase"]
  LOADK R17 K25 ["InsufficientPrompt"]
  DUPTABLE R18 K29 [{"robux", "name", "creator"}]
  SETTABLEKS R10 R18 K26 ["robux"]
  SETTABLEKS R6 R18 K27 ["name"]
  SETTABLEKS R7 R18 K28 ["creator"]
  NAMECALL R14 R14 K19 ["getText"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Prompt"]
  SETTABLEKS R5 R13 K3 ["Thumbnail"]
  SETTABLEKS R9 R13 K7 ["Balance"]
  CALL R11 2 -1
  RETURN R11 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+92]
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnButtonClicked"]
  GETTABLEKS R3 R1 K2 ["OnClose"]
  GETTABLEKS R4 R1 K3 ["Thumbnail"]
  GETTABLEKS R5 R1 K4 ["Name"]
  GETTABLEKS R6 R1 K5 ["Creator"]
  GETTABLEKS R7 R1 K6 ["Cost"]
  GETTABLEKS R8 R1 K7 ["Balance"]
  SUB R9 R7 R8
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 2
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
  GETUPVAL R1 3
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 -1
  RETURN R1 -1

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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["ContextHelper"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["withLocalization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K8 ["Core"]
  GETTABLEKS R12 R13 K14 ["Util"]
  GETTABLEKS R11 R12 K17 ["SharedFlags"]
  GETTABLEKS R10 R11 K18 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K19 ["PureComponent"]
  LOADK R12 K20 ["BuyRobuxDialog"]
  NAMECALL R10 R10 K21 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K23 ["render"]
  MOVE R11 R6
  DUPTABLE R12 K25 [{"Localization"}]
  GETTABLEKS R13 R5 K24 ["Localization"]
  SETTABLEKS R13 R12 K24 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
