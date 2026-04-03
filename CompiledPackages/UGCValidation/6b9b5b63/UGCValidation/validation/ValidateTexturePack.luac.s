PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["findSurfaceAppearancesMissingTexturePacks"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R4 2 1
       10 MOVE                             R5 R4
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 LOADB                            R12 0
       15 NEWTABLE                         R13 0 1
       17 LOADK                            R15 K2 ["'%*' has a 'TexturePack' property with an invalid URL. Please fix the URL."]
       18 NAMECALL                         R17 R9 K3 ["GetFullName"]
       20 CALL                             R17 1 1
       21 NAMECALL                         R15 R15 K4 ["format"]
       23 CALL                             R15 2 1
       24 MOVE                             R14 R15
       25 SETLIST                          R13 R14 1 [1]
       27 NAMECALL                         R10 R3 K5 ["updateReasons"]
       29 CALL                             R10 3 0
       30 FORGLOOP                         R5 2 ; [-17]
       32 LENGTH                           R5 R4
       33 LOADN                            R6 0
       34 JUMPIFNOTLT                      R6 R5 ; [+12]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K6 ["reportFailure"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K7 ["ErrorType"]
       42 GETTABLEKS                       R6 R7 K8 ["validateTexturePack_InvalidTexturePackURL"]
       44 LOADNIL                          R7
       45 MOVE                             R8 R2
       46 CALL                             R5 3 0
       47 NAMECALL                         R5 R3 K9 ["getFinalResults"]
       49 CALL                             R5 1 -1
       50 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["DoesSurfaceAppearanceMatchTexturePackAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADB                            R3 0
        5 LOADB                            R4 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K1 ["findSurfaceAppearancesWithTexturePacks"]
        9 MOVE                             R6 R0
       10 CALL                             R5 1 3
       11 FORGPREP                         R5
       12 GETIMPORT                        R10 K3 [pcall]
       14 NEWCLOSURE                       R11 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R9
       17 CALL                             R10 1 2
       18 JUMPIF                           R10 ; [+26]
       19 LOADK                            R13 K4 ["Failed to download TexturePack for SurfaceAppearance '%*'."]
       20 NAMECALL                         R15 R9 K5 ["GetFullName"]
       22 CALL                             R15 1 1
       23 NAMECALL                         R13 R13 K6 ["format"]
       25 CALL                             R13 2 1
       26 MOVE                             R12 R13
       27 GETTABLEKS                       R13 R1 K7 ["isServer"]
       29 JUMPIFNOT                        R13 ; [+4]
       30 GETIMPORT                        R13 K9 [error]
       32 MOVE                             R14 R12
       33 CALL                             R13 1 0
       34 LOADB                            R4 1
       35 LOADB                            R15 0
       36 NEWTABLE                         R16 0 1
       38 MOVE                             R17 R12
       39 SETLIST                          R16 R17 1 [1]
       41 NAMECALL                         R13 R2 K10 ["updateReasons"]
       43 CALL                             R13 3 0
       44 JUMP                             ; [+19]
       45 MOVE                             R14 R11
       46 NEWTABLE                         R15 0 1
       48 LOADK                            R17 K11 ["The textures in SurfaceAppearance '%*' do not match those in its TexturePack. Please fix the TexturePack"]
       49 NAMECALL                         R19 R9 K5 ["GetFullName"]
       51 CALL                             R19 1 1
       52 NAMECALL                         R17 R17 K6 ["format"]
       54 CALL                             R17 2 1
       55 MOVE                             R16 R17
       56 SETLIST                          R15 R16 1 [1]
       58 NAMECALL                         R12 R2 K10 ["updateReasons"]
       60 CALL                             R12 3 0
       61 JUMPIFNOT                        R3 ; [+1]
       62 JUMP                             ; [+1]
       63 NOT                              R3 R11
       64 FORGLOOP                         R5 2 ; [-53]
       66 JUMPIFNOT                        R4 ; [+11]
       67 GETUPVAL                         R6 3
       68 GETTABLEKS                       R5 R6 K12 ["reportFailure"]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R7 R8 K13 ["ErrorType"]
       73 GETTABLEKS                       R6 R7 K14 ["validateTexturePack_FailedToDownloadTexturePack"]
       75 LOADNIL                          R7
       76 MOVE                             R8 R1
       77 CALL                             R5 3 0
       78 JUMPIFNOT                        R3 ; [+11]
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R5 R6 K12 ["reportFailure"]
       82 GETUPVAL                         R8 3
       83 GETTABLEKS                       R7 R8 K13 ["ErrorType"]
       85 GETTABLEKS                       R6 R7 K15 ["validateTexturePack_TexturePackMismatch"]
       87 LOADNIL                          R7
       88 MOVE                             R8 R1
       89 CALL                             R5 3 0
       90 NAMECALL                         R5 R2 K16 ["getFinalResults"]
       92 CALL                             R5 1 -1
       93 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 1
        4 RETURN                           R3 1
        5 LOADNIL                          R3
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETTABLEKS                       R4 R2 K0 ["isServer"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADB                            R3 1
       13 JUMP                             ; [+1]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R2 K1 ["allowEditableInstances"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADB                            R5 1
       19 RETURN                           R5 1
       20 GETIMPORT                        R5 K3 [tick]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R6 R7 K4 ["new"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+10]
       30 JUMPIFNOT                        R3 ; [+17]
       31 GETUPVAL                         R9 3
       32 MOVE                             R10 R0
       33 MOVE                             R11 R1
       34 MOVE                             R12 R2
       35 CALL                             R9 3 -1
       36 NAMECALL                         R7 R6 K5 ["updateReasons"]
       38 CALL                             R7 -1 0
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R9 3
       41 MOVE                             R10 R0
       42 MOVE                             R11 R1
       43 MOVE                             R12 R2
       44 CALL                             R9 3 -1
       45 NAMECALL                         R7 R6 K5 ["updateReasons"]
       47 CALL                             R7 -1 0
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R0
       50 MOVE                             R11 R2
       51 CALL                             R9 2 -1
       52 NAMECALL                         R7 R6 K5 ["updateReasons"]
       54 CALL                             R7 -1 0
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R7 R8 K6 ["recordScriptTime"]
       58 GETIMPORT                        R9 K8 [script]
       60 GETTABLEKS                       R8 R9 K9 ["Name"]
       62 MOVE                             R9 R5
       63 MOVE                             R10 R2
       64 CALL                             R7 3 0
       65 NAMECALL                         R7 R6 K10 ["getFinalResults"]
       67 CALL                             R7 1 -1
       68 RETURN                           R7 -1

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
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R1 K10 ["util"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R3 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["TexturePackUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R7 R3 K13 ["FailureReasonsAccumulator"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R9 R1 K14 ["flags"]
       39 GETTABLEKS                       R8 R9 K15 ["getFFlagUGCValidateTexturePack"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K8 [require]
       44 GETTABLEKS                       R10 R1 K14 ["flags"]
       46 GETTABLEKS                       R9 R10 K16 ["getFFlagUGCValidateTexturePackOnRCCOnly"]
       48 CALL                             R8 1 1
       49 NEWTABLE                         R9 1 0
       51 DUPCLOSURE                       R10 K17 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R11 K18 [PROTO_2]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R2
       60 DUPCLOSURE                       R12 K19 [PROTO_3]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R12 R9 K20 ["validate"]
       69 RETURN                           R9 1
