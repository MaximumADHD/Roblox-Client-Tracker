PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+19]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["pretty"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"depth", "multiline"}]
  LOADK R4 K4 [∞]
  SETTABLEKS R4 R3 K1 ["depth"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["multiline"]
  CALL R1 2 1
  LOADK R3 K5 ["HttpResponse = %*"]
  MOVE R5 R1
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K8 [pairs]
  GETTABLEKS R3 R0 K9 ["requestOptions"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R8 R1
  GETIMPORT R9 K11 [string.format]
  LOADK R10 K12 ["%s : %s"]
  MOVE R11 R5
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R13 R6
  GETIMPORT R12 K14 [tostring]
  CALL R12 1 1
  CALL R9 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K17 [table.insert]
  CALL R7 -1 0
  FORGLOOP R2 2 [-16]
  GETTABLEKS R2 R0 K18 ["responseBody"]
  FASTCALL1 TYPE R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K20 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K15 ["table"] [+35]
  NEWTABLE R3 0 0
  GETIMPORT R4 K8 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  MOVE R10 R3
  GETIMPORT R11 K11 [string.format]
  LOADK R12 K12 ["%s : %s"]
  MOVE R13 R7
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R15 R8
  GETIMPORT R14 K14 [tostring]
  CALL R14 1 1
  CALL R11 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K17 [table.insert]
  CALL R9 -1 0
  FORGLOOP R4 2 [-16]
  GETIMPORT R4 K11 [string.format]
  LOADK R5 K21 ["{ %s }"]
  GETIMPORT R6 K23 [table.concat]
  MOVE R7 R3
  LOADK R8 K24 [", "]
  CALL R6 2 -1
  CALL R4 -1 1
  MOVE R2 R4
  NEWTABLE R3 0 0
  MOVE R5 R3
  GETIMPORT R6 K11 [string.format]
  LOADK R7 K12 ["%s : %s"]
  LOADK R8 K25 ["responseTimeMs"]
  GETTABLEKS R9 R0 K25 ["responseTimeMs"]
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K17 [table.insert]
  CALL R4 -1 0
  MOVE R5 R3
  GETIMPORT R6 K11 [string.format]
  LOADK R7 K12 ["%s : %s"]
  LOADK R8 K26 ["responseCode"]
  GETTABLEKS R9 R0 K26 ["responseCode"]
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K17 [table.insert]
  CALL R4 -1 0
  MOVE R5 R3
  GETIMPORT R6 K11 [string.format]
  LOADK R7 K12 ["%s : %s"]
  LOADK R8 K18 ["responseBody"]
  MOVE R9 R2
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K17 [table.insert]
  CALL R4 -1 0
  MOVE R5 R3
  GETIMPORT R6 K11 [string.format]
  LOADK R7 K27 ["%s : { %s }"]
  LOADK R8 K9 ["requestOptions"]
  GETIMPORT R9 K23 [table.concat]
  MOVE R10 R1
  LOADK R11 K24 [", "]
  CALL R9 2 -1
  CALL R6 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K17 [table.insert]
  CALL R4 -1 0
  GETIMPORT R4 K11 [string.format]
  LOADK R5 K28 ["HttpResponse = { %s }"]
  GETIMPORT R6 K23 [table.concat]
  MOVE R7 R3
  LOADK R8 K24 [", "]
  CALL R6 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R4 K4 [{"responseTimeMs", "responseCode", "responseBody", "requestOptions"}]
  SETTABLEKS R1 R4 K0 ["responseTimeMs"]
  SETTABLEKS R2 R4 K1 ["responseCode"]
  SETTABLEKS R0 R4 K2 ["responseBody"]
  SETTABLEKS R3 R4 K3 ["requestOptions"]
  GETUPVAL R7 0
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K6 [setmetatable]
  CALL R5 2 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Networking"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagDevFrameworkNetworkingBetterErrors"]
  CALL R2 1 1
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["__tostring"]
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K13 ["new"]
  RETURN R3 1
