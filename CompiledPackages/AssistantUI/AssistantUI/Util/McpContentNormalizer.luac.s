PROTO_0:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["text"] [+10]
  DUPTABLE R2 K2 [{"type", "text"}]
  LOADK R3 K1 ["text"]
  SETTABLEKS R3 R2 K0 ["type"]
  GETTABLEKS R3 R0 K1 ["text"]
  SETTABLEKS R3 R2 K1 ["text"]
  RETURN R2 1
  JUMPIFNOTEQKS R1 K3 ["image"] [+14]
  DUPTABLE R2 K6 [{"type", "data", "mimeType"}]
  LOADK R3 K3 ["image"]
  SETTABLEKS R3 R2 K0 ["type"]
  GETTABLEKS R3 R0 K4 ["data"]
  SETTABLEKS R3 R2 K4 ["data"]
  GETTABLEKS R3 R0 K5 ["mimeType"]
  SETTABLEKS R3 R2 K5 ["mimeType"]
  RETURN R2 1
  JUMPIFNOTEQKS R1 K7 ["audio"] [+15]
  DUPTABLE R2 K2 [{"type", "text"}]
  LOADK R3 K1 ["text"]
  SETTABLEKS R3 R2 K0 ["type"]
  LOADK R4 K8 ["[Audio content (%*)]"]
  GETTABLEKS R6 R0 K5 ["mimeType"]
  NAMECALL R4 R4 K9 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K1 ["text"]
  RETURN R2 1
  JUMPIFNOTEQKS R1 K10 ["resource"] [+79]
  GETTABLEKS R2 R0 K10 ["resource"]
  GETTABLEKS R3 R2 K5 ["mimeType"]
  GETTABLEKS R4 R2 K11 ["blob"]
  JUMPIFNOT R4 [+15]
  JUMPIFNOT R3 [+14]
  GETUPVAL R5 0
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+11]
  DUPTABLE R4 K6 [{"type", "data", "mimeType"}]
  LOADK R5 K3 ["image"]
  SETTABLEKS R5 R4 K0 ["type"]
  GETTABLEKS R5 R2 K11 ["blob"]
  SETTABLEKS R5 R4 K4 ["data"]
  SETTABLEKS R3 R4 K5 ["mimeType"]
  RETURN R4 1
  GETTABLEKS R4 R2 K1 ["text"]
  JUMPIFNOT R4 [+18]
  GETTABLEKS R5 R2 K13 ["uri"]
  ORK R4 R5 K12 ["unknown"]
  DUPTABLE R5 K2 [{"type", "text"}]
  LOADK R6 K1 ["text"]
  SETTABLEKS R6 R5 K0 ["type"]
  LOADK R7 K14 ["[Resource: %*]
%*"]
  MOVE R9 R4
  GETTABLEKS R10 R2 K1 ["text"]
  NAMECALL R7 R7 K9 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K1 ["text"]
  RETURN R5 1
  GETTABLEKS R4 R2 K11 ["blob"]
  JUMPIFNOT R4 [+17]
  GETTABLEKS R5 R2 K13 ["uri"]
  ORK R4 R5 K12 ["unknown"]
  DUPTABLE R5 K2 [{"type", "text"}]
  LOADK R6 K1 ["text"]
  SETTABLEKS R6 R5 K0 ["type"]
  LOADK R7 K15 ["[Binary resource: %* (%*)]"]
  MOVE R9 R4
  ORK R10 R3 K12 ["unknown"]
  NAMECALL R7 R7 K9 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K1 ["text"]
  RETURN R5 1
  DUPTABLE R4 K2 [{"type", "text"}]
  LOADK R5 K1 ["text"]
  SETTABLEKS R5 R4 K0 ["type"]
  LOADK R6 K16 ["[Resource: %*]"]
  GETTABLEKS R9 R2 K13 ["uri"]
  ORK R8 R9 K12 ["unknown"]
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K1 ["text"]
  RETURN R4 1
  JUMPIFNOTEQKS R1 K17 ["resource_link"] [+28]
  GETTABLEKS R3 R0 K18 ["name"]
  JUMPIFNOT R3 [+10]
  LOADK R3 K19 ["[Resource link: %* (%*)]"]
  GETTABLEKS R5 R0 K18 ["name"]
  GETTABLEKS R6 R0 K13 ["uri"]
  NAMECALL R3 R3 K9 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  JUMP [+7]
  LOADK R3 K20 ["[Resource link: %*]"]
  GETTABLEKS R5 R0 K13 ["uri"]
  NAMECALL R3 R3 K9 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K2 [{"type", "text"}]
  LOADK R4 K1 ["text"]
  SETTABLEKS R4 R3 K0 ["type"]
  SETTABLEKS R2 R3 K1 ["text"]
  RETURN R3 1
  DUPTABLE R2 K2 [{"type", "text"}]
  LOADK R3 K1 ["text"]
  SETTABLEKS R3 R2 K0 ["type"]
  LOADK R4 K21 ["[Unsupported content type: %*]"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K23 [tostring]
  CALL R6 1 1
  NAMECALL R4 R4 K9 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K1 ["text"]
  RETURN R2 1

PROTO_1:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R9 0
  MOVE R10 R6
  CALL R9 1 1
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K2 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-10]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  LOADB R3 1
  SETTABLEKS R3 R2 K7 ["image/png"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["image/jpeg"]
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["image/gif"]
  LOADB R3 1
  SETTABLEKS R3 R2 K10 ["image/webp"]
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  DUPTABLE R5 K15 [{"normalizeContent", "normalizeContentArray"}]
  SETTABLEKS R3 R5 K13 ["normalizeContent"]
  SETTABLEKS R4 R5 K14 ["normalizeContentArray"]
  RETURN R5 1
