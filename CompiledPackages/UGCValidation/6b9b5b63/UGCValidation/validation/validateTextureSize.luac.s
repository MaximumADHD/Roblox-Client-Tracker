PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableImage"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableImageSize"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R4 K1 [tick]
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R5 R2 K2 ["isServer"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R3 R6 K3 ["MAX_TEXTURE_SIZE"]
       10 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       12 MOVE                             R7 R3
       13 LOADK                            R8 K4 ["maxTextureSize is required for validateTextureSize"]
       14 GETIMPORT                        R6 K6 [assert]
       16 CALL                             R6 2 0
       17 GETTABLEKS                       R6 R0 K7 ["editableImage"]
       19 JUMPIF                           R6 ; [+26]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADB                            R6 1
       22 RETURN                           R6 1
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K8 ["reportFailure"]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K9 ["ErrorType"]
       29 GETTABLEKS                       R7 R8 K10 ["validateTextureSize_InvalidTextureId"]
       31 LOADNIL                          R8
       32 MOVE                             R9 R2
       33 CALL                             R6 3 0
       34 LOADB                            R6 0
       35 NEWTABLE                         R7 0 1
       37 GETIMPORT                        R8 K13 [string.format]
       39 LOADK                            R9 K14 ["Invalid textureID used in mesh '%s'. Make sure the texture exists and try again."]
       40 GETTABLEKS                       R10 R0 K15 ["fullName"]
       42 CALL                             R8 2 -1
       43 SETLIST                          R7 R8 -1 [1]
       45 RETURN                           R6 2
       46 GETUPVAL                         R6 2
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 MOVE                             R8 R2
       51 CALL                             R6 2 2
       52 JUMPIF                           R6 ; [+35]
       53 JUMPIFEQKNIL                     R5 ; [+11]
       55 JUMPIFNOT                        R5 ; [+9]
       56 GETIMPORT                        R8 K17 [error]
       58 GETIMPORT                        R9 K13 [string.format]
       60 LOADK                            R10 K18 ["Failed to load texture data for '%s'. Make sure the texture exists and try again."]
       61 GETTABLEKS                       R11 R0 K15 ["fullName"]
       63 CALL                             R9 2 -1
       64 CALL                             R8 -1 0
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R8 R9 K8 ["reportFailure"]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R10 R11 K9 ["ErrorType"]
       71 GETTABLEKS                       R9 R10 K19 ["validateTextureSize_FailedToLoadTexture"]
       73 LOADNIL                          R10
       74 MOVE                             R11 R2
       75 CALL                             R8 3 0
       76 LOADB                            R8 0
       77 NEWTABLE                         R9 0 1
       79 GETIMPORT                        R10 K13 [string.format]
       81 LOADK                            R11 K18 ["Failed to load texture data for '%s'. Make sure the texture exists and try again."]
       82 GETTABLEKS                       R12 R0 K15 ["fullName"]
       84 CALL                             R10 2 -1
       85 SETLIST                          R9 R10 -1 [1]
       87 RETURN                           R8 2
       88 GETTABLEKS                       R8 R7 K20 ["X"]
       90 JUMPIFLT                         R3 R8 ; [+5]
       92 GETTABLEKS                       R8 R7 K21 ["Y"]
       94 JUMPIFNOTLT                      R3 R8 ; [+61]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R8 R9 K8 ["reportFailure"]
       99 GETUPVAL                         R11 1
      100 GETTABLEKS                       R10 R11 K9 ["ErrorType"]
      102 GETTABLEKS                       R9 R10 K22 ["validateTextureSize_TextureTooBig"]
      104 LOADNIL                          R10
      105 MOVE                             R11 R2
      106 CALL                             R8 3 0
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R9 R10 K3 ["MAX_TEXTURE_SIZE"]
      110 JUMPIFNOTEQ                      R3 R9 ; [+2]
      112 LOADB                            R8 0 +1
      113 LOADB                            R8 1
      114 GETUPVAL                         R9 4
      115 CALL                             R9 0 1
      116 JUMPIF                           R9 ; [+1]
      117 JUMPIFNOT                        R8 ; [+20]
      118 LOADB                            R9 0
      119 NEWTABLE                         R10 0 1
      121 GETIMPORT                        R11 K13 [string.format]
      123 LOADK                            R12 K23 ["Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px for field '%s'."]
      124 GETTABLEKS                       R13 R7 K20 ["X"]
      126 GETTABLEKS                       R14 R7 K21 ["Y"]
      128 GETTABLEKS                       R15 R0 K15 ["fullName"]
      130 MOVE                             R16 R3
      131 MOVE                             R17 R3
      132 GETTABLEKS                       R18 R0 K24 ["fieldName"]
      134 CALL                             R11 7 -1
      135 SETLIST                          R10 R11 -1 [1]
      137 RETURN                           R9 2
      138 LOADB                            R9 0
      139 NEWTABLE                         R10 0 1
      141 GETIMPORT                        R11 K13 [string.format]
      143 LOADK                            R12 K25 ["Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px. You need to reduce the texture resolution"]
      144 GETTABLEKS                       R13 R7 K20 ["X"]
      146 GETTABLEKS                       R14 R7 K21 ["Y"]
      148 GETTABLEKS                       R15 R0 K15 ["fullName"]
      150 MOVE                             R16 R3
      151 MOVE                             R17 R3
      152 CALL                             R11 6 -1
      153 SETLIST                          R10 R11 -1 [1]
      155 RETURN                           R9 2
      156 GETUPVAL                         R9 1
      157 GETTABLEKS                       R8 R9 K26 ["recordScriptTime"]
      159 GETIMPORT                        R10 K28 [script]
      161 GETTABLEKS                       R9 R10 K29 ["Name"]
      163 MOVE                             R10 R4
      164 MOVE                             R11 R2
      165 CALL                             R8 3 0
      166 LOADB                            R8 1
      167 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R5 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R1 K12 ["flags"]
       29 GETIMPORT                        R5 K8 [require]
       31 GETTABLEKS                       R6 R4 K13 ["getFFlagUGCValidateTextureSizeExtraErrorInfo"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K8 [require]
       36 GETTABLEKS                       R7 R1 K14 ["Analytics"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K8 [require]
       41 GETTABLEKS                       R8 R1 K15 ["Constants"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_1]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R5
       50 RETURN                           R8 1
