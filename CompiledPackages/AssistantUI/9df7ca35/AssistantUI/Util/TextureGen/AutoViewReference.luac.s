PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["Base64Decode"]
        9 GETUPVAL                         R3 0
       10 GETIMPORT                        R4 K4 [buffer.fromstring]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 -1
       14 FASTPCALL                        pcall 2 ; [+2]
       15 GETIMPORT                        R1 K6 [pcall]
       17 CALL                             R1 -1 2
       18 JUMPIFNOT                        R1 ; [+2]
       19 MOVE                             R3 R2
       20 RETURN                           R3 1
       21 LOADNIL                          R3
       22 RETURN                           R3 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+26]
        2 GETTABLEKS                       R2 R0 K0 ["data"]
        4 JUMPIFEQKNIL                     R2 ; [+3]
        6 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        8 LOADNIL                          R1
        9 JUMP                             ; [+18]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Base64Decode"]
       13 GETUPVAL                         R5 0
       14 GETIMPORT                        R6 K5 [buffer.fromstring]
       16 MOVE                             R7 R2
       17 CALL                             R6 1 -1
       18 FASTPCALL                        pcall 2 ; [+2]
       19 GETIMPORT                        R3 K7 [pcall]
       21 CALL                             R3 -1 2
       22 JUMPIFNOT                        R3 ; [+2]
       23 MOVE                             R1 R4
       24 JUMP                             ; [+3]
       25 LOADNIL                          R1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R1
       28 JUMPIFEQKNIL                     R0 ; [+3]
       30 JUMPIFNOTEQKNIL                  R1 ; [+3]
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       36 JUMPIFEQKNIL                     R3 ; [+8]
       38 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       40 JUMPIFEQKS                       R3 K1 [""] ; [+4]
       42 GETTABLEKS                       R2 R0 K8 ["mimeType"]
       44 JUMP                             ; [+1]
       45 LOADK                            R2 K9 ["image/png"]
       46 NEWTABLE                         R3 0 1
       48 DUPTABLE                         R4 K13 [{"name", "content", "contentType"}]
       49 JUMPIFNOTEQKS                    R2 K14 ["image/jpeg"] ; [+3]
       51 LOADK                            R5 K15 ["image_2.jpg"]
       52 JUMP                             ; [+1]
       53 LOADK                            R5 K16 ["image_2.png"]
       54 SETTABLEKS                       R5 R4 K10 ["name"]
       56 SETTABLEKS                       R1 R4 K11 ["content"]
       58 SETTABLEKS                       R2 R4 K12 ["contentType"]
       60 SETLIST                          R3 R4 1 [1]
       62 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["prepareTexturePreviewAsync"]
        2 DUPTABLE                         R2 K2 [{"selectedUniqueId"}]
        3 GETTABLEKS                       R3 R0 K1 ["selectedUniqueId"]
        5 SETTABLEKS                       R3 R2 K1 ["selectedUniqueId"]
        7 CALL                             R1 1 1
        8 JUMPIFEQKNIL                     R1 ; [+9]
       10 GETTABLEKS                       R2 R1 K3 ["glbBase64"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+10]
       14 GETTABLEKS                       R2 R1 K4 ["assetId"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+6]
       18 GETIMPORT                        R2 K6 [error]
       20 LOADK                            R3 K7 ["Could not export the source for texture preview"]
       21 LOADN                            R4 0
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R3 R1 K3 ["glbBase64"]
       25 JUMPIFEQKNIL                     R3 ; [+3]
       27 JUMPIFNOTEQKS                    R3 K8 [""] ; [+3]
       29 LOADNIL                          R2
       30 JUMP                             ; [+16]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K9 ["Base64Decode"]
       34 GETUPVAL                         R6 0
       35 GETIMPORT                        R7 K12 [buffer.fromstring]
       37 MOVE                             R8 R3
       38 CALL                             R7 1 -1
       39 FASTPCALL                        pcall 2 ; [+2]
       40 GETIMPORT                        R4 K14 [pcall]
       42 CALL                             R4 -1 2
       43 JUMPIFNOT                        R4 ; [+2]
       44 MOVE                             R2 R5
       45 JUMP                             ; [+1]
       46 LOADNIL                          R2
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K15 ["buildImageSelectionServices"]
       50 DUPTABLE                         R4 K17 [{"environment"}]
       51 GETTABLEKS                       R5 R0 K16 ["environment"]
       53 SETTABLEKS                       R5 R4 K16 ["environment"]
       55 CALL                             R3 1 1
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K18 ["ImageSelectionOps"]
       59 GETTABLEKS                       R4 R4 K19 ["generateOneAsync"]
       61 MOVE                             R5 R3
       62 DUPTABLE                         R6 K27 [{["textPrompt"], ["model"], ["seedImage"], ["extraImages"], ["glb"], ["assetId"], ["autoSelectView"] = True}]
       63 GETTABLEKS                       R7 R0 K20 ["textPrompt"]
       65 SETTABLEKS                       R7 R6 K20 ["textPrompt"]
       67 GETTABLEKS                       R7 R0 K28 ["imageModel"]
       69 SETTABLEKS                       R7 R6 K21 ["model"]
       71 GETTABLEKS                       R8 R1 K29 ["seedImageBase64"]
       73 JUMPIFEQKNIL                     R8 ; [+3]
       75 JUMPIFNOTEQKS                    R8 K8 [""] ; [+3]
       77 LOADNIL                          R7
       78 JUMP                             ; [+16]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K9 ["Base64Decode"]
       82 GETUPVAL                         R11 0
       83 GETIMPORT                        R12 K12 [buffer.fromstring]
       85 MOVE                             R13 R8
       86 CALL                             R12 1 -1
       87 FASTPCALL                        pcall 2 ; [+2]
       88 GETIMPORT                        R9 K14 [pcall]
       90 CALL                             R9 -1 2
       91 JUMPIFNOT                        R9 ; [+2]
       92 MOVE                             R7 R10
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 SETTABLEKS                       R7 R6 K22 ["seedImage"]
       97 GETUPVAL                         R7 3
       98 GETTABLEKS                       R8 R0 K30 ["referenceImage"]
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R6 K23 ["extraImages"]
      103 JUMPIFEQKNIL                     R2 ; [+6]
      105 GETIMPORT                        R7 K32 [buffer.tostring]
      107 MOVE                             R8 R2
      108 CALL                             R7 1 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R7
      111 SETTABLEKS                       R7 R6 K24 ["glb"]
      113 GETTABLEKS                       R7 R1 K4 ["assetId"]
      115 SETTABLEKS                       R7 R6 K4 ["assetId"]
      117 CALL                             R4 2 1
      118 GETTABLEKS                       R5 R4 K33 ["imageContent"]
      120 GETTABLEKS                       R6 R4 K34 ["cameraExtrinsic"]
      122 GETTABLEKS                       R7 R4 K35 ["cameraIntrinsic"]
      124 GETUPVAL                         R9 4
      125 GETTABLEKS                       R9 R9 K36 ["FFlagAssistantTextureGenMcpPreviewReference"]
      127 JUMPIFNOT                        R9 ; [+3]
      128 GETTABLEKS                       R8 R4 K37 ["texturePreviewReference"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R8
      132 LOADB                            R9 0
      133 JUMPIFEQKNIL                     R6 ; [+5]
      135 JUMPIFNOTEQKNIL                  R7 ; [+2]
      137 LOADB                            R9 0 +1
      138 LOADB                            R9 1
      139 MOVE                             R10 R9
      140 JUMPIF                           R10 ; [+4]
      141 JUMPIFNOTEQKNIL                  R8 ; [+2]
      143 LOADB                            R10 0 +1
      144 LOADB                            R10 1
      145 JUMPIFEQKNIL                     R5 ; [+2]
      147 JUMPIF                           R10 ; [+7]
      148 GETIMPORT                        R11 K6 [error]
      150 GETTABLEKS                       R13 R4 K39 ["errorMessage"]
      152 ORK                              R12 R13 K38 ["Texture preview did not return a reference image and camera"]
      153 LOADN                            R13 0
      154 CALL                             R11 2 0
      155 DUPTABLE                         R11 K41 [{"hintImage", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference"}]
      156 SETTABLEKS                       R5 R11 K40 ["hintImage"]
      158 SETTABLEKS                       R6 R11 K34 ["cameraExtrinsic"]
      160 SETTABLEKS                       R7 R11 K35 ["cameraIntrinsic"]
      162 SETTABLEKS                       R8 R11 K37 ["texturePreviewReference"]
      164 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Flags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Util"]
       36 GETTABLEKS                       R6 R6 K16 ["Gen3dUtils"]
       38 GETTABLEKS                       R6 R6 K17 ["Gen3dServicesBuilder"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["Remotes"]
       45 GETTABLEKS                       R7 R7 K19 ["TextureGenRemotes"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K20 ["Types"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K21 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 DUPCLOSURE                       R9 K22 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R10 K23 [PROTO_2]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R4
       63 GETIMPORT                        R11 K26 [table.freeze]
       65 DUPTABLE                         R12 K28 [{"generateAsync"}]
       66 SETTABLEKS                       R10 R12 K27 ["generateAsync"]
       68 CALL                             R11 1 -1
       69 RETURN                           R11 -1
