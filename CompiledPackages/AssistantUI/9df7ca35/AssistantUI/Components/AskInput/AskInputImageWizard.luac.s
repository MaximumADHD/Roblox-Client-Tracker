PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [buffer.tostring]
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R4 K5 [buffer.fromstring]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K6 ["Base64Decode"]
       15 CALL                             R2 -1 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["data"]
        4 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Base64Decode"]
       11 GETUPVAL                         R3 0
       12 GETIMPORT                        R4 K5 [buffer.fromstring]
       14 GETTABLEKS                       R5 R0 K0 ["data"]
       16 CALL                             R4 1 -1
       17 FASTPCALL                        pcall 2 ; [+2]
       18 GETIMPORT                        R1 K7 [pcall]
       20 CALL                             R1 -1 2
       21 JUMPIF                           R1 ; [+2]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETTABLEKS                       R4 R0 K8 ["mimeType"]
       26 JUMPIFEQKNIL                     R4 ; [+8]
       28 GETTABLEKS                       R4 R0 K8 ["mimeType"]
       30 JUMPIFEQKS                       R4 K1 [""] ; [+4]
       32 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       34 JUMP                             ; [+1]
       35 LOADK                            R3 K9 ["image/png"]
       36 NEWTABLE                         R4 0 1
       38 DUPTABLE                         R5 K13 [{"name", "content", "contentType"}]
       39 JUMPIFNOTEQKS                    R3 K14 ["image/jpeg"] ; [+3]
       41 LOADK                            R6 K15 ["image_2.jpg"]
       42 JUMP                             ; [+1]
       43 LOADK                            R6 K16 ["image_2.png"]
       44 SETTABLEKS                       R6 R5 K10 ["name"]
       46 SETTABLEKS                       R2 R5 K11 ["content"]
       48 SETTABLEKS                       R3 R5 K12 ["contentType"]
       50 SETLIST                          R4 R5 1 [1]
       52 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["mapControllerSlotsToWidget"]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 -1
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETTABLE                         R5 R0 R2
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLE                         R4 R0 R2
       12 GETTABLEKS                       R4 R4 K1 ["thumbnailTempId"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["segmentationFold"]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["resolveAsync"]
        9 MOVE                             R3 R1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["current"]
       13 GETUPVAL                         R5 0
       14 CALL                             R2 3 1
       15 MOVE                             R0 R2
       16 GETUPVAL                         R2 4
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K3 ["resolveSeedImageFromSelectedInstance"]
       25 JUMPIFNOT                        R5 ; [+77]
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K2 ["current"]
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R6 R6 K4 ["Configs"]
       32 GETTABLEKS                       R6 R6 K5 ["TextureGen"]
       34 GETTABLEKS                       R6 R6 K6 ["row"]
       36 GETTABLEKS                       R6 R6 K7 ["SelectedInstanceRef"]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K2 ["current"]
       41 GETTABLE                         R7 R8 R6
       42 JUMPIFEQKNIL                     R5 ; [+60]
       44 JUMPIFEQKNIL                     R7 ; [+58]
       46 GETTABLEKS                       R4 R7 K8 ["uniqueId"]
       48 LOADNIL                          R8
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K9 ["useTexturePreview"]
       52 JUMPIFNOT                        R9 ; [+18]
       53 GETTABLEKS                       R10 R5 K10 ["prepareTexturePreviewAsync"]
       55 DUPTABLE                         R11 K12 [{"selectedUniqueId"}]
       56 GETTABLEKS                       R12 R7 K8 ["uniqueId"]
       58 SETTABLEKS                       R12 R11 K11 ["selectedUniqueId"]
       60 FASTPCALL                        pcall 2 ; [+2]
       61 GETIMPORT                        R9 K14 [pcall]
       63 CALL                             R9 2 2
       64 JUMPIFNOT                        R9 ; [+22]
       65 JUMPIFEQKNIL                     R10 ; [+21]
       67 MOVE                             R3 R10
       68 GETTABLEKS                       R8 R10 K15 ["seedImageBase64"]
       70 JUMP                             ; [+16]
       71 GETTABLEKS                       R10 R5 K16 ["captureSourceInstanceImageAsync"]
       73 DUPTABLE                         R11 K12 [{"selectedUniqueId"}]
       74 GETTABLEKS                       R12 R7 K8 ["uniqueId"]
       76 SETTABLEKS                       R12 R11 K11 ["selectedUniqueId"]
       78 FASTPCALL                        pcall 2 ; [+2]
       79 GETIMPORT                        R9 K14 [pcall]
       81 CALL                             R9 2 2
       82 JUMPIFNOT                        R9 ; [+4]
       83 JUMPIFEQKNIL                     R10 ; [+3]
       85 GETTABLEKS                       R8 R10 K17 ["imageBase64"]
       87 JUMPIFEQKNIL                     R8 ; [+15]
       89 GETUPVAL                         R10 7
       90 GETTABLEKS                       R10 R10 K18 ["Base64Decode"]
       92 GETUPVAL                         R11 7
       93 GETIMPORT                        R12 K21 [buffer.fromstring]
       95 MOVE                             R13 R8
       96 CALL                             R12 1 -1
       97 FASTPCALL                        pcall 2 ; [+2]
       98 GETIMPORT                        R9 K14 [pcall]
      100 CALL                             R9 -1 2
      101 JUMPIFNOT                        R9 ; [+1]
      102 MOVE                             R2 R10
      103 GETUPVAL                         R5 4
      104 JUMPIFNOT                        R5 ; [+1]
      105 RETURN                           R0 0
      106 GETUPVAL                         R5 8
      107 GETUPVAL                         R6 9
      108 GETTABLEKS                       R6 R6 K2 ["current"]
      110 CALL                             R5 1 1
      111 JUMPIFNOTEQKS                    R0 K22 [""] ; [+8]
      113 JUMPIFNOTEQKNIL                  R5 ; [+6]
      115 GETUPVAL                         R6 10
      116 GETTABLEKS                       R6 R6 K2 ["current"]
      118 CALL                             R6 0 0
      119 RETURN                           R0 0
      120 GETUPVAL                         R6 11
      121 GETTABLEKS                       R6 R6 K23 ["new"]
      123 DUPTABLE                         R7 K35 [{"textPrompt", "slotCount", "model", "seedImage", "extraImages", "glb", "assetId", "cameraExtrinsic", "cameraIntrinsic", "autoSelectView", "onSlotsUpdated"}]
      124 SETTABLEKS                       R0 R7 K24 ["textPrompt"]
      126 GETUPVAL                         R8 1
      127 GETTABLEKS                       R8 R8 K25 ["slotCount"]
      129 SETTABLEKS                       R8 R7 K25 ["slotCount"]
      131 GETUPVAL                         R8 1
      132 GETTABLEKS                       R8 R8 K26 ["model"]
      134 SETTABLEKS                       R8 R7 K26 ["model"]
      136 SETTABLEKS                       R2 R7 K27 ["seedImage"]
      138 SETTABLEKS                       R5 R7 K28 ["extraImages"]
      140 JUMPIFNOT                        R3 ; [+21]
      141 GETTABLEKS                       R9 R3 K36 ["glbBase64"]
      143 JUMPIFEQKNIL                     R9 ; [+3]
      145 JUMPIFNOTEQKS                    R9 K22 [""] ; [+3]
      147 LOADNIL                          R8
      148 JUMP                             ; [+14]
      149 GETIMPORT                        R10 K38 [buffer.tostring]
      151 GETUPVAL                         R11 7
      152 GETIMPORT                        R13 K21 [buffer.fromstring]
      154 MOVE                             R14 R9
      155 CALL                             R13 1 -1
      156 NAMECALL                         R11 R11 K18 ["Base64Decode"]
      158 CALL                             R11 -1 -1
      159 CALL                             R10 -1 1
      160 MOVE                             R8 R10
      161 JUMP                             ; [+1]
      162 LOADNIL                          R8
      163 SETTABLEKS                       R8 R7 K29 ["glb"]
      165 JUMPIFNOT                        R3 ; [+3]
      166 GETTABLEKS                       R8 R3 K30 ["assetId"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R8
      170 SETTABLEKS                       R8 R7 K30 ["assetId"]
      172 JUMPIFNOT                        R3 ; [+3]
      173 GETTABLEKS                       R8 R3 K31 ["cameraExtrinsic"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R8
      177 SETTABLEKS                       R8 R7 K31 ["cameraExtrinsic"]
      179 JUMPIFNOT                        R3 ; [+3]
      180 GETTABLEKS                       R8 R3 K32 ["cameraIntrinsic"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R8
      184 SETTABLEKS                       R8 R7 K32 ["cameraIntrinsic"]
      186 LOADB                            R8 0
      187 GETUPVAL                         R9 1
      188 GETTABLEKS                       R9 R9 K39 ["autoSelectViewField"]
      190 JUMPIFEQKNIL                     R9 ; [+12]
      192 GETUPVAL                         R10 3
      193 GETTABLEKS                       R10 R10 K2 ["current"]
      195 GETUPVAL                         R11 1
      196 GETTABLEKS                       R11 R11 K39 ["autoSelectViewField"]
      198 GETTABLE                         R9 R10 R11
      199 JUMPIFEQKB                       R9 TRUE ; [+2]
      201 LOADB                            R8 0 +1
      202 LOADB                            R8 1
      203 SETTABLEKS                       R8 R7 K33 ["autoSelectView"]
      205 NEWCLOSURE                       R8 P0
      206 CAPTURE                          UPVAL U12
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U14
      209 SETTABLEKS                       R8 R7 K34 ["onSlotsUpdated"]
      211 CALL                             R6 1 1
      212 GETUPVAL                         R7 15
      213 SETTABLEKS                       R6 R7 K2 ["current"]
      215 NAMECALL                         R7 R6 K40 ["runAsync"]
      217 CALL                             R7 1 1
      218 GETUPVAL                         R8 15
      219 LOADNIL                          R9
      220 SETTABLEKS                       R9 R8 K2 ["current"]
      222 GETUPVAL                         R8 4
      223 JUMPIFNOT                        R8 ; [+1]
      224 RETURN                           R0 0
      225 GETTABLEKS                       R8 R7 K41 ["cancelled"]
      227 JUMPIFNOT                        R8 ; [+5]
      228 GETUPVAL                         R8 16
      229 GETTABLEKS                       R8 R8 K2 ["current"]
      231 CALL                             R8 0 0
      232 RETURN                           R0 0
      233 GETTABLEKS                       R8 R7 K42 ["errorMessage"]
      235 JUMPIF                           R8 ; [+3]
      236 GETTABLEKS                       R8 R7 K43 ["imageContent"]
      238 JUMPIF                           R8 ; [+5]
      239 GETUPVAL                         R8 10
      240 GETTABLEKS                       R8 R8 K2 ["current"]
      242 CALL                             R8 0 0
      243 RETURN                           R0 0
      244 GETTABLEKS                       R8 R7 K31 ["cameraExtrinsic"]
      246 GETTABLEKS                       R9 R7 K32 ["cameraIntrinsic"]
      248 GETTABLEKS                       R10 R7 K44 ["texturePreviewReference"]
      250 LOADB                            R11 0
      251 JUMPIFEQKNIL                     R8 ; [+5]
      253 JUMPIFNOTEQKNIL                  R9 ; [+2]
      255 LOADB                            R11 0 +1
      256 LOADB                            R11 1
      257 JUMPIFEQKNIL                     R3 ; [+21]
      259 JUMPIFEQKNIL                     R4 ; [+19]
      261 JUMPIF                           R11 ; [+2]
      262 JUMPIFEQKNIL                     R10 ; [+16]
      264 GETUPVAL                         R12 17
      265 GETTABLEKS                       R12 R12 K45 ["attach"]
      267 GETTABLEKS                       R13 R7 K43 ["imageContent"]
      269 DUPTABLE                         R14 K46 [{"selectedUniqueId", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference"}]
      270 SETTABLEKS                       R4 R14 K11 ["selectedUniqueId"]
      272 SETTABLEKS                       R8 R14 K31 ["cameraExtrinsic"]
      274 SETTABLEKS                       R9 R14 K32 ["cameraIntrinsic"]
      276 SETTABLEKS                       R10 R14 K44 ["texturePreviewReference"]
      278 CALL                             R12 2 0
      279 GETUPVAL                         R12 18
      280 GETTABLEKS                       R12 R12 K2 ["current"]
      282 GETTABLEKS                       R13 R7 K43 ["imageContent"]
      284 CALL                             R12 1 0
      285 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 NAMECALL                         R1 R0 K1 ["cancel"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLEKS                       R3 R0 K1 ["promptKey"]
       10 GETTABLE                         R1 R2 R3
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K3 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       18 MOVE                             R2 R1
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K5 [""]
       21 LOADB                            R3 0
       22 GETIMPORT                        R4 K8 [task.spawn]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          REF R3
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U10
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          UPVAL U12
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          UPVAL U14
       42 CAPTURE                          UPVAL U15
       43 CAPTURE                          UPVAL U16
       44 CALL                             R4 1 0
       45 NEWCLOSURE                       R4 P1
       46 CAPTURE                          REF R3
       47 CAPTURE                          UPVAL U13
       48 CLOSEUPVALS                      R3
       49 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R1 K1 ["previewSlot"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["clearPreview"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R3 0
        9 NAMECALL                         R1 R0 K1 ["select"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["cancel"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["refresh"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K2 [{"BackButton", "ConfirmButton"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Gen3d"]
        3 LOADK                            R4 K4 ["Back"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["BackButton"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["InputRequiredWidget"]
       11 LOADK                            R4 K1 ["ConfirmButton"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ConfirmButton"]
       17 RETURN                           R0 1

PROTO_13:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R6 R6 K1 ["Y"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 48
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["current"]
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["current"]
        9 JUMPIFNOT                        R1 ; [+26]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 JUMPIFNOT                        R1 ; [+22]
       14 LOADN                            R3 0
       15 GETTABLEKS                       R5 R1 K3 ["AbsoluteCanvasSize"]
       17 GETTABLEKS                       R5 R5 K1 ["Y"]
       19 GETTABLEKS                       R6 R1 K4 ["AbsoluteSize"]
       21 GETTABLEKS                       R6 R6 K1 ["Y"]
       23 SUB                              R4 R5 R6
       24 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       26 GETIMPORT                        R2 K7 [math.max]
       28 CALL                             R2 2 1
       29 GETIMPORT                        R3 K10 [Vector2.new]
       31 LOADN                            R4 0
       32 MOVE                             R5 R2
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R1 K11 ["CanvasPosition"]
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K2 ["useState"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K2 ["useState"]
       25 LOADN                            R9 0
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K3 ["useRef"]
       30 LOADNIL                          R11
       31 CALL                             R10 1 1
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K3 ["useRef"]
       35 LOADB                            R12 1
       36 CALL                             R11 1 1
       37 GETUPVAL                         R12 2
       38 MOVE                             R13 R10
       39 CALL                             R12 1 1
       40 GETUPVAL                         R14 3
       41 GETTABLEKS                       R14 R14 K4 ["FFlagAssistantScrollableAskInputForm"]
       43 JUMPIFNOT                        R14 ; [+9]
       44 JUMPIFNOT                        R12 ; [+8]
       45 LOADN                            R14 375
       46 FASTCALL2                        MATH_MIN R14 R12 ; [+4]
       48 MOVE                             R15 R12
       49 GETIMPORT                        R13 K7 [math.min]
       51 CALL                             R13 2 1
       52 JUMP                             ; [+1]
       53 LOADN                            R13 375
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R14 R14 K3 ["useRef"]
       57 GETTABLEKS                       R15 R0 K8 ["config"]
       59 CALL                             R14 1 1
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K3 ["useRef"]
       63 LOADNIL                          R16
       64 CALL                             R15 1 1
       65 GETUPVAL                         R16 4
       66 GETTABLEKS                       R17 R0 K9 ["onComplete"]
       68 CALL                             R16 1 1
       69 GETUPVAL                         R17 4
       70 GETTABLEKS                       R18 R0 K10 ["onError"]
       72 CALL                             R17 1 1
       73 GETUPVAL                         R18 4
       74 GETTABLEKS                       R19 R0 K11 ["onBack"]
       76 CALL                             R18 1 1
       77 GETUPVAL                         R19 4
       78 GETTABLEKS                       R20 R0 K12 ["values"]
       80 CALL                             R19 1 1
       81 GETUPVAL                         R20 4
       82 GETTABLEKS                       R21 R0 K13 ["referenceImage"]
       84 CALL                             R20 1 1
       85 GETUPVAL                         R21 1
       86 GETTABLEKS                       R21 R21 K14 ["useContext"]
       88 GETUPVAL                         R22 5
       89 GETTABLEKS                       R22 R22 K15 ["Context"]
       91 CALL                             R21 1 1
       92 GETUPVAL                         R22 4
       93 MOVE                             R23 R21
       94 CALL                             R22 1 1
       95 GETUPVAL                         R23 1
       96 GETTABLEKS                       R23 R23 K16 ["useEffect"]
       98 NEWCLOSURE                       R24 P0
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R19
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          VAL R22
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R17
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          VAL R3
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R18
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R16
      116 NEWTABLE                         R25 0 0
      118 CALL                             R23 2 0
      119 GETUPVAL                         R23 1
      120 GETTABLEKS                       R23 R23 K17 ["useCallback"]
      122 NEWCLOSURE                       R24 P1
      123 CAPTURE                          VAL R7
      124 NEWTABLE                         R25 0 0
      126 CALL                             R23 2 1
      127 GETUPVAL                         R24 1
      128 GETTABLEKS                       R24 R24 K17 ["useCallback"]
      130 NEWCLOSURE                       R25 P2
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R15
      133 NEWTABLE                         R26 0 0
      135 CALL                             R24 2 1
      136 GETUPVAL                         R25 1
      137 GETTABLEKS                       R25 R25 K17 ["useCallback"]
      139 NEWCLOSURE                       R26 P3
      140 CAPTURE                          VAL R15
      141 NEWTABLE                         R27 0 0
      143 CALL                             R25 2 1
      144 GETUPVAL                         R26 1
      145 GETTABLEKS                       R26 R26 K17 ["useCallback"]
      147 NEWCLOSURE                       R27 P4
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R15
      150 NEWTABLE                         R28 0 1
      152 MOVE                             R29 R6
      153 SETLIST                          R28 R29 1 [1]
      155 CALL                             R26 2 1
      156 GETUPVAL                         R27 1
      157 GETTABLEKS                       R27 R27 K17 ["useCallback"]
      159 NEWCLOSURE                       R28 P5
      160 CAPTURE                          VAL R15
      161 NEWTABLE                         R29 0 0
      163 CALL                             R27 2 1
      164 GETUPVAL                         R28 1
      165 GETTABLEKS                       R28 R28 K17 ["useCallback"]
      167 NEWCLOSURE                       R29 P6
      168 CAPTURE                          VAL R15
      169 NEWTABLE                         R30 0 0
      171 CALL                             R28 2 1
      172 GETUPVAL                         R29 1
      173 GETTABLEKS                       R29 R29 K18 ["useMemo"]
      175 DUPCLOSURE                       R30 K19 [PROTO_12]
      176 CAPTURE                          UPVAL U13
      177 NEWTABLE                         R31 0 1
      179 GETUPVAL                         R32 13
      180 GETTABLEKS                       R32 R32 K20 ["locale"]
      182 SETLIST                          R31 R32 1 [1]
      184 CALL                             R29 2 1
      185 GETUPVAL                         R30 1
      186 GETTABLEKS                       R30 R30 K17 ["useCallback"]
      188 NEWCLOSURE                       R31 P8
      189 CAPTURE                          VAL R11
      190 NEWTABLE                         R32 0 0
      192 CALL                             R30 2 1
      193 GETUPVAL                         R31 1
      194 GETTABLEKS                       R31 R31 K17 ["useCallback"]
      196 NEWCLOSURE                       R32 P9
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R10
      200 NEWTABLE                         R33 0 0
      202 CALL                             R31 2 1
      203 JUMPIFNOTEQKNIL                  R4 ; [+2]
      205 LOADB                            R32 0 +1
      206 LOADB                            R32 1
      207 MOVE                             R33 R6
      208 JUMPIFNOT                        R33 ; [+9]
      209 GETTABLE                         R33 R2 R6
      210 JUMPIFNOT                        R33 ; [+7]
      211 GETTABLE                         R34 R2 R6
      212 GETTABLEKS                       R34 R34 K21 ["status"]
      214 JUMPIFEQKS                       R34 K22 ["Ready"] ; [+2]
      216 LOADB                            R33 0 +1
      217 LOADB                            R33 1
      218 GETUPVAL                         R34 14
      219 CALL                             R34 0 1
      220 GETTABLEKS                       R36 R0 K8 ["config"]
      222 GETTABLEKS                       R36 R36 K23 ["wizardMode"]
      224 JUMPIFNOT                        R36 ; [+2]
      225 LOADNIL                          R35
      226 JUMP                             ; [+2]
      227 GETTABLEKS                       R35 R0 K24 ["rows"]
      229 GETUPVAL                         R36 15
      230 GETUPVAL                         R37 16
      231 DUPTABLE                         R38 K28 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      232 GETTABLEKS                       R39 R0 K27 ["LayoutOrder"]
      234 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      236 DUPTABLE                         R39 K30 [{"Content"}]
      237 GETUPVAL                         R40 15
      238 LOADK                            R41 K31 ["ScrollingFrame"]
      239 NEWTABLE                         R42 16 0
      241 GETIMPORT                        R43 K34 [UDim2.new]
      243 LOADN                            R44 1
      244 LOADN                            R45 0
      245 LOADN                            R46 0
      246 FASTCALL2                        MATH_MIN R8 R13 ; [+5]
      248 MOVE                             R48 R8
      249 MOVE                             R49 R13
      250 GETIMPORT                        R47 K7 [math.min]
      252 CALL                             R47 2 1
      253 CALL                             R43 4 1
      254 SETTABLEKS                       R43 R42 K35 ["Size"]
      256 GETIMPORT                        R43 K39 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R43 R42 K40 ["AutomaticCanvasSize"]
      260 GETIMPORT                        R43 K34 [UDim2.new]
      262 LOADN                            R44 0
      263 LOADN                            R45 0
      264 LOADN                            R46 0
      265 LOADN                            R47 0
      266 CALL                             R43 4 1
      267 SETTABLEKS                       R43 R42 K41 ["CanvasSize"]
      269 LOADB                            R43 1
      270 SETTABLEKS                       R43 R42 K42 ["ClipsDescendants"]
      272 GETTABLEKS                       R43 R1 K35 ["Size"]
      274 GETTABLEKS                       R43 R43 K43 ["Size_150"]
      276 SETTABLEKS                       R43 R42 K44 ["ScrollBarThickness"]
      278 GETIMPORT                        R43 K46 [Enum.ScrollingDirection.Y]
      280 SETTABLEKS                       R43 R42 K45 ["ScrollingDirection"]
      282 GETIMPORT                        R43 K49 [Enum.ScrollBarInset.ScrollBar]
      284 SETTABLEKS                       R43 R42 K50 ["VerticalScrollBarInset"]
      286 LOADN                            R43 1
      287 SETTABLEKS                       R43 R42 K51 ["BackgroundTransparency"]
      289 LOADN                            R43 0
      290 SETTABLEKS                       R43 R42 K52 ["BorderSizePixel"]
      292 MOVE                             R43 R34
      293 CALL                             R43 0 1
      294 SETTABLEKS                       R43 R42 K27 ["LayoutOrder"]
      296 SETTABLEKS                       R10 R42 K53 ["ref"]
      298 GETUPVAL                         R43 1
      299 GETTABLEKS                       R43 R43 K54 ["Change"]
      301 GETTABLEKS                       R43 R43 K55 ["CanvasPosition"]
      303 SETTABLE                         R30 R42 R43
      304 DUPTABLE                         R43 K63 [{"Layout", "Padding", "Title", "PropertyRows", "Picker", "ButtonGroup", "PreviewPopover"}]
      305 GETUPVAL                         R44 15
      306 LOADK                            R45 K64 ["UIListLayout"]
      307 NEWTABLE                         R46 4 0
      309 GETIMPORT                        R47 K67 [Enum.FillDirection.Vertical]
      311 SETTABLEKS                       R47 R46 K65 ["FillDirection"]
      313 GETIMPORT                        R47 K69 [Enum.SortOrder.LayoutOrder]
      315 SETTABLEKS                       R47 R46 K68 ["SortOrder"]
      317 GETUPVAL                         R47 1
      318 GETTABLEKS                       R47 R47 K54 ["Change"]
      320 GETTABLEKS                       R47 R47 K70 ["AbsoluteContentSize"]
      322 SETTABLE                         R31 R46 R47
      323 CALL                             R44 2 1
      324 SETTABLEKS                       R44 R43 K56 ["Layout"]
      326 GETUPVAL                         R44 15
      327 LOADK                            R45 K71 ["UIPadding"]
      328 DUPTABLE                         R46 K73 [{"PaddingRight"}]
      329 GETIMPORT                        R47 K75 [UDim.new]
      331 LOADN                            R48 0
      332 GETTABLEKS                       R49 R1 K35 ["Size"]
      334 GETTABLEKS                       R49 R49 K43 ["Size_150"]
      336 CALL                             R47 2 1
      337 SETTABLEKS                       R47 R46 K72 ["PaddingRight"]
      339 CALL                             R44 2 1
      340 SETTABLEKS                       R44 R43 K57 ["Padding"]
      342 LOADB                            R44 0
      343 GETTABLEKS                       R45 R0 K76 ["title"]
      345 JUMPIFEQKNIL                     R45 ; [+13]
      347 GETUPVAL                         R44 15
      348 GETUPVAL                         R45 17
      349 DUPTABLE                         R46 K79 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      350 GETTABLEKS                       R47 R0 K76 ["title"]
      352 SETTABLEKS                       R47 R46 K78 ["Text"]
      354 MOVE                             R47 R34
      355 CALL                             R47 0 1
      356 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      358 CALL                             R44 2 1
      359 SETTABLEKS                       R44 R43 K58 ["Title"]
      361 MOVE                             R44 R35
      362 JUMPIFNOT                        R44 ; [+19]
      363 GETUPVAL                         R44 15
      364 GETUPVAL                         R45 18
      365 GETTABLEKS                       R45 R45 K80 ["PropertyRowsRoot"]
      367 DUPTABLE                         R46 K85 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      368 SETTABLEKS                       R35 R46 K81 ["rowDefinitions"]
      370 GETUPVAL                         R47 19
      371 GETTABLEKS                       R47 R47 K86 ["createUnimplemented"]
      373 LOADK                            R48 K82 ["onChange"]
      374 CALL                             R47 1 1
      375 SETTABLEKS                       R47 R46 K82 ["onChange"]
      377 MOVE                             R47 R34
      378 CALL                             R47 0 1
      379 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      381 CALL                             R44 2 1
      382 SETTABLEKS                       R44 R43 K59 ["PropertyRows"]
      384 GETUPVAL                         R44 15
      385 GETUPVAL                         R45 20
      386 DUPTABLE                         R46 K91 [{"slots", "onSelect", "onPreview", "selectedIndex", "LayoutOrder"}]
      387 SETTABLEKS                       R2 R46 K87 ["slots"]
      389 SETTABLEKS                       R23 R46 K88 ["onSelect"]
      391 SETTABLEKS                       R24 R46 K89 ["onPreview"]
      393 SETTABLEKS                       R6 R46 K90 ["selectedIndex"]
      395 MOVE                             R47 R34
      396 CALL                             R47 0 1
      397 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      399 CALL                             R44 2 1
      400 SETTABLEKS                       R44 R43 K60 ["Picker"]
      402 GETUPVAL                         R44 15
      403 GETUPVAL                         R45 16
      404 DUPTABLE                         R46 K93 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      405 MOVE                             R47 R34
      406 CALL                             R47 0 1
      407 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      409 DUPTABLE                         R47 K97 [{"BackButton", "RefreshButton", "ConfirmButton"}]
      410 GETUPVAL                         R48 15
      411 GETUPVAL                         R49 21
      412 DUPTABLE                         R50 K102 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      413 GETTABLEKS                       R51 R29 K94 ["BackButton"]
      415 SETTABLEKS                       R51 R50 K98 ["text"]
      417 GETUPVAL                         R51 0
      418 GETTABLEKS                       R51 R51 K103 ["Enums"]
      420 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      422 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      424 SETTABLEKS                       R51 R50 K99 ["size"]
      426 GETUPVAL                         R51 0
      427 GETTABLEKS                       R51 R51 K103 ["Enums"]
      429 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      431 GETTABLEKS                       R51 R51 K107 ["Standard"]
      433 SETTABLEKS                       R51 R50 K100 ["variant"]
      435 SETTABLEKS                       R27 R50 K101 ["onActivated"]
      437 MOVE                             R51 R34
      438 CALL                             R51 0 1
      439 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      441 CALL                             R48 2 1
      442 SETTABLEKS                       R48 R47 K94 ["BackButton"]
      444 GETUPVAL                         R48 15
      445 GETUPVAL                         R49 22
      446 DUPTABLE                         R50 K109 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      447 GETUPVAL                         R51 0
      448 GETTABLEKS                       R51 R51 K103 ["Enums"]
      450 GETTABLEKS                       R51 R51 K110 ["IconName"]
      452 GETTABLEKS                       R51 R51 K111 ["TwoArrowsSpinClockwise"]
      454 SETTABLEKS                       R51 R50 K108 ["icon"]
      456 GETUPVAL                         R51 0
      457 GETTABLEKS                       R51 R51 K103 ["Enums"]
      459 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      461 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      463 SETTABLEKS                       R51 R50 K99 ["size"]
      465 GETUPVAL                         R51 0
      466 GETTABLEKS                       R51 R51 K103 ["Enums"]
      468 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      470 GETTABLEKS                       R51 R51 K107 ["Standard"]
      472 SETTABLEKS                       R51 R50 K100 ["variant"]
      474 SETTABLEKS                       R28 R50 K101 ["onActivated"]
      476 MOVE                             R51 R34
      477 CALL                             R51 0 1
      478 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      480 CALL                             R48 2 1
      481 SETTABLEKS                       R48 R47 K95 ["RefreshButton"]
      483 GETUPVAL                         R48 15
      484 GETUPVAL                         R49 21
      485 DUPTABLE                         R50 K112 [{"text", "size", "variant", "onActivated", "isDisabled", "LayoutOrder"}]
      486 GETTABLEKS                       R51 R29 K96 ["ConfirmButton"]
      488 SETTABLEKS                       R51 R50 K98 ["text"]
      490 GETUPVAL                         R51 0
      491 GETTABLEKS                       R51 R51 K103 ["Enums"]
      493 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      495 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      497 SETTABLEKS                       R51 R50 K99 ["size"]
      499 GETUPVAL                         R51 0
      500 GETTABLEKS                       R51 R51 K103 ["Enums"]
      502 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      504 GETTABLEKS                       R51 R51 K113 ["Emphasis"]
      506 SETTABLEKS                       R51 R50 K100 ["variant"]
      508 SETTABLEKS                       R26 R50 K101 ["onActivated"]
      510 NOT                              R51 R33
      511 SETTABLEKS                       R51 R50 K83 ["isDisabled"]
      513 MOVE                             R51 R34
      514 CALL                             R51 0 1
      515 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      517 CALL                             R48 2 1
      518 SETTABLEKS                       R48 R47 K96 ["ConfirmButton"]
      520 CALL                             R44 3 1
      521 SETTABLEKS                       R44 R43 K61 ["ButtonGroup"]
      523 GETUPVAL                         R44 15
      524 GETUPVAL                         R45 23
      525 DUPTABLE                         R46 K117 [{"visible", "imageContent", "onClose"}]
      526 SETTABLEKS                       R32 R46 K114 ["visible"]
      528 SETTABLEKS                       R4 R46 K115 ["imageContent"]
      530 SETTABLEKS                       R25 R46 K116 ["onClose"]
      532 CALL                             R44 2 1
      533 SETTABLEKS                       R44 R43 K62 ["PreviewPopover"]
      535 CALL                             R40 3 1
      536 SETTABLEKS                       R40 R39 K29 ["Content"]
      538 CALL                             R36 3 -1
      539 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Gen3dCore"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["AskInput"]
       35 GETTABLEKS                       R7 R7 K13 ["AskInputTypes"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Flags"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Util"]
       47 GETTABLEKS                       R9 R9 K15 ["TextureGen"]
       49 GETTABLEKS                       R9 R9 K16 ["HintImageCameraStore"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K17 ["Components"]
       56 GETTABLEKS                       R10 R10 K18 ["ImageSelection"]
       58 GETTABLEKS                       R10 R10 K19 ["ImageSelectionController"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["ImageSelection"]
       67 GETTABLEKS                       R11 R11 K20 ["ImageSelectionPicker"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Components"]
       74 GETTABLEKS                       R12 R12 K18 ["ImageSelection"]
       76 GETTABLEKS                       R12 R12 K21 ["ImageSelectionSlots"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K17 ["Components"]
       83 GETTABLEKS                       R13 R13 K18 ["ImageSelection"]
       85 GETTABLEKS                       R13 R13 K22 ["PreviewPopoverHost"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K17 ["Components"]
       92 GETTABLEKS                       R14 R14 K23 ["PropertyRows"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K17 ["Components"]
       99 GETTABLEKS                       R15 R15 K12 ["AskInput"]
      101 GETTABLEKS                       R15 R15 K24 ["SegmentationPromptFold"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K6 [require]
      106 GETTABLEKS                       R16 R0 K11 ["Util"]
      108 GETTABLEKS                       R16 R16 K25 ["SlashCommandConfiguration"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R17 R0 K17 ["Components"]
      115 GETTABLEKS                       R17 R17 K26 ["Contexts"]
      117 GETTABLEKS                       R17 R17 K27 ["Actions"]
      119 GETTABLEKS                       R17 R17 K28 ["TextureGenActionsContext"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R0 K29 ["Remotes"]
      126 GETTABLEKS                       R18 R18 K30 ["TextureGenRemotes"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K6 [require]
      131 GETTABLEKS                       R19 R0 K31 ["Resources"]
      133 GETTABLEKS                       R19 R19 K32 ["Localization"]
      135 GETTABLEKS                       R19 R19 K33 ["Translator"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K6 [require]
      140 GETTABLEKS                       R20 R0 K34 ["Types"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K6 [require]
      145 GETTABLEKS                       R21 R0 K35 ["Hooks"]
      147 GETTABLEKS                       R21 R21 K36 ["useLatest"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K6 [require]
      152 GETTABLEKS                       R22 R0 K35 ["Hooks"]
      154 GETTABLEKS                       R22 R22 K37 ["useOverrideMaxHeight"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K39 [game]
      159 LOADK                            R24 K40 ["EncodingService"]
      160 NAMECALL                         R22 R22 K41 ["GetService"]
      162 CALL                             R22 2 1
      163 GETTABLEKS                       R23 R2 K42 ["Button"]
      165 GETTABLEKS                       R24 R2 K43 ["IconButton"]
      167 GETTABLEKS                       R25 R2 K44 ["Text"]
      169 GETTABLEKS                       R26 R2 K45 ["View"]
      171 GETTABLEKS                       R27 R4 K46 ["createElement"]
      173 GETTABLEKS                       R28 R5 K47 ["createNextOrder"]
      175 DUPCLOSURE                       R29 K48 [PROTO_0]
      176 CAPTURE                          VAL R22
      177 DUPCLOSURE                       R30 K49 [PROTO_1]
      178 CAPTURE                          VAL R22
      179 DUPCLOSURE                       R31 K50 [PROTO_15]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R30
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R23
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R12
      204 GETTABLEKS                       R32 R4 K51 ["memo"]
      206 MOVE                             R33 R31
      207 CALL                             R32 1 -1
      208 RETURN                           R32 -1
