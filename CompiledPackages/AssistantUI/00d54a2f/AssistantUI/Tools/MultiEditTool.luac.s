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
       24 GETUPVAL                         R2 5
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R1 R2 K5 ["sessionId"]
       29 JUMP                             ; [+1]
       30 LOADK                            R1 K4 [""]
       31 GETUPVAL                         R2 6
       32 CALL                             R2 0 1
       33 JUMPIFNOT                        R2 ; [+8]
       34 JUMPIFEQKNIL                     R0 ; [+3]
       36 JUMPIFNOTEQKNIL                  R1 ; [+5]
       38 GETIMPORT                        R2 K7 [error]
       40 LOADK                            R3 K8 ["Internal client call missing required meta fields: sessionId or messageGuid"]
       41 CALL                             R2 1 0
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K0 ["tools"]
       45 GETTABLEKS                       R3 R4 K1 ["multiEdit"]
       47 GETTABLEKS                       R2 R3 K9 ["updateScriptSourceAsync"]
       49 DUPTABLE                         R3 K16 [{"conversationId", "requestId", "instanceId", "script", "source", "isNewScript"}]
       50 SETTABLEKS                       R1 R3 K10 ["conversationId"]
       52 SETTABLEKS                       R0 R3 K11 ["requestId"]
       54 LOADK                            R4 K4 [""]
       55 SETTABLEKS                       R4 R3 K12 ["instanceId"]
       57 GETUPVAL                         R4 3
       58 SETTABLEKS                       R4 R3 K13 ["script"]
       60 GETUPVAL                         R4 4
       61 SETTABLEKS                       R4 R3 K14 ["source"]
       63 GETUPVAL                         R4 7
       64 SETTABLEKS                       R4 R3 K15 ["isNewScript"]
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

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
      271 CAPTURE                          UPVAL U4
      272 CAPTURE                          VAL R6
      273 CALL                             R12 1 2
      274 GETUPVAL                         R15 1
      275 GETTABLEKS                       R14 R15 K34 ["endRecording"]
      277 MOVE                             R15 R11
      278 CALL                             R14 1 0
      279 JUMPIFNOT                        R12 ; [+23]
      280 JUMPIFNOT                        R6 ; [+2]
      281 LOADK                            R14 K35 ["Created"]
      282 JUMP                             ; [+1]
      283 LOADK                            R14 K36 ["Modified"]
      284 LENGTH                           R16 R1
      285 JUMPIFNOT                        R9 ; [+2]
      286 LOADN                            R17 1
      287 JUMP                             ; [+1]
      288 LOADN                            R17 0
      289 ADD                              R15 R16 R17
      290 LOADK                            R17 K37 ["%* %* (%*) with %* edits applied"]
      291 MOVE                             R19 R14
      292 GETTABLEKS                       R20 R5 K38 ["Name"]
      294 GETTABLEKS                       R21 R5 K9 ["ClassName"]
      296 MOVE                             R22 R15
      297 NAMECALL                         R17 R17 K19 ["format"]
      299 CALL                             R17 5 1
      300 MOVE                             R16 R17
      301 CLOSEUPVALS                      R8
      302 RETURN                           R16 1
      303 GETIMPORT                        R14 K2 [error]
      305 MOVE                             R15 R13
      306 CALL                             R14 1 0
      307 CLOSEUPVALS                      R8
      308 RETURN                           R0 0

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
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        4 LOADB                            R3 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+3]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R3 0
       10 JUMP                             ; [+8]
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K1 ["shouldUseDiffView"]
       17 CALL                             R4 0 1
       18 MOVE                             R3 R4
       19 GETUPVAL                         R4 3
       20 LOADNIL                          R5
       21 MOVE                             R6 R0
       22 ORK                              R7 R1 K2 ["none"]
       23 MOVE                             R8 R3
       24 CALL                             R4 4 1
       25 GETUPVAL                         R5 4
       26 CALL                             R5 0 1
       27 MOVE                             R7 R4
       28 NAMECALL                         R5 R5 K3 ["addText"]
       30 CALL                             R5 2 1
       31 NAMECALL                         R5 R5 K4 ["build"]
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1

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
        9 CAPTURE                          UPVAL U3
       10 LOADK                            R6 K2 ["MultiEditTool_performEdit"]
       11 NEWCLOSURE                       R7 P1
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
      122 DUPTABLE                         R7 K41 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
      123 SETTABLEKS                       R6 R7 K38 ["definition"]
      125 GETUPVAL                         R9 2
      126 CALL                             R9 0 1
      127 JUMPIFNOT                        R9 ; [+4]
      128 DUPCLOSURE                       R8 K42 [PROTO_11]
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          UPVAL U10
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K39 ["getPreExecuteWarning"]
      135 DUPCLOSURE                       R8 K43 [PROTO_12]
      136 CAPTURE                          UPVAL U11
      137 SETTABLEKS                       R8 R7 K40 ["displayNameFunction"]
      139 RETURN                           R7 1

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
       66 GETTABLEKS                       R10 R11 K23 ["FFlagAssistantMultiEditExternalClient"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Flags"]
       73 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantTestAutomation"]
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
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 RETURN                           R22 1
