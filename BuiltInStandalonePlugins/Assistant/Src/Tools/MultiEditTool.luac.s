PROTO_0:
  LOADK R3 K0 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R4 K1 ["%%%%%1"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  LOADK R3 K0 ["%%"]
  LOADK R4 K1 ["%%%%"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateScriptSource"]
  GETUPVAL R1 1
  LOADK R2 K1 [""]
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  CALL R0 5 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["findOrCreateInstance"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 2
  JUMPIFNOT R4 [+5]
  JUMPIF R2 [+4]
  LOADK R6 K1 ["Error: className is required when creating a new script at path: "]
  MOVE R7 R0
  CONCAT R5 R6 R7
  RETURN R5 1
  LOADK R7 K2 ["Script"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+15]
  LOADK R7 K4 ["LocalScript"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  LOADK R7 K5 ["ModuleScript"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  LOADK R6 K6 ["Error: Object at path is not a script type. Found: "]
  GETTABLEKS R7 R3 K7 ["ClassName"]
  CONCAT R5 R6 R7
  RETURN R5 1
  GETTABLEKS R6 R3 K9 ["Source"]
  ORK R5 R6 K8 [""]
  MOVE R6 R5
  LOADB R7 0
  JUMPIFNOT R4 [+27]
  LENGTH R8 R1
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+24]
  GETTABLEN R8 R1 1
  GETTABLEKS R9 R8 K10 ["old_string"]
  JUMPIFNOTEQKS R9 K8 [""] [+19]
  GETTABLEKS R6 R8 K11 ["new_string"]
  LOADB R7 1
  NEWTABLE R9 0 0
  LOADN R12 2
  LENGTH R10 R1
  LOADN R11 1
  FORNPREP R10
  GETTABLE R15 R1 R12
  FASTCALL2 TABLE_INSERT R9 R15 [+4]
  MOVE R14 R9
  GETIMPORT R13 K14 [table.insert]
  CALL R13 2 0
  FORNLOOP R10
  MOVE R1 R9
  MOVE R8 R6
  MOVE R9 R1
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K10 ["old_string"]
  GETTABLEKS R15 R13 K11 ["new_string"]
  JUMPIFNOTEQ R14 R15 [+13]
  JUMPIFNOT R7 [+2]
  ADDK R14 R12 K15 [1]
  JUMPIF R14 [+1]
  MOVE R14 R12
  LOADK R16 K16 ["Error: Edit %* has identical old_string and new_string"]
  MOVE R18 R14
  NAMECALL R16 R16 K17 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  CLOSEUPVALS R6
  RETURN R15 1
  MOVE R16 R8
  GETTABLEKS R17 R13 K18 ["replace_all"]
  JUMPIFNOT R17 [+26]
  GETTABLEKS R17 R13 K10 ["old_string"]
  GETTABLEKS R18 R13 K11 ["new_string"]
  LOADK R21 K19 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R22 K20 ["%%%%%1"]
  NAMECALL R19 R17 K21 ["gsub"]
  CALL R19 3 1
  LOADK R22 K22 ["%%"]
  LOADK R23 K23 ["%%%%"]
  NAMECALL R20 R18 K21 ["gsub"]
  CALL R20 3 1
  MOVE R23 R19
  MOVE R24 R20
  NAMECALL R21 R16 K21 ["gsub"]
  CALL R21 3 2
  MOVE R14 R21
  LOADN R23 0
  JUMPIFLT R23 R22 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMP [+30]
  GETTABLEKS R17 R13 K10 ["old_string"]
  GETTABLEKS R18 R13 K11 ["new_string"]
  MOVE R21 R17
  LOADN R22 1
  LOADB R23 1
  NAMECALL R19 R16 K24 ["find"]
  CALL R19 4 2
  JUMPIFNOT R19 [+16]
  JUMPIFNOT R20 [+15]
  LOADN R27 1
  SUBK R28 R19 K15 [1]
  NAMECALL R25 R16 K25 ["sub"]
  CALL R25 3 1
  MOVE R22 R25
  MOVE R23 R18
  ADDK R26 R20 K15 [1]
  NAMECALL R24 R16 K25 ["sub"]
  CALL R24 2 1
  CONCAT R21 R22 R24
  MOVE R14 R21
  LOADB R15 1
  JUMP [+3]
  MOVE R14 R16
  LOADB R15 0
  JUMP [0]
  GETTABLEKS R16 R13 K18 ["replace_all"]
  JUMPIF R16 [+15]
  JUMPIF R15 [+14]
  JUMPIFNOT R7 [+2]
  ADDK R16 R12 K15 [1]
  JUMPIF R16 [+1]
  MOVE R16 R12
  LOADK R18 K26 ["Error: Edit %* - old_string '%*' not found in current content"]
  MOVE R20 R16
  GETTABLEKS R21 R13 K10 ["old_string"]
  NAMECALL R18 R18 K17 ["format"]
  CALL R18 3 1
  MOVE R17 R18
  CLOSEUPVALS R6
  RETURN R17 1
  MOVE R8 R14
  FORGLOOP R9 2 [-98]
  MOVE R9 R1
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  MOVE R16 R6
  GETTABLEKS R17 R13 K18 ["replace_all"]
  JUMPIFNOT R17 [+26]
  GETTABLEKS R17 R13 K10 ["old_string"]
  GETTABLEKS R18 R13 K11 ["new_string"]
  LOADK R21 K19 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
  LOADK R22 K20 ["%%%%%1"]
  NAMECALL R19 R17 K21 ["gsub"]
  CALL R19 3 1
  LOADK R22 K22 ["%%"]
  LOADK R23 K23 ["%%%%"]
  NAMECALL R20 R18 K21 ["gsub"]
  CALL R20 3 1
  MOVE R23 R19
  MOVE R24 R20
  NAMECALL R21 R16 K21 ["gsub"]
  CALL R21 3 2
  MOVE R14 R21
  LOADN R23 0
  JUMPIFLT R23 R22 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMP [+30]
  GETTABLEKS R17 R13 K10 ["old_string"]
  GETTABLEKS R18 R13 K11 ["new_string"]
  MOVE R21 R17
  LOADN R22 1
  LOADB R23 1
  NAMECALL R19 R16 K24 ["find"]
  CALL R19 4 2
  JUMPIFNOT R19 [+16]
  JUMPIFNOT R20 [+15]
  LOADN R27 1
  SUBK R28 R19 K15 [1]
  NAMECALL R25 R16 K25 ["sub"]
  CALL R25 3 1
  MOVE R22 R25
  MOVE R23 R18
  ADDK R26 R20 K15 [1]
  NAMECALL R24 R16 K25 ["sub"]
  CALL R24 2 1
  CONCAT R21 R22 R24
  MOVE R14 R21
  LOADB R15 1
  JUMP [+3]
  MOVE R14 R16
  LOADB R15 0
  JUMP [0]
  GETTABLEKS R16 R13 K18 ["replace_all"]
  JUMPIF R16 [+4]
  JUMPIF R15 [+3]
  LOADK R16 K27 ["Error: Validation failed during apply - target text not found"]
  CLOSEUPVALS R6
  RETURN R16 1
  MOVE R6 R14
  FORGLOOP R9 2 [-69]
  GETUPVAL R9 1
  LOADB R11 0
  NAMECALL R9 R9 K28 ["GenerateGUID"]
  CALL R9 2 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K29 ["get"]
  CALL R10 0 1
  GETTABLEKS R11 R10 K30 ["startRecording"]
  MOVE R12 R9
  CALL R11 1 0
  GETIMPORT R11 K32 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE REF R6
  CAPTURE VAL R4
  CALL R11 1 2
  GETTABLEKS R13 R10 K33 ["endRecording"]
  MOVE R14 R9
  CALL R13 1 0
  JUMPIFNOT R11 [+23]
  JUMPIFNOT R4 [+2]
  LOADK R13 K34 ["Created"]
  JUMP [+1]
  LOADK R13 K35 ["Modified"]
  LENGTH R15 R1
  JUMPIFNOT R7 [+2]
  LOADN R16 1
  JUMP [+1]
  LOADN R16 0
  ADD R14 R15 R16
  LOADK R16 K36 ["%* %* (%*) with %* edits applied"]
  MOVE R18 R13
  GETTABLEKS R19 R3 K37 ["Name"]
  GETTABLEKS R20 R3 K7 ["ClassName"]
  MOVE R21 R14
  NAMECALL R16 R16 K17 ["format"]
  CALL R16 5 1
  MOVE R15 R16
  CLOSEUPVALS R6
  RETURN R15 1
  GETIMPORT R13 K39 [error]
  MOVE R14 R12
  CALL R13 1 0
  CLOSEUPVALS R6
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["file_path"]
  GETTABLEKS R4 R1 K1 ["edits"]
  GETTABLEKS R5 R1 K2 ["className"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 -1
  RETURN R2 -1

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
  GETTABLEKS R6 R7 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["StudioNetworking"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K16 ["Tools"]
  GETTABLEKS R6 R7 K17 ["ToolTypes"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K18 ["Guest"]
  GETTABLEKS R6 R7 K19 ["Environment"]
  GETTABLEKS R8 R2 K20 ["Utils"]
  GETTABLEKS R7 R8 K16 ["Tools"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R8 R9 K21 ["ToolBuilder"]
  GETTABLEKS R10 R3 K14 ["Util"]
  GETTABLEKS R9 R10 K22 ["ToolResult"]
  GETTABLEKS R10 R5 K23 ["ToolNames"]
  GETTABLEKS R11 R4 K24 ["get"]
  CALL R11 0 1
  DUPCLOSURE R12 K25 [PROTO_0]
  DUPCLOSURE R13 K26 [PROTO_1]
  DUPCLOSURE R14 K27 [PROTO_2]
  DUPCLOSURE R15 K28 [PROTO_3]
  DUPCLOSURE R16 K29 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R17 K30 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  LOADK R20 K31 ["MultiEditTool_performEdit"]
  DUPCLOSURE R21 K32 [PROTO_7]
  CAPTURE VAL R17
  NAMECALL R18 R11 K33 ["OnHostInvokeAsync"]
  CALL R18 3 1
  DUPCLOSURE R19 K34 [PROTO_8]
  CAPTURE VAL R18
  CAPTURE VAL R9
  GETTABLEKS R20 R8 K35 ["define"]
  CALL R20 0 1
  GETTABLEKS R22 R10 K36 ["MultiEdit"]
  NAMECALL R20 R20 K37 ["setName"]
  CALL R20 2 1
  LOADK R22 K38 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.
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
  NAMECALL R20 R20 K39 ["setDescription"]
  CALL R20 2 1
  LOADK R22 K40 ["file_path"]
  DUPTABLE R23 K43 [{"type", "description"}]
  LOADK R24 K44 ["string"]
  SETTABLEKS R24 R23 K41 ["type"]
  LOADK R24 K45 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
  SETTABLEKS R24 R23 K42 ["description"]
  NAMECALL R20 R20 K46 ["addArgument"]
  CALL R20 3 1
  LOADK R22 K47 ["edits"]
  DUPTABLE R23 K49 [{"type", "description", "items"}]
  LOADK R24 K50 ["array"]
  SETTABLEKS R24 R23 K41 ["type"]
  LOADK R24 K51 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
  SETTABLEKS R24 R23 K42 ["description"]
  DUPTABLE R24 K54 [{"type", "properties", "required"}]
  LOADK R25 K55 ["object"]
  SETTABLEKS R25 R24 K41 ["type"]
  DUPTABLE R25 K59 [{"old_string", "new_string", "replace_all"}]
  DUPTABLE R26 K43 [{"type", "description"}]
  LOADK R27 K44 ["string"]
  SETTABLEKS R27 R26 K41 ["type"]
  LOADK R27 K60 ["The text to replace (must match exactly). Use empty string for new script initial content."]
  SETTABLEKS R27 R26 K42 ["description"]
  SETTABLEKS R26 R25 K56 ["old_string"]
  DUPTABLE R26 K43 [{"type", "description"}]
  LOADK R27 K44 ["string"]
  SETTABLEKS R27 R26 K41 ["type"]
  LOADK R27 K61 ["The text to replace it with (must be different from old_string)"]
  SETTABLEKS R27 R26 K42 ["description"]
  SETTABLEKS R26 R25 K57 ["new_string"]
  DUPTABLE R26 K43 [{"type", "description"}]
  LOADK R27 K62 ["boolean"]
  SETTABLEKS R27 R26 K41 ["type"]
  LOADK R27 K63 ["Replace all occurrences of old_string (optional, defaults to false)"]
  SETTABLEKS R27 R26 K42 ["description"]
  SETTABLEKS R26 R25 K58 ["replace_all"]
  SETTABLEKS R25 R24 K52 ["properties"]
  NEWTABLE R25 0 2
  LOADK R26 K56 ["old_string"]
  LOADK R27 K57 ["new_string"]
  SETLIST R25 R26 2 [1]
  SETTABLEKS R25 R24 K53 ["required"]
  SETTABLEKS R24 R23 K48 ["items"]
  NAMECALL R20 R20 K46 ["addArgument"]
  CALL R20 3 1
  LOADK R22 K64 ["className"]
  DUPTABLE R23 K43 [{"type", "description"}]
  LOADK R24 K44 ["string"]
  SETTABLEKS R24 R23 K41 ["type"]
  LOADK R24 K65 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
  SETTABLEKS R24 R23 K42 ["description"]
  NAMECALL R20 R20 K66 ["addOptionalArgument"]
  CALL R20 3 1
  MOVE R22 R19
  NAMECALL R20 R20 K67 ["setHandler"]
  CALL R20 2 1
  NAMECALL R20 R20 K68 ["build"]
  CALL R20 1 1
  DUPTABLE R21 K70 [{"definition"}]
  SETTABLEKS R20 R21 K69 ["definition"]
  RETURN R21 1
