PROTO_0:
        0 ORK                              R1 R0 K0 ["none"]
        1 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["none"] ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
        1 LOADK                            R4 K1 ["%%%%%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["%%"]
        1 LOADK                            R4 K1 ["%%%%"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 LOADK                            R5 K0 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
        1 LOADK                            R6 K1 ["%%%%%1"]
        2 NAMECALL                         R3 R1 K2 ["gsub"]
        4 CALL                             R3 3 1
        5 LOADK                            R6 K3 ["%%"]
        6 LOADK                            R7 K4 ["%%%%"]
        7 NAMECALL                         R4 R2 K2 ["gsub"]
        9 CALL                             R4 3 1
       10 MOVE                             R7 R3
       11 MOVE                             R8 R4
       12 NAMECALL                         R5 R0 K2 ["gsub"]
       14 CALL                             R5 3 2
       15 MOVE                             R7 R5
       16 LOADN                            R9 0
       17 JUMPIFLT                         R9 R6 ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 RETURN                           R7 2

PROTO_5:
        0 MOVE                             R5 R1
        1 LOADN                            R6 1
        2 LOADB                            R7 1
        3 NAMECALL                         R3 R0 K0 ["find"]
        5 CALL                             R3 4 2
        6 JUMPIFNOT                        R3 ; [+16]
        7 JUMPIFNOT                        R4 ; [+15]
        8 LOADN                            R11 1
        9 SUBK                             R12 R3 K1 [1]
       10 NAMECALL                         R9 R0 K2 ["sub"]
       12 CALL                             R9 3 1
       13 MOVE                             R6 R9
       14 MOVE                             R7 R2
       15 ADDK                             R10 R4 K1 [1]
       16 NAMECALL                         R8 R0 K2 ["sub"]
       18 CALL                             R8 2 1
       19 CONCAT                           R5 R6 R8
       20 MOVE                             R6 R5
       21 LOADB                            R7 1
       22 RETURN                           R6 2
       23 MOVE                             R5 R0
       24 LOADB                            R6 0
       25 RETURN                           R5 2

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["replace_all"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 GETTABLEKS                       R4 R1 K1 ["old_string"]
        7 GETTABLEKS                       R5 R1 K2 ["new_string"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 GETTABLEKS                       R4 R1 K1 ["old_string"]
       15 GETTABLEKS                       R5 R1 K2 ["new_string"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["messageGuid"]
        5 JUMP                             ; [+1]
        6 LOADK                            R0 K1 [""]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["tools"]
       10 GETTABLEKS                       R2 R3 K3 ["multiEdit"]
       12 GETTABLEKS                       R1 R2 K4 ["updateScriptSourceAsync"]
       14 DUPTABLE                         R2 K11 [{"conversationId", "requestId", "instanceId", "script", "source", "isNewScript"}]
       15 GETUPVAL                         R4 0
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K12 ["sessionId"]
       20 JUMP                             ; [+1]
       21 LOADK                            R3 K1 [""]
       22 SETTABLEKS                       R3 R2 K5 ["conversationId"]
       24 SETTABLEKS                       R0 R2 K6 ["requestId"]
       26 LOADK                            R3 K1 [""]
       27 SETTABLEKS                       R3 R2 K7 ["instanceId"]
       29 GETUPVAL                         R3 2
       30 SETTABLEKS                       R3 R2 K8 ["script"]
       32 GETUPVAL                         R3 3
       33 SETTABLEKS                       R3 R2 K9 ["source"]
       35 GETUPVAL                         R3 4
       36 SETTABLEKS                       R3 R2 K10 ["isNewScript"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["findOrCreateInstance"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R2
        5 CALL                             R4 2 2
        6 JUMPIFNOT                        R5 ; [+7]
        7 JUMPIF                           R2 ; [+6]
        8 GETIMPORT                        R6 K2 [error]
       10 LOADK                            R8 K3 ["`className` is required when creating a new script at path: "]
       11 MOVE                             R9 R0
       12 CONCAT                           R7 R8 R9
       13 CALL                             R6 1 0
       14 LOADK                            R8 K4 ["Script"]
       15 NAMECALL                         R6 R4 K5 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIF                           R6 ; [+17]
       19 LOADK                            R8 K6 ["LocalScript"]
       20 NAMECALL                         R6 R4 K5 ["IsA"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+12]
       24 LOADK                            R8 K7 ["ModuleScript"]
       25 NAMECALL                         R6 R4 K5 ["IsA"]
       27 CALL                             R6 2 1
       28 JUMPIF                           R6 ; [+7]
       29 GETIMPORT                        R6 K2 [error]
       31 LOADK                            R8 K8 ["Object at path is not a script type. Found: "]
       32 GETTABLEKS                       R9 R4 K9 ["ClassName"]
       34 CONCAT                           R7 R8 R9
       35 CALL                             R6 1 0
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K10 ["getScriptSource"]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 1
       41 MOVE                             R7 R6
       42 LOADB                            R8 0
       43 JUMPIFNOT                        R5 ; [+27]
       44 LENGTH                           R9 R1
       45 LOADN                            R10 0
       46 JUMPIFNOTLT                      R10 R9 ; [+24]
       48 GETTABLEN                        R9 R1 1
       49 GETTABLEKS                       R10 R9 K11 ["old_string"]
       51 JUMPIFNOTEQKS                    R10 K12 [""] ; [+19]
       53 GETTABLEKS                       R7 R9 K13 ["new_string"]
       55 LOADB                            R8 1
       56 NEWTABLE                         R10 0 0
       58 LOADN                            R13 2
       59 LENGTH                           R11 R1
       60 LOADN                            R12 1
       61 FORNPREP                         R11
       62 GETTABLE                         R16 R1 R13
       63 FASTCALL2                        TABLE_INSERT R10 R16 ; [+4]
       65 MOVE                             R15 R10
       66 GETIMPORT                        R14 K16 [table.insert]
       68 CALL                             R14 2 0
       69 FORNLOOP                         R11
       70 MOVE                             R1 R10
       71 MOVE                             R9 R7
       72 MOVE                             R10 R1
       73 LOADNIL                          R11
       74 LOADNIL                          R12
       75 FORGPREP                         R10
       76 GETTABLEKS                       R15 R14 K11 ["old_string"]
       78 GETTABLEKS                       R16 R14 K13 ["new_string"]
       80 JUMPIFNOTEQ                      R15 R16 ; [+14]
       82 JUMPIFNOT                        R8 ; [+2]
       83 ADDK                             R15 R13 K17 [1]
       84 JUMPIF                           R15 ; [+1]
       85 MOVE                             R15 R13
       86 GETIMPORT                        R16 K2 [error]
       88 LOADK                            R18 K18 ["Edit %* has identical old_string and new_string"]
       89 MOVE                             R20 R15
       90 NAMECALL                         R18 R18 K19 ["format"]
       92 CALL                             R18 2 1
       93 MOVE                             R17 R18
       94 CALL                             R16 1 0
       95 MOVE                             R17 R9
       96 GETTABLEKS                       R18 R14 K20 ["replace_all"]
       98 JUMPIFNOT                        R18 ; [+26]
       99 GETTABLEKS                       R18 R14 K11 ["old_string"]
      101 GETTABLEKS                       R19 R14 K13 ["new_string"]
      103 LOADK                            R22 K21 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      104 LOADK                            R23 K22 ["%%%%%1"]
      105 NAMECALL                         R20 R18 K23 ["gsub"]
      107 CALL                             R20 3 1
      108 LOADK                            R23 K24 ["%%"]
      109 LOADK                            R24 K25 ["%%%%"]
      110 NAMECALL                         R21 R19 K23 ["gsub"]
      112 CALL                             R21 3 1
      113 MOVE                             R24 R20
      114 MOVE                             R25 R21
      115 NAMECALL                         R22 R17 K23 ["gsub"]
      117 CALL                             R22 3 2
      118 MOVE                             R15 R22
      119 LOADN                            R24 0
      120 JUMPIFLT                         R24 R23 ; [+2]
      122 LOADB                            R16 0 +1
      123 LOADB                            R16 1
      124 JUMP                             ; [+30]
      125 GETTABLEKS                       R18 R14 K11 ["old_string"]
      127 GETTABLEKS                       R19 R14 K13 ["new_string"]
      129 MOVE                             R22 R18
      130 LOADN                            R23 1
      131 LOADB                            R24 1
      132 NAMECALL                         R20 R17 K26 ["find"]
      134 CALL                             R20 4 2
      135 JUMPIFNOT                        R20 ; [+16]
      136 JUMPIFNOT                        R21 ; [+15]
      137 LOADN                            R28 1
      138 SUBK                             R29 R20 K17 [1]
      139 NAMECALL                         R26 R17 K27 ["sub"]
      141 CALL                             R26 3 1
      142 MOVE                             R23 R26
      143 MOVE                             R24 R19
      144 ADDK                             R27 R21 K17 [1]
      145 NAMECALL                         R25 R17 K27 ["sub"]
      147 CALL                             R25 2 1
      148 CONCAT                           R22 R23 R25
      149 MOVE                             R15 R22
      150 LOADB                            R16 1
      151 JUMP                             ; [+3]
      152 MOVE                             R15 R17
      153 LOADB                            R16 0
      154 JUMP                             ; [0]
      155 GETTABLEKS                       R17 R14 K20 ["replace_all"]
      157 JUMPIF                           R17 ; [+16]
      158 JUMPIF                           R16 ; [+15]
      159 JUMPIFNOT                        R8 ; [+2]
      160 ADDK                             R17 R13 K17 [1]
      161 JUMPIF                           R17 ; [+1]
      162 MOVE                             R17 R13
      163 GETIMPORT                        R18 K2 [error]
      165 LOADK                            R20 K28 ["Edit %* - old_string '%*' not found in current content"]
      166 MOVE                             R22 R17
      167 GETTABLEKS                       R23 R14 K11 ["old_string"]
      169 NAMECALL                         R20 R20 K19 ["format"]
      171 CALL                             R20 3 1
      172 MOVE                             R19 R20
      173 CALL                             R18 1 0
      174 MOVE                             R9 R15
      175 FORGLOOP                         R10 2 ; [-100]
      177 MOVE                             R10 R1
      178 LOADNIL                          R11
      179 LOADNIL                          R12
      180 FORGPREP                         R10
      181 MOVE                             R17 R7
      182 GETTABLEKS                       R18 R14 K20 ["replace_all"]
      184 JUMPIFNOT                        R18 ; [+26]
      185 GETTABLEKS                       R18 R14 K11 ["old_string"]
      187 GETTABLEKS                       R19 R14 K13 ["new_string"]
      189 LOADK                            R22 K21 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      190 LOADK                            R23 K22 ["%%%%%1"]
      191 NAMECALL                         R20 R18 K23 ["gsub"]
      193 CALL                             R20 3 1
      194 LOADK                            R23 K24 ["%%"]
      195 LOADK                            R24 K25 ["%%%%"]
      196 NAMECALL                         R21 R19 K23 ["gsub"]
      198 CALL                             R21 3 1
      199 MOVE                             R24 R20
      200 MOVE                             R25 R21
      201 NAMECALL                         R22 R17 K23 ["gsub"]
      203 CALL                             R22 3 2
      204 MOVE                             R15 R22
      205 LOADN                            R24 0
      206 JUMPIFLT                         R24 R23 ; [+2]
      208 LOADB                            R16 0 +1
      209 LOADB                            R16 1
      210 JUMP                             ; [+30]
      211 GETTABLEKS                       R18 R14 K11 ["old_string"]
      213 GETTABLEKS                       R19 R14 K13 ["new_string"]
      215 MOVE                             R22 R18
      216 LOADN                            R23 1
      217 LOADB                            R24 1
      218 NAMECALL                         R20 R17 K26 ["find"]
      220 CALL                             R20 4 2
      221 JUMPIFNOT                        R20 ; [+16]
      222 JUMPIFNOT                        R21 ; [+15]
      223 LOADN                            R28 1
      224 SUBK                             R29 R20 K17 [1]
      225 NAMECALL                         R26 R17 K27 ["sub"]
      227 CALL                             R26 3 1
      228 MOVE                             R23 R26
      229 MOVE                             R24 R19
      230 ADDK                             R27 R21 K17 [1]
      231 NAMECALL                         R25 R17 K27 ["sub"]
      233 CALL                             R25 2 1
      234 CONCAT                           R22 R23 R25
      235 MOVE                             R15 R22
      236 LOADB                            R16 1
      237 JUMP                             ; [+3]
      238 MOVE                             R15 R17
      239 LOADB                            R16 0
      240 JUMP                             ; [0]
      241 GETTABLEKS                       R17 R14 K20 ["replace_all"]
      243 JUMPIF                           R17 ; [+5]
      244 JUMPIF                           R16 ; [+4]
      245 GETIMPORT                        R17 K2 [error]
      247 LOADK                            R18 K29 ["Validation failed during apply - target text not found"]
      248 CALL                             R17 1 0
      249 MOVE                             R7 R15
      250 FORGLOOP                         R10 2 ; [-70]
      252 GETUPVAL                         R10 2
      253 LOADB                            R12 0
      254 NAMECALL                         R10 R10 K30 ["GenerateGUID"]
      256 CALL                             R10 2 1
      257 GETUPVAL                         R12 1
      258 GETTABLEKS                       R11 R12 K31 ["startRecording"]
      260 MOVE                             R12 R10
      261 CALL                             R11 1 0
      262 GETIMPORT                        R11 K33 [pcall]
      264 NEWCLOSURE                       R12 P0
      265 CAPTURE                          VAL R3
      266 CAPTURE                          UPVAL U1
      267 CAPTURE                          VAL R4
      268 CAPTURE                          REF R7
      269 CAPTURE                          VAL R5
      270 CALL                             R11 1 2
      271 GETUPVAL                         R14 1
      272 GETTABLEKS                       R13 R14 K34 ["endRecording"]
      274 MOVE                             R14 R10
      275 CALL                             R13 1 0
      276 JUMPIFNOT                        R11 ; [+23]
      277 JUMPIFNOT                        R5 ; [+2]
      278 LOADK                            R13 K35 ["Created"]
      279 JUMP                             ; [+1]
      280 LOADK                            R13 K36 ["Modified"]
      281 LENGTH                           R15 R1
      282 JUMPIFNOT                        R8 ; [+2]
      283 LOADN                            R16 1
      284 JUMP                             ; [+1]
      285 LOADN                            R16 0
      286 ADD                              R14 R15 R16
      287 LOADK                            R16 K37 ["%* %* (%*) with %* edits applied"]
      288 MOVE                             R18 R13
      289 GETTABLEKS                       R19 R4 K38 ["Name"]
      291 GETTABLEKS                       R20 R4 K9 ["ClassName"]
      293 MOVE                             R21 R14
      294 NAMECALL                         R16 R16 K19 ["format"]
      296 CALL                             R16 5 1
      297 MOVE                             R15 R16
      298 CLOSEUPVALS                      R7
      299 RETURN                           R15 1
      300 GETIMPORT                        R13 K2 [error]
      302 MOVE                             R14 R12
      303 CALL                             R13 1 0
      304 CLOSEUPVALS                      R7
      305 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["getDataModelType"]
        6 CALL                             R3 0 1
        7 JUMPIFEQKS                       R3 K1 ["Edit"] ; [+5]
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["Unable to make edits to the game in play mode"]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R1 K5 ["file_path"]
       16 GETTABLEKS                       R5 R1 K6 ["edits"]
       18 GETTABLEKS                       R6 R1 K7 ["className"]
       20 JUMPIFNOTEQKS                    R2 K8 ["none"] ; [+3]
       22 LOADNIL                          R7
       23 JUMP                             ; [+1]
       24 MOVE                             R7 R2
       25 CALL                             R3 4 -1
       26 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R0
        3 ORK                              R5 R1 K0 ["none"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["addText"]
       10 CALL                             R3 2 1
       11 NAMECALL                         R3 R3 K2 ["build"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_11:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MultiEdit"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 LOADK                            R6 K2 ["MultiEditTool_performEdit"]
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R3
       13 NAMECALL                         R4 R1 K3 ["OnHostInvokeAsync"]
       15 CALL                             R4 3 1
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          UPVAL U4
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R6 R7 K4 ["define"]
       22 CALL                             R6 0 1
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R8 R9 K5 ["MultiEdit"]
       26 NAMECALL                         R6 R6 K6 ["setName"]
       28 CALL                             R6 2 1
       29 LOADK                            R8 K7 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.\nCan also create new scripts if the path doesn't exist (will need to specify className).\n\nExample Call (correct):\n- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}\n\nPath Format:\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n\nCreating New Scripts:\n- If the script doesn't exist, it will be created using the provided className\n- className is required when creating new scripts\n- First edit with empty old_string (\"\") sets the initial content\n- Subsequent edits work normally on the created content\n\nBefore Using:\n- Read or search file to understand existing script contents\n- For new scripts, provide className and start with empty old_string to set initial content\n\nImportant Notes:\n- All edits are applied in sequence, in the order provided\n- Each edit operates on the result of the previous edit\n- All edits must be valid for the operation to succeed - atomic operation\n- Plan edits carefully to avoid conflicts between sequential operations\n\nCritical Requirements:\n- old_string must match script contents exactly (including whitespace)\n- old_string and new_string must be different\n- className required only when creating new scripts\n- For new files: first edit can have empty old_string to set initial content\n\nWhen Making Edits:\n- Ensure all edits result in correct, runnable code\n- Don't leave code in a broken state\n- Use replace_all for renaming variables across the entire script\n"]
       30 NAMECALL                         R6 R6 K8 ["setDescription"]
       32 CALL                             R6 2 1
       33 LOADK                            R8 K9 ["file_path"]
       34 DUPTABLE                         R9 K12 [{"type", "description"}]
       35 LOADK                            R10 K13 ["string"]
       36 SETTABLEKS                       R10 R9 K10 ["type"]
       38 LOADK                            R10 K14 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
       39 SETTABLEKS                       R10 R9 K11 ["description"]
       41 NAMECALL                         R6 R6 K15 ["addArgument"]
       43 CALL                             R6 3 1
       44 LOADK                            R8 K16 ["edits"]
       45 DUPTABLE                         R9 K18 [{"type", "description", "items"}]
       46 LOADK                            R10 K19 ["array"]
       47 SETTABLEKS                       R10 R9 K10 ["type"]
       49 LOADK                            R10 K20 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
       50 SETTABLEKS                       R10 R9 K11 ["description"]
       52 DUPTABLE                         R10 K23 [{"type", "properties", "required"}]
       53 LOADK                            R11 K24 ["object"]
       54 SETTABLEKS                       R11 R10 K10 ["type"]
       56 DUPTABLE                         R11 K28 [{"old_string", "new_string", "replace_all"}]
       57 DUPTABLE                         R12 K12 [{"type", "description"}]
       58 LOADK                            R13 K13 ["string"]
       59 SETTABLEKS                       R13 R12 K10 ["type"]
       61 LOADK                            R13 K29 ["The text to replace (must match exactly). Use empty string for new script initial content."]
       62 SETTABLEKS                       R13 R12 K11 ["description"]
       64 SETTABLEKS                       R12 R11 K25 ["old_string"]
       66 DUPTABLE                         R12 K12 [{"type", "description"}]
       67 LOADK                            R13 K13 ["string"]
       68 SETTABLEKS                       R13 R12 K10 ["type"]
       70 LOADK                            R13 K30 ["The text to replace it with (must be different from old_string)"]
       71 SETTABLEKS                       R13 R12 K11 ["description"]
       73 SETTABLEKS                       R12 R11 K26 ["new_string"]
       75 DUPTABLE                         R12 K12 [{"type", "description"}]
       76 LOADK                            R13 K31 ["boolean"]
       77 SETTABLEKS                       R13 R12 K10 ["type"]
       79 LOADK                            R13 K32 ["Replace all occurrences of old_string (optional, defaults to false)"]
       80 SETTABLEKS                       R13 R12 K11 ["description"]
       82 SETTABLEKS                       R12 R11 K27 ["replace_all"]
       84 SETTABLEKS                       R11 R10 K21 ["properties"]
       86 NEWTABLE                         R11 0 2
       88 LOADK                            R12 K25 ["old_string"]
       89 LOADK                            R13 K26 ["new_string"]
       90 SETLIST                          R11 R12 2 [1]
       92 SETTABLEKS                       R11 R10 K22 ["required"]
       94 SETTABLEKS                       R10 R9 K17 ["items"]
       96 NAMECALL                         R6 R6 K15 ["addArgument"]
       98 CALL                             R6 3 1
       99 LOADK                            R8 K33 ["className"]
      100 DUPTABLE                         R9 K12 [{"type", "description"}]
      101 LOADK                            R10 K13 ["string"]
      102 SETTABLEKS                       R10 R9 K10 ["type"]
      104 LOADK                            R10 K34 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
      105 SETTABLEKS                       R10 R9 K11 ["description"]
      107 NAMECALL                         R6 R6 K35 ["addOptionalArgument"]
      109 CALL                             R6 3 1
      110 MOVE                             R8 R5
      111 NAMECALL                         R6 R6 K36 ["setHandler"]
      113 CALL                             R6 2 1
      114 NAMECALL                         R6 R6 K37 ["build"]
      116 CALL                             R6 1 1
      117 DUPTABLE                         R7 K41 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
      118 SETTABLEKS                       R6 R7 K38 ["definition"]
      120 DUPCLOSURE                       R8 K42 [PROTO_11]
      121 SETTABLEKS                       R8 R7 K39 ["getPreExecuteWarning"]
      123 DUPCLOSURE                       R8 K43 [PROTO_12]
      124 CAPTURE                          UPVAL U7
      125 SETTABLEKS                       R8 R7 K40 ["displayNameFunction"]
      127 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["DataModelType"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R5 K13 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Tools"]
       31 GETTABLEKS                       R5 R6 K15 ["ToolTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R7 K16 ["ToolUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R0 K17 ["Resources"]
       45 GETTABLEKS                       R8 R9 K18 ["Localization"]
       47 GETTABLEKS                       R7 R8 K19 ["Translator"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K20 ["Flags"]
       54 GETTABLEKS                       R8 R9 K21 ["FFlagAssistantTestAutomation"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R9 R3 K10 ["Util"]
       59 GETTABLEKS                       R8 R9 K22 ["ToolBuilder"]
       61 GETTABLEKS                       R10 R3 K10 ["Util"]
       63 GETTABLEKS                       R9 R10 K23 ["ToolResult"]
       65 GETTABLEKS                       R10 R4 K24 ["ToolNames"]
       67 DUPCLOSURE                       R11 K25 [PROTO_0]
       68 DUPCLOSURE                       R12 K26 [PROTO_1]
       69 DUPCLOSURE                       R13 K27 [PROTO_2]
       70 DUPCLOSURE                       R14 K28 [PROTO_3]
       71 DUPCLOSURE                       R15 K29 [PROTO_4]
       72 DUPCLOSURE                       R16 K30 [PROTO_5]
       73 DUPCLOSURE                       R17 K31 [PROTO_6]
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R16
       76 DUPCLOSURE                       R18 K32 [PROTO_13]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R6
       85 RETURN                           R18 1
