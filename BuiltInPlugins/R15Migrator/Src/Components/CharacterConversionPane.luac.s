PROTO_0:
  LOADB R1 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["characterMetadataLoadedVersion"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+22]
  LOADB R1 1
  GETIMPORT R2 K3 [next]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["characters"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+12]
  GETIMPORT R2 K3 [next]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["convertedCharacters"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["characterMetadataLoadedVersion"]
  JUMPIFNOTEQKN R1 K2 [0] [+10]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["loadCharacterMetadata"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["Analytics"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  NAMECALL R5 R0 K4 ["hasCharacters"]
  CALL R5 1 1
  JUMPIF R5 [+24]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  NEWTABLE R7 0 0
  DUPTABLE R8 K7 [{"Label"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K9 [{"Text"}]
  LOADK R14 K10 ["CharacterConversion"]
  LOADK R15 K11 ["NoCharacters"]
  NAMECALL R12 R3 K12 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K8 ["Text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K6 ["Label"]
  CALL R5 3 -1
  RETURN R5 -1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R8 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K13 ["Layout"]
  GETIMPORT R8 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K14 ["HorizontalAlignment"]
  GETIMPORT R8 K24 [Enum.VerticalAlignment.Top]
  SETTABLEKS R8 R7 K15 ["VerticalAlignment"]
  DUPTABLE R8 K28 [{"Instructions", "MainView", "Footer"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K32 [{"LayoutOrder", "Message", "Height"}]
  NAMECALL R12 R4 K33 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K29 ["LayoutOrder"]
  LOADK R14 K10 ["CharacterConversion"]
  LOADK R15 K25 ["Instructions"]
  NAMECALL R12 R3 K12 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["Message"]
  GETTABLEKS R12 R2 K34 ["InstructionsHeight"]
  SETTABLEKS R12 R11 K31 ["Height"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["Instructions"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K37 [{"OnResetPlugin", "LayoutOrder", "Size"}]
  GETTABLEKS R12 R1 K35 ["OnResetPlugin"]
  SETTABLEKS R12 R11 K35 ["OnResetPlugin"]
  NAMECALL R12 R4 K33 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K29 ["LayoutOrder"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  GETTABLEKS R18 R2 K40 ["FooterHeight"]
  MINUS R17 R18
  GETTABLEKS R18 R2 K34 ["InstructionsHeight"]
  SUB R16 R17 R18
  CALL R12 4 1
  SETTABLEKS R12 R11 K36 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["MainView"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K41 [{"LayoutOrder", "Size"}]
  NAMECALL R12 R4 K33 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K29 ["LayoutOrder"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K40 ["FooterHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K36 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["Footer"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  DUPTABLE R2 K3 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters"}]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K0 ["characterMetadataLoadedVersion"]
  SETTABLEKS R3 R2 K0 ["characterMetadataLoadedVersion"]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K1 ["characters"]
  SETTABLEKS R3 R2 K1 ["characters"]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K2 ["convertedCharacters"]
  SETTABLEKS R3 R2 K2 ["convertedCharacters"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"loadCharacterMetadata"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["loadCharacterMetadata"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["TextLabel"]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Components"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R7 K15 ["CharacterConversion"]
  GETTABLEKS R9 R10 K16 ["Footer"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R7 K15 ["CharacterConversion"]
  GETTABLEKS R10 R11 K17 ["MainView"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K18 ["TabInstructions"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K19 ["Thunks"]
  GETTABLEKS R12 R13 K20 ["LoadCharacterMetadata"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K21 ["Util"]
  GETTABLEKS R13 R12 K22 ["LayoutOrderIterator"]
  GETTABLEKS R14 R2 K23 ["PureComponent"]
  LOADK R16 K24 ["CharacterConversionPane"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_0]
  SETTABLEKS R15 R14 K27 ["hasCharacters"]
  DUPCLOSURE R15 K28 [PROTO_1]
  SETTABLEKS R15 R14 K29 ["didMount"]
  DUPCLOSURE R15 K30 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K31 ["render"]
  GETTABLEKS R16 R1 K32 ["ContextServices"]
  GETTABLEKS R15 R16 K33 ["withContext"]
  DUPTABLE R16 K37 [{"Analytics", "Stylizer", "Localization"}]
  GETTABLEKS R18 R1 K32 ["ContextServices"]
  GETTABLEKS R17 R18 K34 ["Analytics"]
  SETTABLEKS R17 R16 K34 ["Analytics"]
  GETTABLEKS R18 R1 K32 ["ContextServices"]
  GETTABLEKS R17 R18 K35 ["Stylizer"]
  SETTABLEKS R17 R16 K35 ["Stylizer"]
  GETTABLEKS R18 R1 K32 ["ContextServices"]
  GETTABLEKS R17 R18 K36 ["Localization"]
  SETTABLEKS R17 R16 K36 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K38 [PROTO_3]
  DUPCLOSURE R16 K39 [PROTO_5]
  CAPTURE VAL R11
  GETTABLEKS R17 R3 K40 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
