PROTO_0:
        0 DUPTABLE                         R0 K11 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K6 ["slots"]
        5 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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
       23 GETTABLEKS                       R3 R2 K6 ["onInsertComplete"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R2 K6 ["onInsertComplete"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["updateSession"]
        6 GETTABLEKS                       R4 R0 K1 ["uniqueId"]
        8 LOADK                            R6 K2 ["GeneratingTexture"]
        9 LOADNIL                          R7
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R6
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R7
       17 CAPTURE                          UPVAL U3
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K4 [pcall]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R0
       25 CALL                             R3 1 2
       26 JUMPIFNOT                        R3 ; [+13]
       27 FASTCALL1                        TYPEOF R4 ; [+3]
       28 MOVE                             R6 R4
       29 GETIMPORT                        R5 K6 [typeof]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+7]
       34 GETTABLEKS                       R5 R4 K8 ["ok"]
       36 JUMPIFNOT                        R5 ; [+3]
       37 GETTABLEKS                       R5 R4 K9 ["seedImageBase64"]
       39 JUMPIF                           R5 ; [+17]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R5 R5 K0 ["updateSession"]
       43 GETTABLEKS                       R6 R0 K1 ["uniqueId"]
       45 LOADK                            R8 K10 ["Failed"]
       46 LOADK                            R9 K11 ["Seed capture failed"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R8
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R9
       54 CAPTURE                          UPVAL U3
       55 CALL                             R5 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R5 5
       58 GETIMPORT                        R7 K14 [buffer.fromstring]
       60 GETTABLEKS                       R8 R4 K9 ["seedImageBase64"]
       62 CALL                             R7 1 -1
       63 NAMECALL                         R5 R5 K15 ["Base64Decode"]
       65 CALL                             R5 -1 1
       66 GETUPVAL                         R6 6
       67 GETUPVAL                         R7 6
       68 ADDK                             R7 R7 K16 [1]
       69 SETUPVAL                         R7 6
       70 GETUPVAL                         R8 7
       71 GETTABLEKS                       R8 R8 K17 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
       73 CALL                             R8 0 1
       74 JUMPIFNOT                        R8 ; [+10]
       75 GETUPVAL                         R7 8
       76 GETTABLEKS                       R7 R7 K18 ["apply"]
       78 GETUPVAL                         R8 7
       79 GETTABLEKS                       R8 R8 K19 ["getFStringTextureGenImageGenPromptTemplate"]
       81 CALL                             R8 0 1
       82 MOVE                             R9 R1
       83 CALL                             R7 2 1
       84 JUMP                             ; [+1]
       85 MOVE                             R7 R1
       86 GETUPVAL                         R8 9
       87 DUPTABLE                         R9 K28 [{["textPrompt"], ["model"], ["seedImage"], ["seed"], ["pollIntervalSeconds"] = 2, ["timeoutSeconds"] = 180}]
       88 SETTABLEKS                       R7 R9 K20 ["textPrompt"]
       90 GETUPVAL                         R10 7
       91 GETTABLEKS                       R10 R10 K29 ["getFStringAssistantTextureGenImageGenModelOverride"]
       93 CALL                             R10 0 1
       94 SETTABLEKS                       R10 R9 K21 ["model"]
       96 SETTABLEKS                       R5 R9 K22 ["seedImage"]
       98 SETTABLEKS                       R6 R9 K23 ["seed"]
      100 CALL                             R8 1 1
      101 GETTABLEKS                       R9 R8 K30 ["imageContent"]
      103 JUMPIFNOTEQKNIL                  R9 ; [+35]
      105 GETTABLEKS                       R10 R8 K32 ["errorMessage"]
      107 ORK                              R9 R10 K31 ["Image generation failed"]
      108 GETUPVAL                         R10 1
      109 GETTABLEKS                       R10 R10 K0 ["updateSession"]
      111 GETTABLEKS                       R11 R0 K1 ["uniqueId"]
      113 LOADK                            R13 K10 ["Failed"]
      114 NEWCLOSURE                       R12 P0
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R13
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R9
      121 CAPTURE                          UPVAL U3
      122 CALL                             R10 2 0
      123 GETUPVAL                         R10 0
      124 GETUPVAL                         R12 4
      125 GETTABLEKS                       R12 R12 K33 ["ImagePreviewGenerationComplete"]
      127 LOADNIL                          R13
      128 DUPTABLE                         R14 K36 [{["uniqueId"], ["hasUsableImages"] = False, ["errorMessage"]}]
      129 GETTABLEKS                       R15 R0 K1 ["uniqueId"]
      131 SETTABLEKS                       R15 R14 K1 ["uniqueId"]
      133 SETTABLEKS                       R9 R14 K32 ["errorMessage"]
      135 NAMECALL                         R10 R10 K37 ["FireHost"]
      137 CALL                             R10 4 0
      138 RETURN                           R0 0
      139 GETTABLEKS                       R9 R8 K30 ["imageContent"]
      141 GETUPVAL                         R10 0
      142 GETUPVAL                         R12 4
      143 GETTABLEKS                       R12 R12 K38 ["PickImageAndGenerateTexture"]
      145 LOADNIL                          R13
      146 DUPTABLE                         R14 K45 [{["requestId"], ["slotIndex"] = 1, ["imageBase64"], ["mimeType"], ["prompt"], ["selectedUniqueId"], ["model"]}]
      147 GETTABLEKS                       R15 R0 K39 ["requestId"]
      149 SETTABLEKS                       R15 R14 K39 ["requestId"]
      151 GETTABLEKS                       R15 R9 K46 ["data"]
      153 SETTABLEKS                       R15 R14 K41 ["imageBase64"]
      155 GETTABLEKS                       R16 R9 K42 ["mimeType"]
      157 ORK                              R15 R16 K47 ["image/png"]
      158 SETTABLEKS                       R15 R14 K42 ["mimeType"]
      160 SETTABLEKS                       R1 R14 K43 ["prompt"]
      162 GETTABLEKS                       R15 R0 K1 ["uniqueId"]
      164 SETTABLEKS                       R15 R14 K44 ["selectedUniqueId"]
      166 SETTABLEKS                       R2 R14 K21 ["model"]
      168 NAMECALL                         R10 R10 K37 ["FireHost"]
      170 CALL                             R10 4 0
      171 GETUPVAL                         R10 10
      172 GETTABLEKS                       R11 R0 K39 ["requestId"]
      174 LOADK                            R12 K48 ["onTextureComplete"]
      175 LOADN                            R13 300
      176 CALL                             R10 3 1
      177 GETTABLEKS                       R11 R10 K8 ["ok"]
      179 JUMPIF                           R11 ; [+19]
      180 GETTABLEKS                       R12 R10 K32 ["errorMessage"]
      182 ORK                              R11 R12 K49 ["Texture generation failed"]
      183 GETUPVAL                         R12 1
      184 GETTABLEKS                       R12 R12 K0 ["updateSession"]
      186 GETTABLEKS                       R13 R0 K1 ["uniqueId"]
      188 LOADK                            R15 K10 ["Failed"]
      189 NEWCLOSURE                       R14 P0
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R15
      192 CAPTURE                          UPVAL U2
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R11
      196 CAPTURE                          UPVAL U3
      197 CALL                             R12 2 0
      198 RETURN                           R0 0
      199 GETUPVAL                         R11 1
      200 GETTABLEKS                       R11 R11 K0 ["updateSession"]
      202 GETTABLEKS                       R12 R0 K1 ["uniqueId"]
      204 LOADK                            R14 K50 ["Inserting"]
      205 LOADNIL                          R15
      206 NEWCLOSURE                       R13 P0
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R14
      209 CAPTURE                          UPVAL U2
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R15
      213 CAPTURE                          UPVAL U3
      214 CALL                             R11 2 0
      215 GETUPVAL                         R11 0
      216 GETUPVAL                         R13 4
      217 GETTABLEKS                       R13 R13 K51 ["InsertTexturedModel"]
      219 LOADNIL                          R14
      220 DUPTABLE                         R15 K52 [{"requestId"}]
      221 GETTABLEKS                       R16 R0 K39 ["requestId"]
      223 SETTABLEKS                       R16 R15 K39 ["requestId"]
      225 NAMECALL                         R11 R11 K37 ["FireHost"]
      227 CALL                             R11 4 0
      228 GETUPVAL                         R11 10
      229 GETTABLEKS                       R12 R0 K39 ["requestId"]
      231 LOADK                            R13 K53 ["onInsertComplete"]
      232 LOADN                            R14 120
      233 CALL                             R11 3 1
      234 GETTABLEKS                       R12 R11 K8 ["ok"]
      236 JUMPIFNOT                        R12 ; [+17]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R12 R12 K0 ["updateSession"]
      240 GETTABLEKS                       R13 R0 K1 ["uniqueId"]
      242 LOADK                            R15 K54 ["Idle"]
      243 LOADNIL                          R16
      244 NEWCLOSURE                       R14 P0
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R15
      247 CAPTURE                          UPVAL U2
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R16
      251 CAPTURE                          UPVAL U3
      252 CALL                             R12 2 0
      253 RETURN                           R0 0
      254 GETTABLEKS                       R13 R11 K32 ["errorMessage"]
      256 ORK                              R12 R13 K55 ["Insertion failed"]
      257 GETUPVAL                         R13 1
      258 GETTABLEKS                       R13 R13 K0 ["updateSession"]
      260 GETTABLEKS                       R14 R0 K1 ["uniqueId"]
      262 LOADK                            R16 K10 ["Failed"]
      263 NEWCLOSURE                       R15 P0
      264 CAPTURE                          VAL R0
      265 CAPTURE                          VAL R16
      266 CAPTURE                          UPVAL U2
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R12
      270 CAPTURE                          UPVAL U3
      271 CALL                             R13 2 0
      272 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PrepareBatchGeneration"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K1 ["InvokeHostAsync"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["job"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_14:
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
      109 CALL                             R4 3 0
      110 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        4 RETURN                           R0 0
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["Constants"]
       10 GETTABLEKS                       R2 R2 K2 ["DEFAULT_TEXTURE_GEN_MODEL"]
       12 GETUPVAL                         R3 2
       13 LOADB                            R5 0
       14 NAMECALL                         R3 R3 K3 ["GenerateGUID"]
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K6 [task.spawn]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R2
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 OR                               R4 R0 R3
        8 MOVE                             R5 R1
        9 JUMPIF                           R5 ; [+3]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K1 ["generateAsync"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["useRef"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R7
       30 NEWTABLE                         R10 0 1
       32 MOVE                             R11 R2
       33 SETLIST                          R10 R11 1 [1]
       35 CALL                             R8 2 0
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          VAL R7
       38 NEWCLOSURE                       R9 P3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R8
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       53 NEWCLOSURE                       R11 P4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R9
       59 NEWTABLE                         R12 0 1
       61 MOVE                             R13 R2
       62 SETLIST                          R12 R13 1 [1]
       64 CALL                             R10 2 1
       65 DUPTABLE                         R11 K6 [{"startBatch"}]
       66 SETTABLEKS                       R10 R11 K5 ["startBatch"]
       68 RETURN                           R11 1

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
       64 GETTABLEKS                       R9 R9 K22 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K23 ["useGenerationSessions"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Packages"]
       73 GETTABLEKS                       R10 R10 K24 ["Gen3dCore"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Packages"]
       80 GETTABLEKS                       R11 R11 K25 ["_Index"]
       82 GETTABLEKS                       R11 R11 K26 ["AssistantUI"]
       84 GETTABLEKS                       R11 R11 K26 ["AssistantUI"]
       86 GETTABLEKS                       R11 R11 K27 ["Util"]
       88 GETTABLEKS                       R11 R11 K28 ["Gen3dUtils"]
       90 GETTABLEKS                       R11 R11 K29 ["SingleImageGenerator"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Packages"]
       97 GETTABLEKS                       R12 R12 K25 ["_Index"]
       99 GETTABLEKS                       R12 R12 K26 ["AssistantUI"]
      101 GETTABLEKS                       R12 R12 K26 ["AssistantUI"]
      103 GETTABLEKS                       R12 R12 K27 ["Util"]
      105 GETTABLEKS                       R12 R12 K28 ["Gen3dUtils"]
      107 GETTABLEKS                       R12 R12 K30 ["PromptTemplate"]
      109 CALL                             R11 1 1
      110 LOADN                            R12 1
      111 DUPCLOSURE                       R13 K31 [PROTO_0]
      112 NEWCLOSURE                       R14 P1
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R3
      121 CAPTURE                          REF R12
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R2
      125 CLOSEUPVALS                      R12
      126 RETURN                           R14 1
