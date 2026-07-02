PROTO_0:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R0 K3 ["Size"]
        7 NAMECALL                         R1 R0 K4 ["ReadPixelsBuffer"]
        9 CALL                             R1 3 1
       10 LOADN                            R4 0
       11 GETIMPORT                        R5 K8 [buffer.len]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 SUBK                             R2 R5 K5 [1]
       16 LOADN                            R3 4
       17 FORNPREP                         R2
       18 ADDK                             R7 R4 K9 [3]
       19 FASTCALL2                        BUFFER_READU8 R1 R7 ; [+4]
       21 MOVE                             R6 R1
       22 GETIMPORT                        R5 K11 [buffer.readu8]
       24 CALL                             R5 2 1
       25 LOADN                            R6 255
       26 JUMPIFNOTLT                      R5 R6 ; [+3]
       28 LOADB                            R6 0
       29 RETURN                           R6 1
       30 FORNLOOP                         R2
       31 LOADB                            R2 1
       32 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K2 ["editableImage"]
        5 JUMPIF                           R3 ; [+23]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["reportFailure"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["ErrorType"]
       12 GETTABLEKS                       R4 R4 K5 ["validateTextureTransparency_InvalidTextureId"]
       14 LOADNIL                          R5
       15 MOVE                             R6 R1
       16 CALL                             R3 3 0
       17 LOADB                            R3 0
       18 NEWTABLE                         R4 0 1
       20 GETIMPORT                        R5 K8 [string.format]
       22 LOADK                            R6 K9 ["Invalid textureID used in mesh '%s'. Make sure the texture exists and try again."]
       23 GETTABLEKS                       R7 R0 K10 ["fullName"]
       25 CALL                             R5 2 -1
       26 SETLIST                          R4 R5 -1 [1]
       28 RETURN                           R3 2
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R4 R0 K2 ["editableImage"]
       32 CALL                             R3 1 1
       33 JUMPIF                           R3 ; [+23]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K3 ["reportFailure"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K4 ["ErrorType"]
       40 GETTABLEKS                       R5 R5 K11 ["validateTextureTransparency_TransparentTexture"]
       42 LOADNIL                          R6
       43 MOVE                             R7 R1
       44 CALL                             R4 3 0
       45 LOADB                            R4 0
       46 NEWTABLE                         R5 0 1
       48 GETIMPORT                        R6 K8 [string.format]
       50 LOADK                            R7 K12 ["Texture %s is not fully opaque. Please use an opaque texture."]
       51 GETTABLEKS                       R8 R0 K10 ["fullName"]
       53 CALL                             R6 2 -1
       54 SETLIST                          R5 R6 -1 [1]
       56 RETURN                           R4 2
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K13 ["recordScriptTime"]
       60 GETIMPORT                        R5 K15 [script]
       62 GETTABLEKS                       R5 R5 K16 ["Name"]
       64 MOVE                             R6 R2
       65 MOVE                             R7 R1
       66 CALL                             R4 3 0
       67 LOADB                            R4 1
       68 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 DUPCLOSURE                       R4 K9 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
