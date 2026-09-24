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
        0 DUPTABLE                         R0 K11 [{[1] = 512, ["cameraDistanceMultiplier"] = 0.5, ["placeholderImageOnFailure"] = , ["viewportAlignedSeedFov"] = 10, ["viewportAlignedCapture"], ["cancelSupersededCaptures"] = False}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K12 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K8 ["viewportAlignedCapture"]
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 2
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+6]
       12 GETIMPORT                        R2 K3 [warn]
       14 LOADK                            R3 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 SETUPVAL                         R1 0
       19 GETUPVAL                         R2 0
       20 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["captureSinglePreviewImageAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 DUPTABLE                         R8 K12 [{["sizePx"] = 512, ["cameraDistanceMultiplier"] = 0.5, ["placeholderImageOnFailure"] = , ["viewportAlignedSeedFov"] = 10, ["viewportAlignedCapture"], ["cancelSupersededCaptures"] = False}]
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R9 R9 K13 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
       11 CALL                             R9 0 1
       12 SETTABLEKS                       R9 R8 K9 ["viewportAlignedCapture"]
       14 CALL                             R3 5 -1
       15 RETURN                           R3 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+3]
        3 GETUPVAL                         R2 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R3 K1 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+1]
       11 JUMPIF                           R4 ; [+6]
       12 GETIMPORT                        R5 K3 [warn]
       14 LOADK                            R6 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R5 1 0
       16 LOADNIL                          R2
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R4 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOTEQKNIL                  R2 ; [+5]
       22 GETIMPORT                        R3 K6 [error]
       24 LOADK                            R4 K7 ["AssistantApplication plugin component unavailable"]
       25 CALL                             R3 1 0
       26 MOVE                             R5 R0
       27 MOVE                             R6 R1
       28 NAMECALL                         R3 R2 K8 ["GetImageDataBase64Async"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+6]
       12 GETIMPORT                        R4 K3 [warn]
       14 LOADK                            R5 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R4 1 0
       16 LOADNIL                          R1
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R3 0
       19 GETUPVAL                         R1 0
       20 JUMPIFNOTEQKNIL                  R1 ; [+5]
       22 GETIMPORT                        R2 K6 [error]
       24 LOADK                            R3 K7 ["AssistantApplication plugin component unavailable"]
       25 CALL                             R2 1 0
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R1 K8 ["ConvertImageDataToTempIdAsync"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_11:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 DUPTABLE                         R3 K4 [{"captureSinglePreviewImageAsync", "capturePreviewImages", "getImageDataBase64Async", "convertImageDataToTempIdAsync"}]
        5 DUPCLOSURE                       R4 K5 [PROTO_7]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 SETTABLEKS                       R4 R3 K0 ["captureSinglePreviewImageAsync"]
       11 DUPCLOSURE                       R4 K6 [PROTO_8]
       12 SETTABLEKS                       R4 R3 K1 ["capturePreviewImages"]
       14 NEWCLOSURE                       R4 P3
       15 CAPTURE                          REF R1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R4 R3 K2 ["getImageDataBase64Async"]
       19 NEWCLOSURE                       R4 P4
       20 CAPTURE                          REF R1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R4 R3 K3 ["convertImageDataToTempIdAsync"]
       24 CLOSEUPVALS                      R1
       25 RETURN                           R3 1

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
       29 GETTABLEKS                       R5 R5 K13 ["AssistantUI"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K12 ["Packages"]
       36 GETTABLEKS                       R6 R6 K14 ["Gen3dCore"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K15 ["Bin"]
       43 GETTABLEKS                       R7 R7 K16 ["Common"]
       45 GETTABLEKS                       R7 R7 K17 ["defineLuaFlags"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R4 K18 ["Utils"]
       50 GETTABLEKS                       R7 R7 K19 ["Tools"]
       52 GETTABLEKS                       R8 R5 K20 ["PreviewCaptureOps"]
       54 DUPCLOSURE                       R9 K21 [PROTO_0]
       55 DUPTABLE                         R10 K26 [{"parentPreviewGui", "getStudioCameraCFrame", "cloneForCapture", "captureSnapshotAsync"}]
       56 DUPCLOSURE                       R11 K27 [PROTO_1]
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R11 R10 K22 ["parentPreviewGui"]
       61 DUPCLOSURE                       R11 K28 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R11 R10 K23 ["getStudioCameraCFrame"]
       65 SETTABLEKS                       R9 R10 K24 ["cloneForCapture"]
       67 DUPCLOSURE                       R11 K29 [PROTO_3]
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R10 K25 ["captureSnapshotAsync"]
       71 DUPCLOSURE                       R11 K30 [PROTO_4]
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R12 K31 [PROTO_11]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R6
       77 RETURN                           R12 1
