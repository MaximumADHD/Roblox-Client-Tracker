PROTO_0:
  DUPTABLE R0 K1 [{"NoticeText"}]
  GETUPVAL R1 0
  LOADK R3 K2 ["IntegrationMenu"]
  LOADK R4 K3 ["ThirdPartyDisabled"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["NoticeText"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  DUPCLOSURE R3 K1 [PROTO_0]
  CAPTURE UPVAL U2
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["locale"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R3 3
  CALL R3 0 1
  GETTABLEKS R4 R1 K3 ["enabled"]
  JUMPIFNOT R4 [+2]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R5 R1 K4 ["reasonDisabled"]
  FASTCALL2K ASSERT R5 K5 [+4]
  LOADK R6 K5 ["Third party MCP is not enabled but reason disabled is not set?"]
  GETIMPORT R4 K7 [assert]
  CALL R4 2 0
  LOADK R4 K8 [""]
  GETTABLEKS R5 R1 K4 ["reasonDisabled"]
  JUMPIFNOTEQKS R5 K9 ["byok_disabled"] [+4]
  GETTABLEKS R4 R2 K10 ["NoticeText"]
  JUMP [+6]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K11 ["assertNever"]
  GETTABLEKS R6 R1 K4 ["reasonDisabled"]
  CALL R5 1 0
  GETUPVAL R5 5
  GETUPVAL R6 6
  DUPTABLE R7 K14 [{"tag", "LayoutOrder"}]
  LOADK R8 K15 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
  SETTABLEKS R8 R7 K12 ["tag"]
  GETTABLEKS R8 R0 K13 ["LayoutOrder"]
  SETTABLEKS R8 R7 K13 ["LayoutOrder"]
  DUPTABLE R8 K17 [{"Icon", "NoticeText"}]
  GETUPVAL R9 5
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K18 ["Image"]
  DUPTABLE R11 K19 [{"tag", "Image", "LayoutOrder"}]
  LOADK R12 K20 ["size-500-500 content-system-warning"]
  SETTABLEKS R12 R11 K12 ["tag"]
  LOADK R12 K21 ["icons/status/error_large"]
  SETTABLEKS R12 R11 K18 ["Image"]
  MOVE R12 R3
  CALL R12 0 1
  SETTABLEKS R12 R11 K13 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Icon"]
  GETUPVAL R9 5
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K22 ["Text"]
  DUPTABLE R11 K23 [{"tag", "Text", "LayoutOrder"}]
  LOADK R12 K24 ["auto-xy text-body-small text-align-x-left content-system-warning"]
  SETTABLEKS R12 R11 K12 ["tag"]
  SETTABLEKS R4 R11 K22 ["Text"]
  MOVE R12 R3
  CALL R12 0 1
  SETTABLEKS R12 R11 K13 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["NoticeText"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Resources"]
  GETTABLEKS R6 R7 K11 ["Localization"]
  GETTABLEKS R5 R6 K12 ["Translator"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Hooks"]
  GETTABLEKS R7 R8 K15 ["useThirdPartyMcpEnabled"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K16 ["View"]
  GETTABLEKS R8 R3 K17 ["createNextOrder"]
  GETTABLEKS R9 R2 K18 ["createElement"]
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  GETTABLEKS R11 R2 K20 ["memo"]
  MOVE R12 R10
  CALL R11 1 -1
  RETURN R11 -1
