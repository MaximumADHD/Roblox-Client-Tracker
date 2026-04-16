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
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+12]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["tools"]
        6 GETTABLEKS                       R1 R2 K1 ["multiEdit"]
        8 GETTABLEKS                       R0 R1 K2 ["applyScriptSourceDirectly"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 4
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R0 R1 K3 ["messageGuid"]
       19 JUMP                             ; [+1]
       20 LOADK                            R0 K4 [""]
       21 GETUPVAL                         R2 4
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R1 R2 K5 ["sessionId"]
       26 JUMP                             ; [+1]
       27 LOADK                            R1 K4 [""]
       28 GETUPVAL                         R2 5
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+8]
       31 JUMPIFEQKNIL                     R0 ; [+3]
       33 JUMPIFNOTEQKNIL                  R1 ; [+5]
       35 GETIMPORT                        R2 K7 [error]
       37 LOADK                            R3 K8 ["Internal client call missing required meta fields: sessionId or messageGuid"]
       38 CALL                             R2 1 0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K0 ["tools"]
       42 GETTABLEKS                       R3 R4 K1 ["multiEdit"]
       44 GETTABLEKS                       R2 R3 K9 ["updateScriptSourceAsync"]
       46 DUPTABLE                         R3 K16 [{"conversationId", "requestId", "instanceId", "script", "source", "isNewScript"}]
       47 SETTABLEKS                       R1 R3 K10 ["conversationId"]
       49 SETTABLEKS                       R0 R3 K11 ["requestId"]
       51 LOADK                            R4 K4 [""]
       52 SETTABLEKS                       R4 R3 K12 ["instanceId"]
       54 GETUPVAL                         R4 2
       55 SETTABLEKS                       R4 R3 K13 ["script"]
       57 GETUPVAL                         R4 3
       58 SETTABLEKS                       R4 R3 K14 ["source"]
       60 GETUPVAL                         R4 6
       61 SETTABLEKS                       R4 R3 K15 ["isNewScript"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0

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
      124 JUMP                             ; [+29]
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
      151 JUMP                             ; [+2]
      152 MOVE                             R16 R18
      153 LOADB                            R17 0
      154 GETTABLEKS                       R18 R15 K20 ["replace_all"]
      156 JUMPIF                           R18 ; [+16]
      157 JUMPIF                           R17 ; [+15]
      158 JUMPIFNOT                        R9 ; [+2]
      159 ADDK                             R18 R14 K17 [1]
      160 JUMPIF                           R18 ; [+1]
      161 MOVE                             R18 R14
      162 GETIMPORT                        R19 K2 [error]
      164 LOADK                            R21 K28 ["Edit %* - old_string '%*' not found in current content"]
      165 MOVE                             R23 R18
      166 GETTABLEKS                       R24 R15 K11 ["old_string"]
      168 NAMECALL                         R21 R21 K19 ["format"]
      170 CALL                             R21 3 1
      171 MOVE                             R20 R21
      172 CALL                             R19 1 0
      173 MOVE                             R10 R16
      174 FORGLOOP                         R11 2 ; [-99]
      176 MOVE                             R11 R1
      177 LOADNIL                          R12
      178 LOADNIL                          R13
      179 FORGPREP                         R11
      180 MOVE                             R18 R8
      181 GETTABLEKS                       R19 R15 K20 ["replace_all"]
      183 JUMPIFNOT                        R19 ; [+26]
      184 GETTABLEKS                       R19 R15 K11 ["old_string"]
      186 GETTABLEKS                       R20 R15 K13 ["new_string"]
      188 LOADK                            R23 K21 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      189 LOADK                            R24 K22 ["%%%%%1"]
      190 NAMECALL                         R21 R19 K23 ["gsub"]
      192 CALL                             R21 3 1
      193 LOADK                            R24 K24 ["%%"]
      194 LOADK                            R25 K25 ["%%%%"]
      195 NAMECALL                         R22 R20 K23 ["gsub"]
      197 CALL                             R22 3 1
      198 MOVE                             R25 R21
      199 MOVE                             R26 R22
      200 NAMECALL                         R23 R18 K23 ["gsub"]
      202 CALL                             R23 3 2
      203 MOVE                             R16 R23
      204 LOADN                            R25 0
      205 JUMPIFLT                         R25 R24 ; [+2]
      207 LOADB                            R17 0 +1
      208 LOADB                            R17 1
      209 JUMP                             ; [+29]
      210 GETTABLEKS                       R19 R15 K11 ["old_string"]
      212 GETTABLEKS                       R20 R15 K13 ["new_string"]
      214 MOVE                             R23 R19
      215 LOADN                            R24 1
      216 LOADB                            R25 1
      217 NAMECALL                         R21 R18 K26 ["find"]
      219 CALL                             R21 4 2
      220 JUMPIFNOT                        R21 ; [+16]
      221 JUMPIFNOT                        R22 ; [+15]
      222 LOADN                            R29 1
      223 SUBK                             R30 R21 K17 [1]
      224 NAMECALL                         R27 R18 K27 ["sub"]
      226 CALL                             R27 3 1
      227 MOVE                             R24 R27
      228 MOVE                             R25 R20
      229 ADDK                             R28 R22 K17 [1]
      230 NAMECALL                         R26 R18 K27 ["sub"]
      232 CALL                             R26 2 1
      233 CONCAT                           R23 R24 R26
      234 MOVE                             R16 R23
      235 LOADB                            R17 1
      236 JUMP                             ; [+2]
      237 MOVE                             R16 R18
      238 LOADB                            R17 0
      239 GETTABLEKS                       R18 R15 K20 ["replace_all"]
      241 JUMPIF                           R18 ; [+5]
      242 JUMPIF                           R17 ; [+4]
      243 GETIMPORT                        R18 K2 [error]
      245 LOADK                            R19 K29 ["Validation failed during apply - target text not found"]
      246 CALL                             R18 1 0
      247 MOVE                             R8 R16
      248 FORGLOOP                         R11 2 ; [-69]
      250 GETUPVAL                         R11 2
      251 LOADB                            R13 0
      252 NAMECALL                         R11 R11 K30 ["GenerateGUID"]
      254 CALL                             R11 2 1
      255 GETUPVAL                         R13 1
      256 GETTABLEKS                       R12 R13 K31 ["startRecording"]
      258 MOVE                             R13 R11
      259 CALL                             R12 1 0
      260 GETIMPORT                        R12 K33 [pcall]
      262 NEWCLOSURE                       R13 P0
      263 CAPTURE                          VAL R4
      264 CAPTURE                          UPVAL U1
      265 CAPTURE                          VAL R5
      266 CAPTURE                          REF R8
      267 CAPTURE                          VAL R3
      268 CAPTURE                          UPVAL U3
      269 CAPTURE                          VAL R6
      270 CALL                             R12 1 2
      271 GETUPVAL                         R15 1
      272 GETTABLEKS                       R14 R15 K34 ["endRecording"]
      274 MOVE                             R15 R11
      275 CALL                             R14 1 0
      276 JUMPIFNOT                        R12 ; [+23]
      277 JUMPIFNOT                        R6 ; [+2]
      278 LOADK                            R14 K35 ["Created"]
      279 JUMP                             ; [+1]
      280 LOADK                            R14 K36 ["Modified"]
      281 LENGTH                           R16 R1
      282 JUMPIFNOT                        R9 ; [+2]
      283 LOADN                            R17 1
      284 JUMP                             ; [+1]
      285 LOADN                            R17 0
      286 ADD                              R15 R16 R17
      287 LOADK                            R17 K37 ["%* %* (%*) with %* edits applied"]
      288 MOVE                             R19 R14
      289 GETTABLEKS                       R20 R5 K38 ["Name"]
      291 GETTABLEKS                       R21 R5 K9 ["ClassName"]
      293 MOVE                             R22 R15
      294 NAMECALL                         R17 R17 K19 ["format"]
      296 CALL                             R17 5 1
      297 MOVE                             R16 R17
      298 CLOSEUPVALS                      R8
      299 RETURN                           R16 1
      300 GETIMPORT                        R14 K2 [error]
      302 MOVE                             R15 R13
      303 CALL                             R14 1 0
      304 CLOSEUPVALS                      R8
      305 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+13]
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K0 ["getDataModelType"]
        9 CALL                             R4 0 1
       10 JUMPIFEQKS                       R4 K1 ["Edit"] ; [+5]
       12 GETIMPORT                        R4 K3 [error]
       14 LOADK                            R5 K4 ["Unable to make edits to the game in play mode"]
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R5 R1 K5 ["file_path"]
       19 GETTABLEKS                       R6 R1 K6 ["edits"]
       21 GETTABLEKS                       R7 R1 K7 ["className"]
       23 JUMPIFNOTEQKS                    R2 K8 ["none"] ; [+3]
       25 LOADNIL                          R8
       26 JUMP                             ; [+1]
       27 MOVE                             R8 R2
       28 MOVE                             R9 R3
       29 CALL                             R4 5 -1
       30 RETURN                           R4 -1

