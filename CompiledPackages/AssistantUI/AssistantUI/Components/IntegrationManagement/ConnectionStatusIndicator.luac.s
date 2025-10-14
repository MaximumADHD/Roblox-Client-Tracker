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
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"underlyingClient"}]
  GETTABLEKS R3 R0 K0 ["underlyingClient"]
  SETTABLEKS R3 R2 K0 ["underlyingClient"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useMemo"]
  DUPCLOSURE R3 K3 [PROTO_2]
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETTABLEKS R5 R1 K4 ["status"]
  LOADK R6 K5 [""]
  LOADK R7 K5 [""]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Connected"]
  JUMPIFNOTEQ R5 R8 [+4]
  LOADK R6 K7 ["content-system-success"]
  LOADK R7 K8 ["component_assets/circle_16"]
  JUMP [+10]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["Disconnected"]
  JUMPIFNOTEQ R5 R8 [+4]
  LOADK R6 K10 ["content-system-neutral"]
  LOADK R7 K8 ["component_assets/circle_16"]
  JUMP [+2]
  LOADK R6 K11 ["content-system-alert"]
  LOADK R7 K8 ["component_assets/circle_16"]
  LOADB R9 0
  JUMPIFEQKS R6 K5 [""] [+5]
  JUMPIFNOTEQKS R7 K5 [""] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K12 [+4]
  LOADK R10 K12 ["Expected colorTag and icon to be set"]
  GETIMPORT R8 K14 [assert]
  CALL R8 2 0
  MOVE R3 R6
  MOVE R4 R7
  GETTABLEKS R6 R1 K4 ["status"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Connected"]
  JUMPIFNOTEQ R6 R7 [+4]
  GETTABLEKS R5 R2 K6 ["Connected"]
  JUMP [+27]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["Disconnected"]
  JUMPIFNOTEQ R6 R7 [+4]
  GETTABLEKS R5 R2 K9 ["Disconnected"]
  JUMP [+19]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["AuthorizationPending"]
  JUMPIFNOTEQ R6 R7 [+4]
  GETTABLEKS R5 R2 K15 ["AuthorizationPending"]
  JUMP [+11]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["UnsupportedProtocolVersion"]
  JUMPIFNOTEQ R6 R7 [+4]
  GETTABLEKS R5 R2 K17 ["Unsupported"]
  JUMP [+3]
  GETTABLEKS R5 R2 K18 ["ConnectionError"]
  JUMP [0]
  GETUPVAL R6 3
  CALL R6 0 1
  GETUPVAL R7 4
  GETUPVAL R8 5
  DUPTABLE R9 K21 [{"tag", "LayoutOrder"}]
  LOADK R10 K22 ["row auto-xy align-y-center"]
  SETTABLEKS R10 R9 K19 ["tag"]
  GETTABLEKS R10 R0 K20 ["LayoutOrder"]
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K25 [{"Icon", "Text"}]
  GETUPVAL R11 4
  GETUPVAL R12 6
  DUPTABLE R13 K28 [{"icon", "tag", "iconTag", "LayoutOrder"}]
  SETTABLEKS R4 R13 K26 ["icon"]
  LOADK R14 K29 ["size-400-400 align-x-center align-y-center"]
  SETTABLEKS R14 R13 K19 ["tag"]
  NEWTABLE R14 2 0
  LOADB R15 1
  SETTABLEKS R15 R14 K30 ["size-200-200"]
  LOADB R15 1
  SETTABLE R15 R14 R3
  SETTABLEKS R14 R13 K27 ["iconTag"]
  MOVE R14 R6
  CALL R14 0 1
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Icon"]
  GETUPVAL R11 4
  GETUPVAL R12 7
  DUPTABLE R13 K31 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K32 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R14 R13 K19 ["tag"]
  SETTABLEKS R5 R13 K24 ["Text"]
  MOVE R14 R6
  CALL R14 0 1
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

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
  CAPTURE VAL R1
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
