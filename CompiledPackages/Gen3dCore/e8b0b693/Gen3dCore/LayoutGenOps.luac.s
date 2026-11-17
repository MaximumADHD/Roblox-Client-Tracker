PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["translator"]
        2 JUMPIFNOT                        R2 ; [+20]
        3 GETTABLEKS                       R4 R2 K1 ["getText"]
        5 MOVE                             R5 R2
        6 LOADK                            R6 K2 ["GenerateLayout"]
        7 MOVE                             R7 R1
        8 FASTPCALL                        pcall 4 ; [+2]
        9 GETIMPORT                        R3 K4 [pcall]
       11 CALL                             R3 4 2
       12 JUMPIFNOT                        R3 ; [+10]
       13 FASTCALL1                        TYPEOF R4 ; [+3]
       14 MOVE                             R6 R4
       15 GETIMPORT                        R5 K6 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+4]
       20 JUMPIFEQKS                       R4 K8 [""] ; [+2]
       22 RETURN                           R4 1
       23 GETUPVAL                         R5 0
       24 GETTABLE                         R4 R5 R1
       25 OR                               R3 R4 R1
       26 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["capabilities"]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETTABLEKS                       R3 R1 K1 ["debugLog"]
        7 JUMPIFEQKB                       R3 TRUE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K2 [buffer.fromstring]
        3 GETTABLEKS                       R4 R0 K3 ["data"]
        5 CALL                             R3 1 -1
        6 NAMECALL                         R1 R1 K4 ["Base64Decode"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["image/jpeg"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["image/jpg"] ; [+3]
        4 LOADK                            R1 K2 ["jpg"]
        5 RETURN                           R1 1
        6 LOADK                            R1 K3 ["png"]
        7 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 0
        1 JUMPIFNOTEQ                      R0 R0 ; [+10]
        3 FASTCALL1                        MATH_ABS R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [math.abs]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKN                    R2 K3 [Infinity] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["X"]
        4 LOADB                            R2 0
        5 JUMPIFNOTEQ                      R3 R3 ; [+10]
        7 FASTCALL1                        MATH_ABS R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [math.abs]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKN                    R4 K4 [Infinity] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+17]
       17 GETTABLEKS                       R2 R0 K0 ["X"]
       19 LOADN                            R3 0
       20 JUMPIFNOTLT                      R3 R2 ; [+13]
       22 LOADK                            R4 K5 ["\"x\":%*"]
       23 GETTABLEKS                       R6 R0 K0 ["X"]
       25 NAMECALL                         R4 R4 K6 ["format"]
       27 CALL                             R4 2 1
       28 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K9 [table.insert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R3 R0 K10 ["Y"]
       36 LOADB                            R2 0
       37 JUMPIFNOTEQ                      R3 R3 ; [+10]
       39 FASTCALL1                        MATH_ABS R3 ; [+3]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K3 [math.abs]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKN                    R4 K4 [Infinity] ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 JUMPIFNOT                        R2 ; [+17]
       49 GETTABLEKS                       R2 R0 K10 ["Y"]
       51 LOADN                            R3 0
       52 JUMPIFNOTLT                      R3 R2 ; [+13]
       54 LOADK                            R4 K11 ["\"y\":%*"]
       55 GETTABLEKS                       R6 R0 K10 ["Y"]
       57 NAMECALL                         R4 R4 K6 ["format"]
       59 CALL                             R4 2 1
       60 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       62 MOVE                             R3 R1
       63 GETIMPORT                        R2 K9 [table.insert]
       65 CALL                             R2 2 0
       66 GETTABLEKS                       R3 R0 K12 ["Z"]
       68 LOADB                            R2 0
       69 JUMPIFNOTEQ                      R3 R3 ; [+10]
       71 FASTCALL1                        MATH_ABS R3 ; [+3]
       72 MOVE                             R5 R3
       73 GETIMPORT                        R4 K3 [math.abs]
       75 CALL                             R4 1 1
       76 JUMPIFNOTEQKN                    R4 K4 [Infinity] ; [+2]
       78 LOADB                            R2 0 +1
       79 LOADB                            R2 1
       80 JUMPIFNOT                        R2 ; [+17]
       81 GETTABLEKS                       R2 R0 K12 ["Z"]
       83 LOADN                            R3 0
       84 JUMPIFNOTLT                      R3 R2 ; [+13]
       86 LOADK                            R4 K13 ["\"z\":%*"]
       87 GETTABLEKS                       R6 R0 K12 ["Z"]
       89 NAMECALL                         R4 R4 K6 ["format"]
       91 CALL                             R4 2 1
       92 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       94 MOVE                             R3 R1
       95 GETIMPORT                        R2 K9 [table.insert]
       97 CALL                             R2 2 0
       98 LENGTH                           R2 R1
       99 JUMPIFNOTEQKN                    R2 K14 [0] ; [+3]
      101 LOADNIL                          R2
      102 RETURN                           R2 1
      103 LOADK                            R3 K15 ["{"]
      104 GETIMPORT                        R4 K17 [table.concat]
      106 MOVE                             R5 R1
      107 LOADK                            R6 K18 [","]
      108 CALL                             R4 2 1
      109 LOADK                            R5 K19 ["}"]
      110 CONCAT                           R2 R3 R5
      111 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 LOADB                            R1 0
        3 JUMPIFNOTEQ                      R2 R2 ; [+10]
        5 FASTCALL1                        MATH_ABS R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K3 [math.abs]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKN                    R3 K4 [Infinity] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+30]
       15 GETTABLEKS                       R2 R0 K5 ["Y"]
       17 LOADB                            R1 0
       18 JUMPIFNOTEQ                      R2 R2 ; [+10]
       20 FASTCALL1                        MATH_ABS R2 ; [+3]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K3 [math.abs]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKN                    R3 K4 [Infinity] ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 JUMPIFNOT                        R1 ; [+15]
       30 GETTABLEKS                       R2 R0 K6 ["Z"]
       32 LOADB                            R1 0
       33 JUMPIFNOTEQ                      R2 R2 ; [+10]
       35 FASTCALL1                        MATH_ABS R2 ; [+3]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K3 [math.abs]
       39 CALL                             R3 1 1
       40 JUMPIFNOTEQKN                    R3 K4 [Infinity] ; [+2]
       42 LOADB                            R1 0 +1
       43 LOADB                            R1 1
       44 JUMPIF                           R1 ; [+2]
       45 LOADNIL                          R1
       46 RETURN                           R1 1
       47 LOADK                            R2 K7 ["{"]
       48 LOADK                            R3 K8 ["\"x\":%*,\"y\":%*,\"z\":%*"]
       49 GETTABLEKS                       R5 R0 K0 ["X"]
       51 GETTABLEKS                       R6 R0 K5 ["Y"]
       53 GETTABLEKS                       R7 R0 K6 ["Z"]
       55 NAMECALL                         R3 R3 K9 ["format"]
       57 CALL                             R3 4 1
       58 LOADK                            R4 K10 ["}"]
       59 CONCAT                           R1 R2 R4
       60 RETURN                           R1 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["SCENE_QUALITY_BY_VALUE"]
       12 GETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R2 0 0
        8 JUMPIFEQKNIL                     R1 ; [+27]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["DEFAULT_SCENE_QUALITY"]
       13 JUMPIFEQ                         R1 R3 ; [+22]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["parseSceneQuality"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 LOADK                            R5 K5 ["Unknown scene quality: %*"]
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K7 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R5 R5 K8 ["format"]
       28 CALL                             R5 2 1
       29 FASTCALL2                        ASSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K10 [assert]
       33 CALL                             R3 2 0
       34 SETTABLEKS                       R1 R2 K11 ["quality"]
       36 GETIMPORT                        R3 K13 [next]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 1
       40 JUMPIFNOTEQKNIL                  R3 ; [+3]
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETUPVAL                         R3 2
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R3 K14 ["JSONEncode"]
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_9:
        0 LOADK                            R4 K0 ["([^%-]+)$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 OR                               R1 R2 R0
        5 LOADK                            R2 K2 ["RBXAI-GeneratedLayout-%*"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+8]
        7 GETUPVAL                         R3 0
        8 GETIMPORT                        R4 K4 [string.lower]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETTABLE                         R2 R3 R4
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOTEQKNIL                  R2 ; [+12]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K1 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+5]
       24 JUMPIFEQKS                       R1 K5 [""] ; [+3]
       26 LOADK                            R3 K6 ["Completed"]
       27 RETURN                           R3 1
       28 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sceneGeneration"]
        3 GETTABLEKS                       R1 R1 K1 ["getStatusAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["errorMessage"]
        9 GETUPVAL                         R3 1
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R5 K4 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+5]
       17 JUMPIFEQKS                       R2 K6 [""] ; [+3]
       19 MOVE                             R4 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R3 K7 ["sceneGenBackendError"]
       24 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["scriptUrl"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R2 K0 ["translator"]
        3 JUMPIFNOT                        R3 ; [+21]
        4 GETTABLEKS                       R5 R3 K1 ["getText"]
        6 MOVE                             R6 R3
        7 LOADK                            R7 K2 ["GenerateLayout"]
        8 MOVE                             R8 R0
        9 FASTPCALL                        pcall 4 ; [+2]
       10 GETIMPORT                        R4 K4 [pcall]
       12 CALL                             R4 4 2
       13 JUMPIFNOT                        R4 ; [+11]
       14 FASTCALL1                        TYPEOF R5 ; [+3]
       15 MOVE                             R7 R5
       16 GETIMPORT                        R6 K6 [typeof]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+5]
       21 JUMPIFEQKS                       R5 K8 [""] ; [+3]
       23 MOVE                             R1 R5
       24 RETURN                           R1 1
       25 GETUPVAL                         R5 1
       26 GETTABLE                         R4 R5 R0
       27 OR                               R1 R4 R0
       28 RETURN                           R1 1

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["pollForCompletedStatus"]
        6 MOVE                             R5 R3
        7 MOVE                             R6 R1
        8 DUPCLOSURE                       R7 K1 [PROTO_12]
        9 NEWCLOSURE                       R8 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 LOADK                            R9 K2 ["FailedToGenerateLayout"]
       13 LOADK                            R10 K3 ["GenerateScene"]
       14 GETUPVAL                         R11 2
       15 GETTABLEKS                       R11 R11 K4 ["LAYOUT_MAX_POLL_ATTEMPTS"]
       17 CALL                             R4 7 -1
       18 RETURN                           R4 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["http"]
        2 GETTABLEKS                       R2 R2 K1 ["requestAsync"]
        4 DUPTABLE                         R3 K5 [{["Url"], ["Method"] = "GET"}]
        5 SETTABLEKS                       R1 R3 K2 ["Url"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K6 ["Success"]
       10 JUMPIFNOT                        R3 ; [+14]
       11 GETTABLEKS                       R4 R2 K7 ["Body"]
       13 FASTCALL1                        TYPEOF R4 ; [+2]
       14 GETIMPORT                        R3 K9 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+7]
       19 GETTABLEKS                       R4 R2 K7 ["Body"]
       21 LENGTH                           R3 R4
       22 LOADN                            R4 0
       23 JUMPIFLT                         R4 R3 ; [+58]
       25 GETIMPORT                        R3 K12 [warn]
       27 LOADK                            R4 K13 ["[GenerateScene] downloadScript failed: success=%* statusCode=%* statusMessage=%*"]
       28 GETTABLEKS                       R7 R2 K6 ["Success"]
       30 FASTCALL1                        TOSTRING R7 ; [+2]
       31 GETIMPORT                        R6 K15 [tostring]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R2 K16 ["StatusCode"]
       36 FASTCALL1                        TOSTRING R8 ; [+2]
       37 GETIMPORT                        R7 K15 [tostring]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R9 R2 K17 ["StatusMessage"]
       42 FASTCALL1                        TOSTRING R9 ; [+2]
       43 GETIMPORT                        R8 K15 [tostring]
       45 CALL                             R8 1 1
       46 NAMECALL                         R4 R4 K18 ["format"]
       48 CALL                             R4 4 1
       49 CALL                             R3 1 0
       50 GETIMPORT                        R3 K20 [error]
       52 GETTABLEKS                       R5 R0 K21 ["translator"]
       54 JUMPIFNOT                        R5 ; [+21]
       55 GETTABLEKS                       R7 R5 K22 ["getText"]
       57 MOVE                             R8 R5
       58 LOADK                            R9 K23 ["GenerateLayout"]
       59 LOADK                            R10 K24 ["LayoutMissingScriptUrl"]
       60 FASTPCALL                        pcall 4 ; [+2]
       61 GETIMPORT                        R6 K26 [pcall]
       63 CALL                             R6 4 2
       64 JUMPIFNOT                        R6 ; [+11]
       65 FASTCALL1                        TYPEOF R7 ; [+3]
       66 MOVE                             R9 R7
       67 GETIMPORT                        R8 K9 [typeof]
       69 CALL                             R8 1 1
       70 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+5]
       72 JUMPIFEQKS                       R7 K27 [""] ; [+3]
       74 MOVE                             R4 R7
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R6 R7 K24 ["LayoutMissingScriptUrl"]
       79 ORK                              R4 R6 K24 ["LayoutMissingScriptUrl"]
       80 LOADN                            R5 0
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R2 K7 ["Body"]
       84 RETURN                           R3 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["requestId"]
        2 GETTABLEKS                       R4 R0 K1 ["images"]
        4 JUMPIF                           R4 ; [+2]
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R4
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 LOADB                            R11 0
       12 GETTABLEKS                       R13 R9 K2 ["data"]
       14 FASTCALL1                        TYPEOF R13 ; [+2]
       15 GETIMPORT                        R12 K4 [typeof]
       17 CALL                             R12 1 1
       18 JUMPIFNOTEQKS                    R12 K5 ["string"] ; [+9]
       20 GETTABLEKS                       R13 R9 K2 ["data"]
       22 LENGTH                           R12 R13
       23 LOADN                            R13 0
       24 JUMPIFLT                         R13 R12 ; [+2]
       26 LOADB                            R11 0 +1
       27 LOADB                            R11 1
       28 LOADK                            R12 K6 ["images[%*].data must be a non-empty string"]
       29 MOVE                             R14 R8
       30 NAMECALL                         R12 R12 K7 ["format"]
       32 CALL                             R12 2 1
       33 FASTCALL2                        ASSERT R11 R12 ; [+3]
       35 GETIMPORT                        R10 K9 [assert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R5 2 ; [-28]
       40 GETTABLEKS                       R5 R2 K10 ["getGenerationSession"]
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R8 R5 K11 ["generationThread"]
       46 JUMPIFEQKNIL                     R8 ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       52 LOADK                            R8 K12 ["Generation thread already exists for requestId"]
       53 GETIMPORT                        R6 K9 [assert]
       55 CALL                             R6 2 0
       56 GETIMPORT                        R6 K15 [coroutine.running]
       58 CALL                             R6 0 1
       59 SETTABLEKS                       R6 R5 K11 ["generationThread"]
       61 GETTABLEKS                       R7 R1 K16 ["capabilities"]
       63 LOADB                            R6 0
       64 JUMPIFEQKNIL                     R7 ; [+7]
       66 GETTABLEKS                       R8 R7 K17 ["debugLog"]
       68 JUMPIFEQKB                       R8 TRUE ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 JUMPIFNOT                        R6 ; [+33]
       73 NEWTABLE                         R6 0 0
       75 MOVE                             R7 R4
       76 LOADNIL                          R8
       77 LOADNIL                          R9
       78 FORGPREP                         R7
       79 GETTABLEKS                       R14 R11 K18 ["mimeType"]
       81 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       83 MOVE                             R13 R6
       84 GETIMPORT                        R12 K21 [table.insert]
       86 CALL                             R12 2 0
       87 FORGLOOP                         R7 2 ; [-9]
       89 GETIMPORT                        R7 K23 [warn]
       91 LOADK                            R8 K24 ["[GenerateScene] generateSceneAsync:"]
       92 GETUPVAL                         R9 0
       93 DUPTABLE                         R11 K27 [{"requestId", "textPrompt", "imageMimeTypes"}]
       94 SETTABLEKS                       R3 R11 K0 ["requestId"]
       96 GETTABLEKS                       R12 R0 K25 ["textPrompt"]
       98 SETTABLEKS                       R12 R11 K25 ["textPrompt"]
      100 SETTABLEKS                       R6 R11 K26 ["imageMimeTypes"]
      102 NAMECALL                         R9 R9 K28 ["JSONEncode"]
      104 CALL                             R9 2 -1
      105 CALL                             R7 -1 0
      106 NEWTABLE                         R6 0 0
      108 MOVE                             R7 R4
      109 LOADNIL                          R8
      110 LOADNIL                          R9
      111 FORGPREP                         R7
      112 DUPTABLE                         R14 K32 [{"name", "content", "contentType"}]
      113 LOADK                            R15 K33 ["image%*.%*"]
      114 MOVE                             R17 R10
      115 GETTABLEKS                       R19 R11 K18 ["mimeType"]
      117 JUMPIFEQKS                       R19 K34 ["image/jpeg"] ; [+3]
      119 JUMPIFNOTEQKS                    R19 K35 ["image/jpg"] ; [+3]
      121 LOADK                            R18 K36 ["jpg"]
      122 JUMP                             ; [+1]
      123 LOADK                            R18 K37 ["png"]
      124 NAMECALL                         R15 R15 K7 ["format"]
      126 CALL                             R15 3 1
      127 SETTABLEKS                       R15 R14 K29 ["name"]
      129 GETUPVAL                         R15 1
      130 GETIMPORT                        R17 K40 [buffer.fromstring]
      132 GETTABLEKS                       R18 R11 K2 ["data"]
      134 CALL                             R17 1 -1
      135 NAMECALL                         R15 R15 K41 ["Base64Decode"]
      137 CALL                             R15 -1 1
      138 SETTABLEKS                       R15 R14 K30 ["content"]
      140 GETTABLEKS                       R15 R11 K18 ["mimeType"]
      142 SETTABLEKS                       R15 R14 K31 ["contentType"]
      144 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      146 MOVE                             R13 R6
      147 GETIMPORT                        R12 K21 [table.insert]
      149 CALL                             R12 2 0
      150 FORGLOOP                         R7 2 ; [-39]
      152 GETTABLEKS                       R7 R0 K25 ["textPrompt"]
      154 LOADB                            R8 0
      155 FASTCALL1                        TYPEOF R7 ; [+3]
      156 MOVE                             R10 R7
      157 GETIMPORT                        R9 K4 [typeof]
      159 CALL                             R9 1 1
      160 JUMPIFNOTEQKS                    R9 K5 ["string"] ; [+7]
      162 LENGTH                           R9 R7
      163 LOADN                            R10 0
      164 JUMPIFLT                         R10 R9 ; [+2]
      166 LOADB                            R8 0 +1
      167 LOADB                            R8 1
      168 GETTABLEKS                       R9 R1 K42 ["sceneGeneration"]
      170 GETTABLEKS                       R9 R9 K43 ["startAsync"]
      172 DUPTABLE                         R10 K49 [{"textPrompts", "images", "sceneSize", "originWorldCoordinate", "useMeshGen", "adminOptions"}]
      173 JUMPIFNOT                        R8 ; [+6]
      174 NEWTABLE                         R11 0 1
      176 MOVE                             R12 R7
      177 SETLIST                          R11 R12 1 [1]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R11
      181 SETTABLEKS                       R11 R10 K44 ["textPrompts"]
      183 LENGTH                           R12 R6
      184 LOADN                            R13 0
      185 JUMPIFNOTLT                      R13 R12 ; [+3]
      187 MOVE                             R11 R6
      188 JUMP                             ; [+1]
      189 LOADNIL                          R11
      190 SETTABLEKS                       R11 R10 K1 ["images"]
      192 GETTABLEKS                       R12 R0 K50 ["boundingBoxSize"]
      194 JUMPIFNOT                        R12 ; [+5]
      195 GETUPVAL                         R11 2
      196 GETTABLEKS                       R12 R0 K50 ["boundingBoxSize"]
      198 CALL                             R11 1 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R11
      201 SETTABLEKS                       R11 R10 K45 ["sceneSize"]
      203 GETTABLEKS                       R12 R0 K51 ["boundingBoxCFrame"]
      205 JUMPIFNOT                        R12 ; [+65]
      206 GETTABLEKS                       R12 R0 K51 ["boundingBoxCFrame"]
      208 GETTABLEKS                       R12 R12 K52 ["Position"]
      210 GETTABLEKS                       R14 R12 K53 ["X"]
      212 LOADB                            R13 0
      213 JUMPIFNOTEQ                      R14 R14 ; [+10]
      215 FASTCALL1                        MATH_ABS R14 ; [+3]
      216 MOVE                             R16 R14
      217 GETIMPORT                        R15 K56 [math.abs]
      219 CALL                             R15 1 1
      220 JUMPIFNOTEQKN                    R15 K57 [Infinity] ; [+2]
      222 LOADB                            R13 0 +1
      223 LOADB                            R13 1
      224 JUMPIFNOT                        R13 ; [+30]
      225 GETTABLEKS                       R14 R12 K58 ["Y"]
      227 LOADB                            R13 0
      228 JUMPIFNOTEQ                      R14 R14 ; [+10]
      230 FASTCALL1                        MATH_ABS R14 ; [+3]
      231 MOVE                             R16 R14
      232 GETIMPORT                        R15 K56 [math.abs]
      234 CALL                             R15 1 1
      235 JUMPIFNOTEQKN                    R15 K57 [Infinity] ; [+2]
      237 LOADB                            R13 0 +1
      238 LOADB                            R13 1
      239 JUMPIFNOT                        R13 ; [+15]
      240 GETTABLEKS                       R14 R12 K59 ["Z"]
      242 LOADB                            R13 0
      243 JUMPIFNOTEQ                      R14 R14 ; [+10]
      245 FASTCALL1                        MATH_ABS R14 ; [+3]
      246 MOVE                             R16 R14
      247 GETIMPORT                        R15 K56 [math.abs]
      249 CALL                             R15 1 1
      250 JUMPIFNOTEQKN                    R15 K57 [Infinity] ; [+2]
      252 LOADB                            R13 0 +1
      253 LOADB                            R13 1
      254 JUMPIF                           R13 ; [+2]
      255 LOADNIL                          R11
      256 JUMP                             ; [+15]
      257 LOADK                            R13 K60 ["{"]
      258 LOADK                            R14 K61 ["\"x\":%*,\"y\":%*,\"z\":%*"]
      259 GETTABLEKS                       R16 R12 K53 ["X"]
      261 GETTABLEKS                       R17 R12 K58 ["Y"]
      263 GETTABLEKS                       R18 R12 K59 ["Z"]
      265 NAMECALL                         R14 R14 K7 ["format"]
      267 CALL                             R14 4 1
      268 LOADK                            R15 K62 ["}"]
      269 CONCAT                           R11 R13 R15
      270 JUMP                             ; [+1]
      271 LOADNIL                          R11
      272 SETTABLEKS                       R11 R10 K46 ["originWorldCoordinate"]
      274 GETTABLEKS                       R12 R0 K47 ["useMeshGen"]
      276 JUMPIFNOTEQKB                    R12 FALSE ; [+2]
      278 LOADB                            R11 0 +1
      279 LOADB                            R11 1
      280 SETTABLEKS                       R11 R10 K47 ["useMeshGen"]
      282 GETUPVAL                         R11 3
      283 GETTABLEKS                       R12 R0 K48 ["adminOptions"]
      285 GETTABLEKS                       R13 R0 K63 ["quality"]
      287 CALL                             R11 2 1
      288 SETTABLEKS                       R11 R10 K48 ["adminOptions"]
      290 CALL                             R9 1 1
      291 GETTABLEKS                       R10 R9 K64 ["ok"]
      293 JUMPIF                           R10 ; [+42]
      294 LOADNIL                          R10
      295 SETTABLEKS                       R10 R5 K11 ["generationThread"]
      297 GETIMPORT                        R10 K66 [error]
      299 GETTABLEKS                       R12 R9 K67 ["errorMessage"]
      301 JUMPIF                           R12 ; [+28]
      302 GETTABLEKS                       R13 R1 K68 ["translator"]
      304 JUMPIFNOT                        R13 ; [+21]
      305 GETTABLEKS                       R15 R13 K69 ["getText"]
      307 MOVE                             R16 R13
      308 LOADK                            R17 K70 ["GenerateLayout"]
      309 LOADK                            R18 K71 ["FailedToGenerateLayout"]
      310 FASTPCALL                        pcall 4 ; [+2]
      311 GETIMPORT                        R14 K73 [pcall]
      313 CALL                             R14 4 2
      314 JUMPIFNOT                        R14 ; [+11]
      315 FASTCALL1                        TYPEOF R15 ; [+3]
      316 MOVE                             R17 R15
      317 GETIMPORT                        R16 K4 [typeof]
      319 CALL                             R16 1 1
      320 JUMPIFNOTEQKS                    R16 K5 ["string"] ; [+5]
      322 JUMPIFEQKS                       R15 K74 [""] ; [+3]
      324 MOVE                             R12 R15
      325 JUMP                             ; [+4]
      326 GETUPVAL                         R15 4
      327 GETTABLEKS                       R14 R15 K71 ["FailedToGenerateLayout"]
      329 ORK                              R12 R14 K71 ["FailedToGenerateLayout"]
      330 FASTCALL1                        TOSTRING R12 ; [+2]
      331 GETIMPORT                        R11 K76 [tostring]
      333 CALL                             R11 1 1
      334 LOADN                            R12 0
      335 CALL                             R10 2 0
      336 GETTABLEKS                       R10 R9 K77 ["jobId"]
      338 FASTCALL1                        TYPEOF R10 ; [+3]
      339 MOVE                             R14 R10
      340 GETIMPORT                        R13 K4 [typeof]
      342 CALL                             R13 1 1
      343 JUMPIFEQKS                       R13 K5 ["string"] ; [+2]
      345 LOADB                            R12 0 +1
      346 LOADB                            R12 1
      347 FASTCALL2K                       ASSERT R12 K78 ; [+4]
      349 LOADK                            R13 K78 ["Missing jobId in startAsync response"]
      350 GETIMPORT                        R11 K9 [assert]
      352 CALL                             R11 2 0
      353 SETTABLEKS                       R10 R5 K79 ["generationId"]
      355 GETTABLEKS                       R12 R1 K16 ["capabilities"]
      357 LOADB                            R11 0
      358 JUMPIFEQKNIL                     R12 ; [+7]
      360 GETTABLEKS                       R13 R12 K17 ["debugLog"]
      362 JUMPIFEQKB                       R13 TRUE ; [+2]
      364 LOADB                            R11 0 +1
      365 LOADB                            R11 1
      366 JUMPIFNOT                        R11 ; [+13]
      367 GETIMPORT                        R11 K23 [warn]
      369 LOADK                            R12 K80 ["[GenerateScene] generateSceneAsync started:"]
      370 GETUPVAL                         R13 0
      371 DUPTABLE                         R15 K81 [{"requestId", "jobId"}]
      372 SETTABLEKS                       R3 R15 K0 ["requestId"]
      374 SETTABLEKS                       R10 R15 K77 ["jobId"]
      376 NAMECALL                         R13 R13 K28 ["JSONEncode"]
      378 CALL                             R13 2 -1
      379 CALL                             R11 -1 0
      380 GETUPVAL                         R11 5
      381 MOVE                             R12 R1
      382 MOVE                             R13 R10
      383 MOVE                             R14 R5
      384 CALL                             R11 3 1
      385 GETUPVAL                         R12 6
      386 MOVE                             R13 R1
      387 MOVE                             R14 R11
      388 CALL                             R12 2 1
      389 SETTABLEKS                       R12 R5 K82 ["scriptSource"]
      391 LOADNIL                          R13
      392 SETTABLEKS                       R13 R5 K11 ["generationThread"]
      394 DUPTABLE                         R13 K83 [{"jobId", "scriptSource"}]
      395 SETTABLEKS                       R10 R13 K77 ["jobId"]
      397 SETTABLEKS                       R12 R13 K82 ["scriptSource"]
      399 RETURN                           R13 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LAYOUT_CANCELLED_BY_USER_ERROR"]
        3 JUMPIFEQ                         R1 R2 ; [+31]
        5 GETTABLEKS                       R3 R0 K1 ["translator"]
        7 JUMPIFNOT                        R3 ; [+21]
        8 GETTABLEKS                       R5 R3 K2 ["getText"]
       10 MOVE                             R6 R3
       11 LOADK                            R7 K3 ["GenerateLayout"]
       12 LOADK                            R8 K4 ["UserCancelled"]
       13 FASTPCALL                        pcall 4 ; [+2]
       14 GETIMPORT                        R4 K6 [pcall]
       16 CALL                             R4 4 2
       17 JUMPIFNOT                        R4 ; [+11]
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K8 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+5]
       25 JUMPIFEQKS                       R5 K10 [""] ; [+3]
       27 MOVE                             R2 R5
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K4 ["UserCancelled"]
       32 ORK                              R2 R4 K4 ["UserCancelled"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+9]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K11 ["Enums"]
       38 GETTABLEKS                       R2 R2 K12 ["FailureReason"]
       40 GETTABLEKS                       R2 R2 K13 ["GenerationCanceled"]
       42 RETURN                           R2 1
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K14 ["classifyFailureReason"]
       46 MOVE                             R3 R1
       47 CALL                             R2 1 -1
       48 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K7 [{"requestId", "jobId", "requestSource", "success", "errorMessage", "failureReason", "durationMilliseconds"}]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["requestId"]
       10 SETTABLEKS                       R3 R2 K0 ["requestId"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K8 ["generationId"]
       15 SETTABLEKS                       R3 R2 K1 ["jobId"]
       17 GETUPVAL                         R3 4
       18 SETTABLEKS                       R3 R2 K2 ["requestSource"]
       20 GETTABLEKS                       R3 R0 K3 ["success"]
       22 SETTABLEKS                       R3 R2 K3 ["success"]
       24 GETTABLEKS                       R3 R0 K4 ["errorMessage"]
       26 SETTABLEKS                       R3 R2 K4 ["errorMessage"]
       28 GETTABLEKS                       R3 R0 K5 ["failureReason"]
       30 SETTABLEKS                       R3 R2 K5 ["failureReason"]
       32 GETIMPORT                        R6 K12 [os.clock]
       34 CALL                             R6 0 1
       35 GETUPVAL                         R7 5
       36 SUB                              R5 R6 R7
       37 MULK                             R4 R5 K9 [1000]
       38 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       39 GETIMPORT                        R3 K15 [math.floor]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K6 ["durationMilliseconds"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = False, ["failureReason"]}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K4 ["Enums"]
        5 GETTABLEKS                       R2 R2 K5 ["FailureReason"]
        7 GETTABLEKS                       R2 R2 K6 ["GenerationCanceled"]
        9 SETTABLEKS                       R2 R1 K2 ["failureReason"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["eventLogger"]
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R4 R3 K1 ["logSceneGenCompleted"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R0 K2 ["requestSource"]
        9 GETUPVAL                         R6 0
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+4]
       12 JUMPIFEQKNIL                     R5 ; [+3]
       14 JUMPIFNOTEQKNIL                  R4 ; [+7]
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 MOVE                             R9 R2
       20 CALL                             R6 3 1
       21 RETURN                           R6 1
       22 GETTABLEKS                       R6 R2 K3 ["getGenerationSession"]
       24 GETTABLEKS                       R7 R0 K4 ["requestId"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K5 ["generationThread"]
       29 JUMPIFEQKNIL                     R7 ; [+7]
       31 GETUPVAL                         R7 1
       32 MOVE                             R8 R0
       33 MOVE                             R9 R1
       34 MOVE                             R10 R2
       35 CALL                             R7 3 1
       36 RETURN                           R7 1
       37 LOADNIL                          R7
       38 SETTABLEKS                       R7 R6 K6 ["sceneGenBackendError"]
       40 GETIMPORT                        R7 K9 [os.clock]
       42 CALL                             R7 0 1
       43 LOADB                            R8 0
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          REF R8
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 NEWCLOSURE                       R10 P1
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U2
       54 SETTABLEKS                       R10 R6 K10 ["reportSceneGenCanceled"]
       56 GETUPVAL                         R11 1
       57 MOVE                             R12 R0
       58 MOVE                             R13 R1
       59 MOVE                             R14 R2
       60 FASTPCALL                        pcall 4 ; [+2]
       61 GETIMPORT                        R10 K12 [pcall]
       63 CALL                             R10 4 2
       64 LOADNIL                          R12
       65 SETTABLEKS                       R12 R6 K10 ["reportSceneGenCanceled"]
       67 JUMPIFNOT                        R10 ; [+5]
       68 MOVE                             R12 R9
       69 DUPTABLE                         R13 K15 [{["success"] = True}]
       70 CALL                             R12 1 0
       71 CLOSEUPVALS                      R8
       72 RETURN                           R11 1
       73 FASTCALL1                        TOSTRING R11 ; [+3]
       74 MOVE                             R13 R11
       75 GETIMPORT                        R12 K17 [tostring]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R6 K6 ["sceneGenBackendError"]
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K18 ["LAYOUT_CANCELLED_BY_USER_ERROR"]
       83 JUMPIFEQ                         R12 R15 ; [+31]
       85 GETTABLEKS                       R16 R1 K19 ["translator"]
       87 JUMPIFNOT                        R16 ; [+21]
       88 GETTABLEKS                       R18 R16 K20 ["getText"]
       90 MOVE                             R19 R16
       91 LOADK                            R20 K21 ["GenerateLayout"]
       92 LOADK                            R21 K22 ["UserCancelled"]
       93 FASTPCALL                        pcall 4 ; [+2]
       94 GETIMPORT                        R17 K12 [pcall]
       96 CALL                             R17 4 2
       97 JUMPIFNOT                        R17 ; [+11]
       98 FASTCALL1                        TYPEOF R18 ; [+3]
       99 MOVE                             R20 R18
      100 GETIMPORT                        R19 K24 [typeof]
      102 CALL                             R19 1 1
      103 JUMPIFNOTEQKS                    R19 K25 ["string"] ; [+5]
      105 JUMPIFEQKS                       R18 K26 [""] ; [+3]
      107 MOVE                             R15 R18
      108 JUMP                             ; [+4]
      109 GETUPVAL                         R18 4
      110 GETTABLEKS                       R17 R18 K22 ["UserCancelled"]
      112 ORK                              R15 R17 K22 ["UserCancelled"]
      113 JUMPIFNOTEQ                      R12 R15 ; [+9]
      115 GETUPVAL                         R14 2
      116 GETTABLEKS                       R14 R14 K27 ["Enums"]
      118 GETTABLEKS                       R14 R14 K28 ["FailureReason"]
      120 GETTABLEKS                       R14 R14 K29 ["GenerationCanceled"]
      122 JUMP                             ; [+5]
      123 GETUPVAL                         R14 5
      124 GETTABLEKS                       R14 R14 K30 ["classifyFailureReason"]
      126 MOVE                             R15 R12
      127 CALL                             R14 1 1
      128 GETUPVAL                         R15 2
      129 GETTABLEKS                       R15 R15 K27 ["Enums"]
      131 GETTABLEKS                       R15 R15 K28 ["FailureReason"]
      133 GETTABLEKS                       R15 R15 K31 ["GenerationFailed"]
      135 JUMPIFNOTEQ                      R14 R15 ; [+9]
      137 JUMPIFEQKNIL                     R13 ; [+7]
      139 GETUPVAL                         R15 5
      140 GETTABLEKS                       R15 R15 K30 ["classifyFailureReason"]
      142 MOVE                             R16 R13
      143 CALL                             R15 1 1
      144 MOVE                             R14 R15
      145 MOVE                             R15 R9
      146 DUPTABLE                         R16 K35 [{["success"] = False, ["errorMessage"], ["failureReason"]}]
      147 OR                               R17 R13 R12
      148 SETTABLEKS                       R17 R16 K33 ["errorMessage"]
      150 SETTABLEKS                       R14 R16 K34 ["failureReason"]
      152 CALL                             R15 1 0
      153 GETIMPORT                        R15 K37 [error]
      155 MOVE                             R16 R11
      156 LOADN                            R17 0
      157 CALL                             R15 2 0
      158 CLOSEUPVALS                      R8
      159 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["executeLuau"]
        3 GETTABLEKS                       R0 R0 K1 ["loadCode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 2
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["requestId"]
        2 GETTABLEKS                       R4 R2 K1 ["getGenerationSession"]
        4 MOVE                             R5 R3
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R5 R4 K2 ["scriptSource"]
        8 LOADB                            R7 0
        9 FASTCALL1                        TYPEOF R5 ; [+3]
       10 MOVE                             R9 R5
       11 GETIMPORT                        R8 K4 [typeof]
       13 CALL                             R8 1 1
       14 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+7]
       16 LENGTH                           R8 R5
       17 LOADN                            R9 0
       18 JUMPIFLT                         R9 R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       24 LOADK                            R8 K6 ["No generated script for requestId"]
       25 GETIMPORT                        R6 K8 [assert]
       27 CALL                             R6 2 0
       28 GETIMPORT                        R6 K11 [Instance.new]
       30 LOADK                            R7 K12 ["Script"]
       31 CALL                             R6 1 1
       32 LOADK                            R7 K13 ["GeneratedLayout"]
       33 SETTABLEKS                       R7 R6 K14 ["Name"]
       35 LOADB                            R7 1
       36 SETTABLEKS                       R7 R6 K15 ["Disabled"]
       38 LOADK                            R11 K16 ["([^%-]+)$"]
       39 NAMECALL                         R9 R3 K17 ["match"]
       41 CALL                             R9 2 1
       42 OR                               R8 R9 R3
       43 LOADK                            R9 K18 ["RBXAI-GeneratedLayout-%*"]
       44 MOVE                             R11 R8
       45 NAMECALL                         R9 R9 K19 ["format"]
       47 CALL                             R9 2 1
       48 MOVE                             R7 R9
       49 MOVE                             R10 R7
       50 NAMECALL                         R8 R6 K20 ["AddTag"]
       52 CALL                             R8 2 0
       53 GETTABLEKS                       R9 R4 K21 ["generationId"]
       55 OR                               R8 R9 R3
       56 GETTABLEKS                       R9 R2 K22 ["markAsAIGeneratedAsset"]
       58 MOVE                             R10 R6
       59 MOVE                             R11 R8
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K23 ["AI_GENERATION_TYPE_SCENE"]
       63 CALL                             R9 3 0
       64 GETIMPORT                        R9 K25 [workspace]
       66 SETTABLEKS                       R9 R6 K26 ["Parent"]
       68 GETTABLEKS                       R9 R1 K27 ["applyScriptSourceDirectly"]
       70 MOVE                             R10 R6
       71 MOVE                             R11 R5
       72 CALL                             R9 2 0
       73 NEWCLOSURE                       R10 P0
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 FASTPCALL                        pcall 1 ; [+2]
       77 GETIMPORT                        R9 K29 [pcall]
       79 CALL                             R9 1 2
       80 JUMPIF                           R9 ; [+12]
       81 GETIMPORT                        R11 K31 [warn]
       83 LOADK                            R12 K32 ["[GenerateLayout] executeAndStoreScriptAsync: script execution failed: %*"]
       84 FASTCALL1                        TOSTRING R10 ; [+3]
       85 MOVE                             R15 R10
       86 GETIMPORT                        R14 K34 [tostring]
       88 CALL                             R14 1 1
       89 NAMECALL                         R12 R12 K19 ["format"]
       91 CALL                             R12 2 1
       92 CALL                             R11 1 0
       93 DUPTABLE                         R11 K38 [{"ok", "tag", "errorMessage"}]
       94 SETTABLEKS                       R9 R11 K35 ["ok"]
       96 SETTABLEKS                       R7 R11 K36 ["tag"]
       98 JUMPIF                           R9 ; [+6]
       99 FASTCALL1                        TOSTRING R10 ; [+3]
      100 MOVE                             R13 R10
      101 GETIMPORT                        R12 K34 [tostring]
      103 CALL                             R12 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R12
      106 SETTABLEKS                       R12 R11 K37 ["errorMessage"]
      108 RETURN                           R11 1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K2 ["reportSceneGenCanceled"]
        7 GETTABLEKS                       R4 R2 K3 ["generationThread"]
        9 JUMPIFNOT                        R3 ; [+9]
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETIMPORT                        R5 K6 [coroutine.status]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K7 ["dead"] ; [+3]
       17 MOVE                             R5 R3
       18 CALL                             R5 0 0
       19 GETTABLEKS                       R5 R1 K8 ["cancelGenerationSession"]
       21 GETTABLEKS                       R6 R0 K1 ["requestId"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_24:
        0 LOADK                            R5 K0 ["([^%-]+)$"]
        1 NAMECALL                         R3 R0 K1 ["match"]
        3 CALL                             R3 2 1
        4 OR                               R2 R3 R0
        5 LOADK                            R3 K2 ["RBXAI-GeneratedLayout-%*"]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 LOADK                            R7 K0 ["([^%-]+)$"]
        2 NAMECALL                         R5 R0 K1 ["match"]
        4 CALL                             R5 2 1
        5 OR                               R4 R5 R0
        6 LOADK                            R5 K2 ["RBXAI-GeneratedLayout-%*"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R3 R5
       12 NAMECALL                         R1 R1 K4 ["GetTagged"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["EncodingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R4 K9 [script]
       23 GETTABLEKS                       R4 R4 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K7 [require]
       30 GETIMPORT                        R5 K9 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["GenerationSessions"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K7 [require]
       39 GETIMPORT                        R6 K9 [script]
       41 GETTABLEKS                       R6 R6 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["GenerationUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K7 [require]
       48 GETIMPORT                        R7 K9 [script]
       50 GETTABLEKS                       R7 R7 K10 ["Parent"]
       52 GETTABLEKS                       R7 R7 K14 ["HostSurface"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K7 [require]
       57 GETIMPORT                        R8 K9 [script]
       59 GETTABLEKS                       R8 R8 K10 ["Parent"]
       61 GETTABLEKS                       R8 R8 K15 ["LayoutGenStrings"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K7 [require]
       66 GETIMPORT                        R9 K9 [script]
       68 GETTABLEKS                       R9 R9 K10 ["Parent"]
       70 GETTABLEKS                       R9 R9 K16 ["Gen3dTypes"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K7 [require]
       75 GETIMPORT                        R10 K9 [script]
       77 GETTABLEKS                       R10 R10 K10 ["Parent"]
       79 GETTABLEKS                       R10 R10 K17 ["Flags"]
       81 GETTABLEKS                       R10 R10 K18 ["getFFlagGen3dSceneGenCompletedTelemetry"]
       83 CALL                             R9 1 1
       84 NEWTABLE                         R10 8 0
       86 DUPCLOSURE                       R11 K19 [PROTO_0]
       87 CAPTURE                          VAL R7
       88 DUPCLOSURE                       R12 K20 [PROTO_1]
       89 DUPCLOSURE                       R13 K21 [PROTO_2]
       90 CAPTURE                          VAL R1
       91 DUPCLOSURE                       R14 K22 [PROTO_3]
       92 DUPCLOSURE                       R15 K23 [PROTO_4]
       93 DUPCLOSURE                       R16 K24 [PROTO_5]
       94 DUPCLOSURE                       R17 K25 [PROTO_6]
       95 DUPCLOSURE                       R18 K26 [PROTO_7]
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R18 R10 K27 ["parseSceneQuality"]
       99 DUPCLOSURE                       R18 K28 [PROTO_8]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R2
      103 DUPCLOSURE                       R19 K29 [PROTO_9]
      104 DUPTABLE                         R20 K40 [{["completed"] = "Completed", ["succeeded"] = "Completed", ["success"] = "Completed", ["failed"] = "Failed", ["error"] = "Failed", ["canceled"] = "Canceled", ["cancelled"] = "Canceled"}]
      105 DUPCLOSURE                       R21 K41 [PROTO_10]
      106 CAPTURE                          VAL R20
      107 SETTABLEKS                       R21 R10 K42 ["normalizeSceneStatus"]
      109 DUPCLOSURE                       R21 K43 [PROTO_14]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R3
      113 DUPCLOSURE                       R22 K44 [PROTO_15]
      114 CAPTURE                          VAL R7
      115 DUPCLOSURE                       R23 K45 [PROTO_16]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R21
      122 CAPTURE                          VAL R22
      123 DUPCLOSURE                       R24 K46 [PROTO_17]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R5
      128 DUPCLOSURE                       R25 K47 [PROTO_20]
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R25 R10 K48 ["generateSceneAsync"]
      137 DUPCLOSURE                       R25 K49 [PROTO_22]
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R25 R10 K50 ["executeAndStoreScriptAsync"]
      141 DUPCLOSURE                       R25 K51 [PROTO_23]
      142 SETTABLEKS                       R25 R10 K52 ["cancelGenerationAsync"]
      144 DUPCLOSURE                       R25 K53 [PROTO_24]
      145 SETTABLEKS                       R25 R10 K54 ["_DEBUG_getScriptTag"]
      147 DUPCLOSURE                       R25 K55 [PROTO_25]
      148 CAPTURE                          VAL R0
      149 SETTABLEKS                       R25 R10 K56 ["_DEBUG_findTaggedScripts"]
      151 RETURN                           R10 1
