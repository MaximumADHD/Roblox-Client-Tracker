PROTO_0:
  LOADK R3 K0 ["ScriptEditorService"]
  NAMECALL R1 R0 K1 ["GetService"]
  CALL R1 2 1
  LOADK R4 K2 ["StudioService"]
  NAMECALL R2 R0 K1 ["GetService"]
  CALL R2 2 1
  DUPTABLE R3 K3 [{"ScriptEditorService", "StudioService"}]
  SETTABLEKS R1 R3 K0 ["ScriptEditorService"]
  SETTABLEKS R2 R3 K2 ["StudioService"]
  RETURN R3 1

PROTO_1:
  LOADK R4 K0 ["ScriptEditorService"]
  NAMECALL R2 R0 K1 ["GetService"]
  CALL R2 2 1
  LOADK R5 K2 ["StudioService"]
  NAMECALL R3 R0 K1 ["GetService"]
  CALL R3 2 1
  DUPTABLE R1 K3 [{"ScriptEditorService", "StudioService"}]
  SETTABLEKS R2 R1 K0 ["ScriptEditorService"]
  SETTABLEKS R3 R1 K2 ["StudioService"]
  GETTABLEKS R3 R1 K2 ["StudioService"]
  GETTABLEKS R2 R3 K4 ["ActiveScript"]
  JUMPIF R2 [+8]
  DUPTABLE R3 K7 [{"success", "errorMessage"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["success"]
  LOADK R4 K8 ["No script is currently active"]
  SETTABLEKS R4 R3 K6 ["errorMessage"]
  RETURN R3 1
  GETTABLEKS R3 R1 K0 ["ScriptEditorService"]
  MOVE R5 R2
  NAMECALL R3 R3 K9 ["FindScriptDocument"]
  CALL R3 2 1
  JUMPIF R3 [+20]
  DUPTABLE R4 K11 [{"success", "errorMessage", "script"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["success"]
  LOADK R5 K12 ["No document found for active script"]
  SETTABLEKS R5 R4 K6 ["errorMessage"]
  DUPTABLE R5 K15 [{"Name", "FullName"}]
  GETTABLEKS R6 R2 K13 ["Name"]
  SETTABLEKS R6 R5 K13 ["Name"]
  NAMECALL R6 R2 K16 ["GetFullName"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["FullName"]
  SETTABLEKS R5 R4 K10 ["script"]
  RETURN R4 1
  NAMECALL R4 R3 K17 ["GetSelectedText"]
  CALL R4 1 1
  MOVE R5 R4
  JUMPIFNOT R5 [+4]
  JUMPIFNOTEQKS R4 K18 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  NAMECALL R6 R3 K19 ["GetSelectionStart"]
  CALL R6 1 2
  NAMECALL R8 R3 K20 ["GetSelectionEnd"]
  CALL R8 1 2
  DUPTABLE R10 K25 [{"success", "script", "selectedText", "hasSelection", "selectionStart", "selectionEnd"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K5 ["success"]
  DUPTABLE R11 K15 [{"Name", "FullName"}]
  GETTABLEKS R12 R2 K13 ["Name"]
  SETTABLEKS R12 R11 K13 ["Name"]
  NAMECALL R12 R2 K16 ["GetFullName"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K14 ["FullName"]
  SETTABLEKS R11 R10 K10 ["script"]
  JUMPIFNOT R5 [+2]
  MOVE R11 R4
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["selectedText"]
  SETTABLEKS R5 R10 K22 ["hasSelection"]
  DUPTABLE R11 K28 [{"line", "char"}]
  SETTABLEKS R6 R11 K26 ["line"]
  SETTABLEKS R7 R11 K27 ["char"]
  SETTABLEKS R11 R10 K23 ["selectionStart"]
  DUPTABLE R11 K28 [{"line", "char"}]
  SETTABLEKS R8 R11 K26 ["line"]
  SETTABLEKS R9 R11 K27 ["char"]
  SETTABLEKS R11 R10 K24 ["selectionEnd"]
  RETURN R10 1

PROTO_2:
  LOADK R4 K0 ["ScriptEditorService"]
  NAMECALL R2 R0 K1 ["GetService"]
  CALL R2 2 1
  LOADK R5 K2 ["StudioService"]
  NAMECALL R3 R0 K1 ["GetService"]
  CALL R3 2 1
  DUPTABLE R1 K3 [{"ScriptEditorService", "StudioService"}]
  SETTABLEKS R2 R1 K0 ["ScriptEditorService"]
  SETTABLEKS R3 R1 K2 ["StudioService"]
  GETTABLEKS R2 R1 K0 ["ScriptEditorService"]
  NAMECALL R2 R2 K4 ["GetScriptDocuments"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  LOADN R4 1
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  NAMECALL R10 R9 K5 ["GetScript"]
  CALL R10 1 1
  JUMPIFNOT R10 [+19]
  DUPTABLE R13 K9 [{"index", "scriptName", "scriptFullName"}]
  SETTABLEKS R4 R13 K6 ["index"]
  GETTABLEKS R14 R10 K10 ["Name"]
  SETTABLEKS R14 R13 K7 ["scriptName"]
  NAMECALL R14 R10 K11 ["GetFullName"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K8 ["scriptFullName"]
  FASTCALL2 TABLE_INSERT R3 R13 [+4]
  MOVE R12 R3
  GETIMPORT R11 K14 [table.insert]
  CALL R11 2 0
  ADDK R4 R4 K15 [1]
  FORGLOOP R5 2 [-24]
  RETURN R3 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  MOVE R2 R1
  JUMPIF R2 [+2]
  GETIMPORT R2 K1 [game]
  LOADK R5 K2 ["StudioScriptHelper_getActiveScriptInfo"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  NAMECALL R3 R0 K3 ["OnHostInvokeAsync"]
  CALL R3 3 1
  SETUPVAL R3 0
  LOADK R5 K4 ["StudioScriptHelper_getOpenDocuments"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  NAMECALL R3 R0 K3 ["OnHostInvokeAsync"]
  CALL R3 3 1
  SETUPVAL R3 2
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getActiveScriptInfo"]
  CALL R0 0 1
  GETTABLEKS R1 R0 K1 ["success"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K2 ["hasSelection"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K3 ["selectedText"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getActiveScriptInfo"]
  CALL R0 0 1
  GETTABLEKS R1 R0 K1 ["success"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["script"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K2 ["script"]
  GETTABLEKS R1 R2 K3 ["Name"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getActiveScriptInfo"]
  CALL R0 0 1
  GETTABLEKS R1 R0 K1 ["success"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["script"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K2 ["script"]
  GETTABLEKS R1 R2 K3 ["FullName"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_11:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["getActiveScriptInfo"]
  CALL R1 0 1
  MOVE R4 R1
  NAMECALL R2 R0 K5 ["JSONEncode"]
  CALL R2 2 1
  LOADK R4 K6 ["Explain the following code to the user and be concise. Fetch surrounding context from the provided script information to help you understand the code if needed. Focus on what the code does, how it works, and any important details the user should know.

Script Information:
"]
  MOVE R5 R2
  CONCAT R3 R4 R5
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioNetworking"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  LOADNIL R3
  LOADNIL R4
  DUPCLOSURE R5 K9 [PROTO_0]
  DUPCLOSURE R6 K10 [PROTO_1]
  DUPCLOSURE R7 K11 [PROTO_2]
  NEWCLOSURE R8 P3
  CAPTURE REF R3
  CAPTURE VAL R6
  CAPTURE REF R4
  CAPTURE VAL R7
  SETTABLEKS R8 R2 K12 ["initialize"]
  NEWCLOSURE R8 P4
  CAPTURE REF R3
  SETTABLEKS R8 R2 K13 ["getActiveScriptInfo"]
  NEWCLOSURE R8 P5
  CAPTURE REF R4
  SETTABLEKS R8 R2 K14 ["getOpenDocuments"]
  DUPCLOSURE R8 K15 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K16 ["getSelectedTextFromActiveScript"]
  DUPCLOSURE R8 K17 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K18 ["getActiveScriptName"]
  DUPCLOSURE R8 K19 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K20 ["getActiveScriptPath"]
  DUPCLOSURE R8 K21 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R8 R2 K22 ["generateExplainCodePrompt"]
  CLOSEUPVALS R3
  RETURN R2 1
