PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 GETIMPORT                        R2 K3 [table.insert]
        9 CALL                             R2 2 0
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NAMECALL                         R7 R6 K4 ["GetTags"]
       16 CALL                             R7 1 3
       17 FORGPREP                         R7
       18 MOVE                             R14 R11
       19 NAMECALL                         R12 R6 K5 ["RemoveTag"]
       21 CALL                             R12 2 0
       22 FORGLOOP                         R7 2 ; [-5]
       24 FORGLOOP                         R2 2 ; [-11]
       26 RETURN                           R0 0

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
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["captureSnapshotAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R1 K7 [{[1], ["cameraDistanceMultiplier"], ["placeholderImageOnFailure"], ["viewportAlignedSeedFov"], ["viewportAlignedCapture"], ["cancelSupersededCaptures"] = True}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K8 ["PREVIEW_SIZE_PX"]
        4 SETTABLEKS                       R2 R1 K0 ["sizePx"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K9 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
        9 SETTABLEKS                       R2 R1 K1 ["cameraDistanceMultiplier"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K10 ["PLACEHOLDER_IMAGE"]
       14 SETTABLEKS                       R2 R1 K2 ["placeholderImageOnFailure"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K11 ["SEED_IMAGE_CAPTURE_FOV"]
       19 SETTABLEKS                       R2 R1 K3 ["viewportAlignedSeedFov"]
       21 GETUPVAL                         R2 1
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K4 ["viewportAlignedCapture"]
       25 JUMPIFNOT                        R0 ; [+7]
       26 MOVE                             R2 R0
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 SETTABLE                         R6 R1 R5
       31 FORGLOOP                         R2 2 ; [-2]
       33 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["capturePreviewImages"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 GETUPVAL                         R8 2
        8 CALL                             R8 0 1
        9 CALL                             R3 5 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["captureSinglePreviewImageAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 GETUPVAL                         R8 2
        8 CALL                             R8 0 1
        9 CALL                             R3 5 -1
       10 RETURN                           R3 -1

PROTO_8:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R0 R1 ; [+4]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 LOADN                            R2 1
        7 DIVK                             R4 R0 K0 [4]
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.floor]
       11 CALL                             R3 1 1
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K5 [math.max]
       16 CALL                             R1 2 1
       17 NEWTABLE                         R2 0 0
       19 NEWTABLE                         R3 0 0
       21 LOADN                            R6 0
       22 LOADN                            R4 3
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 MUL                              R9 R6 R1
       26 MOD                              R8 R9 R0
       27 ADDK                             R7 R8 K6 [1]
       28 GETTABLE                         R8 R3 R7
       29 JUMPIF                           R8 ; [+9]
       30 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 LOADB                            R8 1
       38 SETTABLE                         R8 R3 R7
       39 FORNLOOP                         R4
       40 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 JUMPIFEQKS                       R5 K0 [""] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K3 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-10]
       21 LENGTH                           R2 R0
       22 LOADN                            R3 0
       23 JUMPIFNOTLT                      R3 R2 ; [+3]
       25 MOVE                             R1 R0
       26 RETURN                           R1 1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETTABLE                         R0 R1 R2
       11 JUMPIFEQKNIL                     R0 ; [+7]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFEQKS                       R0 K1 [""] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R2 0
       21 GETTABLEN                        R1 R2 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTLE                      R0 R5 ; [+10]
        6 GETUPVAL                         R7 0
        7 GETUPVAL                         R9 1
        8 JUMPIFNOTLT                      R4 R9 ; [+3]
       10 ADDK                             R8 R4 K0 [1]
       11 JUMP                             ; [+1]
       12 LOADN                            R8 1
       13 GETTABLE                         R6 R7 R8
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R2 0
       18 GETTABLEN                        R1 R2 1
       19 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 LENGTH                           R1 R0
        9 GETUPVAL                         R2 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTLE                      R0 R5 ; [+10]
        6 GETUPVAL                         R7 0
        7 LOADN                            R9 1
        8 JUMPIFNOTLT                      R9 R4 ; [+3]
       10 SUBK                             R8 R4 K0 [1]
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R8 1
       13 GETTABLE                         R6 R7 R8
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 1
       19 GETTABLE                         R1 R2 R3
       20 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 LENGTH                           R1 R0
        9 GETUPVAL                         R2 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LENGTH                           R2 R1
       13 JUMP                             ; [+1]
       14 LOADN                            R2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["useState"]
       18 LOADN                            R4 1
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 2
       31 MOVE                             R8 R1
       32 MOVE                             R9 R2
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K3 ["useRef"]
       39 MOVE                             R6 R1
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K3 ["useRef"]
       44 MOVE                             R7 R2
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K2 ["useEffect"]
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R9 0 2
       56 MOVE                             R10 R1
       57 MOVE                             R11 R2
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R9 0 0
       69 CALL                             R7 2 1
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       73 NEWCLOSURE                       R9 P4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 NEWTABLE                         R10 0 0
       78 CALL                             R8 2 1
       79 JUMPIFNOT                        R0 ; [+5]
       80 LOADN                            R10 0
       81 JUMPIFNOTLT                      R10 R2 ; [+3]
       83 GETTABLE                         R9 R0 R3
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 JUMPIFNOTEQKS                    R9 K5 [""] ; [+2]
       88 LOADNIL                          R9
       89 DUPTABLE                         R10 K13 [{"exists", "current", "increment", "decrement", "countRef", "images", "index"}]
       90 LOADN                            R12 0
       91 JUMPIFLT                         R12 R2 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 SETTABLEKS                       R11 R10 K6 ["exists"]
       97 SETTABLEKS                       R9 R10 K7 ["current"]
       99 SETTABLEKS                       R7 R10 K8 ["increment"]
      101 SETTABLEKS                       R8 R10 K9 ["decrement"]
      103 SETTABLEKS                       R6 R10 K10 ["countRef"]
      105 SETTABLEKS                       R0 R10 K11 ["images"]
      107 SETTABLEKS                       R3 R10 K12 ["index"]
      109 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StarterGui"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Workspace"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Parent"]
       36 GETTABLEKS                       R6 R6 K14 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K12 ["Parent"]
       52 GETTABLEKS                       R8 R8 K17 ["Gen3dConstants"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETIMPORT                        R9 K1 [script]
       59 GETTABLEKS                       R9 R9 K12 ["Parent"]
       61 GETTABLEKS                       R9 R9 K18 ["Flags"]
       63 GETTABLEKS                       R9 R9 K19 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R4 K20 ["PreviewCaptureOps"]
       68 DUPCLOSURE                       R10 K21 [PROTO_0]
       69 DUPTABLE                         R11 K26 [{"parentPreviewGui", "getStudioCameraCFrame", "cloneForCapture", "captureSnapshotAsync"}]
       70 DUPCLOSURE                       R12 K27 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R12 R11 K22 ["parentPreviewGui"]
       75 DUPCLOSURE                       R12 K28 [PROTO_2]
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R12 R11 K23 ["getStudioCameraCFrame"]
       79 DUPCLOSURE                       R12 K29 [PROTO_3]
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R12 R11 K24 ["cloneForCapture"]
       83 DUPCLOSURE                       R12 K30 [PROTO_4]
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R12 R11 K25 ["captureSnapshotAsync"]
       87 DUPCLOSURE                       R12 K31 [PROTO_5]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 DUPCLOSURE                       R13 K32 [PROTO_6]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R12
       94 DUPCLOSURE                       R14 K33 [PROTO_7]
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 DUPCLOSURE                       R15 K34 [PROTO_8]
       99 DUPCLOSURE                       R16 K35 [PROTO_16]
      100 CAPTURE                          VAL R5
      101 DUPTABLE                         R17 K41 [{"getCameraDistance", "capturePreviewImages", "captureSinglePreviewImageAsync", "getBatch0Indices", "useCarouselPreviewImage"}]
      102 GETTABLEKS                       R18 R9 K36 ["getCameraDistance"]
      104 SETTABLEKS                       R18 R17 K36 ["getCameraDistance"]
      106 SETTABLEKS                       R13 R17 K37 ["capturePreviewImages"]
      108 SETTABLEKS                       R14 R17 K38 ["captureSinglePreviewImageAsync"]
      110 SETTABLEKS                       R15 R17 K39 ["getBatch0Indices"]
      112 SETTABLEKS                       R16 R17 K40 ["useCarouselPreviewImage"]
      114 RETURN                           R17 1
