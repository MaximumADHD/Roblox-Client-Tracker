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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["tools"]
        6 GETTABLEKS                       R0 R0 K1 ["multiEdit"]
        8 GETTABLEKS                       R0 R0 K2 ["applyScriptSourceDirectly"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 4
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K3 ["messageGuid"]
       19 JUMP                             ; [+1]
       20 LOADK                            R0 K4 [""]
       21 GETUPVAL                         R2 4
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K5 ["sessionId"]
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
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K0 ["tools"]
       42 GETTABLEKS                       R2 R2 K1 ["multiEdit"]
       44 GETTABLEKS                       R2 R2 K9 ["updateScriptSourceAsync"]
       46 DUPTABLE                         R3 K16 [{["conversationId"], ["requestId"], ["instanceId"] = "", ["script"], ["source"], ["isNewScript"]}]
       47 SETTABLEKS                       R1 R3 K10 ["conversationId"]
       49 SETTABLEKS                       R0 R3 K11 ["requestId"]
       51 GETUPVAL                         R4 2
       52 SETTABLEKS                       R4 R3 K13 ["script"]
       54 GETUPVAL                         R4 3
       55 SETTABLEKS                       R4 R3 K14 ["source"]
       57 GETUPVAL                         R4 6
       58 SETTABLEKS                       R4 R3 K15 ["isNewScript"]
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R5
        1 LOADB                            R6 0
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["findInstance"]
        5 MOVE                             R8 R0
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+2]
        8 MOVE                             R5 R7
        9 JUMP                             ; [+16]
       10 JUMPIF                           R2 ; [+7]
       11 GETIMPORT                        R8 K2 [error]
       13 LOADK                            R10 K3 ["`className` is required when creating a new script at path: "]
       14 MOVE                             R11 R0
       15 CONCAT                           R9 R10 R11
       16 LOADN                            R10 0
       17 CALL                             R8 2 0
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["findOrCreateInstance"]
       21 MOVE                             R9 R0
       22 MOVE                             R10 R2
       23 CALL                             R8 2 2
       24 MOVE                             R5 R8
       25 MOVE                             R6 R9
       26 LOADK                            R10 K5 ["Script"]
       27 NAMECALL                         R8 R5 K6 ["IsA"]
       29 CALL                             R8 2 1
       30 JUMPIF                           R8 ; [+17]
       31 LOADK                            R10 K7 ["LocalScript"]
       32 NAMECALL                         R8 R5 K6 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIF                           R8 ; [+12]
       36 LOADK                            R10 K8 ["ModuleScript"]
       37 NAMECALL                         R8 R5 K6 ["IsA"]
       39 CALL                             R8 2 1
       40 JUMPIF                           R8 ; [+7]
       41 GETIMPORT                        R8 K2 [error]
       43 LOADK                            R10 K9 ["Object at path is not a script type. Found: "]
       44 GETTABLEKS                       R11 R5 K10 ["ClassName"]
       46 CONCAT                           R9 R10 R11
       47 CALL                             R8 1 0
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K11 ["getScriptSource"]
       51 MOVE                             R9 R5
       52 CALL                             R8 1 1
       53 MOVE                             R9 R8
       54 LOADB                            R10 0
       55 JUMPIFNOT                        R6 ; [+27]
       56 LENGTH                           R11 R1
       57 LOADN                            R12 0
       58 JUMPIFNOTLT                      R12 R11 ; [+24]
       60 GETTABLEN                        R11 R1 1
       61 GETTABLEKS                       R12 R11 K12 ["old_string"]
       63 JUMPIFNOTEQKS                    R12 K13 [""] ; [+19]
       65 GETTABLEKS                       R9 R11 K14 ["new_string"]
       67 LOADB                            R10 1
       68 NEWTABLE                         R12 0 0
       70 LOADN                            R15 2
       71 LENGTH                           R13 R1
       72 LOADN                            R14 1
       73 FORNPREP                         R13
       74 GETTABLE                         R18 R1 R15
       75 FASTCALL2                        TABLE_INSERT R12 R18 ; [+4]
       77 MOVE                             R17 R12
       78 GETIMPORT                        R16 K17 [table.insert]
       80 CALL                             R16 2 0
       81 FORNLOOP                         R13
       82 MOVE                             R1 R12
       83 MOVE                             R11 R9
       84 MOVE                             R12 R1
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 FORGPREP                         R12
       88 GETTABLEKS                       R17 R16 K12 ["old_string"]
       90 GETTABLEKS                       R18 R16 K14 ["new_string"]
       92 JUMPIFNOTEQ                      R17 R18 ; [+14]
       94 JUMPIFNOT                        R10 ; [+2]
       95 ADDK                             R17 R15 K18 [1]
       96 JUMPIF                           R17 ; [+1]
       97 MOVE                             R17 R15
       98 GETIMPORT                        R18 K2 [error]
      100 LOADK                            R20 K19 ["Edit %* has identical old_string and new_string"]
      101 MOVE                             R22 R17
      102 NAMECALL                         R20 R20 K20 ["format"]
      104 CALL                             R20 2 1
      105 MOVE                             R19 R20
      106 CALL                             R18 1 0
      107 MOVE                             R19 R11
      108 GETTABLEKS                       R20 R16 K21 ["replace_all"]
      110 JUMPIFNOT                        R20 ; [+26]
      111 GETTABLEKS                       R20 R16 K12 ["old_string"]
      113 GETTABLEKS                       R21 R16 K14 ["new_string"]
      115 LOADK                            R24 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      116 LOADK                            R25 K23 ["%%%%%1"]
      117 NAMECALL                         R22 R20 K24 ["gsub"]
      119 CALL                             R22 3 1
      120 LOADK                            R25 K25 ["%%"]
      121 LOADK                            R26 K26 ["%%%%"]
      122 NAMECALL                         R23 R21 K24 ["gsub"]
      124 CALL                             R23 3 1
      125 MOVE                             R26 R22
      126 MOVE                             R27 R23
      127 NAMECALL                         R24 R19 K24 ["gsub"]
      129 CALL                             R24 3 2
      130 MOVE                             R17 R24
      131 LOADN                            R26 0
      132 JUMPIFLT                         R26 R25 ; [+2]
      134 LOADB                            R18 0 +1
      135 LOADB                            R18 1
      136 JUMP                             ; [+29]
      137 GETTABLEKS                       R20 R16 K12 ["old_string"]
      139 GETTABLEKS                       R21 R16 K14 ["new_string"]
      141 MOVE                             R24 R20
      142 LOADN                            R25 1
      143 LOADB                            R26 1
      144 NAMECALL                         R22 R19 K27 ["find"]
      146 CALL                             R22 4 2
      147 JUMPIFNOT                        R22 ; [+16]
      148 JUMPIFNOT                        R23 ; [+15]
      149 LOADN                            R30 1
      150 SUBK                             R31 R22 K18 [1]
      151 NAMECALL                         R28 R19 K28 ["sub"]
      153 CALL                             R28 3 1
      154 MOVE                             R25 R28
      155 MOVE                             R26 R21
      156 ADDK                             R29 R23 K18 [1]
      157 NAMECALL                         R27 R19 K28 ["sub"]
      159 CALL                             R27 2 1
      160 CONCAT                           R24 R25 R27
      161 MOVE                             R17 R24
      162 LOADB                            R18 1
      163 JUMP                             ; [+2]
      164 MOVE                             R17 R19
      165 LOADB                            R18 0
      166 GETTABLEKS                       R19 R16 K21 ["replace_all"]
      168 JUMPIF                           R19 ; [+16]
      169 JUMPIF                           R18 ; [+15]
      170 JUMPIFNOT                        R10 ; [+2]
      171 ADDK                             R19 R15 K18 [1]
      172 JUMPIF                           R19 ; [+1]
      173 MOVE                             R19 R15
      174 GETIMPORT                        R20 K2 [error]
      176 LOADK                            R22 K29 ["Edit %* - old_string '%*' not found in current content"]
      177 MOVE                             R24 R19
      178 GETTABLEKS                       R25 R16 K12 ["old_string"]
      180 NAMECALL                         R22 R22 K20 ["format"]
      182 CALL                             R22 3 1
      183 MOVE                             R21 R22
      184 CALL                             R20 1 0
      185 MOVE                             R11 R17
      186 FORGLOOP                         R12 2 ; [-99]
      188 MOVE                             R12 R1
      189 LOADNIL                          R13
      190 LOADNIL                          R14
      191 FORGPREP                         R12
      192 MOVE                             R19 R9
      193 GETTABLEKS                       R20 R16 K21 ["replace_all"]
      195 JUMPIFNOT                        R20 ; [+26]
      196 GETTABLEKS                       R20 R16 K12 ["old_string"]
      198 GETTABLEKS                       R21 R16 K14 ["new_string"]
      200 LOADK                            R24 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      201 LOADK                            R25 K23 ["%%%%%1"]
      202 NAMECALL                         R22 R20 K24 ["gsub"]
      204 CALL                             R22 3 1
      205 LOADK                            R25 K25 ["%%"]
      206 LOADK                            R26 K26 ["%%%%"]
      207 NAMECALL                         R23 R21 K24 ["gsub"]
      209 CALL                             R23 3 1
      210 MOVE                             R26 R22
      211 MOVE                             R27 R23
      212 NAMECALL                         R24 R19 K24 ["gsub"]
      214 CALL                             R24 3 2
      215 MOVE                             R17 R24
      216 LOADN                            R26 0
      217 JUMPIFLT                         R26 R25 ; [+2]
      219 LOADB                            R18 0 +1
      220 LOADB                            R18 1
      221 JUMP                             ; [+29]
      222 GETTABLEKS                       R20 R16 K12 ["old_string"]
      224 GETTABLEKS                       R21 R16 K14 ["new_string"]
      226 MOVE                             R24 R20
      227 LOADN                            R25 1
      228 LOADB                            R26 1
      229 NAMECALL                         R22 R19 K27 ["find"]
      231 CALL                             R22 4 2
      232 JUMPIFNOT                        R22 ; [+16]
      233 JUMPIFNOT                        R23 ; [+15]
      234 LOADN                            R30 1
      235 SUBK                             R31 R22 K18 [1]
      236 NAMECALL                         R28 R19 K28 ["sub"]
      238 CALL                             R28 3 1
      239 MOVE                             R25 R28
      240 MOVE                             R26 R21
      241 ADDK                             R29 R23 K18 [1]
      242 NAMECALL                         R27 R19 K28 ["sub"]
      244 CALL                             R27 2 1
      245 CONCAT                           R24 R25 R27
      246 MOVE                             R17 R24
      247 LOADB                            R18 1
      248 JUMP                             ; [+2]
      249 MOVE                             R17 R19
      250 LOADB                            R18 0
      251 GETTABLEKS                       R19 R16 K21 ["replace_all"]
      253 JUMPIF                           R19 ; [+5]
      254 JUMPIF                           R18 ; [+4]
      255 GETIMPORT                        R19 K2 [error]
      257 LOADK                            R20 K30 ["Validation failed during apply - target text not found"]
      258 CALL                             R19 1 0
      259 MOVE                             R9 R17
      260 FORGLOOP                         R12 2 ; [-69]
      262 GETUPVAL                         R12 2
      263 LOADB                            R14 0
      264 NAMECALL                         R12 R12 K31 ["GenerateGUID"]
      266 CALL                             R12 2 1
      267 GETUPVAL                         R13 1
      268 GETTABLEKS                       R13 R13 K32 ["startRecording"]
      270 MOVE                             R14 R12
      271 CALL                             R13 1 0
      272 GETIMPORT                        R13 K34 [pcall]
      274 NEWCLOSURE                       R14 P0
      275 CAPTURE                          VAL R4
      276 CAPTURE                          UPVAL U1
      277 CAPTURE                          REF R5
      278 CAPTURE                          REF R9
      279 CAPTURE                          VAL R3
      280 CAPTURE                          UPVAL U3
      281 CAPTURE                          REF R6
      282 CALL                             R13 1 2
      283 GETUPVAL                         R15 1
      284 GETTABLEKS                       R15 R15 K35 ["endRecording"]
      286 MOVE                             R16 R12
      287 CALL                             R15 1 0
      288 JUMPIFNOT                        R13 ; [+23]
      289 JUMPIFNOT                        R6 ; [+2]
      290 LOADK                            R15 K36 ["Created"]
      291 JUMP                             ; [+1]
      292 LOADK                            R15 K37 ["Modified"]
      293 LENGTH                           R17 R1
      294 JUMPIFNOT                        R10 ; [+2]
      295 LOADN                            R18 1
      296 JUMP                             ; [+1]
      297 LOADN                            R18 0
      298 ADD                              R16 R17 R18
      299 LOADK                            R18 K38 ["%* %* (%*) with %* edits applied"]
      300 MOVE                             R20 R15
      301 GETTABLEKS                       R21 R5 K39 ["Name"]
      303 GETTABLEKS                       R22 R5 K10 ["ClassName"]
      305 MOVE                             R23 R16
      306 NAMECALL                         R18 R18 K20 ["format"]
      308 CALL                             R18 5 1
      309 MOVE                             R17 R18
      310 CLOSEUPVALS                      R5
      311 RETURN                           R17 1
      312 GETIMPORT                        R15 K2 [error]
      314 MOVE                             R16 R14
      315 CALL                             R15 1 0
      316 CLOSEUPVALS                      R5
      317 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+10]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getDataModelType"]
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
       12 MOVE                             R4 R1
       13 JUMPIFNOT                        R4 ; [+2]
       14 GETTABLEKS                       R4 R1 K2 ["isSubagent"]
       16 LOADB                            R5 1
       17 GETUPVAL                         R6 1
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+1]
       20 JUMPIF                           R4 ; [+8]
       21 GETUPVAL                         R6 2
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+7]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K3 ["getIsEvaluationRunning"]
       27 CALL                             R6 0 1
       28 JUMPIFNOT                        R6 ; [+2]
       29 LOADB                            R5 0
       30 JUMP                             ; [+11]
       31 GETUPVAL                         R6 4
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R6 ; [+3]
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R5 0
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R6 R6 K4 ["shouldUseDiffView"]
       40 CALL                             R6 0 1
       41 MOVE                             R5 R6
       42 GETUPVAL                         R6 6
       43 MOVE                             R7 R3
       44 MOVE                             R8 R0
       45 ORK                              R9 R1 K5 ["none"]
       46 MOVE                             R10 R5
       47 CALL                             R6 4 1
       48 GETUPVAL                         R7 7
       49 CALL                             R7 0 1
       50 MOVE                             R9 R6
       51 NAMECALL                         R7 R7 K6 ["addText"]
       53 CALL                             R7 2 1
       54 NAMECALL                         R7 R7 K7 ["build"]
       56 CALL                             R7 1 -1
       57 RETURN                           R7 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldShowConfirmation"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 DUPTABLE                         R1 K4 [{["shouldConfirm"] = True, ["confirmationType"]}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["ConfirmationType"]
        9 GETTABLEKS                       R2 R2 K6 ["ScriptChange"]
       11 SETTABLEKS                       R2 R1 K3 ["confirmationType"]
       13 RETURN                           R1 1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

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
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U9
       26 GETUPVAL                         R6 10
       27 GETTABLEKS                       R6 R6 K4 ["define"]
       29 CALL                             R6 0 1
       30 GETUPVAL                         R8 11
       31 GETTABLEKS                       R8 R8 K5 ["MultiEdit"]
       33 NAMECALL                         R6 R6 K6 ["setName"]
       35 CALL                             R6 2 1
       36 LOADK                            R8 K7 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.\nCan also create new scripts if the path doesn't exist (will need to specify className).\n\nExample Call (correct):\n- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}\n\nPath Format:\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n\nCreating New Scripts:\n- If the script doesn't exist, it will be created using the provided className\n- className is required when creating new scripts\n- First edit with empty old_string (\"\") sets the initial content\n- Subsequent edits work normally on the created content\n\nBefore Using:\n- Read or search file to understand existing script contents\n- For new scripts, provide className and start with empty old_string to set initial content\n\nImportant Notes:\n- All edits are applied in sequence, in the order provided\n- Each edit operates on the result of the previous edit\n- All edits must be valid for the operation to succeed - atomic operation\n- Plan edits carefully to avoid conflicts between sequential operations\n\nCritical Requirements:\n- old_string must match script contents exactly (including whitespace)\n- old_string and new_string must be different\n- className required only when creating new scripts\n- For new files: first edit can have empty old_string to set initial content\n\nWhen Making Edits:\n- Ensure all edits result in correct, runnable code\n- Don't leave code in a broken state\n- Use replace_all for renaming variables across the entire script\n"]
       37 NAMECALL                         R6 R6 K8 ["setDescription"]
       39 CALL                             R6 2 1
       40 LOADK                            R8 K9 ["file_path"]
       41 DUPTABLE                         R9 K14 [{["type"] = "string", ["description"] = "The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."}]
       42 NAMECALL                         R6 R6 K15 ["addArgument"]
       44 CALL                             R6 3 1
       45 LOADK                            R8 K16 ["edits"]
       46 DUPTABLE                         R9 K20 [{["type"] = "array", ["description"] = "An array of edit operations. For new scripts, first edit can have empty old_string to set initial content.", ["items"]}]
       47 DUPTABLE                         R10 K24 [{["type"] = "object", ["properties"], ["required"]}]
       48 DUPTABLE                         R11 K28 [{"old_string", "new_string", "replace_all"}]
       49 DUPTABLE                         R12 K30 [{["type"] = "string", ["description"] = "The text to replace (must match exactly). Use empty string for new script initial content."}]
       50 SETTABLEKS                       R12 R11 K25 ["old_string"]
       52 DUPTABLE                         R12 K32 [{["type"] = "string", ["description"] = "The text to replace it with (must be different from old_string)"}]
       53 SETTABLEKS                       R12 R11 K26 ["new_string"]
       55 DUPTABLE                         R12 K35 [{["type"] = "boolean", ["description"] = "Replace all occurrences of old_string (optional, defaults to false)"}]
       56 SETTABLEKS                       R12 R11 K27 ["replace_all"]
       58 SETTABLEKS                       R11 R10 K22 ["properties"]
       60 NEWTABLE                         R11 0 2
       62 LOADK                            R12 K25 ["old_string"]
       63 LOADK                            R13 K26 ["new_string"]
       64 SETLIST                          R11 R12 2 [1]
       66 SETTABLEKS                       R11 R10 K23 ["required"]
       68 SETTABLEKS                       R10 R9 K19 ["items"]
       70 NAMECALL                         R6 R6 K15 ["addArgument"]
       72 CALL                             R6 3 1
       73 LOADK                            R8 K36 ["className"]
       74 DUPTABLE                         R9 K38 [{["type"] = "string", ["description"] = "The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."}]
       75 NAMECALL                         R6 R6 K39 ["addOptionalArgument"]
       77 CALL                             R6 3 1
       78 DUPTABLE                         R8 K47 [{["title"] = "Multi-Edit", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       79 NAMECALL                         R6 R6 K48 ["setAnnotations"]
       81 CALL                             R6 2 1
       82 MOVE                             R8 R5
       83 NAMECALL                         R6 R6 K49 ["setHandler"]
       85 CALL                             R6 2 1
       86 NAMECALL                         R6 R6 K50 ["build"]
       88 CALL                             R6 1 1
       89 DUPTABLE                         R7 K55 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       90 GETUPVAL                         R9 12
       91 CALL                             R9 0 1
       92 JUMPIFNOT                        R9 ; [+10]
       93 NEWTABLE                         R8 0 1
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K56 ["Types"]
       98 GETTABLEKS                       R9 R9 K57 ["Edit"]
      100 SETLIST                          R8 R9 1 [1]
      102 JUMPIF                           R8 ; [+1]
      103 LOADNIL                          R8
      104 SETTABLEKS                       R8 R7 K51 ["availableDataModelTypes"]
      106 SETTABLEKS                       R6 R7 K52 ["definition"]
      108 DUPCLOSURE                       R8 K58 [PROTO_11]
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U13
      111 SETTABLEKS                       R8 R7 K53 ["getPreExecuteWarning"]
      113 GETUPVAL                         R9 14
      114 CALL                             R9 0 1
      115 JUMPIFNOT                        R9 ; [+2]
      116 LOADNIL                          R8
      117 JUMP                             ; [+2]
      118 DUPCLOSURE                       R8 K59 [PROTO_12]
      119 CAPTURE                          UPVAL U15
      120 SETTABLEKS                       R8 R7 K54 ["displayNameFunction"]
      122 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["DataModelType"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["AssistantEval"]
       26 GETTABLEKS                       R4 R4 K13 ["EvalController"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Parent"]
       33 GETTABLEKS                       R5 R5 K15 ["ModelContextProtocol"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["MultiEditAcceptanceState"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K17 ["Tools"]
       47 GETTABLEKS                       R7 R7 K18 ["ToolTypes"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Util"]
       54 GETTABLEKS                       R8 R8 K19 ["ToolUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K20 ["Resources"]
       61 GETTABLEKS                       R9 R9 K21 ["Localization"]
       63 GETTABLEKS                       R9 R9 K22 ["Translator"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K23 ["Types"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K24 ["Flags"]
       75 GETTABLEKS                       R11 R11 K25 ["FFlagAssistantBackgroundDataModelToolCall"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K24 ["Flags"]
       82 GETTABLEKS                       R12 R12 K26 ["FFlagAssistantEval"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K24 ["Flags"]
       89 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantMultiEditExternalClient"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R14 R0 K24 ["Flags"]
       96 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantSplitToolsAndWidgets"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R0 K24 ["Flags"]
      103 GETTABLEKS                       R15 R15 K29 ["FFlagSubagentScriptEditAutoConfirmation"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R16 R0 K24 ["Flags"]
      110 GETTABLEKS                       R16 R16 K30 ["getIsAssistantBackgroundDataModelToolCall"]
      112 CALL                             R15 1 1
      113 GETTABLEKS                       R16 R4 K10 ["Util"]
      115 GETTABLEKS                       R16 R16 K31 ["ToolBuilder"]
      117 GETTABLEKS                       R17 R4 K10 ["Util"]
      119 GETTABLEKS                       R17 R17 K32 ["ToolResult"]
      121 GETTABLEKS                       R18 R6 K33 ["ToolNames"]
      123 DUPCLOSURE                       R19 K34 [PROTO_0]
      124 DUPCLOSURE                       R20 K35 [PROTO_1]
      125 DUPCLOSURE                       R21 K36 [PROTO_2]
      126 DUPCLOSURE                       R22 K37 [PROTO_3]
      127 DUPCLOSURE                       R23 K38 [PROTO_4]
      128 DUPCLOSURE                       R24 K39 [PROTO_5]
      129 DUPCLOSURE                       R25 K40 [PROTO_6]
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R24
      132 DUPCLOSURE                       R26 K41 [PROTO_13]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R8
      149 RETURN                           R26 1
