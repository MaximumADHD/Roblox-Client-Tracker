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
        0 LOADNIL                          R5
        1 LOADB                            R6 0
        2 GETUPVAL                         R7 0
        3 CALL                             R7 0 1
        4 JUMPIFNOT                        R7 ; [+25]
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K0 ["findInstance"]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+2]
       11 MOVE                             R5 R7
       12 JUMP                             ; [+33]
       13 JUMPIF                           R2 ; [+7]
       14 GETIMPORT                        R8 K2 [error]
       16 LOADK                            R10 K3 ["`className` is required when creating a new script at path: "]
       17 MOVE                             R11 R0
       18 CONCAT                           R9 R10 R11
       19 LOADN                            R10 0
       20 CALL                             R8 2 0
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K4 ["findOrCreateInstance"]
       24 MOVE                             R9 R0
       25 MOVE                             R10 R2
       26 CALL                             R8 2 2
       27 MOVE                             R5 R8
       28 MOVE                             R6 R9
       29 JUMP                             ; [+16]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K4 ["findOrCreateInstance"]
       33 MOVE                             R8 R0
       34 MOVE                             R9 R2
       35 CALL                             R7 2 2
       36 MOVE                             R5 R7
       37 MOVE                             R6 R8
       38 JUMPIFNOT                        R6 ; [+7]
       39 JUMPIF                           R2 ; [+6]
       40 GETIMPORT                        R7 K2 [error]
       42 LOADK                            R9 K3 ["`className` is required when creating a new script at path: "]
       43 MOVE                             R10 R0
       44 CONCAT                           R8 R9 R10
       45 CALL                             R7 1 0
       46 LOADK                            R9 K5 ["Script"]
       47 NAMECALL                         R7 R5 K6 ["IsA"]
       49 CALL                             R7 2 1
       50 JUMPIF                           R7 ; [+17]
       51 LOADK                            R9 K7 ["LocalScript"]
       52 NAMECALL                         R7 R5 K6 ["IsA"]
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+12]
       56 LOADK                            R9 K8 ["ModuleScript"]
       57 NAMECALL                         R7 R5 K6 ["IsA"]
       59 CALL                             R7 2 1
       60 JUMPIF                           R7 ; [+7]
       61 GETIMPORT                        R7 K2 [error]
       63 LOADK                            R9 K9 ["Object at path is not a script type. Found: "]
       64 GETTABLEKS                       R10 R5 K10 ["ClassName"]
       66 CONCAT                           R8 R9 R10
       67 CALL                             R7 1 0
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K11 ["getScriptSource"]
       71 MOVE                             R8 R5
       72 CALL                             R7 1 1
       73 MOVE                             R8 R7
       74 LOADB                            R9 0
       75 JUMPIFNOT                        R6 ; [+27]
       76 LENGTH                           R10 R1
       77 LOADN                            R11 0
       78 JUMPIFNOTLT                      R11 R10 ; [+24]
       80 GETTABLEN                        R10 R1 1
       81 GETTABLEKS                       R11 R10 K12 ["old_string"]
       83 JUMPIFNOTEQKS                    R11 K13 [""] ; [+19]
       85 GETTABLEKS                       R8 R10 K14 ["new_string"]
       87 LOADB                            R9 1
       88 NEWTABLE                         R11 0 0
       90 LOADN                            R14 2
       91 LENGTH                           R12 R1
       92 LOADN                            R13 1
       93 FORNPREP                         R12
       94 GETTABLE                         R17 R1 R14
       95 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
       97 MOVE                             R16 R11
       98 GETIMPORT                        R15 K17 [table.insert]
      100 CALL                             R15 2 0
      101 FORNLOOP                         R12
      102 MOVE                             R1 R11
      103 MOVE                             R10 R8
      104 MOVE                             R11 R1
      105 LOADNIL                          R12
      106 LOADNIL                          R13
      107 FORGPREP                         R11
      108 GETTABLEKS                       R16 R15 K12 ["old_string"]
      110 GETTABLEKS                       R17 R15 K14 ["new_string"]
      112 JUMPIFNOTEQ                      R16 R17 ; [+14]
      114 JUMPIFNOT                        R9 ; [+2]
      115 ADDK                             R16 R14 K18 [1]
      116 JUMPIF                           R16 ; [+1]
      117 MOVE                             R16 R14
      118 GETIMPORT                        R17 K2 [error]
      120 LOADK                            R19 K19 ["Edit %* has identical old_string and new_string"]
      121 MOVE                             R21 R16
      122 NAMECALL                         R19 R19 K20 ["format"]
      124 CALL                             R19 2 1
      125 MOVE                             R18 R19
      126 CALL                             R17 1 0
      127 MOVE                             R18 R10
      128 GETTABLEKS                       R19 R15 K21 ["replace_all"]
      130 JUMPIFNOT                        R19 ; [+26]
      131 GETTABLEKS                       R19 R15 K12 ["old_string"]
      133 GETTABLEKS                       R20 R15 K14 ["new_string"]
      135 LOADK                            R23 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      136 LOADK                            R24 K23 ["%%%%%1"]
      137 NAMECALL                         R21 R19 K24 ["gsub"]
      139 CALL                             R21 3 1
      140 LOADK                            R24 K25 ["%%"]
      141 LOADK                            R25 K26 ["%%%%"]
      142 NAMECALL                         R22 R20 K24 ["gsub"]
      144 CALL                             R22 3 1
      145 MOVE                             R25 R21
      146 MOVE                             R26 R22
      147 NAMECALL                         R23 R18 K24 ["gsub"]
      149 CALL                             R23 3 2
      150 MOVE                             R16 R23
      151 LOADN                            R25 0
      152 JUMPIFLT                         R25 R24 ; [+2]
      154 LOADB                            R17 0 +1
      155 LOADB                            R17 1
      156 JUMP                             ; [+29]
      157 GETTABLEKS                       R19 R15 K12 ["old_string"]
      159 GETTABLEKS                       R20 R15 K14 ["new_string"]
      161 MOVE                             R23 R19
      162 LOADN                            R24 1
      163 LOADB                            R25 1
      164 NAMECALL                         R21 R18 K27 ["find"]
      166 CALL                             R21 4 2
      167 JUMPIFNOT                        R21 ; [+16]
      168 JUMPIFNOT                        R22 ; [+15]
      169 LOADN                            R29 1
      170 SUBK                             R30 R21 K18 [1]
      171 NAMECALL                         R27 R18 K28 ["sub"]
      173 CALL                             R27 3 1
      174 MOVE                             R24 R27
      175 MOVE                             R25 R20
      176 ADDK                             R28 R22 K18 [1]
      177 NAMECALL                         R26 R18 K28 ["sub"]
      179 CALL                             R26 2 1
      180 CONCAT                           R23 R24 R26
      181 MOVE                             R16 R23
      182 LOADB                            R17 1
      183 JUMP                             ; [+2]
      184 MOVE                             R16 R18
      185 LOADB                            R17 0
      186 GETTABLEKS                       R18 R15 K21 ["replace_all"]
      188 JUMPIF                           R18 ; [+16]
      189 JUMPIF                           R17 ; [+15]
      190 JUMPIFNOT                        R9 ; [+2]
      191 ADDK                             R18 R14 K18 [1]
      192 JUMPIF                           R18 ; [+1]
      193 MOVE                             R18 R14
      194 GETIMPORT                        R19 K2 [error]
      196 LOADK                            R21 K29 ["Edit %* - old_string '%*' not found in current content"]
      197 MOVE                             R23 R18
      198 GETTABLEKS                       R24 R15 K12 ["old_string"]
      200 NAMECALL                         R21 R21 K20 ["format"]
      202 CALL                             R21 3 1
      203 MOVE                             R20 R21
      204 CALL                             R19 1 0
      205 MOVE                             R10 R16
      206 FORGLOOP                         R11 2 ; [-99]
      208 MOVE                             R11 R1
      209 LOADNIL                          R12
      210 LOADNIL                          R13
      211 FORGPREP                         R11
      212 MOVE                             R18 R8
      213 GETTABLEKS                       R19 R15 K21 ["replace_all"]
      215 JUMPIFNOT                        R19 ; [+26]
      216 GETTABLEKS                       R19 R15 K12 ["old_string"]
      218 GETTABLEKS                       R20 R15 K14 ["new_string"]
      220 LOADK                            R23 K22 ["([%(%)%.%+%-%*%?%[%]%^%$%%])"]
      221 LOADK                            R24 K23 ["%%%%%1"]
      222 NAMECALL                         R21 R19 K24 ["gsub"]
      224 CALL                             R21 3 1
      225 LOADK                            R24 K25 ["%%"]
      226 LOADK                            R25 K26 ["%%%%"]
      227 NAMECALL                         R22 R20 K24 ["gsub"]
      229 CALL                             R22 3 1
      230 MOVE                             R25 R21
      231 MOVE                             R26 R22
      232 NAMECALL                         R23 R18 K24 ["gsub"]
      234 CALL                             R23 3 2
      235 MOVE                             R16 R23
      236 LOADN                            R25 0
      237 JUMPIFLT                         R25 R24 ; [+2]
      239 LOADB                            R17 0 +1
      240 LOADB                            R17 1
      241 JUMP                             ; [+29]
      242 GETTABLEKS                       R19 R15 K12 ["old_string"]
      244 GETTABLEKS                       R20 R15 K14 ["new_string"]
      246 MOVE                             R23 R19
      247 LOADN                            R24 1
      248 LOADB                            R25 1
      249 NAMECALL                         R21 R18 K27 ["find"]
      251 CALL                             R21 4 2
      252 JUMPIFNOT                        R21 ; [+16]
      253 JUMPIFNOT                        R22 ; [+15]
      254 LOADN                            R29 1
      255 SUBK                             R30 R21 K18 [1]
      256 NAMECALL                         R27 R18 K28 ["sub"]
      258 CALL                             R27 3 1
      259 MOVE                             R24 R27
      260 MOVE                             R25 R20
      261 ADDK                             R28 R22 K18 [1]
      262 NAMECALL                         R26 R18 K28 ["sub"]
      264 CALL                             R26 2 1
      265 CONCAT                           R23 R24 R26
      266 MOVE                             R16 R23
      267 LOADB                            R17 1
      268 JUMP                             ; [+2]
      269 MOVE                             R16 R18
      270 LOADB                            R17 0
      271 GETTABLEKS                       R18 R15 K21 ["replace_all"]
      273 JUMPIF                           R18 ; [+5]
      274 JUMPIF                           R17 ; [+4]
      275 GETIMPORT                        R18 K2 [error]
      277 LOADK                            R19 K30 ["Validation failed during apply - target text not found"]
      278 CALL                             R18 1 0
      279 MOVE                             R8 R16
      280 FORGLOOP                         R11 2 ; [-69]
      282 GETUPVAL                         R11 3
      283 LOADB                            R13 0
      284 NAMECALL                         R11 R11 K31 ["GenerateGUID"]
      286 CALL                             R11 2 1
      287 GETUPVAL                         R12 2
      288 GETTABLEKS                       R12 R12 K32 ["startRecording"]
      290 MOVE                             R13 R11
      291 CALL                             R12 1 0
      292 GETIMPORT                        R12 K34 [pcall]
      294 NEWCLOSURE                       R13 P0
      295 CAPTURE                          VAL R4
      296 CAPTURE                          UPVAL U2
      297 CAPTURE                          REF R5
      298 CAPTURE                          REF R8
      299 CAPTURE                          VAL R3
      300 CAPTURE                          UPVAL U4
      301 CAPTURE                          REF R6
      302 CALL                             R12 1 2
      303 GETUPVAL                         R14 2
      304 GETTABLEKS                       R14 R14 K35 ["endRecording"]
      306 MOVE                             R15 R11
      307 CALL                             R14 1 0
      308 JUMPIFNOT                        R12 ; [+23]
      309 JUMPIFNOT                        R6 ; [+2]
      310 LOADK                            R14 K36 ["Created"]
      311 JUMP                             ; [+1]
      312 LOADK                            R14 K37 ["Modified"]
      313 LENGTH                           R16 R1
      314 JUMPIFNOT                        R9 ; [+2]
      315 LOADN                            R17 1
      316 JUMP                             ; [+1]
      317 LOADN                            R17 0
      318 ADD                              R15 R16 R17
      319 LOADK                            R17 K38 ["%* %* (%*) with %* edits applied"]
      320 MOVE                             R19 R14
      321 GETTABLEKS                       R20 R5 K39 ["Name"]
      323 GETTABLEKS                       R21 R5 K10 ["ClassName"]
      325 MOVE                             R22 R15
      326 NAMECALL                         R17 R17 K20 ["format"]
      328 CALL                             R17 5 1
      329 MOVE                             R16 R17
      330 CLOSEUPVALS                      R5
      331 RETURN                           R16 1
      332 GETIMPORT                        R14 K2 [error]
      334 MOVE                             R15 R13
      335 CALL                             R14 1 0
      336 CLOSEUPVALS                      R5
      337 RETURN                           R0 0

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
       12 LOADB                            R4 1
       13 GETUPVAL                         R5 1
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+7]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K2 ["getIsEvaluationRunning"]
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 LOADB                            R4 0
       22 JUMP                             ; [+11]
       23 GETUPVAL                         R5 3
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+3]
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADB                            R4 0
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K3 ["shouldUseDiffView"]
       32 CALL                             R5 0 1
       33 MOVE                             R4 R5
       34 GETUPVAL                         R5 5
       35 MOVE                             R6 R3
       36 MOVE                             R7 R0
       37 ORK                              R8 R1 K4 ["none"]
       38 MOVE                             R9 R4
       39 CALL                             R5 4 1
       40 GETUPVAL                         R6 6
       41 CALL                             R6 0 1
       42 MOVE                             R8 R5
       43 NAMECALL                         R6 R6 K5 ["addText"]
       45 CALL                             R6 2 1
       46 NAMECALL                         R6 R6 K6 ["build"]
       48 CALL                             R6 1 -1
       49 RETURN                           R6 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldShowConfirmation"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 DUPTABLE                         R1 K3 [{"shouldConfirm", "confirmationType"}]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["shouldConfirm"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["ConfirmationType"]
       12 GETTABLEKS                       R2 R2 K5 ["ScriptChange"]
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
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 LOADK                            R6 K2 ["MultiEditTool_performEdit"]
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R3
       15 NAMECALL                         R4 R1 K3 ["OnHostInvokeAsync"]
       17 CALL                             R4 3 1
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U3
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
       41 DUPTABLE                         R9 K12 [{"type", "description"}]
       42 LOADK                            R10 K13 ["string"]
       43 SETTABLEKS                       R10 R9 K10 ["type"]
       45 LOADK                            R10 K14 ["The dot-notation path of the script (e.g., 'game.ServerScriptService.MyScript'). Will be created if it doesn't exist."]
       46 SETTABLEKS                       R10 R9 K11 ["description"]
       48 NAMECALL                         R6 R6 K15 ["addArgument"]
       50 CALL                             R6 3 1
       51 LOADK                            R8 K16 ["edits"]
       52 DUPTABLE                         R9 K18 [{"type", "description", "items"}]
       53 LOADK                            R10 K19 ["array"]
       54 SETTABLEKS                       R10 R9 K10 ["type"]
       56 LOADK                            R10 K20 ["An array of edit operations. For new scripts, first edit can have empty old_string to set initial content."]
       57 SETTABLEKS                       R10 R9 K11 ["description"]
       59 DUPTABLE                         R10 K23 [{"type", "properties", "required"}]
       60 LOADK                            R11 K24 ["object"]
       61 SETTABLEKS                       R11 R10 K10 ["type"]
       63 DUPTABLE                         R11 K28 [{"old_string", "new_string", "replace_all"}]
       64 DUPTABLE                         R12 K12 [{"type", "description"}]
       65 LOADK                            R13 K13 ["string"]
       66 SETTABLEKS                       R13 R12 K10 ["type"]
       68 LOADK                            R13 K29 ["The text to replace (must match exactly). Use empty string for new script initial content."]
       69 SETTABLEKS                       R13 R12 K11 ["description"]
       71 SETTABLEKS                       R12 R11 K25 ["old_string"]
       73 DUPTABLE                         R12 K12 [{"type", "description"}]
       74 LOADK                            R13 K13 ["string"]
       75 SETTABLEKS                       R13 R12 K10 ["type"]
       77 LOADK                            R13 K30 ["The text to replace it with (must be different from old_string)"]
       78 SETTABLEKS                       R13 R12 K11 ["description"]
       80 SETTABLEKS                       R12 R11 K26 ["new_string"]
       82 DUPTABLE                         R12 K12 [{"type", "description"}]
       83 LOADK                            R13 K31 ["boolean"]
       84 SETTABLEKS                       R13 R12 K10 ["type"]
       86 LOADK                            R13 K32 ["Replace all occurrences of old_string (optional, defaults to false)"]
       87 SETTABLEKS                       R13 R12 K11 ["description"]
       89 SETTABLEKS                       R12 R11 K27 ["replace_all"]
       91 SETTABLEKS                       R11 R10 K21 ["properties"]
       93 NEWTABLE                         R11 0 2
       95 LOADK                            R12 K25 ["old_string"]
       96 LOADK                            R13 K26 ["new_string"]
       97 SETLIST                          R11 R12 2 [1]
       99 SETTABLEKS                       R11 R10 K22 ["required"]
      101 SETTABLEKS                       R10 R9 K17 ["items"]
      103 NAMECALL                         R6 R6 K15 ["addArgument"]
      105 CALL                             R6 3 1
      106 LOADK                            R8 K33 ["className"]
      107 DUPTABLE                         R9 K12 [{"type", "description"}]
      108 LOADK                            R10 K13 ["string"]
      109 SETTABLEKS                       R10 R9 K10 ["type"]
      111 LOADK                            R10 K34 ["The class name of the script to create (e.g., 'Script', 'LocalScript', 'ModuleScript'). Required only when creating new scripts, leave empty if script already exists."]
      112 SETTABLEKS                       R10 R9 K11 ["description"]
      114 NAMECALL                         R6 R6 K35 ["addOptionalArgument"]
      116 CALL                             R6 3 1
      117 DUPTABLE                         R8 K41 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      118 LOADK                            R9 K42 ["Multi-Edit"]
      119 SETTABLEKS                       R9 R8 K36 ["title"]
      121 LOADB                            R9 0
      122 SETTABLEKS                       R9 R8 K37 ["readOnlyHint"]
      124 LOADB                            R9 0
      125 SETTABLEKS                       R9 R8 K38 ["destructiveHint"]
      127 LOADB                            R9 0
      128 SETTABLEKS                       R9 R8 K39 ["idempotentHint"]
      130 LOADB                            R9 0
      131 SETTABLEKS                       R9 R8 K40 ["openWorldHint"]
      133 NAMECALL                         R6 R6 K43 ["setAnnotations"]
      135 CALL                             R6 2 1
      136 MOVE                             R8 R5
      137 NAMECALL                         R6 R6 K44 ["setHandler"]
      139 CALL                             R6 2 1
      140 NAMECALL                         R6 R6 K45 ["build"]
      142 CALL                             R6 1 1
      143 DUPTABLE                         R7 K50 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      144 GETUPVAL                         R9 4
      145 CALL                             R9 0 1
      146 JUMPIFNOT                        R9 ; [+10]
      147 NEWTABLE                         R8 0 1
      149 GETUPVAL                         R9 5
      150 GETTABLEKS                       R9 R9 K51 ["Types"]
      152 GETTABLEKS                       R9 R9 K52 ["Edit"]
      154 SETLIST                          R8 R9 1 [1]
      156 JUMPIF                           R8 ; [+1]
      157 LOADNIL                          R8
      158 SETTABLEKS                       R8 R7 K46 ["availableDataModelTypes"]
      160 SETTABLEKS                       R6 R7 K47 ["definition"]
      162 DUPCLOSURE                       R8 K53 [PROTO_11]
      163 CAPTURE                          UPVAL U8
      164 CAPTURE                          UPVAL U12
      165 SETTABLEKS                       R8 R7 K48 ["getPreExecuteWarning"]
      167 DUPCLOSURE                       R8 K54 [PROTO_12]
      168 CAPTURE                          UPVAL U13
      169 SETTABLEKS                       R8 R7 K49 ["displayNameFunction"]
      171 RETURN                           R7 1

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
       75 GETTABLEKS                       R11 R11 K25 ["FFlagAssistantEval"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K24 ["Flags"]
       82 GETTABLEKS                       R12 R12 K26 ["FFlagAssistantMultiEditExternalClient"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K24 ["Flags"]
       89 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantMultiEditValidateBeforeCreate"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R14 R0 K24 ["Flags"]
       96 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantTestModeToolArgPatch"]
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R14 R4 K10 ["Util"]
      101 GETTABLEKS                       R14 R14 K29 ["ToolBuilder"]
      103 GETTABLEKS                       R15 R4 K10 ["Util"]
      105 GETTABLEKS                       R15 R15 K30 ["ToolResult"]
      107 GETTABLEKS                       R16 R6 K31 ["ToolNames"]
      109 DUPCLOSURE                       R17 K32 [PROTO_0]
      110 DUPCLOSURE                       R18 K33 [PROTO_1]
      111 DUPCLOSURE                       R19 K34 [PROTO_2]
      112 DUPCLOSURE                       R20 K35 [PROTO_3]
      113 DUPCLOSURE                       R21 K36 [PROTO_4]
      114 DUPCLOSURE                       R22 K37 [PROTO_5]
      115 DUPCLOSURE                       R23 K38 [PROTO_6]
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R22
      118 DUPCLOSURE                       R24 K39 [PROTO_13]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R8
      133 RETURN                           R24 1
