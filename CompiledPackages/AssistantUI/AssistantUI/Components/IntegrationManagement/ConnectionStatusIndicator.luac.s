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
  LOADK R1 K0 ["Connected"]
  SETTABLEKS R1 R0 K0 ["Connected"]
  LOADK R1 K1 ["Disconnected"]
  SETTABLEKS R1 R0 K1 ["Disconnected"]
  LOADK R1 K6 ["Login Required"]
  SETTABLEKS R1 R0 K2 ["AuthorizationPending"]
  LOADK R1 K7 ["Connection Error"]
  SETTABLEKS R1 R0 K3 ["ConnectionError"]
  LOADK R1 K8 ["Unsupported MCP Version"]
  SETTABLEKS R1 R0 K4 ["Unsupported"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  DUPCLOSURE R2 K1 [PROTO_2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETTABLEKS R5 R0 K2 ["connectionInformation"]
  GETTABLEKS R4 R5 K3 ["status"]
  LOADK R5 K4 [""]
  LOADK R6 K4 [""]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Connected"]
  JUMPIFNOTEQ R4 R7 [+4]
  LOADK R5 K6 ["content-system-success"]
  LOADK R6 K7 ["component_assets/circle_16"]
  JUMP [+10]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Disconnected"]
  JUMPIFNOTEQ R4 R7 [+4]
  LOADK R5 K9 ["content-system-neutral"]
  LOADK R6 K7 ["component_assets/circle_16"]
  JUMP [+2]
  LOADK R5 K10 ["content-system-alert"]
  LOADK R6 K7 ["component_assets/circle_16"]
  LOADB R8 0
  JUMPIFEQKS R5 K4 [""] [+5]
  JUMPIFNOTEQKS R6 K4 [""] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K11 [+4]
  LOADK R9 K11 ["Expected colorTag and icon to be set"]
  GETIMPORT R7 K13 [assert]
  CALL R7 2 0
  MOVE R2 R5
  MOVE R3 R6
  GETTABLEKS R6 R0 K2 ["connectionInformation"]
  GETTABLEKS R5 R6 K3 ["status"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Connected"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K5 ["Connected"]
  JUMP [+27]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["Disconnected"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K8 ["Disconnected"]
  JUMP [+19]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["AuthorizationPending"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K14 ["AuthorizationPending"]
  JUMP [+11]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["UnsupportedProtocolVersion"]
  JUMPIFNOTEQ R5 R6 [+4]
  GETTABLEKS R4 R1 K16 ["Unsupported"]
  JUMP [+3]
  GETTABLEKS R4 R1 K17 ["ConnectionError"]
  JUMP [0]
  GETUPVAL R5 2
  CALL R5 0 1
  GETUPVAL R6 3
  GETUPVAL R7 4
  DUPTABLE R8 K20 [{"tag", "LayoutOrder"}]
  LOADK R9 K21 ["row auto-xy align-y-center"]
  SETTABLEKS R9 R8 K18 ["tag"]
  GETTABLEKS R9 R0 K19 ["LayoutOrder"]
  SETTABLEKS R9 R8 K19 ["LayoutOrder"]
  DUPTABLE R9 K24 [{"Icon", "Text"}]
  GETUPVAL R10 3
  GETUPVAL R11 5
  DUPTABLE R12 K27 [{"icon", "tag", "iconTag", "LayoutOrder"}]
  SETTABLEKS R3 R12 K25 ["icon"]
  LOADK R13 K28 ["size-400-400 align-x-center align-y-center"]
  SETTABLEKS R13 R12 K18 ["tag"]
  NEWTABLE R13 2 0
  LOADB R14 1
  SETTABLEKS R14 R13 K29 ["size-200-200"]
  LOADB R14 1
  SETTABLE R14 R13 R2
  SETTABLEKS R13 R12 K26 ["iconTag"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K19 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["Icon"]
  GETUPVAL R10 3
  GETUPVAL R11 6
  DUPTABLE R12 K31 [{"tag", "Text", "LayoutOrder", "onActivated"}]
  LOADK R13 K32 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R13 R12 K18 ["tag"]
  SETTABLEKS R4 R12 K23 ["Text"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K19 ["LayoutOrder"]
  GETTABLEKS R15 R0 K2 ["connectionInformation"]
  GETTABLEKS R14 R15 K3 ["status"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K14 ["AuthorizationPending"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R0 K33 ["onLogin"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K30 ["onActivated"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["Text"]
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
  GETTABLEKS R7 R4 K14 ["ClientConnectionStatus"]
  GETTABLEKS R8 R3 K15 ["View"]
  GETTABLEKS R9 R3 K16 ["Text"]
  GETTABLEKS R10 R6 K17 ["createNextOrder"]
  GETTABLEKS R11 R5 K18 ["createElement"]
  DUPCLOSURE R12 K19 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R13 K20 [PROTO_1]
  CAPTURE VAL R7
  DUPCLOSURE R14 K21 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R9
  GETTABLEKS R15 R5 K22 ["memo"]
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1
