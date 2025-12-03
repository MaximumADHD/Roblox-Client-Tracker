PROTO_0:
  ORK R1 R0 K0 ["none"]
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["none"] [+3]
  LOADNIL R1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_2:
  LOADK R3 K0 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R4 K1 ["%%%%%1"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  LOADK R3 K0 ["%%"]
  LOADK R4 K1 ["%%%%"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  LOADK R5 K0 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R6 K1 ["%%%%%1"]
  NAMECALL R3 R1 K2 ["gsub"]
  CALL R3 3 1
  LOADK R6 K3 ["%%"]
  LOADK R7 K4 ["%%%%"]
  NAMECALL R4 R2 K2 ["gsub"]
  CALL R4 3 1
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R0 K2 ["gsub"]
  CALL R5 3 2
  MOVE R7 R5
  LOADN R9 0
  JUMPIFLT R9 R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  RETURN R7 2

PROTO_5:
  MOVE R5 R1
  LOADN R6 1
  LOADB R7 1
  NAMECALL R3 R0 K0 ["find"]
  CALL R3 4 2
  JUMPIFNOT R3 [+16]
  JUMPIFNOT R4 [+15]
  LOADN R11 1
  SUBK R12 R3 K1 [1]
  NAMECALL R9 R0 K2 ["sub"]
  CALL R9 3 1
  MOVE R6 R9
  MOVE R7 R2
  ADDK R10 R4 K1 [1]
  NAMECALL R8 R0 K2 ["sub"]
  CALL R8 2 1
  CONCAT R5 R6 R8
  MOVE R6 R5
  LOADB R7 1
  RETURN R6 2
  MOVE R5 R0
  LOADB R6 0
  RETURN R5 2

PROTO_6:
  GETTABLEKS R2 R1 K0 ["replace_all"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 0
  MOVE R3 R0
  GETTABLEKS R4 R1 K1 ["old_string"]
  GETTABLEKS R5 R1 K2 ["new_string"]
  CALL R2 3 -1
  RETURN R2 -1
  GETUPVAL R2 1
  MOVE R3 R0
  GETTABLEKS R4 R1 K1 ["old_string"]
  GETTABLEKS R5 R1 K2 ["new_string"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["messageGuid"]
  JUMP [+1]
  LOADK R0 K1 [""]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+29]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["updateScriptSourceAsync"]
  DUPTABLE R2 K9 [{"conversationId", "requestId", "instanceId", "script", "source", "isNewScript"}]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["conversationId"]
  JUMP [+1]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K3 ["conversationId"]
  SETTABLEKS R0 R2 K4 ["requestId"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K5 ["instanceId"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K6 ["script"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K7 ["source"]
  GETUPVAL R3 5
  SETTABLEKS R3 R2 K8 ["isNewScript"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K10 ["updateScriptSource_DEPRECATED"]
  MOVE R2 R0
  LOADK R3 K1 [""]
  GETUPVAL R4 3
  GETUPVAL R5 4
  GETUPVAL R6 5
  CALL R1 5 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["findOrCreateInstance"]
  MOVE R5 R0
  MOVE R6 R2
  CALL R4 2 2
  JUMPIFNOT R5 [+7]
  JUMPIF R2 [+6]
  GETIMPORT R6 K2 [error]
  LOADK R8 K3 ["`className` is required when creating a new script at path: "]
  MOVE R9 R0
  CONCAT R7 R8 R9
  CALL R6 1 0
  LOADK R8 K4 ["Script"]
  NAMECALL R6 R4 K5 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+17]
  LOADK R8 K6 ["LocalScript"]
  NAMECALL R6 R4 K5 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+12]
  LOADK R8 K7 ["ModuleScript"]
  NAMECALL R6 R4 K5 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+7]
  GETIMPORT R6 K2 [error]
  LOADK R8 K8 ["Object at path is not a script type. Found: "]
  GETTABLEKS R9 R4 K9 ["ClassName"]
  CONCAT R7 R8 R9
  CALL R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K10 ["get"]
  CALL R7 0 1
  GETTABLEKS R6 R7 K11 ["getScriptSource"]
  MOVE R7 R4
  CALL R6 1 1
  MOVE R7 R6
  LOADB R8 0
  JUMPIFNOT R5 [+27]
  LENGTH R9 R1
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+24]
  GETTABLEN R9 R1 1
  GETTABLEKS R10 R9 K12 ["old_string"]
  JUMPIFNOTEQKS R10 K13 [""] [+19]
  GETTABLEKS R7 R9 K14 ["new_string"]
  LOADB R8 1
  NEWTABLE R10 0 0
  LOADN R13 2
  LENGTH R11 R1
  LOADN R12 1
  FORNPREP R11
  GETTABLE R16 R1 R13
  FASTCALL2 TABLE_INSERT R10 R16 [+4]
  MOVE R15 R10
  GETIMPORT R14 K17 [table.insert]
  CALL R14 2 0
  FORNLOOP R11
  MOVE R1 R10
  MOVE R9 R7
  MOVE R10 R1
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R15 R14 K12 ["old_string"]
  GETTABLEKS R16 R14 K14 ["new_string"]
  JUMPIFNOTEQ R15 R16 [+14]
  JUMPIFNOT R8 [+2]
  ADDK R15 R13 K18 [1]
  JUMPIF R15 [+1]
  MOVE R15 R13
  GETIMPORT R16 K2 [error]
  LOADK R18 K19 ["Edit %* has identical old_string and new_string"]
  MOVE R20 R15
  NAMECALL R18 R18 K20 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  CALL R16 1 0
  MOVE R17 R9
  GETTABLEKS R18 R14 K21 ["replace_all"]
  JUMPIFNOT R18 [+26]
  GETTABLEKS R18 R14 K12 ["old_string"]
  GETTABLEKS R19 R14 K14 ["new_string"]
  LOADK R22 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R23 K23 ["%%%%%1"]
  NAMECALL R20 R18 K24 ["gsub"]
  CALL R20 3 1
  LOADK R23 K25 ["%%"]
  LOADK R24 K26 ["%%%%"]
  NAMECALL R21 R19 K24 ["gsub"]
  CALL R21 3 1
  MOVE R24 R20
  MOVE R25 R21
  NAMECALL R22 R17 K24 ["gsub"]
  CALL R22 3 2
  MOVE R15 R22
  LOADN R24 0
  JUMPIFLT R24 R23 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMP [+30]
  GETTABLEKS R18 R14 K12 ["old_string"]
  GETTABLEKS R19 R14 K14 ["new_string"]
  MOVE R22 R18
  LOADN R23 1
  LOADB R24 1
  NAMECALL R20 R17 K27 ["find"]
  CALL R20 4 2
  JUMPIFNOT R20 [+16]
  JUMPIFNOT R21 [+15]
  LOADN R28 1
  SUBK R29 R20 K18 [1]
  NAMECALL R26 R17 K28 ["sub"]
  CALL R26 3 1
  MOVE R23 R26
  MOVE R24 R19
  ADDK R27 R21 K18 [1]
  NAMECALL R25 R17 K28 ["sub"]
  CALL R25 2 1
  CONCAT R22 R23 R25
  MOVE R15 R22
  LOADB R16 1
  JUMP [+3]
  MOVE R15 R17
  LOADB R16 0
  JUMP [0]
  GETTABLEKS R17 R14 K21 ["replace_all"]
  JUMPIF R17 [+16]
  JUMPIF R16 [+15]
  JUMPIFNOT R8 [+2]
  ADDK R17 R13 K18 [1]
  JUMPIF R17 [+1]
  MOVE R17 R13
  GETIMPORT R18 K2 [error]
  LOADK R20 K29 ["Edit %* - old_string '%*' not found in current content"]
  MOVE R22 R17
  GETTABLEKS R23 R14 K12 ["old_string"]
  NAMECALL R20 R20 K20 ["format"]
  CALL R20 3 1
  MOVE R19 R20
  CALL R18 1 0
  MOVE R9 R15
  FORGLOOP R10 2 [-100]
  MOVE R10 R1
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  MOVE R17 R7
  GETTABLEKS R18 R14 K21 ["replace_all"]
  JUMPIFNOT R18 [+26]
  GETTABLEKS R18 R14 K12 ["old_string"]
  GETTABLEKS R19 R14 K14 ["new_string"]
  LOADK R22 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R23 K23 ["%%%%%1"]
  NAMECALL R20 R18 K24 ["gsub"]
  CALL R20 3 1
  LOADK R23 K25 ["%%"]
  LOADK R24 K26 ["%%%%"]
  NAMECALL R21 R19 K24 ["gsub"]
  CALL R21 3 1
  MOVE R24 R20
  MOVE R25 R21
  NAMECALL R22 R17 K24 ["gsub"]
  CALL R22 3 2
  MOVE R15 R22
  LOADN R24 0
  JUMPIFLT R24 R23 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMP [+30]
  GETTABLEKS R18 R14 K12 ["old_string"]
  GETTABLEKS R19 R14 K14 ["new_string"]
  MOVE R22 R18
  LOADN R23 1
  LOADB R24 1
  NAMECALL R20 R17 K27 ["find"]
  CALL R20 4 2
  JUMPIFNOT R20 [+16]
  JUMPIFNOT R21 [+15]
  LOADN R28 1
  SUBK R29 R20 K18 [1]
  NAMECALL R26 R17 K28 ["sub"]
  CALL R26 3 1
  MOVE R23 R26
  MOVE R24 R19
  ADDK R27 R21 K18 [1]
  NAMECALL R25 R17 K28 ["sub"]
  CALL R25 2 1
  CONCAT R22 R23 R25
  MOVE R15 R22
  LOADB R16 1
  JUMP [+3]
  MOVE R15 R17
  LOADB R16 0
  JUMP [0]
  GETTABLEKS R17 R14 K21 ["replace_all"]
  JUMPIF R17 [+5]
  JUMPIF R16 [+4]
  GETIMPORT R17 K2 [error]
  LOADK R18 K30 ["Validation failed during apply - target text not found"]
  CALL R17 1 0
  MOVE R7 R15
  FORGLOOP R10 2 [-70]
  GETUPVAL R10 2
  LOADB R12 0
  NAMECALL R10 R10 K31 ["GenerateGUID"]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["get"]
  CALL R11 0 1
  GETTABLEKS R12 R11 K32 ["startRecording"]
  MOVE R13 R10
  CALL R12 1 0
  GETIMPORT R12 K34 [pcall]
  NEWCLOSURE R13 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE REF R7
  CAPTURE VAL R5
  CALL R12 1 2
  GETTABLEKS R14 R11 K35 ["endRecording"]
  MOVE R15 R10
  CALL R14 1 0
  JUMPIFNOT R12 [+23]
  JUMPIFNOT R5 [+2]
  LOADK R14 K36 ["Created"]
  JUMP [+1]
  LOADK R14 K37 ["Modified"]
  LENGTH R16 R1
  JUMPIFNOT R8 [+2]
  LOADN R17 1
  JUMP [+1]
  LOADN R17 0
  ADD R15 R16 R17
  LOADK R17 K38 ["%* %* (%*) with %* edits applied"]
  MOVE R19 R14
  GETTABLEKS R20 R4 K39 ["Name"]
  GETTABLEKS R21 R4 K9 ["ClassName"]
  MOVE R22 R15
  NAMECALL R17 R17 K20 ["format"]
  CALL R17 5 1
  MOVE R16 R17
  CLOSEUPVALS R7
  RETURN R16 1
  GETIMPORT R14 K2 [error]
  MOVE R15 R13
  CALL R14 1 0
  CLOSEUPVALS R7
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K0 ["file_path"]
  GETTABLEKS R5 R1 K1 ["edits"]
  GETTABLEKS R6 R1 K2 ["className"]
  JUMPIFNOTEQKS R2 K3 ["none"] [+3]
  LOADNIL R7
  JUMP [+1]
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_10:
  GETUPVAL R2 0
  LOADNIL R3
  MOVE R4 R0
  ORK R5 R1 K0 ["none"]
  CALL R2 3 1
  GETUPVAL R3 1
  CALL R3 0 1
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["addText"]
  CALL R3 2 1
  NAMECALL R3 R3 K2 ["build"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_11:
  LOADNIL R2
  RETURN R2 1

PROTO_12:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["MultiEdit"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["networking"]
  DUPCLOSURE R2 K1 [PROTO_8]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  LOADK R5 K2 ["MultiEditTool_performEdit"]
  DUPCLOSURE R6 K3 [PROTO_9]
  CAPTURE VAL R2
  NAMECALL R3 R1 K4 ["OnHostInvokeAsync"]
  CALL R3 3 1
  NEWCLOSURE R4 P2
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K5 ["define"]
  CALL R5 0 1
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K6 ["MultiEdit"]
  NAMECALL R5 R5 K7 ["setName"]
  CALL R5 2 1
  LOADK R7 K8 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.
Can also create new scripts if the path doesn't exist (will need to specify className).

Example Call (correct):
- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}

Path Format:
- Use dot notation like \"game.ServerScriptService.MyScript\" 

Creating New Scripts:
- If the script doesn't exist, it will be created using the provided className
- className is required when creating new scripts
- First edit with empty old_string (\"\") sets the initial content
- Subsequent edits work normally on the created content

Before Using:
- Read or search file to understand existing script contents
- For new scripts, provide className and start with empty old_string to set initial content

Important Notes:
- All edits are applied in sequence, in the order provided
- Each edit operates on the result of the previous edit
- All edits must be valid for the operation to succeed - atomic operation
- Plan edits carefully to avoid conflicts between sequential operations

Critical Requirements:
- old_string must match script contents exactly (including whitespace)
- old_string and new_string must be different
- className required only when creating new scripts
- For new files: first edit can have empty old_string to set initial content

When Making Edits:
- Ensure all edits result in correct, runnable code
- Don't leave code in a broken state
- Use replace_all for renaming variables across the entire script
"]
  NAMECALL R5 R5 K9 ["setDescription"]
  CALL R5 2 1
  LOADK R7 K10 ["file_path"]
  DUPTABLE R8 K13 [{"type", "description"}]
  LOADK R9 K14 ["string"]
  SETTABLEKS R9 R8 K11 ["type"]
  LOADK R9 K15 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
  SETTABLEKS R9 R8 K12 ["description"]
  NAMECALL R5 R5 K16 ["addArgument"]
  CALL R5 3 1
  LOADK R7 K17 ["edits"]
  DUPTABLE R8 K19 [{"type", "description", "items"}]
  LOADK R9 K20 ["array"]
  SETTABLEKS R9 R8 K11 ["type"]
  LOADK R9 K21 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
  SETTABLEKS R9 R8 K12 ["description"]
  DUPTABLE R9 K24 [{"type", "properties", "required"}]
  LOADK R10 K25 ["object"]
  SETTABLEKS R10 R9 K11 ["type"]
  DUPTABLE R10 K29 [{"old_string", "new_string", "replace_all"}]
  DUPTABLE R11 K13 [{"type", "description"}]
  LOADK R12 K14 ["string"]
  SETTABLEKS R12 R11 K11 ["type"]
  LOADK R12 K30 ["The text to replace (must match exactly). Use empty string for new script initial content."]
  SETTABLEKS R12 R11 K12 ["description"]
  SETTABLEKS R11 R10 K26 ["old_string"]
  DUPTABLE R11 K13 [{"type", "description"}]
  LOADK R12 K14 ["string"]
  SETTABLEKS R12 R11 K11 ["type"]
  LOADK R12 K31 ["The text to replace it with (must be different from old_string)"]
  SETTABLEKS R12 R11 K12 ["description"]
  SETTABLEKS R11 R10 K27 ["new_string"]
  DUPTABLE R11 K13 [{"type", "description"}]
  LOADK R12 K32 ["boolean"]
  SETTABLEKS R12 R11 K11 ["type"]
  LOADK R12 K33 ["Replace all occurrences of old_string (optional, defaults to false)"]
  SETTABLEKS R12 R11 K12 ["description"]
  SETTABLEKS R11 R10 K28 ["replace_all"]
  SETTABLEKS R10 R9 K22 ["properties"]
  NEWTABLE R10 0 2
  LOADK R11 K26 ["old_string"]
  LOADK R12 K27 ["new_string"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K23 ["required"]
  SETTABLEKS R9 R8 K18 ["items"]
  NAMECALL R5 R5 K16 ["addArgument"]
  CALL R5 3 1
  LOADK R7 K34 ["className"]
  DUPTABLE R8 K13 [{"type", "description"}]
  LOADK R9 K14 ["string"]
  SETTABLEKS R9 R8 K11 ["type"]
  LOADK R9 K35 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
  SETTABLEKS R9 R8 K12 ["description"]
  NAMECALL R5 R5 K36 ["addOptionalArgument"]
  CALL R5 3 1
  MOVE R7 R4
  NAMECALL R5 R5 K37 ["setHandler"]
  CALL R5 2 1
  NAMECALL R5 R5 K38 ["build"]
  CALL R5 1 1
  DUPTABLE R6 K42 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
  SETTABLEKS R5 R6 K39 ["definition"]
  DUPCLOSURE R7 K43 [PROTO_11]
  SETTABLEKS R7 R6 K40 ["getPreExecuteWarning"]
  DUPCLOSURE R7 K44 [PROTO_12]
  CAPTURE UPVAL U7
  SETTABLEKS R7 R6 K41 ["displayNameFunction"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["AssistantUI"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ModelContextProtocol"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Tools"]
  GETTABLEKS R5 R6 K15 ["ToolTypes"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  GETTABLEKS R6 R7 K17 ["FFlagAssistantBridgeScriptDiff"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K18 ["Guest"]
  GETTABLEKS R6 R7 K19 ["Environment"]
  GETTABLEKS R8 R2 K20 ["Utils"]
  GETTABLEKS R7 R8 K14 ["Tools"]
  GETTABLEKS R10 R2 K21 ["Resources"]
  GETTABLEKS R9 R10 K22 ["Localization"]
  GETTABLEKS R8 R9 K23 ["Translator"]
  GETTABLEKS R10 R3 K24 ["Util"]
  GETTABLEKS R9 R10 K25 ["ToolBuilder"]
  GETTABLEKS R11 R3 K24 ["Util"]
  GETTABLEKS R10 R11 K26 ["ToolResult"]
  GETTABLEKS R11 R4 K27 ["ToolNames"]
  DUPCLOSURE R12 K28 [PROTO_0]
  DUPCLOSURE R13 K29 [PROTO_1]
  DUPCLOSURE R14 K30 [PROTO_2]
  DUPCLOSURE R15 K31 [PROTO_3]
  DUPCLOSURE R16 K32 [PROTO_4]
  DUPCLOSURE R17 K33 [PROTO_5]
  DUPCLOSURE R18 K34 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R17
  DUPCLOSURE R19 K35 [PROTO_13]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R8
  RETURN R19 1
