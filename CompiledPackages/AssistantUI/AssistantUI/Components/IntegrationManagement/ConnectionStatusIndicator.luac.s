PROTO_0:
  LOADK R1 K0 [""]
  LOADK R2 K0 [""]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Connected"]
  JUMPIFNOTEQ R0 R3 [+4]
  LOADK R1 K2 ["content-system-success"]
  LOADK R2 K3 ["component_assets/circle_16"]
  JUMP [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Disconnected"]
  JUMPIFNOTEQ R0 R3 [+4]
  LOADK R1 K5 ["content-system-neutral"]
  LOADK R2 K3 ["component_assets/circle_16"]
  JUMP [+2]
  LOADK R1 K6 ["content-system-alert"]
  LOADK R2 K3 ["component_assets/circle_16"]
  LOADB R4 0
  JUMPIFEQKS R1 K0 [""] [+5]
  JUMPIFNOTEQKS R2 K0 [""] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["Expected colorTag and icon to be set"]
  GETIMPORT R3 K9 [assert]
  CALL R3 2 0
  RETURN R1 2

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Connected"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETTABLEKS R2 R0 K0 ["Connected"]
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Disconnected"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETTABLEKS R2 R0 K1 ["Disconnected"]
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["AuthorizationPending"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETTABLEKS R2 R0 K2 ["AuthorizationPending"]
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["UnsupportedProtocolVersion"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETTABLEKS R2 R0 K4 ["Unsupported"]
  RETURN R2 1
  GETTABLEKS R2 R0 K5 ["ConnectionError"]
  RETURN R2 1

PROTO_2:
  DUPTABLE R0 K5 [{"Connected", "Disconnected", "AuthorizationPending", "ConnectionError", "Unsupported"}]
  GETUPVAL R1 0
  LOADK R3 K6 ["IntegrationManagement"]
  LOADK R4 K0 ["Connected"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["Connected"]
  GETUPVAL R1 0
  LOADK R3 K6 ["IntegrationManagement"]
  LOADK R4 K1 ["Disconnected"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["Disconnected"]
  GETUPVAL R1 0
  LOADK R3 K6 ["IntegrationManagement"]
  LOADK R4 K2 ["AuthorizationPending"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["AuthorizationPending"]
  GETUPVAL R1 0
  LOADK R3 K6 ["IntegrationManagement"]
  LOADK R4 K3 ["ConnectionError"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K3 ["ConnectionError"]
  GETUPVAL R1 0
  LOADK R3 K6 ["IntegrationManagement"]
  LOADK R4 K8 ["UnsupportedVersion"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K4 ["Unsupported"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  DUPCLOSURE R2 K1 [PROTO_2]
  CAPTURE UPVAL U1
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["locale"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETTABLEKS R5 R0 K3 ["connectionInformation"]
  GETTABLEKS R4 R5 K4 ["status"]
  LOADK R5 K5 [""]
  LOADK R6 K5 [""]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Connected"]
  JUMPIFNOTEQ R4 R7 [+4]
  LOADK R5 K7 ["content-system-success"]
  LOADK R6 K8 ["component_assets/circle_16"]
  JUMP [+10]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["Disconnected"]
  JUMPIFNOTEQ R4 R7 [+4]
  LOADK R5 K10 ["content-system-neutral"]
  LOADK R6 K8 ["component_assets/circle_16"]
  JUMP [+2]
  LOADK R5 K11 ["content-system-alert"]
  LOADK R6 K8 ["component_assets/circle_16"]
  LOADB R8 0
  JUMPIFEQKS R5 K5 [""] [+5]
  JUMPIFNOTEQKS R6 K5 [""] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K12 [+4]
  LOADK R9 K12 ["Expected colorTag and icon to be set"]
  GETIMPORT R7 K14 [assert]
  CALL R7 2 0
  MOVE R2 R5
  MOVE R3 R6
  GETTABLEKS R6 R0 K3 ["connectionInformation"]
  GETTABLEKS R5 R6 K4 ["status"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["Connected"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K6 ["Connected"]
  JUMP [+27]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["Disconnected"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K9 ["Disconnected"]
  JUMP [+19]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["AuthorizationPending"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K15 ["AuthorizationPending"]
  JUMP [+11]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["UnsupportedProtocolVersion"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K17 ["Unsupported"]
  JUMP [+3]
  GETTABLEKS R4 R1 K18 ["ConnectionError"]
  JUMP [0]
  GETUPVAL R5 3
  CALL R5 0 1
  GETUPVAL R6 4
  GETUPVAL R7 5
  DUPTABLE R8 K21 [{"tag", "LayoutOrder"}]
  LOADK R9 K22 ["row auto-xy align-y-center"]
  SETTABLEKS R9 R8 K19 ["tag"]
  GETTABLEKS R9 R0 K20 ["LayoutOrder"]
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  DUPTABLE R9 K25 [{"Icon", "Text"}]
  GETUPVAL R10 4
  GETUPVAL R11 6
  DUPTABLE R12 K28 [{"icon", "tag", "iconTag", "LayoutOrder"}]
  SETTABLEKS R3 R12 K26 ["icon"]
  LOADK R13 K29 ["size-400-400 align-x-center align-y-center"]
  SETTABLEKS R13 R12 K19 ["tag"]
  NEWTABLE R13 2 0
  LOADB R14 1
  SETTABLEKS R14 R13 K30 ["size-200-200"]
  LOADB R14 1
  SETTABLE R14 R13 R2
  SETTABLEKS R13 R12 K27 ["iconTag"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["Icon"]
  GETUPVAL R10 4
  GETUPVAL R11 7
  DUPTABLE R12 K32 [{"tag", "Text", "LayoutOrder", "onActivated"}]
  LOADK R13 K33 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R13 R12 K19 ["tag"]
  SETTABLEKS R4 R12 K24 ["Text"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  GETTABLEKS R15 R0 K3 ["connectionInformation"]
  GETTABLEKS R14 R15 K4 ["status"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K15 ["AuthorizationPending"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R0 K34 ["onLogin"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K31 ["onActivated"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["Text"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["useUnderlyingConnectionStatus"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["CustomIconButton"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ModelContextProtocol"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Parent"]
  GETTABLEKS R6 R7 K12 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Parent"]
  GETTABLEKS R7 R8 K13 ["ReactUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Resources"]
  GETTABLEKS R9 R10 K15 ["Localization"]
  GETTABLEKS R8 R9 K16 ["Translator"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K17 ["ClientConnectionStatus"]
  GETTABLEKS R9 R3 K18 ["View"]
  GETTABLEKS R10 R3 K19 ["Text"]
  GETTABLEKS R11 R6 K20 ["createNextOrder"]
  GETTABLEKS R12 R5 K21 ["createElement"]
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R8
  DUPCLOSURE R14 K23 [PROTO_1]
  CAPTURE VAL R8
  DUPCLOSURE R15 K24 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R10
  GETTABLEKS R16 R5 K25 ["memo"]
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
