PROTO_0:
        0 DUPTABLE                         R0 K11 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K6 ["slots"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ImageSelectionOps"]
        3 GETTABLEKS                       R1 R1 K1 ["generateOneAsync"]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["requestId"]
        3 JUMPIFEQKS                       R2 K1 [""] ; [+20]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K0 ["requestId"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["requestId"]
       11 JUMPIFEQ                         R2 R3 ; [+12]
       13 LOADB                            R1 0
       14 GETTABLEKS                       R2 R0 K2 ["stage"]
       16 JUMPIFEQKS                       R2 K3 ["Idle"] ; [+7]
       18 GETTABLEKS                       R2 R0 K2 ["stage"]
       20 JUMPIFNOTEQKS                    R2 K4 ["Failed"] ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R1 ; [+1]
       25 RETURN                           R0 1
       26 GETUPVAL                         R2 1
       27 JUMPIFNOTEQKS                    R2 K3 ["Idle"] ; [+4]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 RETURN                           R2 1
       32 DUPTABLE                         R2 K12 [{["stage"], [2], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"], ["failureReason"]}]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K2 ["stage"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K0 ["requestId"]
       39 SETTABLEKS                       R3 R2 K0 ["requestId"]
       41 GETUPVAL                         R3 3
       42 SETTABLEKS                       R3 R2 K5 ["prompt"]
       44 GETUPVAL                         R3 4
       45 SETTABLEKS                       R3 R2 K6 ["model"]
       47 NEWTABLE                         R3 0 0
       49 SETTABLEKS                       R3 R2 K7 ["slots"]
       51 GETUPVAL                         R3 5
       52 SETTABLEKS                       R3 R2 K10 ["errorMessage"]
       54 GETUPVAL                         R4 5
       55 JUMPIFNOT                        R4 ; [+8]
       56 GETUPVAL                         R3 6
       57 GETTABLEKS                       R3 R3 K13 ["GenerationUtils"]
       59 GETTABLEKS                       R3 R3 K14 ["classifyFailureReason"]
       61 GETUPVAL                         R4 5
       62 CALL                             R3 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R3
       65 SETTABLEKS                       R3 R2 K11 ["failureReason"]
       67 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["updateSession"]
        3 GETTABLEKS                       R6 R0 K1 ["uniqueId"]
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U2
       13 CALL                             R5 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["current"]
       19 GETTABLEKS                       R4 R1 K3 ["requestId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETTABLEKS                       R3 R2 K6 ["onTextureComplete"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R2 K6 ["onTextureComplete"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["current"]
       19 GETTABLEKS                       R4 R1 K3 ["requestId"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETTABLEKS                       R3 R2 K6 ["onInsertComplete"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R2 K6 ["onInsertComplete"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["TextureGenerationComplete"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       11 CALL                             R0 3 2
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["InsertComplete"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       20 CALL                             R2 3 2
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K0 ["Fire"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R3 0
        1 DUPTABLE                         R4 K4 [{[1] = False, ["errorMessage"] = "timeout"}]
        2 GETIMPORT                        R5 K7 [Instance.new]
        4 LOADK                            R6 K8 ["BindableEvent"]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K9 ["current"]
        9 GETTABLE                         R6 R7 R0
       10 JUMPIF                           R6 ; [+6]
       11 NEWTABLE                         R6 0 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K9 ["current"]
       16 SETTABLE                         R6 R7 R0
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R5
       21 SETTABLE                         R7 R6 R1
       22 GETIMPORT                        R7 K12 [task.delay]
       24 MOVE                             R8 R2
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R3
       27 CAPTURE                          VAL R5
       28 CALL                             R7 2 0
       29 GETTABLEKS                       R7 R5 K13 ["Event"]
       31 NAMECALL                         R7 R7 K14 ["Wait"]
       33 CALL                             R7 1 0
       34 NAMECALL                         R7 R5 K15 ["Destroy"]
       36 CALL                             R7 1 0
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K9 ["current"]
       40 GETTABLE                         R7 R8 R0
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K9 ["current"]
       45 GETTABLE                         R7 R8 R0
       46 LOADNIL                          R8
       47 SETTABLE                         R8 R7 R1
       48 CLOSEUPVALS                      R3
       49 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GetJobSeed"]
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K2 [{"uniqueId"}]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["uniqueId"]
        9 SETTABLEKS                       R5 R4 K1 ["uniqueId"]
       11 NAMECALL                         R0 R0 K3 ["InvokeHostAsync"]
       13 CALL                             R0 4 -1
       14 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["resolveWirePrompt"]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["updateSession"]
       11 GETTABLEKS                       R6 R0 K2 ["uniqueId"]
       13 LOADK                            R8 K3 ["GeneratingTexture"]
       14 LOADNIL                          R9
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R8
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R9
       22 CAPTURE                          UPVAL U4
       23 CALL                             R5 2 0
       24 GETIMPORT                        R5 K5 [pcall]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 CALL                             R5 1 2
       31 JUMPIFNOT                        R5 ; [+13]
       32 FASTCALL1                        TYPEOF R6 ; [+3]
       33 MOVE                             R8 R6
       34 GETIMPORT                        R7 K7 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKS                    R7 K8 ["table"] ; [+7]
       39 GETTABLEKS                       R7 R6 K9 ["ok"]
       41 JUMPIFNOT                        R7 ; [+3]
       42 GETTABLEKS                       R7 R6 K10 ["seedImageBase64"]
       44 JUMPIF                           R7 ; [+17]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K1 ["updateSession"]
       48 GETTABLEKS                       R8 R0 K2 ["uniqueId"]
       50 LOADK                            R10 K11 ["Failed"]
       51 LOADK                            R11 K12 ["Seed capture failed"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R10
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R11
       59 CAPTURE                          UPVAL U4
       60 CALL                             R7 2 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R7 6
       63 GETIMPORT                        R9 K15 [buffer.fromstring]
       65 GETTABLEKS                       R10 R6 K10 ["seedImageBase64"]
       67 CALL                             R9 1 -1
       68 NAMECALL                         R7 R7 K16 ["Base64Decode"]
       70 CALL                             R7 -1 1
       71 GETUPVAL                         R8 7
       72 GETUPVAL                         R9 7
       73 ADDK                             R9 R9 K17 [1]
       74 SETUPVAL                         R9 7
       75 GETUPVAL                         R10 8
       76 GETTABLEKS                       R10 R10 K18 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+10]
       80 GETUPVAL                         R9 9
       81 GETTABLEKS                       R9 R9 K19 ["apply"]
       83 GETUPVAL                         R10 8
       84 GETTABLEKS                       R10 R10 K20 ["getFStringTextureGenImageGenPromptTemplate"]
       86 CALL                             R10 0 1
       87 MOVE                             R11 R4
       88 CALL                             R9 2 1
       89 JUMP                             ; [+1]
       90 MOVE                             R9 R4
       91 GETUPVAL                         R10 10
       92 DUPTABLE                         R11 K30 [{["textPrompt"], ["model"], ["seedImage"], ["extraImages"], ["seed"], ["pollIntervalSeconds"] = 2, ["timeoutSeconds"] = 180}]
       93 SETTABLEKS                       R9 R11 K21 ["textPrompt"]
       95 GETUPVAL                         R12 8
       96 GETTABLEKS                       R12 R12 K31 ["getFStringAssistantTextureGenImageGenModelOverride"]
       98 CALL                             R12 0 1
       99 SETTABLEKS                       R12 R11 K22 ["model"]
      101 SETTABLEKS                       R7 R11 K23 ["seedImage"]
      103 SETTABLEKS                       R3 R11 K24 ["extraImages"]
      105 SETTABLEKS                       R8 R11 K25 ["seed"]
      107 CALL                             R10 1 1
      108 GETTABLEKS                       R11 R10 K32 ["imageContent"]
      110 JUMPIFNOTEQKNIL                  R11 ; [+35]
      112 GETTABLEKS                       R12 R10 K34 ["errorMessage"]
      114 ORK                              R11 R12 K33 ["Image generation failed"]
      115 GETUPVAL                         R12 2
      116 GETTABLEKS                       R12 R12 K1 ["updateSession"]
      118 GETTABLEKS                       R13 R0 K2 ["uniqueId"]
      120 LOADK                            R15 K11 ["Failed"]
      121 NEWCLOSURE                       R14 P0
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R15
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R11
      128 CAPTURE                          UPVAL U4
      129 CALL                             R12 2 0
      130 GETUPVAL                         R12 0
      131 GETUPVAL                         R14 5
      132 GETTABLEKS                       R14 R14 K35 ["ImagePreviewGenerationComplete"]
      134 LOADNIL                          R15
      135 DUPTABLE                         R16 K38 [{["uniqueId"], ["hasUsableImages"] = False, ["errorMessage"]}]
      136 GETTABLEKS                       R17 R0 K2 ["uniqueId"]
      138 SETTABLEKS                       R17 R16 K2 ["uniqueId"]
      140 SETTABLEKS                       R11 R16 K34 ["errorMessage"]
      142 NAMECALL                         R12 R12 K39 ["FireHost"]
      144 CALL                             R12 4 0
      145 RETURN                           R0 0
      146 GETTABLEKS                       R11 R10 K32 ["imageContent"]
      148 GETUPVAL                         R12 0
      149 GETUPVAL                         R14 5
      150 GETTABLEKS                       R14 R14 K40 ["PickImageAndGenerateTexture"]
      152 LOADNIL                          R15
      153 DUPTABLE                         R16 K47 [{["requestId"], ["slotIndex"] = 1, ["imageBase64"], ["mimeType"], ["prompt"], ["selectedUniqueId"], ["model"]}]
      154 GETTABLEKS                       R17 R0 K41 ["requestId"]
      156 SETTABLEKS                       R17 R16 K41 ["requestId"]
      158 GETTABLEKS                       R17 R11 K48 ["data"]
      160 SETTABLEKS                       R17 R16 K43 ["imageBase64"]
      162 GETTABLEKS                       R18 R11 K44 ["mimeType"]
      164 ORK                              R17 R18 K49 ["image/png"]
      165 SETTABLEKS                       R17 R16 K44 ["mimeType"]
      167 SETTABLEKS                       R4 R16 K45 ["prompt"]
      169 GETTABLEKS                       R17 R0 K2 ["uniqueId"]
      171 SETTABLEKS                       R17 R16 K46 ["selectedUniqueId"]
      173 SETTABLEKS                       R2 R16 K22 ["model"]
      175 NAMECALL                         R12 R12 K39 ["FireHost"]
      177 CALL                             R12 4 0
      178 GETUPVAL                         R12 11
      179 GETTABLEKS                       R13 R0 K41 ["requestId"]
      181 LOADK                            R14 K50 ["onTextureComplete"]
      182 LOADN                            R15 300
      183 CALL                             R12 3 1
      184 GETTABLEKS                       R13 R12 K9 ["ok"]
      186 JUMPIF                           R13 ; [+19]
      187 GETTABLEKS                       R14 R12 K34 ["errorMessage"]
      189 ORK                              R13 R14 K51 ["Texture generation failed"]
      190 GETUPVAL                         R14 2
      191 GETTABLEKS                       R14 R14 K1 ["updateSession"]
      193 GETTABLEKS                       R15 R0 K2 ["uniqueId"]
      195 LOADK                            R17 K11 ["Failed"]
      196 NEWCLOSURE                       R16 P0
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R17
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R13
      203 CAPTURE                          UPVAL U4
      204 CALL                             R14 2 0
      205 RETURN                           R0 0
      206 GETUPVAL                         R13 2
      207 GETTABLEKS                       R13 R13 K1 ["updateSession"]
      209 GETTABLEKS                       R14 R0 K2 ["uniqueId"]
      211 LOADK                            R16 K52 ["Inserting"]
      212 LOADNIL                          R17
      213 NEWCLOSURE                       R15 P0
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R16
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R17
      220 CAPTURE                          UPVAL U4
      221 CALL                             R13 2 0
      222 GETUPVAL                         R13 0
      223 GETUPVAL                         R15 5
      224 GETTABLEKS                       R15 R15 K53 ["InsertTexturedModel"]
      226 LOADNIL                          R16
      227 DUPTABLE                         R17 K54 [{"requestId"}]
      228 GETTABLEKS                       R18 R0 K41 ["requestId"]
      230 SETTABLEKS                       R18 R17 K41 ["requestId"]
      232 NAMECALL                         R13 R13 K39 ["FireHost"]
      234 CALL                             R13 4 0
      235 GETUPVAL                         R13 11
      236 GETTABLEKS                       R14 R0 K41 ["requestId"]
      238 LOADK                            R15 K55 ["onInsertComplete"]
      239 LOADN                            R16 120
      240 CALL                             R13 3 1
      241 GETTABLEKS                       R14 R13 K9 ["ok"]
      243 JUMPIFNOT                        R14 ; [+17]
      244 GETUPVAL                         R14 2
      245 GETTABLEKS                       R14 R14 K1 ["updateSession"]
      247 GETTABLEKS                       R15 R0 K2 ["uniqueId"]
      249 LOADK                            R17 K56 ["Idle"]
      250 LOADNIL                          R18
      251 NEWCLOSURE                       R16 P0
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R17
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R18
      258 CAPTURE                          UPVAL U4
      259 CALL                             R14 2 0
      260 RETURN                           R0 0
      261 GETTABLEKS                       R15 R13 K34 ["errorMessage"]
      263 ORK                              R14 R15 K57 ["Insertion failed"]
      264 GETUPVAL                         R15 2
      265 GETTABLEKS                       R15 R15 K1 ["updateSession"]
      267 GETTABLEKS                       R16 R0 K2 ["uniqueId"]
      269 LOADK                            R18 K11 ["Failed"]
      270 NEWCLOSURE                       R17 P0
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R18
      273 CAPTURE                          UPVAL U3
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R2
      276 CAPTURE                          VAL R14
      277 CAPTURE                          UPVAL U4
      278 CALL                             R15 2 0
      279 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PrepareBatchGeneration"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K1 ["InvokeHostAsync"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["job"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 GETUPVAL                         R6 3
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+10]
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K3 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+4]
       15 GETTABLEKS                       R2 R1 K5 ["ok"]
       17 JUMPIF                           R2 ; [+26]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K3 [typeof]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+5]
       25 GETTABLEKS                       R3 R1 K7 ["errorMessage"]
       27 ORK                              R2 R3 K6 ["Host batch prepare failed"]
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K9 [tostring]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K11 [warn]
       36 GETIMPORT                        R4 K14 [string.format]
       38 LOADK                            R5 K15 ["[Gen3d][Guest] batch prepare failed id=%s: %s"]
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R2
       41 CALL                             R4 3 -1
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R2 R1 K16 ["jobs"]
       46 FASTCALL1                        TYPEOF R2 ; [+3]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K3 [typeof]
       50 CALL                             R3 1 1
       51 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+4]
       53 LENGTH                           R3 R2
       54 JUMPIFNOTEQKN                    R3 K17 [0] ; [+10]
       56 GETIMPORT                        R3 K11 [warn]
       58 GETIMPORT                        R4 K14 [string.format]
       60 LOADK                            R5 K18 ["[Gen3d][Guest] batch prepare returned no jobs id=%s"]
       61 GETUPVAL                         R6 3
       62 CALL                             R4 2 -1
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0
       65 NEWTABLE                         R3 0 0
       67 MOVE                             R4 R2
       68 LOADNIL                          R5
       69 LOADNIL                          R6
       70 FORGPREP                         R4
       71 DUPTABLE                         R9 K22 [{"requestId", "uniqueId", "displayName"}]
       72 GETUPVAL                         R10 4
       73 LOADB                            R12 0
       74 NAMECALL                         R10 R10 K23 ["GenerateGUID"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K19 ["requestId"]
       79 GETTABLEKS                       R10 R8 K20 ["uniqueId"]
       81 SETTABLEKS                       R10 R9 K20 ["uniqueId"]
       83 GETTABLEKS                       R10 R8 K21 ["displayName"]
       85 SETTABLEKS                       R10 R9 K21 ["displayName"]
       87 DUPTABLE                         R12 K25 [{"job"}]
       88 SETTABLEKS                       R9 R12 K24 ["job"]
       90 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       92 MOVE                             R11 R3
       93 GETIMPORT                        R10 K27 [table.insert]
       95 CALL                             R10 2 0
       96 FORGLOOP                         R4 2 ; [-26]
       98 GETUPVAL                         R4 5
       99 GETTABLEKS                       R4 R4 K28 ["GenerationUtils"]
      101 GETTABLEKS                       R4 R4 K29 ["runWithConcurrencyAsync"]
      103 MOVE                             R5 R3
      104 LOADN                            R6 3
      105 NEWCLOSURE                       R7 P1
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          UPVAL U8
      110 CALL                             R4 3 0
      111 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+4]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+5]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["Constants"]
       12 GETTABLEKS                       R3 R3 K2 ["DEFAULT_TEXTURE_GEN_MODEL"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["toImageGenEntries"]
       17 MOVE                             R5 R2
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 LOADB                            R7 0
       21 NAMECALL                         R5 R5 K4 ["GenerateGUID"]
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K7 [task.spawn]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CALL                             R6 1 0
       37 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 OR                               R4 R0 R3
        8 MOVE                             R5 R1
        9 JUMPIF                           R5 ; [+3]
       10 DUPCLOSURE                       R5 K1 [PROTO_1]
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U3
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["useRef"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       26 NEWCLOSURE                       R9 P2
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R7
       30 NEWTABLE                         R10 0 1
       32 MOVE                             R11 R2
       33 SETLIST                          R10 R11 1 [1]
       35 CALL                             R8 2 0
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          VAL R7
       38 NEWCLOSURE                       R9 P4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R8
       51 NEWCLOSURE                       R10 P5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R9
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       61 MOVE                             R12 R10
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R2
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 1
       68 DUPTABLE                         R12 K6 [{"startBatch"}]
       69 SETTABLEKS                       R11 R12 K5 ["startBatch"]
       71 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["EncodingService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K16 ["NetworkingContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Networking"]
       48 GETTABLEKS                       R7 R7 K18 ["Events"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K19 ["Bin"]
       55 GETTABLEKS                       R8 R8 K20 ["Common"]
       57 GETTABLEKS                       R8 R8 K21 ["defineLuaFlags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Src"]
       64 GETTABLEKS                       R9 R9 K22 ["Util"]
       66 GETTABLEKS                       R9 R9 K23 ["ReferenceImageUtil"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K13 ["Src"]
       73 GETTABLEKS                       R10 R10 K24 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K25 ["useGenerationSessions"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Packages"]
       82 GETTABLEKS                       R11 R11 K26 ["Gen3dCore"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K13 ["Src"]
       89 GETTABLEKS                       R12 R12 K27 ["Guest"]
       91 GETTABLEKS                       R12 R12 K28 ["buildImageSelectionServices"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Packages"]
       98 GETTABLEKS                       R13 R13 K29 ["_Index"]
      100 GETTABLEKS                       R13 R13 K30 ["AssistantUI"]
      102 GETTABLEKS                       R13 R13 K30 ["AssistantUI"]
      104 GETTABLEKS                       R13 R13 K22 ["Util"]
      106 GETTABLEKS                       R13 R13 K31 ["Gen3dUtils"]
      108 GETTABLEKS                       R13 R13 K32 ["PromptTemplate"]
      110 CALL                             R12 1 1
      111 LOADN                            R13 1
      112 DUPCLOSURE                       R14 K33 [PROTO_0]
      113 NEWCLOSURE                       R15 P1
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R3
      123 CAPTURE                          REF R13
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R2
      127 CLOSEUPVALS                      R13
      128 RETURN                           R15 1
