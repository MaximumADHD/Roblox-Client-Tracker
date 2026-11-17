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
        6 JUMPIFNOT                        R3 ; [+15]
        7 JUMPIFNOT                        R4 ; [+14]
        8 LOADN                            R8 1
        9 SUBK                             R9 R3 K1 [1]
       10 NAMECALL                         R6 R0 K2 ["sub"]
       12 CALL                             R6 3 1
       13 MOVE                             R7 R2
       14 ADDK                             R10 R4 K1 [1]
       15 NAMECALL                         R8 R0 K2 ["sub"]
       17 CALL                             R8 2 1
       18 CONCAT                           R5 R6 R8
       19 MOVE                             R6 R5
       20 LOADB                            R7 1
       21 RETURN                           R6 2
       22 MOVE                             R5 R0
       23 LOADB                            R6 0
       24 RETURN                           R5 2

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
       29 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantMultiEditExternalClient"]
       31 JUMPIFNOT                        R2 ; [+8]
       32 JUMPIFEQKNIL                     R0 ; [+3]
       34 JUMPIFNOTEQKNIL                  R1 ; [+5]
       36 GETIMPORT                        R2 K8 [error]
       38 LOADK                            R3 K9 ["Internal client call missing required meta fields: sessionId or messageGuid"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K0 ["tools"]
       43 GETTABLEKS                       R2 R2 K1 ["multiEdit"]
       45 GETTABLEKS                       R2 R2 K10 ["updateScriptSourceAsync"]
       47 DUPTABLE                         R3 K17 [{["conversationId"], ["requestId"], ["instanceId"] = "", ["script"], ["source"], ["isNewScript"]}]
       48 SETTABLEKS                       R1 R3 K11 ["conversationId"]
       50 SETTABLEKS                       R0 R3 K12 ["requestId"]
       52 GETUPVAL                         R4 2
       53 SETTABLEKS                       R4 R3 K14 ["script"]
       55 GETUPVAL                         R4 3
       56 SETTABLEKS                       R4 R3 K15 ["source"]
       58 GETUPVAL                         R4 6
       59 SETTABLEKS                       R4 R3 K16 ["isNewScript"]
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

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
       92 JUMPIFNOTEQ                      R17 R18 ; [+13]
       94 JUMPIFNOT                        R10 ; [+2]
       95 ADDK                             R17 R15 K18 [1]
       96 JUMPIF                           R17 ; [+1]
       97 MOVE                             R17 R15
       98 GETIMPORT                        R18 K2 [error]
      100 LOADK                            R19 K19 ["Edit %* has identical old_string and new_string"]
      101 MOVE                             R21 R17
      102 NAMECALL                         R19 R19 K20 ["format"]
      104 CALL                             R19 2 1
      105 CALL                             R18 1 0
      106 GETTABLEKS                       R20 R16 K21 ["replace_all"]
      108 JUMPIFNOT                        R20 ; [+26]
      109 GETTABLEKS                       R20 R16 K12 ["old_string"]
      111 GETTABLEKS                       R21 R16 K14 ["new_string"]
      113 LOADK                            R24 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      114 LOADK                            R25 K23 ["%%%%%1"]
      115 NAMECALL                         R22 R20 K24 ["gsub"]
      117 CALL                             R22 3 1
      118 LOADK                            R25 K25 ["%%"]
      119 LOADK                            R26 K26 ["%%%%"]
      120 NAMECALL                         R23 R21 K24 ["gsub"]
      122 CALL                             R23 3 1
      123 MOVE                             R26 R22
      124 MOVE                             R27 R23
      125 NAMECALL                         R24 R11 K24 ["gsub"]
      127 CALL                             R24 3 2
      128 MOVE                             R17 R24
      129 LOADN                            R26 0
      130 JUMPIFLT                         R26 R25 ; [+2]
      132 LOADB                            R18 0 +1
      133 LOADB                            R18 1
      134 JUMP                             ; [+28]
      135 GETTABLEKS                       R20 R16 K12 ["old_string"]
      137 GETTABLEKS                       R21 R16 K14 ["new_string"]
      139 MOVE                             R24 R20
      140 LOADN                            R25 1
      141 LOADB                            R26 1
      142 NAMECALL                         R22 R11 K27 ["find"]
      144 CALL                             R22 4 2
      145 JUMPIFNOT                        R22 ; [+15]
      146 JUMPIFNOT                        R23 ; [+14]
      147 LOADN                            R27 1
      148 SUBK                             R28 R22 K18 [1]
      149 NAMECALL                         R25 R11 K28 ["sub"]
      151 CALL                             R25 3 1
      152 MOVE                             R26 R21
      153 ADDK                             R29 R23 K18 [1]
      154 NAMECALL                         R27 R11 K28 ["sub"]
      156 CALL                             R27 2 1
      157 CONCAT                           R24 R25 R27
      158 MOVE                             R17 R24
      159 LOADB                            R18 1
      160 JUMP                             ; [+2]
      161 MOVE                             R17 R11
      162 LOADB                            R18 0
      163 GETTABLEKS                       R19 R16 K21 ["replace_all"]
      165 JUMPIF                           R19 ; [+15]
      166 JUMPIF                           R18 ; [+14]
      167 JUMPIFNOT                        R10 ; [+2]
      168 ADDK                             R19 R15 K18 [1]
      169 JUMPIF                           R19 ; [+1]
      170 MOVE                             R19 R15
      171 GETIMPORT                        R20 K2 [error]
      173 LOADK                            R21 K29 ["Edit %* - old_string '%*' not found in current content"]
      174 MOVE                             R23 R19
      175 GETTABLEKS                       R24 R16 K12 ["old_string"]
      177 NAMECALL                         R21 R21 K20 ["format"]
      179 CALL                             R21 3 1
      180 CALL                             R20 1 0
      181 MOVE                             R11 R17
      182 FORGLOOP                         R12 2 ; [-95]
      184 MOVE                             R12 R1
      185 LOADNIL                          R13
      186 LOADNIL                          R14
      187 FORGPREP                         R12
      188 MOVE                             R19 R9
      189 GETTABLEKS                       R20 R16 K21 ["replace_all"]
      191 JUMPIFNOT                        R20 ; [+26]
      192 GETTABLEKS                       R20 R16 K12 ["old_string"]
      194 GETTABLEKS                       R21 R16 K14 ["new_string"]
      196 LOADK                            R24 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      197 LOADK                            R25 K23 ["%%%%%1"]
      198 NAMECALL                         R22 R20 K24 ["gsub"]
      200 CALL                             R22 3 1
      201 LOADK                            R25 K25 ["%%"]
      202 LOADK                            R26 K26 ["%%%%"]
      203 NAMECALL                         R23 R21 K24 ["gsub"]
      205 CALL                             R23 3 1
      206 MOVE                             R26 R22
      207 MOVE                             R27 R23
      208 NAMECALL                         R24 R19 K24 ["gsub"]
      210 CALL                             R24 3 2
      211 MOVE                             R17 R24
      212 LOADN                            R26 0
      213 JUMPIFLT                         R26 R25 ; [+2]
      215 LOADB                            R18 0 +1
      216 LOADB                            R18 1
      217 JUMP                             ; [+28]
      218 GETTABLEKS                       R20 R16 K12 ["old_string"]
      220 GETTABLEKS                       R21 R16 K14 ["new_string"]
      222 MOVE                             R24 R20
      223 LOADN                            R25 1
      224 LOADB                            R26 1
      225 NAMECALL                         R22 R19 K27 ["find"]
      227 CALL                             R22 4 2
      228 JUMPIFNOT                        R22 ; [+15]
      229 JUMPIFNOT                        R23 ; [+14]
      230 LOADN                            R27 1
      231 SUBK                             R28 R22 K18 [1]
      232 NAMECALL                         R25 R19 K28 ["sub"]
      234 CALL                             R25 3 1
      235 MOVE                             R26 R21
      236 ADDK                             R29 R23 K18 [1]
      237 NAMECALL                         R27 R19 K28 ["sub"]
      239 CALL                             R27 2 1
      240 CONCAT                           R24 R25 R27
      241 MOVE                             R17 R24
      242 LOADB                            R18 1
      243 JUMP                             ; [+2]
      244 MOVE                             R17 R19
      245 LOADB                            R18 0
      246 GETTABLEKS                       R19 R16 K21 ["replace_all"]
      248 JUMPIF                           R19 ; [+5]
      249 JUMPIF                           R18 ; [+4]
      250 GETIMPORT                        R19 K2 [error]
      252 LOADK                            R20 K30 ["Validation failed during apply - target text not found"]
      253 CALL                             R19 1 0
      254 MOVE                             R9 R17
      255 FORGLOOP                         R12 2 ; [-68]
      257 GETUPVAL                         R12 2
      258 LOADB                            R14 0
      259 NAMECALL                         R12 R12 K31 ["GenerateGUID"]
      261 CALL                             R12 2 1
      262 GETUPVAL                         R13 1
      263 GETTABLEKS                       R13 R13 K32 ["startRecording"]
      265 MOVE                             R14 R12
      266 CALL                             R13 1 0
      267 NEWCLOSURE                       R14 P0
      268 CAPTURE                          VAL R4
      269 CAPTURE                          UPVAL U1
      270 CAPTURE                          REF R5
      271 CAPTURE                          REF R9
      272 CAPTURE                          VAL R3
      273 CAPTURE                          UPVAL U3
      274 CAPTURE                          REF R6
      275 FASTPCALL                        pcall 1 ; [+2]
      276 GETIMPORT                        R13 K34 [pcall]
      278 CALL                             R13 1 2
      279 GETUPVAL                         R15 1
      280 GETTABLEKS                       R15 R15 K35 ["endRecording"]
      282 MOVE                             R16 R12
      283 CALL                             R15 1 0
      284 JUMPIFNOT                        R13 ; [+22]
      285 JUMPIFNOT                        R6 ; [+2]
      286 LOADK                            R15 K36 ["Created"]
      287 JUMP                             ; [+1]
      288 LOADK                            R15 K37 ["Modified"]
      289 LENGTH                           R17 R1
      290 JUMPIFNOT                        R10 ; [+2]
      291 LOADN                            R18 1
      292 JUMP                             ; [+1]
      293 LOADN                            R18 0
      294 ADD                              R16 R17 R18
      295 LOADK                            R17 K38 ["%* %* (%*) with %* edits applied"]
      296 MOVE                             R19 R15
      297 GETTABLEKS                       R20 R5 K39 ["Name"]
      299 GETTABLEKS                       R21 R5 K10 ["ClassName"]
      301 MOVE                             R22 R16
      302 NAMECALL                         R17 R17 K20 ["format"]
      304 CALL                             R17 5 1
      305 CLOSEUPVALS                      R5
      306 RETURN                           R17 1
      307 GETIMPORT                        R15 K2 [error]
      309 MOVE                             R16 R14
      310 CALL                             R15 1 0
      311 CLOSEUPVALS                      R5
      312 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["file_path"]
        3 GETTABLEKS                       R6 R1 K1 ["edits"]
        5 GETTABLEKS                       R7 R1 K2 ["className"]
        7 JUMPIFNOTEQKS                    R2 K3 ["none"] ; [+3]
        9 LOADNIL                          R8
       10 JUMP                             ; [+1]
       11 MOVE                             R8 R2
       12 MOVE                             R9 R3
       13 CALL                             R4 5 -1
       14 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K1 ["targetDataModel"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["forTarget"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 MOVE                             R5 R1
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETTABLEKS                       R5 R1 K3 ["isSubagent"]
       18 LOADB                            R6 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K4 ["FFlagSubagentScriptEditAutoConfirmation"]
       22 JUMPIFNOT                        R7 ; [+1]
       23 JUMPIF                           R5 ; [+9]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K5 ["FFlagDebugAssistantEval"]
       27 JUMPIFNOT                        R7 ; [+7]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K6 ["getIsEvaluationRunning"]
       31 CALL                             R7 0 1
       32 JUMPIFNOT                        R7 ; [+2]
       33 LOADB                            R6 0
       34 JUMP                             ; [+12]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantMultiEditExternalClient"]
       38 JUMPIFNOT                        R7 ; [+3]
       39 JUMPIFNOT                        R2 ; [+2]
       40 LOADB                            R6 0
       41 JUMP                             ; [+5]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K8 ["shouldUseDiffView"]
       45 CALL                             R7 0 1
       46 MOVE                             R6 R7
       47 GETUPVAL                         R7 4
       48 MOVE                             R9 R4
       49 MOVE                             R10 R0
       50 ORK                              R11 R1 K9 ["none"]
       51 MOVE                             R12 R6
       52 NAMECALL                         R7 R7 K10 ["InvokeAsync"]
       54 CALL                             R7 5 1
       55 GETUPVAL                         R8 5
       56 CALL                             R8 0 1
       57 MOVE                             R10 R7
       58 NAMECALL                         R8 R8 K11 ["addText"]
       60 CALL                             R8 2 1
       61 NAMECALL                         R8 R8 K12 ["build"]
       63 CALL                             R8 1 -1
       64 RETURN                           R8 -1

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K3 ["invoke"]
       14 MOVE                             R6 R2
       15 LOADK                            R7 K4 ["MultiEditTool.performEdit"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K5 ["new"]
       20 CALL                             R6 0 1
       21 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K7 ["Identity"]
       27 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       29 JUMPIFEQ                         R7 R8 ; [+9]
       31 NEWCLOSURE                       R11 P1
       32 CAPTURE                          VAL R4
       33 NAMECALL                         R9 R5 K9 ["Connect"]
       35 CALL                             R9 2 -1
       36 NAMECALL                         R7 R6 K10 ["Add"]
       38 CALL                             R7 -1 0
       39 NEWCLOSURE                       R9 P2
       40 CAPTURE                          VAL R6
       41 NAMECALL                         R7 R3 K11 ["Once"]
       43 CALL                             R7 2 0
       44 NEWCLOSURE                       R7 P3
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U9
       51 GETUPVAL                         R8 10
       52 GETTABLEKS                       R8 R8 K12 ["define"]
       54 CALL                             R8 0 1
       55 GETUPVAL                         R10 11
       56 GETTABLEKS                       R10 R10 K13 ["MultiEdit"]
       58 NAMECALL                         R8 R8 K14 ["setName"]
       60 CALL                             R8 2 1
       61 LOADK                            R10 K15 ["Makes multiple edits to a single script in one operation. More efficient than multiple single edits.\nCan also create new scripts if the path doesn't exist (will need to specify className).\n\nExample Call (correct):\n- Args: {\"file_path\":\"ReplicatedStorage.Platformer.Constants\",\"edits\":[{\"old_string\":\"JUMP_COOLDOWN = 0.15\",\"new_string\":\"JUMP_COOLDOWN = 0.3\"}]}\n\nPath Format:\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n\nCreating New Scripts:\n- If the script doesn't exist, it will be created using the provided className\n- className is required when creating new scripts\n- First edit with empty old_string (\"\") sets the initial content\n- Subsequent edits work normally on the created content\n\nBefore Using:\n- Read or search file to understand existing script contents\n- For new scripts, provide className and start with empty old_string to set initial content\n\nImportant Notes:\n- All edits are applied in sequence, in the order provided\n- Each edit operates on the result of the previous edit\n- All edits must be valid for the operation to succeed - atomic operation\n- Plan edits carefully to avoid conflicts between sequential operations\n\nCritical Requirements:\n- old_string must match script contents exactly (including whitespace)\n- old_string and new_string must be different\n- className required only when creating new scripts\n- For new files: first edit can have empty old_string to set initial content\n\nWhen Making Edits:\n- Ensure all edits result in correct, runnable code\n- Don't leave code in a broken state\n- Use replace_all for renaming variables across the entire script\n"]
       62 NAMECALL                         R8 R8 K16 ["setDescription"]
       64 CALL                             R8 2 1
       65 LOADK                            R10 K17 ["file_path"]
       66 DUPTABLE                         R11 K22 [{["type"] = "string", ["description"] = "The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."}]
       67 NAMECALL                         R8 R8 K23 ["addArgument"]
       69 CALL                             R8 3 1
       70 LOADK                            R10 K24 ["edits"]
       71 DUPTABLE                         R11 K28 [{["type"] = "array", ["description"] = "An array of edit operations. For new scripts, first edit can have empty old_string to set initial content.", ["items"]}]
       72 DUPTABLE                         R12 K32 [{["type"] = "object", ["properties"], ["required"]}]
       73 DUPTABLE                         R13 K36 [{"old_string", "new_string", "replace_all"}]
       74 DUPTABLE                         R14 K38 [{["type"] = "string", ["description"] = "The text to replace (must match exactly). Use empty string for new script initial content."}]
       75 SETTABLEKS                       R14 R13 K33 ["old_string"]
       77 DUPTABLE                         R14 K40 [{["type"] = "string", ["description"] = "The text to replace it with (must be different from old_string)"}]
       78 SETTABLEKS                       R14 R13 K34 ["new_string"]
       80 DUPTABLE                         R14 K43 [{["type"] = "boolean", ["description"] = "Replace all occurrences of old_string (optional, defaults to false)"}]
       81 SETTABLEKS                       R14 R13 K35 ["replace_all"]
       83 SETTABLEKS                       R13 R12 K30 ["properties"]
       85 NEWTABLE                         R13 0 2
       87 LOADK                            R14 K33 ["old_string"]
       88 LOADK                            R15 K34 ["new_string"]
       89 SETLIST                          R13 R14 2 [1]
       91 SETTABLEKS                       R13 R12 K31 ["required"]
       93 SETTABLEKS                       R12 R11 K27 ["items"]
       95 NAMECALL                         R8 R8 K23 ["addArgument"]
       97 CALL                             R8 3 1
       98 LOADK                            R10 K44 ["className"]
       99 DUPTABLE                         R11 K46 [{["type"] = "string", ["description"] = "The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."}]
      100 NAMECALL                         R8 R8 K47 ["addOptionalArgument"]
      102 CALL                             R8 3 1
      103 LOADK                            R10 K48 ["Multi-Edit"]
      104 NAMECALL                         R8 R8 K49 ["setTitle"]
      106 CALL                             R8 2 1
      107 DUPTABLE                         R10 K57 [{["title"] = "Multi-Edit", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      108 NAMECALL                         R8 R8 K58 ["setAnnotations"]
      110 CALL                             R8 2 1
      111 MOVE                             R10 R7
      112 NAMECALL                         R8 R8 K59 ["setHandler"]
      114 CALL                             R8 2 1
      115 NAMECALL                         R8 R8 K60 ["build"]
      117 CALL                             R8 1 1
      118 DUPTABLE                         R9 K64 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
      119 NEWTABLE                         R10 0 1
      121 GETUPVAL                         R11 12
      122 GETTABLEKS                       R11 R11 K65 ["Types"]
      124 GETTABLEKS                       R11 R11 K66 ["Edit"]
      126 SETLIST                          R10 R11 1 [1]
      128 SETTABLEKS                       R10 R9 K61 ["availableDataModelTypes"]
      130 SETTABLEKS                       R8 R9 K62 ["definition"]
      132 DUPCLOSURE                       R10 K67 [PROTO_12]
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          UPVAL U13
      135 SETTABLEKS                       R10 R9 K63 ["getPreExecuteWarning"]
      137 RETURN                           R9 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Util"]
       41 GETTABLEKS                       R8 R8 K16 ["AssistantEval"]
       43 GETTABLEKS                       R8 R8 K17 ["EvalController"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K18 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Util"]
       55 GETTABLEKS                       R10 R10 K19 ["MultiEditAcceptanceState"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R0 K14 ["Util"]
       62 GETTABLEKS                       R11 R11 K20 ["NetworkingIdentity"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K21 ["Tools"]
       69 GETTABLEKS                       R12 R12 K22 ["ToolTypes"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K10 [require]
       74 GETTABLEKS                       R13 R0 K14 ["Util"]
       76 GETTABLEKS                       R13 R13 K23 ["ToolUtils"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K10 [require]
       81 GETTABLEKS                       R14 R0 K24 ["Types"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R4 K25 ["Remote"]
       86 GETTABLEKS                       R15 R5 K14 ["Util"]
       88 GETTABLEKS                       R15 R15 K26 ["ToolBuilder"]
       90 GETTABLEKS                       R16 R5 K14 ["Util"]
       92 GETTABLEKS                       R16 R16 K27 ["ToolResult"]
       94 GETTABLEKS                       R17 R11 K28 ["ToolNames"]
       96 DUPCLOSURE                       R18 K29 [PROTO_0]
       97 DUPCLOSURE                       R19 K30 [PROTO_1]
       98 DUPCLOSURE                       R20 K31 [PROTO_2]
       99 DUPCLOSURE                       R21 K32 [PROTO_3]
      100 DUPCLOSURE                       R22 K33 [PROTO_4]
      101 DUPCLOSURE                       R23 K34 [PROTO_5]
      102 DUPCLOSURE                       R24 K35 [PROTO_6]
      103 CAPTURE                          VAL R22
      104 CAPTURE                          VAL R23
      105 DUPCLOSURE                       R25 K36 [PROTO_13]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R13
      120 RETURN                           R25 1
