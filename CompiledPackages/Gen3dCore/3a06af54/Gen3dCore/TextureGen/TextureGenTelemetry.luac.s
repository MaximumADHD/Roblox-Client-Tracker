PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Enums"]
        3 GETTABLEKS                       R3 R3 K1 ["TextureGenModel"]
        5 GETTABLEKS                       R3 R3 K2 ["RbxTexture2"]
        7 JUMPIFEQ                         R0 R3 ; [+5]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["NotApplicable"]
       12 RETURN                           R3 1
       13 JUMPIFEQKNIL                     R1 ; [+3]
       15 JUMPIFNOTEQKB                    R2 TRUE ; [+5]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["Auto"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["User"]
       24 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K14 [{"requestId", "generationId", "success", "errorMessage", "failureReason", "surface", "isManualRun", "conversationId", "model", "cameraSource", "hasPrompt", "hasHintImage", "isMultiMesh", "durationMilliseconds"}]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["requestId"]
       10 SETTABLEKS                       R3 R2 K0 ["requestId"]
       12 GETTABLEKS                       R3 R0 K1 ["generationId"]
       14 SETTABLEKS                       R3 R2 K1 ["generationId"]
       16 GETTABLEKS                       R3 R0 K2 ["success"]
       18 SETTABLEKS                       R3 R2 K2 ["success"]
       20 GETTABLEKS                       R3 R0 K3 ["errorMessage"]
       22 SETTABLEKS                       R3 R2 K3 ["errorMessage"]
       24 GETTABLEKS                       R3 R0 K4 ["failureReason"]
       26 SETTABLEKS                       R3 R2 K4 ["failureReason"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K5 ["surface"]
       31 SETTABLEKS                       R3 R2 K5 ["surface"]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K6 ["isManualRun"]
       36 SETTABLEKS                       R3 R2 K6 ["isManualRun"]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K7 ["conversationId"]
       41 SETTABLEKS                       R3 R2 K7 ["conversationId"]
       43 GETUPVAL                         R3 4
       44 SETTABLEKS                       R3 R2 K8 ["model"]
       46 GETUPVAL                         R3 5
       47 SETTABLEKS                       R3 R2 K9 ["cameraSource"]
       49 GETUPVAL                         R3 6
       50 SETTABLEKS                       R3 R2 K10 ["hasPrompt"]
       52 GETUPVAL                         R3 7
       53 SETTABLEKS                       R3 R2 K11 ["hasHintImage"]
       55 GETTABLEKS                       R4 R0 K12 ["isMultiMesh"]
       57 JUMPIFEQKB                       R4 TRUE ; [+2]
       59 LOADB                            R3 0 +1
       60 LOADB                            R3 1
       61 SETTABLEKS                       R3 R2 K12 ["isMultiMesh"]
       63 GETIMPORT                        R6 K18 [os.clock]
       65 CALL                             R6 0 1
       66 GETUPVAL                         R7 8
       67 SUB                              R5 R6 R7
       68 MULK                             R4 R5 K15 [1000]
       69 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       70 GETIMPORT                        R3 K21 [math.floor]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R2 K13 ["durationMilliseconds"]
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K0 ["telemetryContext"]
        7 GETTABLEKS                       R3 R1 K1 ["eventLogger"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R3 K2 ["logTextureGenCompleted"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R2 ; [+1]
       15 JUMPIF                           R4 ; [+2]
       16 LOADNIL                          R5
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R0 K3 ["model"]
       20 JUMPIF                           R5 ; [+3]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K4 ["DEFAULT_TEXTURE_GEN_MODEL"]
       24 GETTABLEKS                       R7 R0 K5 ["cameraExtrinsic"]
       26 GETTABLEKS                       R8 R0 K6 ["autoSelectView"]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K7 ["Enums"]
       31 GETTABLEKS                       R9 R9 K8 ["TextureGenModel"]
       33 GETTABLEKS                       R9 R9 K9 ["RbxTexture2"]
       35 JUMPIFEQ                         R5 R9 ; [+5]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K10 ["NotApplicable"]
       40 JUMP                             ; [+11]
       41 JUMPIFEQKNIL                     R7 ; [+3]
       43 JUMPIFNOTEQKB                    R8 TRUE ; [+5]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K11 ["Auto"]
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K12 ["User"]
       52 GETTABLEKS                       R7 R0 K13 ["textPrompt"]
       54 LOADB                            R8 0
       55 FASTCALL1                        TYPEOF R7 ; [+3]
       56 MOVE                             R10 R7
       57 GETIMPORT                        R9 K15 [typeof]
       59 CALL                             R9 1 1
       60 JUMPIFNOTEQKS                    R9 K16 ["string"] ; [+7]
       62 LENGTH                           R9 R7
       63 LOADN                            R10 0
       64 JUMPIFLT                         R10 R9 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETTABLEKS                       R11 R0 K17 ["hintImage"]
       70 FASTCALL1                        TYPEOF R11 ; [+2]
       71 GETIMPORT                        R10 K15 [typeof]
       73 CALL                             R10 1 1
       74 JUMPIFEQKS                       R10 K18 ["buffer"] ; [+2]
       76 LOADB                            R9 0 +1
       77 LOADB                            R9 1
       78 GETIMPORT                        R10 K21 [os.clock]
       80 CALL                             R10 0 1
       81 LOADB                            R11 0
       82 NEWCLOSURE                       R12 P0
       83 CAPTURE                          REF R11
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CLOSEUPVALS                      R11
       93 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Gen3dTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["HostSurface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Flags"]
       26 GETTABLEKS                       R5 R5 K10 ["getFFlagGen3dTextureGenTelemetry"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K11 ["Enums"]
       31 GETTABLEKS                       R5 R5 K12 ["TextureGenCameraSource"]
       33 NEWTABLE                         R6 2 0
       35 DUPCLOSURE                       R7 K13 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K14 ["resolveCameraSource"]
       40 DUPCLOSURE                       R8 K15 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R8 R6 K16 ["start"]
       46 RETURN                           R6 1
