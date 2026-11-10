PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K2 [pcall]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Base64Decode"]
       11 GETUPVAL                         R3 0
       12 GETIMPORT                        R4 K6 [buffer.fromstring]
       14 MOVE                             R5 R0
       15 CALL                             R4 1 -1
       16 CALL                             R1 -1 2
       17 JUMPIFNOT                        R1 ; [+2]
       18 MOVE                             R3 R2
       19 RETURN                           R3 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+25]
        2 GETTABLEKS                       R2 R0 K0 ["data"]
        4 JUMPIFEQKNIL                     R2 ; [+3]
        6 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
        8 LOADNIL                          R1
        9 JUMP                             ; [+17]
       10 GETIMPORT                        R3 K3 [pcall]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Base64Decode"]
       15 GETUPVAL                         R5 0
       16 GETIMPORT                        R6 K7 [buffer.fromstring]
       18 MOVE                             R7 R2
       19 CALL                             R6 1 -1
       20 CALL                             R3 -1 2
       21 JUMPIFNOT                        R3 ; [+2]
       22 MOVE                             R1 R4
       23 JUMP                             ; [+3]
       24 LOADNIL                          R1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 JUMPIFEQKNIL                     R0 ; [+3]
       29 JUMPIFNOTEQKNIL                  R1 ; [+3]
       31 LOADNIL                          R2
       32 RETURN                           R2 1
       33 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       35 JUMPIFEQKNIL                     R3 ; [+8]
       37 GETTABLEKS                       R3 R0 K8 ["mimeType"]
       39 JUMPIFEQKS                       R3 K1 [""] ; [+4]
       41 GETTABLEKS                       R2 R0 K8 ["mimeType"]
       43 JUMP                             ; [+1]
       44 LOADK                            R2 K9 ["image/png"]
       45 NEWTABLE                         R3 0 1
       47 DUPTABLE                         R4 K13 [{"name", "content", "contentType"}]
       48 JUMPIFNOTEQKS                    R2 K14 ["image/jpeg"] ; [+3]
       50 LOADK                            R5 K15 ["image_2.jpg"]
       51 JUMP                             ; [+1]
       52 LOADK                            R5 K16 ["image_2.png"]
       53 SETTABLEKS                       R5 R4 K10 ["name"]
       55 SETTABLEKS                       R1 R4 K11 ["content"]
       57 SETTABLEKS                       R2 R4 K12 ["contentType"]
       59 SETLIST                          R3 R4 1 [1]
       61 RETURN                           R3 1

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
       30 JUMP                             ; [+15]
       31 GETIMPORT                        R4 K10 [pcall]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K11 ["Base64Decode"]
       36 GETUPVAL                         R6 0
       37 GETIMPORT                        R7 K14 [buffer.fromstring]
       39 MOVE                             R8 R3
       40 CALL                             R7 1 -1
       41 CALL                             R4 -1 2
       42 JUMPIFNOT                        R4 ; [+2]
       43 MOVE                             R2 R5
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K15 ["buildImageSelectionServices"]
       49 DUPTABLE                         R4 K17 [{"environment"}]
       50 GETTABLEKS                       R5 R0 K16 ["environment"]
       52 SETTABLEKS                       R5 R4 K16 ["environment"]
       54 CALL                             R3 1 1
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K18 ["ImageSelectionOps"]
       58 GETTABLEKS                       R4 R4 K19 ["generateOneAsync"]
       60 MOVE                             R5 R3
       61 DUPTABLE                         R6 K27 [{["textPrompt"], ["model"], ["seedImage"], ["extraImages"], ["glb"], ["assetId"], ["autoSelectView"] = True}]
       62 GETTABLEKS                       R7 R0 K20 ["textPrompt"]
       64 SETTABLEKS                       R7 R6 K20 ["textPrompt"]
       66 GETTABLEKS                       R7 R0 K28 ["imageModel"]
       68 SETTABLEKS                       R7 R6 K21 ["model"]
       70 GETTABLEKS                       R8 R1 K29 ["seedImageBase64"]
       72 JUMPIFEQKNIL                     R8 ; [+3]
       74 JUMPIFNOTEQKS                    R8 K8 [""] ; [+3]
       76 LOADNIL                          R7
       77 JUMP                             ; [+15]
       78 GETIMPORT                        R9 K10 [pcall]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K11 ["Base64Decode"]
       83 GETUPVAL                         R11 0
       84 GETIMPORT                        R12 K14 [buffer.fromstring]
       86 MOVE                             R13 R8
       87 CALL                             R12 1 -1
       88 CALL                             R9 -1 2
       89 JUMPIFNOT                        R9 ; [+2]
       90 MOVE                             R7 R10
       91 JUMP                             ; [+1]
       92 LOADNIL                          R7
       93 SETTABLEKS                       R7 R6 K22 ["seedImage"]
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R8 R0 K30 ["referenceImage"]
       98 CALL                             R7 1 1
       99 SETTABLEKS                       R7 R6 K23 ["extraImages"]
      101 JUMPIFEQKNIL                     R2 ; [+6]
      103 GETIMPORT                        R7 K32 [buffer.tostring]
      105 MOVE                             R8 R2
      106 CALL                             R7 1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R7
      109 SETTABLEKS                       R7 R6 K24 ["glb"]
      111 GETTABLEKS                       R7 R1 K4 ["assetId"]
      113 SETTABLEKS                       R7 R6 K4 ["assetId"]
      115 CALL                             R4 2 1
      116 GETTABLEKS                       R5 R4 K33 ["imageContent"]
      118 GETTABLEKS                       R6 R4 K34 ["cameraExtrinsic"]
      120 GETTABLEKS                       R7 R4 K35 ["cameraIntrinsic"]
      122 GETUPVAL                         R9 4
      123 GETTABLEKS                       R9 R9 K36 ["FFlagAssistantTextureGenMcpPreviewReference"]
      125 JUMPIFNOT                        R9 ; [+3]
      126 GETTABLEKS                       R8 R4 K37 ["texturePreviewReference"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R8
      130 LOADB                            R9 0
      131 JUMPIFEQKNIL                     R6 ; [+5]
      133 JUMPIFNOTEQKNIL                  R7 ; [+2]
      135 LOADB                            R9 0 +1
      136 LOADB                            R9 1
      137 MOVE                             R10 R9
      138 JUMPIF                           R10 ; [+4]
      139 JUMPIFNOTEQKNIL                  R8 ; [+2]
      141 LOADB                            R10 0 +1
      142 LOADB                            R10 1
      143 JUMPIFEQKNIL                     R5 ; [+2]
      145 JUMPIF                           R10 ; [+7]
      146 GETIMPORT                        R11 K6 [error]
      148 GETTABLEKS                       R13 R4 K39 ["errorMessage"]
      150 ORK                              R12 R13 K38 ["Texture preview did not return a reference image and camera"]
      151 LOADN                            R13 0
      152 CALL                             R11 2 0
      153 DUPTABLE                         R11 K41 [{"hintImage", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference"}]
      154 SETTABLEKS                       R5 R11 K40 ["hintImage"]
      156 SETTABLEKS                       R6 R11 K34 ["cameraExtrinsic"]
      158 SETTABLEKS                       R7 R11 K35 ["cameraIntrinsic"]
      160 SETTABLEKS                       R8 R11 K37 ["texturePreviewReference"]
      162 RETURN                           R11 1

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
