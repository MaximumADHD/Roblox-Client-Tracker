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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKB                    R0 FALSE ; [+12]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["tools"]
        9 GETTABLEKS                       R1 R2 K1 ["multiEdit"]
       11 GETTABLEKS                       R0 R1 K2 ["applyScriptSourceDirectly"]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 CALL                             R0 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 5
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R0 R1 K3 ["messageGuid"]
       22 JUMP                             ; [+1]
       23 LOADK                            R0 K4 [""]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K0 ["tools"]
       27 GETTABLEKS                       R2 R3 K1 ["multiEdit"]
       29 GETTABLEKS                       R1 R2 K5 ["updateScriptSourceAsync"]
       31 DUPTABLE                         R2 K12 [{"conversationId", "requestId", "instanceId", "script", "source", "isNewScript"}]
       32 GETUPVAL                         R4 5
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R3 R4 K13 ["sessionId"]
       37 JUMP                             ; [+1]
       38 LOADK                            R3 K4 [""]
       39 SETTABLEKS                       R3 R2 K6 ["conversationId"]
       41 SETTABLEKS                       R0 R2 K7 ["requestId"]
       43 LOADK                            R3 K4 [""]
       44 SETTABLEKS                       R3 R2 K8 ["instanceId"]
       46 GETUPVAL                         R3 3
       47 SETTABLEKS                       R3 R2 K9 ["script"]
       49 GETUPVAL                         R3 4
       50 SETTABLEKS                       R3 R2 K10 ["source"]
       52 GETUPVAL                         R3 6
       53 SETTABLEKS                       R3 R2 K11 ["isNewScript"]
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["findOrCreateInstance"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R2
        5 CALL                             R5 2 2
        6 JUMPIFNOT                        R6 ; [+7]
        7 JUMPIF                           R2 ; [+6]
        8 GETIMPORT                        R7 K2 [error]
       10 LOADK                            R9 K3 ["`className` is required when creating a new script at path: "]
       11 MOVE                             R10 R0
       12 CONCAT                           R8 R9 R10
       13 CALL                             R7 1 0
       14 LOADK                            R9 K4 ["Script"]
       15 NAMECALL                         R7 R5 K5 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+17]
       19 LOADK                            R9 K6 ["LocalScript"]
       20 NAMECALL                         R7 R5 K5 ["IsA"]
       22 CALL                             R7 2 1
       23 JUMPIF                           R7 ; [+12]
       24 LOADK                            R9 K7 ["ModuleScript"]
       25 NAMECALL                         R7 R5 K5 ["IsA"]
       27 CALL                             R7 2 1
       28 JUMPIF                           R7 ; [+7]
       29 GETIMPORT                        R7 K2 [error]
       31 LOADK                            R9 K8 ["Object at path is not a script type. Found: "]
       32 GETTABLEKS                       R10 R5 K9 ["ClassName"]
       34 CONCAT                           R8 R9 R10
       35 CALL                             R7 1 0
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R7 R8 K10 ["getScriptSource"]
       39 MOVE                             R8 R5
       40 CALL                             R7 1 1
       41 MOVE                             R8 R7
       42 LOADB                            R9 0
       43 JUMPIFNOT                        R6 ; [+27]
       44 LENGTH                           R10 R1
       45 LOADN                            R11 0
       46 JUMPIFNOTLT                      R11 R10 ; [+24]
       48 GETTABLEN                        R10 R1 1
       49 GETTABLEKS                       R11 R10 K11 ["old_string"]
       51 JUMPIFNOTEQKS                    R11 K12 [""] ; [+19]
       53 GETTABLEKS                       R8 R10 K13 ["new_string"]
       55 LOADB                            R9 1
       56 NEWTABLE                         R11 0 0
       58 LOADN                            R14 2
       59 LENGTH                           R12 R1
       60 LOADN                            R13 1
       61 FORNPREP                         R12
       62 GETTABLE                         R17 R1 R14
       63 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
       65 MOVE                             R16 R11
       66 GETIMPORT                        R15 K16 [table.insert]
       68 CALL                             R15 2 0
       69 FORNLOOP                         R12
       70 MOVE                             R1 R11
       71 MOVE                             R10 R8
       72 MOVE                             R11 R1
       73 LOADNIL                          R12
       74 LOADNIL                          R13
       75 FORGPREP                         R11
       76 GETTABLEKS                       R16 R15 K11 ["old_string"]
       78 GETTABLEKS                       R17 R15 K13 ["new_string"]
       80 JUMPIFNOTEQ                      R16 R17 ; [+14]
       82 JUMPIFNOT                        R9 ; [+2]
       83 ADDK                             R16 R14 K17 [1]
       84 JUMPIF                           R16 ; [+1]
       85 MOVE                             R16 R14
       86 GETIMPORT                        R17 K2 [error]
       88 LOADK                            R19 K18 ["Edit %* has identical old_string and new_string"]
       89 MOVE                             R21 R16
       90 NAMECALL                         R19 R19 K19 ["format"]
       92 CALL                             R19 2 1
       93 MOVE                             R18 R19
       94 CALL                             R17 1 0
       95 MOVE                             R18 R10
       96 GETTABLEKS                       R19 R15 K20 ["replace_all"]
       98 JUMPIFNOT                        R19 ; [+26]
       99 GETTABLEKS                       R19 R15 K11 ["old_string"]
      101 GETTABLEKS                       R20 R15 K13 ["new_string"]
      103 LOADK                            R23 K21 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      104 LOADK                            R24 K22 ["%%%%%1"]
      105 NAMECALL                         R21 R19 K23 ["gsub"]
      107 CALL                             R21 3 1
      108 LOADK                            R24 K24 ["%%"]
      109 LOADK                            R25 K25 ["%%%%"]
      110 NAMECALL                         R22 R20 K23 ["gsub"]
      112 CALL                             R22 3 1
      113 MOVE                             R25 R21
      114 MOVE                             R26 R22
      115 NAMECALL                         R23 R18 K23 ["gsub"]
      117 CALL                             R23 3 2
      118 MOVE                             R16 R23
      119 LOADN                            R25 0
      120 JUMPIFLT                         R25 R24 ; [+2]
      122 LOADB                            R17 0 +1
      123 LOADB                            R17 1
      124 JUMP                             ; [+30]
      125 GETTABLEKS                       R19 R15 K11 ["old_string"]
      127 GETTABLEKS                       R20 R15 K13 ["new_string"]
      129 MOVE                             R23 R19
      130 LOADN                            R24 1
      131 LOADB                            R25 1
      132 NAMECALL                         R21 R18 K26 ["find"]
      134 CALL                             R21 4 2
      135 JUMPIFNOT                        R21 ; [+16]
      136 JUMPIFNOT                        R22 ; [+15]
      137 LOADN                            R29 1
      138 SUBK                             R30 R21 K17 [1]
      139 NAMECALL                         R27 R18 K27 ["sub"]
      141 CALL                             R27 3 1
      142 MOVE                             R24 R27
      143 MOVE                             R25 R20
      144 ADDK                             R28 R22 K17 [1]
      145 NAMECALL                         R26 R18 K27 ["sub"]
      147 CALL                             R26 2 1
      148 CONCAT                           R23 R24 R26
      149 MOVE                             R16 R23
      150 LOADB                            R17 1
      151 JUMP                             ; [+3]
      152 MOVE                             R16 R18
      153 LOADB                            R17 0
      154 JUMP                             ; [0]
      155 GETTABLEKS                       R18 R15 K20 ["replace_all"]
      157 JUMPIF                           R18 ; [+16]
      158 JUMPIF                           R17 ; [+15]
      159 JUMPIFNOT                        R9 ; [+2]
      160 ADDK                             R18 R14 K17 [1]
      161 JUMPIF                           R18 ; [+1]
      162 MOVE                             R18 R14
      163 GETIMPORT                        R19 K2 [error]
      165 LOADK                            R21 K28 ["Edit %* - old_string '%*' not found in current content"]
      166 MOVE                             R23 R18
      167 GETTABLEKS                       R24 R15 K11 ["old_string"]
      169 NAMECALL                         R21 R21 K19 ["format"]
      171 CALL                             R21 3 1
      172 MOVE                             R20 R21
      173 CALL                             R19 1 0
      174 MOVE                             R10 R16
      175 FORGLOOP                         R11 2 ; [-100]
      177 MOVE                             R11 R1
      178 LOADNIL                          R12
      179 LOADNIL                          R13
      180 FORGPREP                         R11
      181 MOVE                             R18 R8
      182 GETTABLEKS                       R19 R15 K20 ["replace_all"]
      184 JUMPIFNOT                        R19 ; [+26]
      185 GETTABLEKS                       R19 R15 K11 ["old_string"]
      187 GETTABLEKS                       R20 R15 K13 ["new_string"]
      189 LOADK                            R23 K21 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      190 LOADK                            R24 K22 ["%%%%%1"]
      191 NAMECALL                         R21 R19 K23 ["gsub"]
      193 CALL                             R21 3 1
      194 LOADK                            R24 K24 ["%%"]
      195 LOADK                            R25 K25 ["%%%%"]
      196 NAMECALL                         R22 R20 K23 ["gsub"]
      198 CALL                             R22 3 1
      199 MOVE                             R25 R21
      200 MOVE                             R26 R22
      201 NAMECALL                         R23 R18 K23 ["gsub"]
      203 CALL                             R23 3 2
      204 MOVE                             R16 R23
      205 LOADN                            R25 0
      206 JUMPIFLT                         R25 R24 ; [+2]
      208 LOADB                            R17 0 +1
      209 LOADB                            R17 1
      210 JUMP                             ; [+30]
      211 GETTABLEKS                       R19 R15 K11 ["old_string"]
      213 GETTABLEKS                       R20 R15 K13 ["new_string"]
      215 MOVE                             R23 R19
      216 LOADN                            R24 1
      217 LOADB                            R25 1
      218 NAMECALL                         R21 R18 K26 ["find"]
      220 CALL                             R21 4 2
      221 JUMPIFNOT                        R21 ; [+16]
      222 JUMPIFNOT                        R22 ; [+15]
      223 LOADN                            R29 1
      224 SUBK                             R30 R21 K17 [1]
      225 NAMECALL                         R27 R18 K27 ["sub"]
      227 CALL                             R27 3 1
      228 MOVE                             R24 R27
      229 MOVE                             R25 R20
      230 ADDK                             R28 R22 K17 [1]
      231 NAMECALL                         R26 R18 K27 ["sub"]
      233 CALL                             R26 2 1
      234 CONCAT                           R23 R24 R26
      235 MOVE                             R16 R23
      236 LOADB                            R17 1
      237 JUMP                             ; [+3]
      238 MOVE                             R16 R18
      239 LOADB                            R17 0
      240 JUMP                             ; [0]
      241 GETTABLEKS                       R18 R15 K20 ["replace_all"]
      243 JUMPIF                           R18 ; [+5]
      244 JUMPIF                           R17 ; [+4]
      245 GETIMPORT                        R18 K2 [error]
      247 LOADK                            R19 K29 ["Validation failed during apply - target text not found"]
      248 CALL                             R18 1 0
      249 MOVE                             R8 R16
      250 FORGLOOP                         R11 2 ; [-70]
      252 GETUPVAL                         R11 2
      253 LOADB                            R13 0
      254 NAMECALL                         R11 R11 K30 ["GenerateGUID"]
      256 CALL                             R11 2 1
      257 GETUPVAL                         R13 1
      258 GETTABLEKS                       R12 R13 K31 ["startRecording"]
      260 MOVE                             R13 R11
      261 CALL                             R12 1 0
      262 GETIMPORT                        R12 K33 [pcall]
      264 NEWCLOSURE                       R13 P0
      265 CAPTURE                          UPVAL U3
      266 CAPTURE                          VAL R4
      267 CAPTURE                          UPVAL U1
      268 CAPTURE                          VAL R5
      269 CAPTURE                          REF R8
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R6
      272 CALL                             R12 1 2
      273 GETUPVAL                         R15 1
      274 GETTABLEKS                       R14 R15 K34 ["endRecording"]
      276 MOVE                             R15 R11
      277 CALL                             R14 1 0
      278 JUMPIFNOT                        R12 ; [+23]
      279 JUMPIFNOT                        R6 ; [+2]
      280 LOADK                            R14 K35 ["Created"]
      281 JUMP                             ; [+1]
      282 LOADK                            R14 K36 ["Modified"]
      283 LENGTH                           R16 R1
      284 JUMPIFNOT                        R9 ; [+2]
      285 LOADN                            R17 1
      286 JUMP                             ; [+1]
      287 LOADN                            R17 0
      288 ADD                              R15 R16 R17
      289 LOADK                            R17 K37 ["%* %* (%*) with %* edits applied"]
      290 MOVE                             R19 R14
      291 GETTABLEKS                       R20 R5 K38 ["Name"]
      293 GETTABLEKS                       R21 R5 K9 ["ClassName"]
      295 MOVE                             R22 R15
      296 NAMECALL                         R17 R17 K19 ["format"]
      298 CALL                             R17 5 1
      299 MOVE                             R16 R17
      300 CLOSEUPVALS                      R8
      301 RETURN                           R16 1
      302 GETIMPORT                        R14 K2 [error]
      304 MOVE                             R15 R13
      305 CALL                             R14 1 0
      306 CLOSEUPVALS                      R8
      307 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+10]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["getDataModelType"]
        6 CALL                             R4 0 1
        7 JUMPIFEQKS                       R4 K1 ["Edit"] ; [+5]
        9 GETIMPORT                        R4 K3 [error]
       11 LOADK                            R5 K4 ["Unable to make edits to the game in play mode"]
       12 CALL                             R4 1 0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R5 R1 K5 ["file_path"]
       16 GETTABLEKS                       R6 R1 K6 ["edits"]
       18 GETTABLEKS                       R7 R1 K7 ["className"]
       20 JUMPIFNOTEQKS                    R2 K8 ["none"] ; [+3]
       22 LOADNIL                          R8
       23 JUMP                             ; [+1]
       24 MOVE                             R8 R2
       25 MOVE                             R9 R3
       26 CALL                             R4 5 -1
       27 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["shouldUseDiffView"]
        6 CALL                             R2 0 1
        7 JUMP                             ; [+1]
        8 LOADB                            R2 1
        9 GETUPVAL                         R3 2
       10 LOADNIL                          R4
       11 MOVE                             R5 R0
       12 ORK                              R6 R1 K1 ["none"]
       13 MOVE                             R7 R2
       14 CALL                             R3 4 1
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 MOVE                             R6 R3
       18 NAMECALL                         R4 R4 K2 ["addText"]
       20 CALL                             R4 2 1
       21 NAMECALL                         R4 R4 K3 ["build"]
       23 CALL                             R4 1 -1
       24 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldShowConfirmation"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 DUPTABLE                         R1 K3 [{"shouldConfirm", "confirmationType"}]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["shouldConfirm"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K4 ["ConfirmationType"]
       12 GETTABLEKS                       R2 R3 K5 ["ScriptChange"]
       14 SETTABLEKS                       R2 R1 K2 ["confirmationType"]
       16 RETURN                           R1 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

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
        8 CAPTURE                          UPVAL U2
        9 LOADK                            R6 K2 ["MultiEditTool_performEdit"]
       10 NEWCLOSURE                       R7 P1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R3
       14 NAMECALL                         R4 R1 K3 ["OnHostInvokeAsync"]
       16 CALL                             R4 3 1
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U6
       22 GETUPVAL                         R7 7
       23 GETTABLEKS                       R6 R7 K4 ["define"]
       25 CALL                             R6 0 1
       26 GETUPVAL                         R9 8
       27 GETTABLEKS                       R8 R9 K5 ["MultiEdit"]
       29 NAMECALL                         R6 R6 K6 ["setName"]
       31 CALL                             R6 2 1
       32 LOADK                            R8 K7 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.\nCan also create new scripts if the path doesn't exist (will need to specify className).\n\nExample Call (correct):\n- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}\n\nPath Format:\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n\nCreating New Scripts:\n- If the script doesn't exist, it will be created using the provided className\n- className is required when creating new scripts\n- First edit with empty old_string (\"\") sets the initial content\n- Subsequent edits work normally on the created content\n\nBefore Using:\n- Read or search file to understand existing script contents\n- For new scripts, provide className and start with empty old_string to set initial content\n\nImportant Notes:\n- All edits are applied in sequence, in the order provided\n- Each edit operates on the result of the previous edit\n- All edits must be valid for the operation to succeed - atomic operation\n- Plan edits carefully to avoid conflicts between sequential operations\n\nCritical Requirements:\n- old_string must match script contents exactly (including whitespace)\n- old_string and new_string must be different\n- className required only when creating new scripts\n- For new files: first edit can have empty old_string to set initial content\n\nWhen Making Edits:\n- Ensure all edits result in correct, runnable code\n- Don't leave code in a broken state\n- Use replace_all for renaming variables across the entire script\n"]
       33 NAMECALL                         R6 R6 K8 ["setDescription"]
       35 CALL                             R6 2 1
       36 LOADK                            R8 K9 ["file_path"]
       37 DUPTABLE                         R9 K12 [{"type", "description"}]
       38 LOADK                            R10 K13 ["string"]
       39 SETTABLEKS                       R10 R9 K10 ["type"]
       41 LOADK                            R10 K14 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
       42 SETTABLEKS                       R10 R9 K11 ["description"]
       44 NAMECALL                         R6 R6 K15 ["addArgument"]
       46 CALL                             R6 3 1
       47 LOADK                            R8 K16 ["edits"]
       48 DUPTABLE                         R9 K18 [{"type", "description", "items"}]
       49 LOADK                            R10 K19 ["array"]
       50 SETTABLEKS                       R10 R9 K10 ["type"]
       52 LOADK                            R10 K20 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
       53 SETTABLEKS                       R10 R9 K11 ["description"]
       55 DUPTABLE                         R10 K23 [{"type", "properties", "required"}]
       56 LOADK                            R11 K24 ["object"]
       57 SETTABLEKS                       R11 R10 K10 ["type"]
       59 DUPTABLE                         R11 K28 [{"old_string", "new_string", "replace_all"}]
       60 DUPTABLE                         R12 K12 [{"type", "description"}]
       61 LOADK                            R13 K13 ["string"]
       62 SETTABLEKS                       R13 R12 K10 ["type"]
       64 LOADK                            R13 K29 ["The text to replace (must match exactly). Use empty string for new script initial content."]
       65 SETTABLEKS                       R13 R12 K11 ["description"]
       67 SETTABLEKS                       R12 R11 K25 ["old_string"]
       69 DUPTABLE                         R12 K12 [{"type", "description"}]
       70 LOADK                            R13 K13 ["string"]
       71 SETTABLEKS                       R13 R12 K10 ["type"]
       73 LOADK                            R13 K30 ["The text to replace it with (must be different from old_string)"]
       74 SETTABLEKS                       R13 R12 K11 ["description"]
       76 SETTABLEKS                       R12 R11 K26 ["new_string"]
       78 DUPTABLE                         R12 K12 [{"type", "description"}]
       79 LOADK                            R13 K31 ["boolean"]
       80 SETTABLEKS                       R13 R12 K10 ["type"]
       82 LOADK                            R13 K32 ["Replace all occurrences of old_string (optional, defaults to false)"]
       83 SETTABLEKS                       R13 R12 K11 ["description"]
       85 SETTABLEKS                       R12 R11 K27 ["replace_all"]
       87 SETTABLEKS                       R11 R10 K21 ["properties"]
       89 NEWTABLE                         R11 0 2
       91 LOADK                            R12 K25 ["old_string"]
       92 LOADK                            R13 K26 ["new_string"]
       93 SETLIST                          R11 R12 2 [1]
       95 SETTABLEKS                       R11 R10 K22 ["required"]
       97 SETTABLEKS                       R10 R9 K17 ["items"]
       99 NAMECALL                         R6 R6 K15 ["addArgument"]
      101 CALL                             R6 3 1
      102 LOADK                            R8 K33 ["className"]
      103 DUPTABLE                         R9 K12 [{"type", "description"}]
      104 LOADK                            R10 K13 ["string"]
      105 SETTABLEKS                       R10 R9 K10 ["type"]
      107 LOADK                            R10 K34 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
      108 SETTABLEKS                       R10 R9 K11 ["description"]
      110 NAMECALL                         R6 R6 K35 ["addOptionalArgument"]
      112 CALL                             R6 3 1
      113 MOVE                             R8 R5
      114 NAMECALL                         R6 R6 K36 ["setHandler"]
      116 CALL                             R6 2 1
      117 NAMECALL                         R6 R6 K37 ["build"]
      119 CALL                             R6 1 1
      120 DUPTABLE                         R7 K41 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
      121 SETTABLEKS                       R6 R7 K38 ["definition"]
      123 GETUPVAL                         R9 2
      124 CALL                             R9 0 1
      125 JUMPIFNOT                        R9 ; [+4]
      126 DUPCLOSURE                       R8 K42 [PROTO_11]
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          UPVAL U9
      129 JUMP                             ; [+1]
      130 LOADNIL                          R8
      131 SETTABLEKS                       R8 R7 K39 ["getPreExecuteWarning"]
      133 DUPCLOSURE                       R8 K43 [PROTO_12]
      134 CAPTURE                          UPVAL U10
      135 SETTABLEKS                       R8 R7 K40 ["displayNameFunction"]
      137 RETURN                           R7 1

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
       52 GETTABLEKS                       R8 R0 K20 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R0 K21 ["Flags"]
       59 GETTABLEKS                       R9 R10 K22 ["FFlagAssistantMultiEditConfirmation"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R11 R0 K21 ["Flags"]
       66 GETTABLEKS                       R10 R11 K23 ["FFlagAssistantTestAutomation"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R12 R0 K10 ["Util"]
       73 GETTABLEKS                       R11 R12 K24 ["MultiEditAcceptanceState"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R12 R3 K10 ["Util"]
       78 GETTABLEKS                       R11 R12 K25 ["ToolBuilder"]
       80 GETTABLEKS                       R13 R3 K10 ["Util"]
       82 GETTABLEKS                       R12 R13 K26 ["ToolResult"]
       84 GETTABLEKS                       R13 R4 K27 ["ToolNames"]
       86 DUPCLOSURE                       R14 K28 [PROTO_0]
       87 DUPCLOSURE                       R15 K29 [PROTO_1]
       88 DUPCLOSURE                       R16 K30 [PROTO_2]
       89 DUPCLOSURE                       R17 K31 [PROTO_3]
       90 DUPCLOSURE                       R18 K32 [PROTO_4]
       91 DUPCLOSURE                       R19 K33 [PROTO_5]
       92 DUPCLOSURE                       R20 K34 [PROTO_6]
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R19
       95 DUPCLOSURE                       R21 K35 [PROTO_13]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 RETURN                           R21 1
