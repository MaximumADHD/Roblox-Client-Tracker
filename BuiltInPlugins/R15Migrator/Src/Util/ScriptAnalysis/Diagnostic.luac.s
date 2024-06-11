PROTO_0:
  GETTABLEKS R2 R0 K0 ["range"]
  GETTABLEKS R3 R1 K0 ["range"]
  JUMPIFNOTEQ R2 R3 [+21]
  GETTABLEKS R2 R0 K1 ["message"]
  GETTABLEKS R3 R1 K1 ["message"]
  JUMPIFNOTEQ R2 R3 [+15]
  GETTABLEKS R3 R0 K2 ["suggestions"]
  LENGTH R2 R3
  GETTABLEKS R4 R1 K2 ["suggestions"]
  LENGTH R3 R4
  JUMPIFNOTEQ R2 R3 [+7]
  GETTABLEKS R2 R0 K3 ["issueType"]
  GETTABLEKS R3 R1 K3 ["issueType"]
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["suggestions"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R8 R1 K2 ["suggestions"]
  GETTABLE R7 R8 R5
  JUMPIFEQ R6 R7 [+3]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-8]
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["range"]
  GETTABLEKS R4 R1 K0 ["range"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  DUPTABLE R9 K9 [{"diagnosticId", "range", "code", "codeDescription", "instanceName", "message", "severity", "suggestions", "issueType"}]
  GETUPVAL R10 0
  LOADB R12 1
  NAMECALL R10 R10 K10 ["GenerateGUID"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K0 ["diagnosticId"]
  SETTABLEKS R0 R9 K1 ["range"]
  SETTABLEKS R1 R9 K2 ["code"]
  SETTABLEKS R6 R9 K3 ["codeDescription"]
  SETTABLEKS R2 R9 K4 ["instanceName"]
  SETTABLEKS R3 R9 K5 ["message"]
  SETTABLEKS R4 R9 K6 ["severity"]
  SETTABLEKS R5 R9 K7 ["suggestions"]
  SETTABLEKS R7 R9 K8 ["issueType"]
  GETUPVAL R10 1
  FASTCALL2 SETMETATABLE R9 R10 [+3]
  GETIMPORT R8 K12 [setmetatable]
  CALL R8 2 1
  RETURN R8 1

PROTO_3:
  DUPTABLE R1 K5 [{"range", "code", "message", "severity", "codeDescription"}]
  GETTABLEKS R2 R0 K0 ["range"]
  NAMECALL R2 R2 K6 ["GetDataForLinter"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["range"]
  GETTABLEKS R2 R0 K1 ["code"]
  SETTABLEKS R2 R1 K1 ["code"]
  GETTABLEKS R2 R0 K2 ["message"]
  SETTABLEKS R2 R1 K2 ["message"]
  GETTABLEKS R2 R0 K3 ["severity"]
  SETTABLEKS R2 R1 K3 ["severity"]
  GETTABLEKS R2 R0 K4 ["codeDescription"]
  SETTABLEKS R2 R1 K4 ["codeDescription"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Util"]
  GETTABLEKS R2 R3 K10 ["ScriptAnalysis"]
  GETIMPORT R3 K12 [require]
  GETTABLEKS R4 R2 K13 ["Constants"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K14 ["__index"]
  DUPCLOSURE R5 K15 [PROTO_0]
  SETTABLEKS R5 R4 K16 ["__eq"]
  DUPCLOSURE R5 K17 [PROTO_1]
  SETTABLEKS R5 R4 K18 ["__lt"]
  DUPCLOSURE R5 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K20 ["new"]
  DUPCLOSURE R5 K21 [PROTO_3]
  SETTABLEKS R5 R4 K22 ["GetDataForLinter"]
  RETURN R4 1
