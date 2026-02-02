PROTO_0:
  DUPTABLE R0 K1 [{"ModelQualityWarningLowQualityText"}]
  GETUPVAL R1 0
  LOADK R3 K2 ["ModelQualityWarning"]
  LOADK R4 K3 ["Text"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["ModelQualityWarningLowQualityText"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["modelQuality"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ModelQuality"]
  GETTABLEKS R2 R3 K2 ["Low"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["useMemo"]
  DUPCLOSURE R5 K4 [PROTO_0]
  CAPTURE UPVAL U2
  NEWTABLE R6 0 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["locale"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["useEffect"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["useCallback"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["Hooks"]
  GETTABLEKS R6 R7 K9 ["useTokens"]
  CALL R6 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R7 4
  CALL R7 0 1
  GETUPVAL R8 5
  GETUPVAL R9 6
  DUPTABLE R10 K16 [{"tag", "AnchorPoint", "Size", "Position", "ZIndex", "testId"}]
  NEWTABLE R11 2 0
  LOADB R12 1
  SETTABLEKS R12 R11 K17 ["auto-y x-default-transparency padding-y-xsmall"]
  LOADB R12 1
  SETTABLEKS R12 R11 K18 ["bg-surface-100"]
  SETTABLEKS R11 R10 K10 ["tag"]
  GETTABLEKS R11 R0 K11 ["AnchorPoint"]
  SETTABLEKS R11 R10 K11 ["AnchorPoint"]
  GETIMPORT R11 K21 [UDim2.new]
  LOADN R12 1
  LOADN R14 254
  GETTABLEKS R16 R6 K22 ["Padding"]
  GETTABLEKS R15 R16 K23 ["Medium"]
  MUL R13 R14 R15
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETTABLEKS R11 R0 K13 ["Position"]
  SETTABLEKS R11 R10 K13 ["Position"]
  GETTABLEKS R11 R0 K14 ["ZIndex"]
  SETTABLEKS R11 R10 K14 ["ZIndex"]
  LOADK R11 K24 ["Assistant-ModelQualityWarning"]
  SETTABLEKS R11 R10 K15 ["testId"]
  DUPTABLE R11 K26 [{"Banner"}]
  GETUPVAL R12 5
  GETUPVAL R13 6
  DUPTABLE R14 K28 [{"tag", "LayoutOrder"}]
  LOADK R15 K29 ["row size-full-0 auto-y radius-medium padding-large gap-medium bg-shift-100 stroke-default align-y-center"]
  SETTABLEKS R15 R14 K10 ["tag"]
  MOVE R15 R7
  CALL R15 0 1
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  DUPTABLE R15 K33 [{"LargeIcon", "Content", "CloseButton"}]
  GETUPVAL R16 5
  GETUPVAL R17 7
  DUPTABLE R18 K36 [{"icon", "tag", "iconTag", "LayoutOrder"}]
  LOADK R19 K37 ["icons/status/warning"]
  SETTABLEKS R19 R18 K34 ["icon"]
  LOADK R19 K38 ["size-600-600"]
  SETTABLEKS R19 R18 K10 ["tag"]
  LOADK R19 K39 ["size-600-600 content-system-warning"]
  SETTABLEKS R19 R18 K35 ["iconTag"]
  MOVE R19 R7
  CALL R19 0 1
  SETTABLEKS R19 R18 K27 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["LargeIcon"]
  GETUPVAL R16 5
  GETUPVAL R17 8
  DUPTABLE R18 K41 [{"tag", "Text", "LayoutOrder"}]
  LOADK R19 K42 ["fill auto-y text-wrap text-align-x-left text-body-medium content-emphasis text-truncate-end"]
  SETTABLEKS R19 R18 K10 ["tag"]
  GETTABLEKS R19 R4 K43 ["ModelQualityWarningLowQualityText"]
  SETTABLEKS R19 R18 K40 ["Text"]
  MOVE R19 R7
  CALL R19 0 1
  SETTABLEKS R19 R18 K27 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["Content"]
  GETUPVAL R16 5
  GETUPVAL R17 7
  DUPTABLE R18 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
  LOADK R19 K46 ["icons/navigation/close_small"]
  SETTABLEKS R19 R18 K34 ["icon"]
  LOADK R19 K47 ["size-600-600 radius-medium bg-action-link align-x-center align-y-center"]
  SETTABLEKS R19 R18 K10 ["tag"]
  LOADK R19 K48 ["size-400-400 content-emphasis"]
  SETTABLEKS R19 R18 K35 ["iconTag"]
  SETTABLEKS R5 R18 K44 ["onActivated"]
  MOVE R19 R7
  CALL R19 0 1
  SETTABLEKS R19 R18 K27 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["CloseButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K25 ["Banner"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["CustomIconButton"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["ModelQualityContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Parent"]
  GETTABLEKS R6 R7 K13 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Localization"]
  GETTABLEKS R7 R8 K16 ["Translator"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K17 ["Text"]
  GETTABLEKS R8 R2 K18 ["View"]
  GETTABLEKS R9 R4 K19 ["createElement"]
  GETTABLEKS R10 R5 K20 ["createNextOrder"]
  DUPCLOSURE R11 K21 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R7
  RETURN R11 1
