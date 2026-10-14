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
        8 GETIMPORT                        R1 K3 [pcall]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["Base64Decode"]
       13 GETUPVAL                         R3 0
       14 GETIMPORT                        R4 K7 [buffer.fromstring]
       16 GETTABLEKS                       R5 R0 K0 ["data"]
       18 CALL                             R4 1 -1
       19 CALL                             R1 -1 2
       20 JUMPIF                           R1 ; [+2]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 GETTABLEKS                       R4 R0 K8 ["mimeType"]
       25 JUMPIFEQKNIL                     R4 ; [+8]
       27 GETTABLEKS                       R4 R0 K8 ["mimeType"]
       29 JUMPIFEQKS                       R4 K1 [""] ; [+4]
       31 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K9 ["image/png"]
       35 NEWTABLE                         R4 0 1
       37 DUPTABLE                         R5 K13 [{"name", "content", "contentType"}]
       38 JUMPIFNOTEQKS                    R3 K14 ["image/jpeg"] ; [+3]
       40 LOADK                            R6 K15 ["image_2.jpg"]
       41 JUMP                             ; [+1]
       42 LOADK                            R6 K16 ["image_2.png"]
       43 SETTABLEKS                       R6 R5 K10 ["name"]
       45 SETTABLEKS                       R2 R5 K11 ["content"]
       47 SETTABLEKS                       R3 R5 K12 ["contentType"]
       49 SETLIST                          R4 R5 1 [1]
       51 RETURN                           R4 1

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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantImageGenImprovements"]
        7 JUMPIFNOT                        R2 ; [+12]
        8 JUMPIFEQKNIL                     R1 ; [+11]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["resolveAsync"]
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K3 ["current"]
       17 GETUPVAL                         R5 0
       18 CALL                             R2 3 1
       19 MOVE                             R0 R2
       20 GETUPVAL                         R2 5
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K4 ["resolveSeedImageFromSelectedInstance"]
       29 JUMPIFNOT                        R5 ; [+74]
       30 GETUPVAL                         R5 6
       31 GETTABLEKS                       R5 R5 K3 ["current"]
       33 GETUPVAL                         R6 7
       34 GETTABLEKS                       R6 R6 K5 ["Configs"]
       36 GETTABLEKS                       R6 R6 K6 ["TextureGen"]
       38 GETTABLEKS                       R6 R6 K7 ["row"]
       40 GETTABLEKS                       R6 R6 K8 ["SelectedInstanceRef"]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K3 ["current"]
       45 GETTABLE                         R7 R8 R6
       46 JUMPIFEQKNIL                     R5 ; [+57]
       48 JUMPIFEQKNIL                     R7 ; [+55]
       50 GETTABLEKS                       R4 R7 K9 ["uniqueId"]
       52 LOADNIL                          R8
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R9 R9 K10 ["useTexturePreview"]
       56 JUMPIFNOT                        R9 ; [+17]
       57 GETIMPORT                        R9 K12 [pcall]
       59 GETTABLEKS                       R10 R5 K13 ["prepareTexturePreviewAsync"]
       61 DUPTABLE                         R11 K15 [{"selectedUniqueId"}]
       62 GETTABLEKS                       R12 R7 K9 ["uniqueId"]
       64 SETTABLEKS                       R12 R11 K14 ["selectedUniqueId"]
       66 CALL                             R9 2 2
       67 JUMPIFNOT                        R9 ; [+21]
       68 JUMPIFEQKNIL                     R10 ; [+20]
       70 MOVE                             R3 R10
       71 GETTABLEKS                       R8 R10 K16 ["seedImageBase64"]
       73 JUMP                             ; [+15]
       74 GETIMPORT                        R9 K12 [pcall]
       76 GETTABLEKS                       R10 R5 K17 ["captureSourceInstanceImageAsync"]
       78 DUPTABLE                         R11 K15 [{"selectedUniqueId"}]
       79 GETTABLEKS                       R12 R7 K9 ["uniqueId"]
       81 SETTABLEKS                       R12 R11 K14 ["selectedUniqueId"]
       83 CALL                             R9 2 2
       84 JUMPIFNOT                        R9 ; [+4]
       85 JUMPIFEQKNIL                     R10 ; [+3]
       87 GETTABLEKS                       R8 R10 K18 ["imageBase64"]
       89 JUMPIFEQKNIL                     R8 ; [+14]
       91 GETIMPORT                        R9 K12 [pcall]
       93 GETUPVAL                         R10 8
       94 GETTABLEKS                       R10 R10 K19 ["Base64Decode"]
       96 GETUPVAL                         R11 8
       97 GETIMPORT                        R12 K22 [buffer.fromstring]
       99 MOVE                             R13 R8
      100 CALL                             R12 1 -1
      101 CALL                             R9 -1 2
      102 JUMPIFNOT                        R9 ; [+1]
      103 MOVE                             R2 R10
      104 GETUPVAL                         R5 5
      105 JUMPIFNOT                        R5 ; [+1]
      106 RETURN                           R0 0
      107 GETUPVAL                         R5 9
      108 GETUPVAL                         R6 10
      109 GETTABLEKS                       R6 R6 K3 ["current"]
      111 CALL                             R5 1 1
      112 JUMPIFNOTEQKS                    R0 K23 [""] ; [+8]
      114 JUMPIFNOTEQKNIL                  R5 ; [+6]
      116 GETUPVAL                         R6 11
      117 GETTABLEKS                       R6 R6 K3 ["current"]
      119 CALL                             R6 0 0
      120 RETURN                           R0 0
      121 GETUPVAL                         R6 12
      122 GETTABLEKS                       R6 R6 K24 ["new"]
      124 DUPTABLE                         R7 K36 [{"textPrompt", "slotCount", "model", "seedImage", "extraImages", "glb", "assetId", "cameraExtrinsic", "cameraIntrinsic", "autoSelectView", "onSlotsUpdated"}]
      125 SETTABLEKS                       R0 R7 K25 ["textPrompt"]
      127 GETUPVAL                         R8 1
      128 GETTABLEKS                       R8 R8 K26 ["slotCount"]
      130 SETTABLEKS                       R8 R7 K26 ["slotCount"]
      132 GETUPVAL                         R8 1
      133 GETTABLEKS                       R8 R8 K27 ["model"]
      135 SETTABLEKS                       R8 R7 K27 ["model"]
      137 SETTABLEKS                       R2 R7 K28 ["seedImage"]
      139 SETTABLEKS                       R5 R7 K29 ["extraImages"]
      141 JUMPIFNOT                        R3 ; [+21]
      142 GETTABLEKS                       R9 R3 K37 ["glbBase64"]
      144 JUMPIFEQKNIL                     R9 ; [+3]
      146 JUMPIFNOTEQKS                    R9 K23 [""] ; [+3]
      148 LOADNIL                          R8
      149 JUMP                             ; [+14]
      150 GETIMPORT                        R10 K39 [buffer.tostring]
      152 GETUPVAL                         R11 8
      153 GETIMPORT                        R13 K22 [buffer.fromstring]
      155 MOVE                             R14 R9
      156 CALL                             R13 1 -1
      157 NAMECALL                         R11 R11 K19 ["Base64Decode"]
      159 CALL                             R11 -1 -1
      160 CALL                             R10 -1 1
      161 MOVE                             R8 R10
      162 JUMP                             ; [+1]
      163 LOADNIL                          R8
      164 SETTABLEKS                       R8 R7 K30 ["glb"]
      166 JUMPIFNOT                        R3 ; [+3]
      167 GETTABLEKS                       R8 R3 K31 ["assetId"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R8
      171 SETTABLEKS                       R8 R7 K31 ["assetId"]
      173 JUMPIFNOT                        R3 ; [+3]
      174 GETTABLEKS                       R8 R3 K32 ["cameraExtrinsic"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R8
      178 SETTABLEKS                       R8 R7 K32 ["cameraExtrinsic"]
      180 JUMPIFNOT                        R3 ; [+3]
      181 GETTABLEKS                       R8 R3 K33 ["cameraIntrinsic"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R8
      185 SETTABLEKS                       R8 R7 K33 ["cameraIntrinsic"]
      187 LOADB                            R8 0
      188 GETUPVAL                         R9 1
      189 GETTABLEKS                       R9 R9 K40 ["autoSelectViewField"]
      191 JUMPIFEQKNIL                     R9 ; [+12]
      193 GETUPVAL                         R10 4
      194 GETTABLEKS                       R10 R10 K3 ["current"]
      196 GETUPVAL                         R11 1
      197 GETTABLEKS                       R11 R11 K40 ["autoSelectViewField"]
      199 GETTABLE                         R9 R10 R11
      200 JUMPIFEQKB                       R9 TRUE ; [+2]
      202 LOADB                            R8 0 +1
      203 LOADB                            R8 1
      204 SETTABLEKS                       R8 R7 K34 ["autoSelectView"]
      206 NEWCLOSURE                       R8 P0
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U14
      209 CAPTURE                          UPVAL U15
      210 SETTABLEKS                       R8 R7 K35 ["onSlotsUpdated"]
      212 CALL                             R6 1 1
      213 GETUPVAL                         R7 16
      214 SETTABLEKS                       R6 R7 K3 ["current"]
      216 NAMECALL                         R7 R6 K41 ["runAsync"]
      218 CALL                             R7 1 1
      219 GETUPVAL                         R8 16
      220 LOADNIL                          R9
      221 SETTABLEKS                       R9 R8 K3 ["current"]
      223 GETUPVAL                         R8 5
      224 JUMPIFNOT                        R8 ; [+1]
      225 RETURN                           R0 0
      226 GETTABLEKS                       R8 R7 K42 ["cancelled"]
      228 JUMPIFNOT                        R8 ; [+5]
      229 GETUPVAL                         R8 17
      230 GETTABLEKS                       R8 R8 K3 ["current"]
      232 CALL                             R8 0 0
      233 RETURN                           R0 0
      234 GETTABLEKS                       R8 R7 K43 ["errorMessage"]
      236 JUMPIF                           R8 ; [+3]
      237 GETTABLEKS                       R8 R7 K44 ["imageContent"]
      239 JUMPIF                           R8 ; [+5]
      240 GETUPVAL                         R8 11
      241 GETTABLEKS                       R8 R8 K3 ["current"]
      243 CALL                             R8 0 0
      244 RETURN                           R0 0
      245 GETTABLEKS                       R8 R7 K32 ["cameraExtrinsic"]
      247 GETTABLEKS                       R9 R7 K33 ["cameraIntrinsic"]
      249 JUMPIFEQKNIL                     R3 ; [+20]
      251 JUMPIFEQKNIL                     R4 ; [+18]
      253 JUMPIFEQKNIL                     R8 ; [+16]
      255 JUMPIFEQKNIL                     R9 ; [+14]
      257 GETUPVAL                         R10 18
      258 GETTABLEKS                       R10 R10 K45 ["attach"]
      260 GETTABLEKS                       R11 R7 K44 ["imageContent"]
      262 DUPTABLE                         R12 K46 [{"selectedUniqueId", "cameraExtrinsic", "cameraIntrinsic"}]
      263 SETTABLEKS                       R4 R12 K14 ["selectedUniqueId"]
      265 SETTABLEKS                       R8 R12 K32 ["cameraExtrinsic"]
      267 SETTABLEKS                       R9 R12 K33 ["cameraIntrinsic"]
      269 CALL                             R10 2 0
      270 GETUPVAL                         R10 19
      271 GETTABLEKS                       R10 R10 K3 ["current"]
      273 GETTABLEKS                       R11 R7 K44 ["imageContent"]
      275 CALL                             R10 1 0
      276 RETURN                           R0 0

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
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          REF R3
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
       44 CAPTURE                          UPVAL U17
       45 CALL                             R4 1 0
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          REF R3
       48 CAPTURE                          UPVAL U14
       49 CLOSEUPVALS                      R3
       50 RETURN                           R4 1

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
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R22
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R17
      109 CAPTURE                          UPVAL U10
      110 CAPTURE                          VAL R3
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R18
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R16
      117 NEWTABLE                         R25 0 0
      119 CALL                             R23 2 0
      120 GETUPVAL                         R23 1
      121 GETTABLEKS                       R23 R23 K17 ["useCallback"]
      123 NEWCLOSURE                       R24 P1
      124 CAPTURE                          VAL R7
      125 NEWTABLE                         R25 0 0
      127 CALL                             R23 2 1
      128 GETUPVAL                         R24 1
      129 GETTABLEKS                       R24 R24 K17 ["useCallback"]
      131 NEWCLOSURE                       R25 P2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R15
      134 NEWTABLE                         R26 0 0
      136 CALL                             R24 2 1
      137 GETUPVAL                         R25 1
      138 GETTABLEKS                       R25 R25 K17 ["useCallback"]
      140 NEWCLOSURE                       R26 P3
      141 CAPTURE                          VAL R15
      142 NEWTABLE                         R27 0 0
      144 CALL                             R25 2 1
      145 GETUPVAL                         R26 1
      146 GETTABLEKS                       R26 R26 K17 ["useCallback"]
      148 NEWCLOSURE                       R27 P4
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R15
      151 NEWTABLE                         R28 0 1
      153 MOVE                             R29 R6
      154 SETLIST                          R28 R29 1 [1]
      156 CALL                             R26 2 1
      157 GETUPVAL                         R27 1
      158 GETTABLEKS                       R27 R27 K17 ["useCallback"]
      160 NEWCLOSURE                       R28 P5
      161 CAPTURE                          VAL R15
      162 NEWTABLE                         R29 0 0
      164 CALL                             R27 2 1
      165 GETUPVAL                         R28 1
      166 GETTABLEKS                       R28 R28 K17 ["useCallback"]
      168 NEWCLOSURE                       R29 P6
      169 CAPTURE                          VAL R15
      170 NEWTABLE                         R30 0 0
      172 CALL                             R28 2 1
      173 GETUPVAL                         R29 1
      174 GETTABLEKS                       R29 R29 K18 ["useMemo"]
      176 DUPCLOSURE                       R30 K19 [PROTO_12]
      177 CAPTURE                          UPVAL U13
      178 NEWTABLE                         R31 0 1
      180 GETUPVAL                         R32 13
      181 GETTABLEKS                       R32 R32 K20 ["locale"]
      183 SETLIST                          R31 R32 1 [1]
      185 CALL                             R29 2 1
      186 GETUPVAL                         R30 1
      187 GETTABLEKS                       R30 R30 K17 ["useCallback"]
      189 NEWCLOSURE                       R31 P8
      190 CAPTURE                          VAL R11
      191 NEWTABLE                         R32 0 0
      193 CALL                             R30 2 1
      194 GETUPVAL                         R31 1
      195 GETTABLEKS                       R31 R31 K17 ["useCallback"]
      197 NEWCLOSURE                       R32 P9
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R10
      201 NEWTABLE                         R33 0 0
      203 CALL                             R31 2 1
      204 JUMPIFNOTEQKNIL                  R4 ; [+2]
      206 LOADB                            R32 0 +1
      207 LOADB                            R32 1
      208 MOVE                             R33 R6
      209 JUMPIFNOT                        R33 ; [+9]
      210 GETTABLE                         R33 R2 R6
      211 JUMPIFNOT                        R33 ; [+7]
      212 GETTABLE                         R34 R2 R6
      213 GETTABLEKS                       R34 R34 K21 ["status"]
      215 JUMPIFEQKS                       R34 K22 ["Ready"] ; [+2]
      217 LOADB                            R33 0 +1
      218 LOADB                            R33 1
      219 GETUPVAL                         R34 14
      220 CALL                             R34 0 1
      221 GETTABLEKS                       R36 R0 K8 ["config"]
      223 GETTABLEKS                       R36 R36 K23 ["wizardMode"]
      225 JUMPIFNOT                        R36 ; [+2]
      226 LOADNIL                          R35
      227 JUMP                             ; [+2]
      228 GETTABLEKS                       R35 R0 K24 ["rows"]
      230 GETUPVAL                         R36 15
      231 GETUPVAL                         R37 16
      232 DUPTABLE                         R38 K28 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      233 GETTABLEKS                       R39 R0 K27 ["LayoutOrder"]
      235 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      237 DUPTABLE                         R39 K30 [{"Content"}]
      238 GETUPVAL                         R40 15
      239 LOADK                            R41 K31 ["ScrollingFrame"]
      240 NEWTABLE                         R42 16 0
      242 GETIMPORT                        R43 K34 [UDim2.new]
      244 LOADN                            R44 1
      245 LOADN                            R45 0
      246 LOADN                            R46 0
      247 FASTCALL2                        MATH_MIN R8 R13 ; [+5]
      249 MOVE                             R48 R8
      250 MOVE                             R49 R13
      251 GETIMPORT                        R47 K7 [math.min]
      253 CALL                             R47 2 1
      254 CALL                             R43 4 1
      255 SETTABLEKS                       R43 R42 K35 ["Size"]
      257 GETIMPORT                        R43 K39 [Enum.AutomaticSize.Y]
      259 SETTABLEKS                       R43 R42 K40 ["AutomaticCanvasSize"]
      261 GETIMPORT                        R43 K34 [UDim2.new]
      263 LOADN                            R44 0
      264 LOADN                            R45 0
      265 LOADN                            R46 0
      266 LOADN                            R47 0
      267 CALL                             R43 4 1
      268 SETTABLEKS                       R43 R42 K41 ["CanvasSize"]
      270 LOADB                            R43 1
      271 SETTABLEKS                       R43 R42 K42 ["ClipsDescendants"]
      273 GETTABLEKS                       R43 R1 K35 ["Size"]
      275 GETTABLEKS                       R43 R43 K43 ["Size_150"]
      277 SETTABLEKS                       R43 R42 K44 ["ScrollBarThickness"]
      279 GETIMPORT                        R43 K46 [Enum.ScrollingDirection.Y]
      281 SETTABLEKS                       R43 R42 K45 ["ScrollingDirection"]
      283 GETIMPORT                        R43 K49 [Enum.ScrollBarInset.ScrollBar]
      285 SETTABLEKS                       R43 R42 K50 ["VerticalScrollBarInset"]
      287 LOADN                            R43 1
      288 SETTABLEKS                       R43 R42 K51 ["BackgroundTransparency"]
      290 LOADN                            R43 0
      291 SETTABLEKS                       R43 R42 K52 ["BorderSizePixel"]
      293 MOVE                             R43 R34
      294 CALL                             R43 0 1
      295 SETTABLEKS                       R43 R42 K27 ["LayoutOrder"]
      297 SETTABLEKS                       R10 R42 K53 ["ref"]
      299 GETUPVAL                         R43 1
      300 GETTABLEKS                       R43 R43 K54 ["Change"]
      302 GETTABLEKS                       R43 R43 K55 ["CanvasPosition"]
      304 SETTABLE                         R30 R42 R43
      305 DUPTABLE                         R43 K63 [{"Layout", "Padding", "Title", "PropertyRows", "Picker", "ButtonGroup", "PreviewPopover"}]
      306 GETUPVAL                         R44 15
      307 LOADK                            R45 K64 ["UIListLayout"]
      308 NEWTABLE                         R46 4 0
      310 GETIMPORT                        R47 K67 [Enum.FillDirection.Vertical]
      312 SETTABLEKS                       R47 R46 K65 ["FillDirection"]
      314 GETIMPORT                        R47 K69 [Enum.SortOrder.LayoutOrder]
      316 SETTABLEKS                       R47 R46 K68 ["SortOrder"]
      318 GETUPVAL                         R47 1
      319 GETTABLEKS                       R47 R47 K54 ["Change"]
      321 GETTABLEKS                       R47 R47 K70 ["AbsoluteContentSize"]
      323 SETTABLE                         R31 R46 R47
      324 CALL                             R44 2 1
      325 SETTABLEKS                       R44 R43 K56 ["Layout"]
      327 GETUPVAL                         R44 15
      328 LOADK                            R45 K71 ["UIPadding"]
      329 DUPTABLE                         R46 K73 [{"PaddingRight"}]
      330 GETIMPORT                        R47 K75 [UDim.new]
      332 LOADN                            R48 0
      333 GETTABLEKS                       R49 R1 K35 ["Size"]
      335 GETTABLEKS                       R49 R49 K43 ["Size_150"]
      337 CALL                             R47 2 1
      338 SETTABLEKS                       R47 R46 K72 ["PaddingRight"]
      340 CALL                             R44 2 1
      341 SETTABLEKS                       R44 R43 K57 ["Padding"]
      343 LOADB                            R44 0
      344 GETTABLEKS                       R45 R0 K76 ["title"]
      346 JUMPIFEQKNIL                     R45 ; [+13]
      348 GETUPVAL                         R44 15
      349 GETUPVAL                         R45 17
      350 DUPTABLE                         R46 K79 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      351 GETTABLEKS                       R47 R0 K76 ["title"]
      353 SETTABLEKS                       R47 R46 K78 ["Text"]
      355 MOVE                             R47 R34
      356 CALL                             R47 0 1
      357 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      359 CALL                             R44 2 1
      360 SETTABLEKS                       R44 R43 K58 ["Title"]
      362 MOVE                             R44 R35
      363 JUMPIFNOT                        R44 ; [+19]
      364 GETUPVAL                         R44 15
      365 GETUPVAL                         R45 18
      366 GETTABLEKS                       R45 R45 K80 ["PropertyRowsRoot"]
      368 DUPTABLE                         R46 K85 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      369 SETTABLEKS                       R35 R46 K81 ["rowDefinitions"]
      371 GETUPVAL                         R47 19
      372 GETTABLEKS                       R47 R47 K86 ["createUnimplemented"]
      374 LOADK                            R48 K82 ["onChange"]
      375 CALL                             R47 1 1
      376 SETTABLEKS                       R47 R46 K82 ["onChange"]
      378 MOVE                             R47 R34
      379 CALL                             R47 0 1
      380 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      382 CALL                             R44 2 1
      383 SETTABLEKS                       R44 R43 K59 ["PropertyRows"]
      385 GETUPVAL                         R44 15
      386 GETUPVAL                         R45 20
      387 DUPTABLE                         R46 K91 [{"slots", "onSelect", "onPreview", "selectedIndex", "LayoutOrder"}]
      388 SETTABLEKS                       R2 R46 K87 ["slots"]
      390 SETTABLEKS                       R23 R46 K88 ["onSelect"]
      392 SETTABLEKS                       R24 R46 K89 ["onPreview"]
      394 SETTABLEKS                       R6 R46 K90 ["selectedIndex"]
      396 MOVE                             R47 R34
      397 CALL                             R47 0 1
      398 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      400 CALL                             R44 2 1
      401 SETTABLEKS                       R44 R43 K60 ["Picker"]
      403 GETUPVAL                         R44 15
      404 GETUPVAL                         R45 16
      405 DUPTABLE                         R46 K93 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      406 MOVE                             R47 R34
      407 CALL                             R47 0 1
      408 SETTABLEKS                       R47 R46 K27 ["LayoutOrder"]
      410 DUPTABLE                         R47 K97 [{"BackButton", "RefreshButton", "ConfirmButton"}]
      411 GETUPVAL                         R48 15
      412 GETUPVAL                         R49 21
      413 DUPTABLE                         R50 K102 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      414 GETTABLEKS                       R51 R29 K94 ["BackButton"]
      416 SETTABLEKS                       R51 R50 K98 ["text"]
      418 GETUPVAL                         R51 0
      419 GETTABLEKS                       R51 R51 K103 ["Enums"]
      421 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      423 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      425 SETTABLEKS                       R51 R50 K99 ["size"]
      427 GETUPVAL                         R51 0
      428 GETTABLEKS                       R51 R51 K103 ["Enums"]
      430 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      432 GETTABLEKS                       R51 R51 K107 ["Standard"]
      434 SETTABLEKS                       R51 R50 K100 ["variant"]
      436 SETTABLEKS                       R27 R50 K101 ["onActivated"]
      438 MOVE                             R51 R34
      439 CALL                             R51 0 1
      440 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      442 CALL                             R48 2 1
      443 SETTABLEKS                       R48 R47 K94 ["BackButton"]
      445 GETUPVAL                         R48 15
      446 GETUPVAL                         R49 22
      447 DUPTABLE                         R50 K109 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      448 GETUPVAL                         R51 0
      449 GETTABLEKS                       R51 R51 K103 ["Enums"]
      451 GETTABLEKS                       R51 R51 K110 ["IconName"]
      453 GETTABLEKS                       R51 R51 K111 ["TwoArrowsSpinClockwise"]
      455 SETTABLEKS                       R51 R50 K108 ["icon"]
      457 GETUPVAL                         R51 0
      458 GETTABLEKS                       R51 R51 K103 ["Enums"]
      460 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      462 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      464 SETTABLEKS                       R51 R50 K99 ["size"]
      466 GETUPVAL                         R51 0
      467 GETTABLEKS                       R51 R51 K103 ["Enums"]
      469 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      471 GETTABLEKS                       R51 R51 K107 ["Standard"]
      473 SETTABLEKS                       R51 R50 K100 ["variant"]
      475 SETTABLEKS                       R28 R50 K101 ["onActivated"]
      477 MOVE                             R51 R34
      478 CALL                             R51 0 1
      479 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      481 CALL                             R48 2 1
      482 SETTABLEKS                       R48 R47 K95 ["RefreshButton"]
      484 GETUPVAL                         R48 15
      485 GETUPVAL                         R49 21
      486 DUPTABLE                         R50 K112 [{"text", "size", "variant", "onActivated", "isDisabled", "LayoutOrder"}]
      487 GETTABLEKS                       R51 R29 K96 ["ConfirmButton"]
      489 SETTABLEKS                       R51 R50 K98 ["text"]
      491 GETUPVAL                         R51 0
      492 GETTABLEKS                       R51 R51 K103 ["Enums"]
      494 GETTABLEKS                       R51 R51 K104 ["InputSize"]
      496 GETTABLEKS                       R51 R51 K105 ["XSmall"]
      498 SETTABLEKS                       R51 R50 K99 ["size"]
      500 GETUPVAL                         R51 0
      501 GETTABLEKS                       R51 R51 K103 ["Enums"]
      503 GETTABLEKS                       R51 R51 K106 ["ButtonVariant"]
      505 GETTABLEKS                       R51 R51 K113 ["Emphasis"]
      507 SETTABLEKS                       R51 R50 K100 ["variant"]
      509 SETTABLEKS                       R26 R50 K101 ["onActivated"]
      511 NOT                              R51 R33
      512 SETTABLEKS                       R51 R50 K83 ["isDisabled"]
      514 MOVE                             R51 R34
      515 CALL                             R51 0 1
      516 SETTABLEKS                       R51 R50 K27 ["LayoutOrder"]
      518 CALL                             R48 2 1
      519 SETTABLEKS                       R48 R47 K96 ["ConfirmButton"]
      521 CALL                             R44 3 1
      522 SETTABLEKS                       R44 R43 K61 ["ButtonGroup"]
      524 GETUPVAL                         R44 15
      525 GETUPVAL                         R45 23
      526 DUPTABLE                         R46 K117 [{"visible", "imageContent", "onClose"}]
      527 SETTABLEKS                       R32 R46 K114 ["visible"]
      529 SETTABLEKS                       R4 R46 K115 ["imageContent"]
      531 SETTABLEKS                       R25 R46 K116 ["onClose"]
      533 CALL                             R44 2 1
      534 SETTABLEKS                       R44 R43 K62 ["PreviewPopover"]
      536 CALL                             R40 3 1
      537 SETTABLEKS                       R40 R39 K29 ["Content"]
      539 CALL                             R36 3 -1
      540 RETURN                           R36 -1

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
