PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R2 R0 K0 ["Archivable"]
        4 SETTABLE                         R2 R1 R0
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R0 K0 ["Archivable"]
        8 NAMECALL                         R2 R0 K1 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K0 ["Archivable"]
       14 SETTABLE                         R7 R1 R6
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       18 FORGLOOP                         R2 2 ; [-7]
       20 NAMECALL                         R2 R0 K2 ["Clone"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       29 FORGLOOP                         R3 2 ; [-3]
       31 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R1 R0 K0 ["Parent"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["CFrame"]
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["captureSnapshotAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R0 K12 [{[1] = 512, ["cameraDistanceMultiplier"] = 0.5, ["placeholderImageOnFailure"] = , ["viewportAlignedSeedFov"] = 10, ["viewportAlignedCapture"], ["viewportAlignedCaptureRespectsTransform"], ["cancelSupersededCaptures"] = False}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K13 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K8 ["viewportAlignedCapture"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K14 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K9 ["viewportAlignedCaptureRespectsTransform"]
       13 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["AssistantApplication"]
        7 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["captureSinglePreviewImageAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 DUPTABLE                         R8 K13 [{["sizePx"] = 512, ["cameraDistanceMultiplier"] = 0.5, ["placeholderImageOnFailure"] = , ["viewportAlignedSeedFov"] = 10, ["viewportAlignedCapture"], ["viewportAlignedCaptureRespectsTransform"], ["cancelSupersededCaptures"] = False}]
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R9 R9 K14 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
       11 CALL                             R9 0 1
       12 SETTABLEKS                       R9 R8 K9 ["viewportAlignedCapture"]
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K15 ["getFFlagGen3dSeedImageCaptureRespectsTransform"]
       17 CALL                             R9 0 1
       18 SETTABLEKS                       R9 R8 K10 ["viewportAlignedCaptureRespectsTransform"]
       20 CALL                             R3 5 -1
       21 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 DUPTABLE                         R1 K5 [{"cframe", "fieldOfView", "viewportWidthPx", "viewportHeightPx"}]
        8 GETTABLEKS                       R2 R0 K6 ["CFrame"]
       10 SETTABLEKS                       R2 R1 K1 ["cframe"]
       12 GETTABLEKS                       R2 R0 K7 ["FieldOfView"]
       14 SETTABLEKS                       R2 R1 K2 ["fieldOfView"]
       16 GETTABLEKS                       R2 R0 K8 ["ViewportSize"]
       18 GETTABLEKS                       R2 R2 K9 ["X"]
       20 SETTABLEKS                       R2 R1 K3 ["viewportWidthPx"]
       22 GETTABLEKS                       R2 R0 K8 ["ViewportSize"]
       24 GETTABLEKS                       R2 R2 K10 ["Y"]
       26 SETTABLEKS                       R2 R1 K4 ["viewportHeightPx"]
       28 RETURN                           R1 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+3]
        3 GETUPVAL                         R2 0
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R3 1
        6 LOADK                            R5 K0 ["AssistantApplication"]
        7 NAMECALL                         R3 R3 K1 ["GetPluginComponent"]
        9 CALL                             R3 2 1
       10 SETUPVAL                         R3 0
       11 GETUPVAL                         R2 0
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R2 K2 ["GetImageDataBase64Async"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K0 ["AssistantApplication"]
        7 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R1 K2 ["ConvertImageDataToTempIdAsync"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_11:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 DUPTABLE                         R3 K5 [{"captureSinglePreviewImageAsync", "getStudioCamera", "capturePreviewImages", "getImageDataBase64Async", "convertImageDataToTempIdAsync"}]
        5 DUPCLOSURE                       R4 K6 [PROTO_6]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 SETTABLEKS                       R4 R3 K0 ["captureSinglePreviewImageAsync"]
       11 DUPCLOSURE                       R4 K7 [PROTO_7]
       12 CAPTURE                          UPVAL U3
       13 SETTABLEKS                       R4 R3 K1 ["getStudioCamera"]
       15 DUPCLOSURE                       R4 K8 [PROTO_8]
       16 SETTABLEKS                       R4 R3 K2 ["capturePreviewImages"]
       18 NEWCLOSURE                       R4 P4
       19 CAPTURE                          REF R1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R4 R3 K3 ["getImageDataBase64Async"]
       23 NEWCLOSURE                       R4 P5
       24 CAPTURE                          REF R1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R4 R3 K4 ["convertImageDataToTempIdAsync"]
       28 CLOSEUPVALS                      R1
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StarterGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Workspace"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["Gen3d"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["defineLuaFlags"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K17 ["PreviewCaptureOps"]
       43 DUPCLOSURE                       R7 K18 [PROTO_0]
       44 DUPTABLE                         R8 K23 [{"parentPreviewGui", "getStudioCameraCFrame", "cloneForCapture", "captureSnapshotAsync"}]
       45 DUPCLOSURE                       R9 K24 [PROTO_1]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R9 R8 K19 ["parentPreviewGui"]
       50 DUPCLOSURE                       R9 K25 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R9 R8 K20 ["getStudioCameraCFrame"]
       54 SETTABLEKS                       R7 R8 K21 ["cloneForCapture"]
       56 DUPCLOSURE                       R9 K26 [PROTO_3]
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R9 R8 K22 ["captureSnapshotAsync"]
       60 DUPCLOSURE                       R9 K27 [PROTO_4]
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R10 K28 [PROTO_11]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 RETURN                           R10 1
