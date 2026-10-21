PROTO_0:
        0 DUPTABLE                         R0 K12 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["autoSelectView"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K13 ["getFFlagTextureGenAutoSelectView"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K6 ["autoSelectView"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K7 ["slots"]
       11 RETURN                           R0 1

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
       32 DUPTABLE                         R2 K14 [{["stage"], [2], ["prompt"], ["model"], ["autoSelectView"], ["keepExistingUv"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"], ["failureReason"]}]
       33 GETUPVAL                         R3 1
       34 SETTABLEKS                       R3 R2 K2 ["stage"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K0 ["requestId"]
       39 SETTABLEKS                       R3 R2 K0 ["requestId"]
       41 GETUPVAL                         R3 3
       42 SETTABLEKS                       R3 R2 K5 ["prompt"]
       44 GETUPVAL                         R3 4
       45 SETTABLEKS                       R3 R2 K6 ["model"]
       47 GETTABLEKS                       R3 R0 K7 ["autoSelectView"]
       49 SETTABLEKS                       R3 R2 K7 ["autoSelectView"]
       51 GETTABLEKS                       R3 R0 K8 ["keepExistingUv"]
       53 SETTABLEKS                       R3 R2 K8 ["keepExistingUv"]
       55 NEWTABLE                         R3 0 0
       57 SETTABLEKS                       R3 R2 K9 ["slots"]
       59 GETUPVAL                         R3 5
       60 SETTABLEKS                       R3 R2 K12 ["errorMessage"]
       62 GETUPVAL                         R4 5
       63 JUMPIFNOT                        R4 ; [+8]
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R3 R3 K15 ["GenerationUtils"]
       67 GETTABLEKS                       R3 R3 K16 ["classifyFailureReason"]
       69 GETUPVAL                         R4 5
       70 CALL                             R3 1 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R3
       73 SETTABLEKS                       R3 R2 K13 ["failureReason"]
       75 RETURN                           R2 1

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
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagGen3dTextureGenCancelAbortsJob"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["cancelledRequestIds"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["requestId"]
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOT                        R0 ; [+10]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K1 ["cancelledRequestIds"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K2 ["requestId"]
       21 LOADNIL                          R2
       22 SETTABLE                         R2 R0 R1
       23 LOADB                            R0 1
       24 RETURN                           R0 1
       25 LOADB                            R0 0
       26 RETURN                           R0 1

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K0 ["resolveWirePrompt"]
       10 MOVE                             R6 R1
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K1 ["updateSession"]
       15 GETTABLEKS                       R7 R0 K2 ["uniqueId"]
       17 LOADK                            R9 K3 ["GeneratingTexture"]
       18 LOADNIL                          R10
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R9
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R10
       26 CAPTURE                          UPVAL U5
       27 CALL                             R6 2 0
       28 GETIMPORT                        R6 K5 [pcall]
       30 NEWCLOSURE                       R7 P2
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R0
       34 CALL                             R6 1 2
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K6 ["getFFlagGen3dTextureGenCancelAbortsJob"]
       38 CALL                             R9 0 1
       39 JUMPIF                           R9 ; [+2]
       40 LOADB                            R8 0
       41 JUMP                             ; [+17]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K7 ["cancelledRequestIds"]
       45 GETTABLEKS                       R11 R0 K8 ["requestId"]
       47 GETTABLE                         R9 R10 R11
       48 JUMPIFNOT                        R9 ; [+9]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K7 ["cancelledRequestIds"]
       52 GETTABLEKS                       R10 R0 K8 ["requestId"]
       54 LOADNIL                          R11
       55 SETTABLE                         R11 R9 R10
       56 LOADB                            R8 1
       57 JUMP                             ; [+1]
       58 LOADB                            R8 0
       59 JUMPIFNOT                        R8 ; [+1]
       60 RETURN                           R0 0
       61 JUMPIFNOT                        R6 ; [+13]
       62 FASTCALL1                        TYPEOF R7 ; [+3]
       63 MOVE                             R9 R7
       64 GETIMPORT                        R8 K10 [typeof]
       66 CALL                             R8 1 1
       67 JUMPIFNOTEQKS                    R8 K11 ["table"] ; [+7]
       69 GETTABLEKS                       R8 R7 K12 ["ok"]
       71 JUMPIFNOT                        R8 ; [+3]
       72 GETTABLEKS                       R8 R7 K13 ["seedImageBase64"]
       74 JUMPIF                           R8 ; [+17]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K1 ["updateSession"]
       78 GETTABLEKS                       R9 R0 K2 ["uniqueId"]
       80 LOADK                            R11 K14 ["Failed"]
       81 LOADK                            R12 K15 ["Seed capture failed"]
       82 NEWCLOSURE                       R10 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R11
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R12
       89 CAPTURE                          UPVAL U5
       90 CALL                             R8 2 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R8 7
       93 GETIMPORT                        R10 K18 [buffer.fromstring]
       95 GETTABLEKS                       R11 R7 K13 ["seedImageBase64"]
       97 CALL                             R10 1 -1
       98 NAMECALL                         R8 R8 K19 ["Base64Decode"]
      100 CALL                             R8 -1 1
      101 GETTABLEKS                       R11 R7 K20 ["glbBase64"]
      103 FASTCALL1                        TYPEOF R11 ; [+2]
      104 GETIMPORT                        R10 K10 [typeof]
      106 CALL                             R10 1 1
      107 JUMPIFNOTEQKS                    R10 K21 ["string"] ; [+18]
      109 GETTABLEKS                       R10 R7 K20 ["glbBase64"]
      111 JUMPIFEQKS                       R10 K22 [""] ; [+14]
      113 GETIMPORT                        R9 K24 [buffer.tostring]
      115 GETUPVAL                         R10 7
      116 GETIMPORT                        R12 K18 [buffer.fromstring]
      118 GETTABLEKS                       R13 R7 K20 ["glbBase64"]
      120 CALL                             R12 1 -1
      121 NAMECALL                         R10 R10 K19 ["Base64Decode"]
      123 CALL                             R10 -1 -1
      124 CALL                             R9 -1 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R9
      127 GETUPVAL                         R10 8
      128 GETUPVAL                         R11 8
      129 ADDK                             R11 R11 K25 [1]
      130 SETUPVAL                         R11 8
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K26 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      134 CALL                             R12 0 1
      135 JUMPIFNOT                        R12 ; [+12]
      136 GETUPVAL                         R11 5
      137 GETTABLEKS                       R11 R11 K27 ["PromptTemplate"]
      139 GETTABLEKS                       R11 R11 K28 ["apply"]
      141 GETUPVAL                         R12 1
      142 GETTABLEKS                       R12 R12 K29 ["getFStringTextureGenImageGenPromptTemplate"]
      144 CALL                             R12 0 1
      145 MOVE                             R13 R5
      146 CALL                             R11 2 1
      147 JUMP                             ; [+1]
      148 MOVE                             R11 R5
      149 GETUPVAL                         R12 9
      150 DUPTABLE                         R13 K41 [{["textPrompt"], ["model"], ["seedImage"], ["extraImages"], ["seed"], ["timeoutSeconds"] = 180, ["glb"], ["assetId"], ["autoSelectView"] = True}]
      151 SETTABLEKS                       R11 R13 K30 ["textPrompt"]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R14 R14 K42 ["getFStringAssistantTextureGenImageGenModelOverride"]
      156 CALL                             R14 0 1
      157 SETTABLEKS                       R14 R13 K31 ["model"]
      159 SETTABLEKS                       R8 R13 K32 ["seedImage"]
      161 SETTABLEKS                       R3 R13 K33 ["extraImages"]
      163 SETTABLEKS                       R10 R13 K34 ["seed"]
      165 SETTABLEKS                       R9 R13 K37 ["glb"]
      167 GETTABLEKS                       R16 R7 K38 ["assetId"]
      169 FASTCALL1                        TYPEOF R16 ; [+2]
      170 GETIMPORT                        R15 K10 [typeof]
      172 CALL                             R15 1 1
      173 JUMPIFNOTEQKS                    R15 K43 ["number"] ; [+4]
      175 GETTABLEKS                       R14 R7 K38 ["assetId"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R14
      179 SETTABLEKS                       R14 R13 K38 ["assetId"]
      181 CALL                             R12 1 1
      182 GETUPVAL                         R14 1
      183 GETTABLEKS                       R14 R14 K6 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      185 CALL                             R14 0 1
      186 JUMPIF                           R14 ; [+2]
      187 LOADB                            R13 0
      188 JUMP                             ; [+17]
      189 GETUPVAL                         R15 2
      190 GETTABLEKS                       R15 R15 K7 ["cancelledRequestIds"]
      192 GETTABLEKS                       R16 R0 K8 ["requestId"]
      194 GETTABLE                         R14 R15 R16
      195 JUMPIFNOT                        R14 ; [+9]
      196 GETUPVAL                         R14 2
      197 GETTABLEKS                       R14 R14 K7 ["cancelledRequestIds"]
      199 GETTABLEKS                       R15 R0 K8 ["requestId"]
      201 LOADNIL                          R16
      202 SETTABLE                         R16 R14 R15
      203 LOADB                            R13 1
      204 JUMP                             ; [+1]
      205 LOADB                            R13 0
      206 JUMPIFNOT                        R13 ; [+1]
      207 RETURN                           R0 0
      208 GETTABLEKS                       R13 R12 K44 ["imageContent"]
      210 JUMPIFNOTEQKNIL                  R13 ; [+35]
      212 GETTABLEKS                       R14 R12 K46 ["errorMessage"]
      214 ORK                              R13 R14 K45 ["Image generation failed"]
      215 GETUPVAL                         R14 2
      216 GETTABLEKS                       R14 R14 K1 ["updateSession"]
      218 GETTABLEKS                       R15 R0 K2 ["uniqueId"]
      220 LOADK                            R17 K14 ["Failed"]
      221 NEWCLOSURE                       R16 P1
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R17
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R13
      228 CAPTURE                          UPVAL U5
      229 CALL                             R14 2 0
      230 GETUPVAL                         R14 0
      231 GETUPVAL                         R16 6
      232 GETTABLEKS                       R16 R16 K47 ["ImagePreviewGenerationComplete"]
      234 LOADNIL                          R17
      235 DUPTABLE                         R18 K50 [{["uniqueId"], ["hasUsableImages"] = False, ["errorMessage"]}]
      236 GETTABLEKS                       R19 R0 K2 ["uniqueId"]
      238 SETTABLEKS                       R19 R18 K2 ["uniqueId"]
      240 SETTABLEKS                       R13 R18 K46 ["errorMessage"]
      242 NAMECALL                         R14 R14 K51 ["FireHost"]
      244 CALL                             R14 4 0
      245 RETURN                           R0 0
      246 GETTABLEKS                       R13 R12 K44 ["imageContent"]
      248 GETUPVAL                         R14 0
      249 GETUPVAL                         R16 6
      250 GETTABLEKS                       R16 R16 K52 ["PickImageAndGenerateTexture"]
      252 LOADNIL                          R17
      253 DUPTABLE                         R18 K61 [{["requestId"], ["slotIndex"] = 1, ["imageBase64"], ["mimeType"], ["prompt"], ["selectedUniqueId"], ["model"], ["cameraExtrinsic"], ["cameraIntrinsic"], ["texturePreviewReference"], ["autoSelectView"] = True}]
      254 GETTABLEKS                       R19 R0 K8 ["requestId"]
      256 SETTABLEKS                       R19 R18 K8 ["requestId"]
      258 GETTABLEKS                       R19 R13 K62 ["data"]
      260 SETTABLEKS                       R19 R18 K54 ["imageBase64"]
      262 GETTABLEKS                       R20 R13 K55 ["mimeType"]
      264 ORK                              R19 R20 K63 ["image/png"]
      265 SETTABLEKS                       R19 R18 K55 ["mimeType"]
      267 SETTABLEKS                       R5 R18 K56 ["prompt"]
      269 GETTABLEKS                       R19 R0 K2 ["uniqueId"]
      271 SETTABLEKS                       R19 R18 K57 ["selectedUniqueId"]
      273 SETTABLEKS                       R2 R18 K31 ["model"]
      275 GETTABLEKS                       R19 R12 K58 ["cameraExtrinsic"]
      277 SETTABLEKS                       R19 R18 K58 ["cameraExtrinsic"]
      279 GETTABLEKS                       R19 R12 K59 ["cameraIntrinsic"]
      281 SETTABLEKS                       R19 R18 K59 ["cameraIntrinsic"]
      283 GETTABLEKS                       R19 R12 K60 ["texturePreviewReference"]
      285 SETTABLEKS                       R19 R18 K60 ["texturePreviewReference"]
      287 NAMECALL                         R14 R14 K51 ["FireHost"]
      289 CALL                             R14 4 0
      290 GETUPVAL                         R14 10
      291 GETTABLEKS                       R15 R0 K8 ["requestId"]
      293 LOADK                            R16 K64 ["onTextureComplete"]
      294 LOADN                            R17 300
      295 CALL                             R14 3 1
      296 GETUPVAL                         R16 1
      297 GETTABLEKS                       R16 R16 K6 ["getFFlagGen3dTextureGenCancelAbortsJob"]
      299 CALL                             R16 0 1
      300 JUMPIF                           R16 ; [+2]
      301 LOADB                            R15 0
      302 JUMP                             ; [+17]
      303 GETUPVAL                         R17 2
      304 GETTABLEKS                       R17 R17 K7 ["cancelledRequestIds"]
      306 GETTABLEKS                       R18 R0 K8 ["requestId"]
      308 GETTABLE                         R16 R17 R18
      309 JUMPIFNOT                        R16 ; [+9]
      310 GETUPVAL                         R16 2
      311 GETTABLEKS                       R16 R16 K7 ["cancelledRequestIds"]
      313 GETTABLEKS                       R17 R0 K8 ["requestId"]
      315 LOADNIL                          R18
      316 SETTABLE                         R18 R16 R17
      317 LOADB                            R15 1
      318 JUMP                             ; [+1]
      319 LOADB                            R15 0
      320 JUMPIFNOT                        R15 ; [+1]
      321 RETURN                           R0 0
      322 GETTABLEKS                       R15 R14 K12 ["ok"]
      324 JUMPIF                           R15 ; [+19]
      325 GETTABLEKS                       R16 R14 K46 ["errorMessage"]
      327 ORK                              R15 R16 K65 ["Texture generation failed"]
      328 GETUPVAL                         R16 2
      329 GETTABLEKS                       R16 R16 K1 ["updateSession"]
      331 GETTABLEKS                       R17 R0 K2 ["uniqueId"]
      333 LOADK                            R19 K14 ["Failed"]
      334 NEWCLOSURE                       R18 P1
      335 CAPTURE                          VAL R0
      336 CAPTURE                          VAL R19
      337 CAPTURE                          UPVAL U4
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R15
      341 CAPTURE                          UPVAL U5
      342 CALL                             R16 2 0
      343 RETURN                           R0 0
      344 GETUPVAL                         R15 2
      345 GETTABLEKS                       R15 R15 K1 ["updateSession"]
      347 GETTABLEKS                       R16 R0 K2 ["uniqueId"]
      349 LOADK                            R18 K66 ["Inserting"]
      350 LOADNIL                          R19
      351 NEWCLOSURE                       R17 P1
      352 CAPTURE                          VAL R0
      353 CAPTURE                          VAL R18
      354 CAPTURE                          UPVAL U4
      355 CAPTURE                          VAL R1
      356 CAPTURE                          VAL R2
      357 CAPTURE                          VAL R19
      358 CAPTURE                          UPVAL U5
      359 CALL                             R15 2 0
      360 GETUPVAL                         R15 0
      361 GETUPVAL                         R17 6
      362 GETTABLEKS                       R17 R17 K67 ["InsertTexturedModel"]
      364 LOADNIL                          R18
      365 DUPTABLE                         R19 K68 [{"requestId"}]
      366 GETTABLEKS                       R20 R0 K8 ["requestId"]
      368 SETTABLEKS                       R20 R19 K8 ["requestId"]
      370 NAMECALL                         R15 R15 K51 ["FireHost"]
      372 CALL                             R15 4 0
      373 GETUPVAL                         R15 10
      374 GETTABLEKS                       R16 R0 K8 ["requestId"]
      376 LOADK                            R17 K69 ["onInsertComplete"]
      377 LOADN                            R18 120
      378 CALL                             R15 3 1
      379 GETTABLEKS                       R16 R15 K12 ["ok"]
      381 JUMPIFNOT                        R16 ; [+17]
      382 GETUPVAL                         R16 2
      383 GETTABLEKS                       R16 R16 K1 ["updateSession"]
      385 GETTABLEKS                       R17 R0 K2 ["uniqueId"]
      387 LOADK                            R19 K70 ["Idle"]
      388 LOADNIL                          R20
      389 NEWCLOSURE                       R18 P1
      390 CAPTURE                          VAL R0
      391 CAPTURE                          VAL R19
      392 CAPTURE                          UPVAL U4
      393 CAPTURE                          VAL R1
      394 CAPTURE                          VAL R2
      395 CAPTURE                          VAL R20
      396 CAPTURE                          UPVAL U5
      397 CALL                             R16 2 0
      398 RETURN                           R0 0
      399 GETTABLEKS                       R17 R15 K46 ["errorMessage"]
      401 ORK                              R16 R17 K71 ["Insertion failed"]
      402 GETUPVAL                         R17 2
      403 GETTABLEKS                       R17 R17 K1 ["updateSession"]
      405 GETTABLEKS                       R18 R0 K2 ["uniqueId"]
      407 LOADK                            R20 K14 ["Failed"]
      408 NEWCLOSURE                       R19 P1
      409 CAPTURE                          VAL R0
      410 CAPTURE                          VAL R20
      411 CAPTURE                          UPVAL U4
      412 CAPTURE                          VAL R1
      413 CAPTURE                          VAL R2
      414 CAPTURE                          VAL R16
      415 CAPTURE                          UPVAL U5
      416 CALL                             R17 2 0
      417 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PrepareBatchGeneration"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K1 ["InvokeHostAsync"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["job"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 GETUPVAL                         R6 3
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R8
       50 NEWCLOSURE                       R10 P5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R9
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       60 MOVE                             R12 R10
       61 NEWTABLE                         R13 0 1
       63 MOVE                             R14 R2
       64 SETLIST                          R13 R14 1 [1]
       66 CALL                             R11 2 1
       67 DUPTABLE                         R12 K6 [{"startBatch"}]
       68 SETTABLEKS                       R11 R12 K5 ["startBatch"]
       70 RETURN                           R12 1

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
       94 LOADN                            R12 1
       95 DUPCLOSURE                       R13 K29 [PROTO_0]
       96 CAPTURE                          VAL R7
       97 NEWCLOSURE                       R14 P1
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R3
      108 CAPTURE                          REF R12
      109 CAPTURE                          VAL R2
      110 CLOSEUPVALS                      R12
      111 RETURN                           R14 1