PROTO_10:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+4]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K1 ["targetDataModel"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 LOADB                            R4 1
       13 GETUPVAL                         R5 1
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+3]
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R4 0
       18 JUMP                             ; [+5]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K2 ["shouldUseDiffView"]
       22 CALL                             R5 0 1
       23 MOVE                             R4 R5
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R3
       26 MOVE                             R7 R0
       27 ORK                              R8 R1 K3 ["none"]
       28 MOVE                             R9 R4
       29 CALL                             R5 4 1
       30 GETUPVAL                         R6 4
       31 CALL                             R6 0 1
       32 MOVE                             R8 R5
       33 NAMECALL                         R6 R6 K4 ["addText"]
       35 CALL                             R6 2 1
       36 NAMECALL                         R6 R6 K5 ["build"]
       38 CALL                             R6 1 -1
       39 RETURN                           R6 -1

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
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R3
       15 NAMECALL                         R4 R1 K3 ["OnHostInvokeAsync"]
       17 CALL                             R4 3 1
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U7
       24 GETUPVAL                         R7 8
       25 GETTABLEKS                       R6 R7 K4 ["define"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R9 9
       29 GETTABLEKS                       R8 R9 K5 ["MultiEdit"]
       31 NAMECALL                         R6 R6 K6 ["setName"]
       33 CALL                             R6 2 1
       34 LOADK                            R8 K7 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.\nCan also create new scripts if the path doesn't exist (will need to specify className).\n\nExample Call (correct):\n- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}\n\nPath Format:\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n\nCreating New Scripts:\n- If the script doesn't exist, it will be created using the provided className\n- className is required when creating new scripts\n- First edit with empty old_string (\"\") sets the initial content\n- Subsequent edits work normally on the created content\n\nBefore Using:\n- Read or search file to understand existing script contents\n- For new scripts, provide className and start with empty old_string to set initial content\n\nImportant Notes:\n- All edits are applied in sequence, in the order provided\n- Each edit operates on the result of the previous edit\n- All edits must be valid for the operation to succeed - atomic operation\n- Plan edits carefully to avoid conflicts between sequential operations\n\nCritical Requirements:\n- old_string must match script contents exactly (including whitespace)\n- old_string and new_string must be different\n- className required only when creating new scripts\n- For new files: first edit can have empty old_string to set initial content\n\nWhen Making Edits:\n- Ensure all edits result in correct, runnable code\n- Don't leave code in a broken state\n- Use replace_all for renaming variables across the entire script\n"]
       35 NAMECALL                         R6 R6 K8 ["setDescription"]
       37 CALL                             R6 2 1
       38 LOADK                            R8 K9 ["file_path"]
       39 DUPTABLE                         R9 K12 [{"type", "description"}]
       40 LOADK                            R10 K13 ["string"]
       41 SETTABLEKS                       R10 R9 K10 ["type"]
       43 LOADK                            R10 K14 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
       44 SETTABLEKS                       R10 R9 K11 ["description"]
       46 NAMECALL                         R6 R6 K15 ["addArgument"]
       48 CALL                             R6 3 1
       49 LOADK                            R8 K16 ["edits"]
       50 DUPTABLE                         R9 K18 [{"type", "description", "items"}]
       51 LOADK                            R10 K19 ["array"]
       52 SETTABLEKS                       R10 R9 K10 ["type"]
       54 LOADK                            R10 K20 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
       55 SETTABLEKS                       R10 R9 K11 ["description"]
       57 DUPTABLE                         R10 K23 [{"type", "properties", "required"}]
       58 LOADK                            R11 K24 ["object"]
       59 SETTABLEKS                       R11 R10 K10 ["type"]
       61 DUPTABLE                         R11 K28 [{"old_string", "new_string", "replace_all"}]
       62 DUPTABLE                         R12 K12 [{"type", "description"}]
       63 LOADK                            R13 K13 ["string"]
       64 SETTABLEKS                       R13 R12 K10 ["type"]
       66 LOADK                            R13 K29 ["The text to replace (must match exactly). Use empty string for new script initial content."]
       67 SETTABLEKS                       R13 R12 K11 ["description"]
       69 SETTABLEKS                       R12 R11 K25 ["old_string"]
       71 DUPTABLE                         R12 K12 [{"type", "description"}]
       72 LOADK                            R13 K13 ["string"]
       73 SETTABLEKS                       R13 R12 K10 ["type"]
       75 LOADK                            R13 K30 ["The text to replace it with (must be different from old_string)"]
       76 SETTABLEKS                       R13 R12 K11 ["description"]
       78 SETTABLEKS                       R12 R11 K26 ["new_string"]
       80 DUPTABLE                         R12 K12 [{"type", "description"}]
       81 LOADK                            R13 K31 ["boolean"]
       82 SETTABLEKS                       R13 R12 K10 ["type"]
       84 LOADK                            R13 K32 ["Replace all occurrences of old_string (optional, defaults to false)"]
       85 SETTABLEKS                       R13 R12 K11 ["description"]
       87 SETTABLEKS                       R12 R11 K27 ["replace_all"]
       89 SETTABLEKS                       R11 R10 K21 ["properties"]
       91 NEWTABLE                         R11 0 2
       93 LOADK                            R12 K25 ["old_string"]
       94 LOADK                            R13 K26 ["new_string"]
       95 SETLIST                          R11 R12 2 [1]
       97 SETTABLEKS                       R11 R10 K22 ["required"]
       99 SETTABLEKS                       R10 R9 K17 ["items"]
      101 NAMECALL                         R6 R6 K15 ["addArgument"]
      103 CALL                             R6 3 1
      104 LOADK                            R8 K33 ["className"]
      105 DUPTABLE                         R9 K12 [{"type", "description"}]
      106 LOADK                            R10 K13 ["string"]
      107 SETTABLEKS                       R10 R9 K10 ["type"]
      109 LOADK                            R10 K34 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
      110 SETTABLEKS                       R10 R9 K11 ["description"]
      112 NAMECALL                         R6 R6 K35 ["addOptionalArgument"]
      114 CALL                             R6 3 1
      115 MOVE                             R8 R5
      116 NAMECALL                         R6 R6 K36 ["setHandler"]
      118 CALL                             R6 2 1
      119 NAMECALL                         R6 R6 K37 ["build"]
      121 CALL                             R6 1 1
      122 DUPTABLE                         R7 K42 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      123 GETUPVAL                         R9 3
      124 CALL                             R9 0 1
      125 JUMPIFNOT                        R9 ; [+10]
      126 NEWTABLE                         R8 0 1
      128 GETUPVAL                         R11 5
      129 GETTABLEKS                       R10 R11 K43 ["Types"]
      131 GETTABLEKS                       R9 R10 K44 ["Edit"]
      133 SETLIST                          R8 R9 1 [1]
      135 JUMPIF                           R8 ; [+1]
      136 LOADNIL                          R8
      137 SETTABLEKS                       R8 R7 K38 ["availableDataModelTypes"]
      139 SETTABLEKS                       R6 R7 K39 ["definition"]
      141 DUPCLOSURE                       R8 K45 [PROTO_11]
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          UPVAL U10
      144 SETTABLEKS                       R8 R7 K40 ["getPreExecuteWarning"]
      146 DUPCLOSURE                       R8 K46 [PROTO_12]
      147 CAPTURE                          UPVAL U11
      148 SETTABLEKS                       R8 R7 K41 ["displayNameFunction"]
      150 RETURN                           R7 1

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
       59 GETTABLEKS                       R9 R10 K22 ["FFlagAssistantMultiEditExternalClient"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R11 R0 K21 ["Flags"]
       66 GETTABLEKS                       R10 R11 K23 ["FFlagAssistantTestAutomation"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Flags"]
       73 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantTestModeToolArgPatch"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R13 R0 K10 ["Util"]
       80 GETTABLEKS                       R12 R13 K25 ["MultiEditAcceptanceState"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R13 R3 K10 ["Util"]
       85 GETTABLEKS                       R12 R13 K26 ["ToolBuilder"]
       87 GETTABLEKS                       R14 R3 K10 ["Util"]
       89 GETTABLEKS                       R13 R14 K27 ["ToolResult"]
       91 GETTABLEKS                       R14 R4 K28 ["ToolNames"]
       93 DUPCLOSURE                       R15 K29 [PROTO_0]
       94 DUPCLOSURE                       R16 K30 [PROTO_1]
       95 DUPCLOSURE                       R17 K31 [PROTO_2]
       96 DUPCLOSURE                       R18 K32 [PROTO_3]
       97 DUPCLOSURE                       R19 K33 [PROTO_4]
       98 DUPCLOSURE                       R20 K34 [PROTO_5]
       99 DUPCLOSURE                       R21 K35 [PROTO_6]
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R20
      102 DUPCLOSURE                       R22 K36 [PROTO_13]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 RETURN                           R22 1
