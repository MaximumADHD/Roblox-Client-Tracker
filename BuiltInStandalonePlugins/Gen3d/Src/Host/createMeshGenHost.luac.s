PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+41]
        7 GETTABLEKS                       R2 R0 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+33]
       15 GETTABLEKS                       R2 R0 K5 ["prompt"]
       17 FASTCALL1                        TYPEOF R2 ; [+2]
       18 GETIMPORT                        R1 K1 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+25]
       23 GETTABLEKS                       R2 R0 K6 ["output"]
       25 FASTCALL1                        TYPEOF R2 ; [+2]
       26 GETIMPORT                        R1 K1 [typeof]
       28 CALL                             R1 1 1
       29 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+17]
       31 GETTABLEKS                       R2 R0 K7 ["parts"]
       33 FASTCALL1                        TYPEOF R2 ; [+2]
       34 GETIMPORT                        R1 K1 [typeof]
       36 CALL                             R1 1 1
       37 JUMPIFEQKS                       R1 K4 ["string"] ; [+11]
       39 GETTABLEKS                       R2 R0 K7 ["parts"]
       41 FASTCALL1                        TYPEOF R2 ; [+2]
       42 GETIMPORT                        R1 K1 [typeof]
       44 CALL                             R1 1 1
       45 JUMPIFEQKS                       R1 K8 ["number"] ; [+3]
       47 LOADNIL                          R1
       48 RETURN                           R1 1
       49 GETTABLEKS                       R1 R0 K9 ["referenceImageUrl"]
       51 DUPTABLE                         R2 K10 [{"requestId", "prompt", "output", "parts", "referenceImageUrl"}]
       52 GETTABLEKS                       R3 R0 K3 ["requestId"]
       54 SETTABLEKS                       R3 R2 K3 ["requestId"]
       56 GETTABLEKS                       R3 R0 K5 ["prompt"]
       58 SETTABLEKS                       R3 R2 K5 ["prompt"]
       60 GETTABLEKS                       R3 R0 K6 ["output"]
       62 SETTABLEKS                       R3 R2 K6 ["output"]
       64 GETTABLEKS                       R3 R0 K7 ["parts"]
       66 SETTABLEKS                       R3 R2 K7 ["parts"]
       68 FASTCALL1                        TYPEOF R1 ; [+3]
       69 MOVE                             R5 R1
       70 GETIMPORT                        R4 K1 [typeof]
       72 CALL                             R4 1 1
       73 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+5]
       75 JUMPIFEQKS                       R1 K11 [""] ; [+3]
       77 MOVE                             R3 R1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R3
       80 SETTABLEKS                       R3 R2 K9 ["referenceImageUrl"]
       82 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+17]
        7 GETIMPORT                        R1 K5 [table.create]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 LOADN                            R4 1
       12 MOVE                             R2 R0
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 LOADK                            R5 K6 ["Part%*"]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K7 ["format"]
       19 CALL                             R5 2 1
       20 SETTABLE                         R5 R1 R4
       21 FORNLOOP                         R2
       22 RETURN                           R1 1
       23 LOADNIL                          R1
       24 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K6 [{"textPrompt", "size", "maxTriangles", "generateTextures", "partNames", "imageUrl"}]
        1 GETTABLEKS                       R2 R0 K7 ["prompt"]
        3 SETTABLEKS                       R2 R1 K0 ["textPrompt"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K8 ["MeshGenConstants"]
        8 GETTABLEKS                       R2 R2 K9 ["VIEWPORT_BOUNDING_BOX_SIZE"]
       10 SETTABLEKS                       R2 R1 K1 ["size"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K8 ["MeshGenConstants"]
       15 GETTABLEKS                       R2 R2 K10 ["DEFAULT_MAX_TRIANGLES"]
       17 SETTABLEKS                       R2 R1 K2 ["maxTriangles"]
       19 GETTABLEKS                       R3 R0 K11 ["output"]
       21 JUMPIFEQKS                       R3 K12 ["meshAndTexture"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R1 K3 ["generateTextures"]
       27 GETTABLEKS                       R3 R0 K13 ["parts"]
       29 FASTCALL1                        TYPEOF R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K15 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K16 ["number"] ; [+18]
       36 GETIMPORT                        R4 K19 [table.create]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 LOADN                            R7 1
       41 MOVE                             R5 R3
       42 LOADN                            R6 1
       43 FORNPREP                         R5
       44 LOADK                            R8 K20 ["Part%*"]
       45 MOVE                             R10 R7
       46 NAMECALL                         R8 R8 K21 ["format"]
       48 CALL                             R8 2 1
       49 SETTABLE                         R8 R4 R7
       50 FORNLOOP                         R5
       51 MOVE                             R2 R4
       52 JUMP                             ; [+1]
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R1 K4 ["partNames"]
       56 GETTABLEKS                       R2 R0 K22 ["referenceImageUrl"]
       58 SETTABLEKS                       R2 R1 K5 ["imageUrl"]
       60 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETIMPORT                        R1 K2 [coroutine.status]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["dead"] ; [+5]
       12 GETIMPORT                        R1 K6 [task.cancel]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 JUMPIFEQ                         R3 R4 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["MeshGenStatusChanged"]
        9 LOADNIL                          R6
       10 DUPTABLE                         R7 K5 [{"requestId", "status", "generationId", "errorMessage"}]
       11 GETUPVAL                         R8 1
       12 SETTABLEKS                       R8 R7 K1 ["requestId"]
       14 SETTABLEKS                       R0 R7 K2 ["status"]
       16 SETTABLEKS                       R1 R7 K3 ["generationId"]
       18 SETTABLEKS                       R2 R7 K4 ["errorMessage"]
       20 NAMECALL                         R3 R3 K6 ["FireGuest"]
       22 CALL                             R3 4 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishModelAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["insertAssetAsync"]
        8 DUPTABLE                         R2 K5 [{"assetId", "name", "generationId"}]
        9 SETTABLEKS                       R0 R2 K2 ["assetId"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K6 ["prompt"]
       14 SETTABLEKS                       R3 R2 K3 ["name"]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K4 ["generationId"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K1 ["generateModelAsync"]
       10 GETUPVAL                         R5 4
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 FASTPCALL                        pcall 2 ; [+2]
       14 GETIMPORT                        R3 K3 [pcall]
       16 CALL                             R3 2 2
       17 JUMPIF                           R3 ; [+28]
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K4 ["GenerationFailed"]
       21 FASTCALL1                        TOSTRING R4 ; [+3]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R6 K6 [tostring]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 0
       27 JUMPIFEQ                         R7 R1 ; [+2]
       29 RETURN                           R0 0
       30 GETUPVAL                         R7 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K7 ["MeshGenStatusChanged"]
       34 LOADNIL                          R10
       35 DUPTABLE                         R11 K12 [{[1], ["status"], ["generationId"] = , ["errorMessage"]}]
       36 SETTABLEKS                       R1 R11 K0 ["requestId"]
       38 SETTABLEKS                       R5 R11 K8 ["status"]
       40 SETTABLEKS                       R6 R11 K11 ["errorMessage"]
       42 NAMECALL                         R7 R7 K13 ["FireGuest"]
       44 CALL                             R7 4 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 5
       47 GETTABLEKS                       R5 R5 K14 ["Materializing"]
       49 GETUPVAL                         R6 0
       50 JUMPIFEQ                         R6 R1 ; [+2]
       52 JUMP                             ; [+15]
       53 GETUPVAL                         R6 1
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K7 ["MeshGenStatusChanged"]
       57 LOADNIL                          R9
       58 DUPTABLE                         R10 K15 [{[1], ["status"], ["generationId"], ["errorMessage"] = }]
       59 SETTABLEKS                       R1 R10 K0 ["requestId"]
       61 SETTABLEKS                       R5 R10 K8 ["status"]
       63 SETTABLEKS                       R4 R10 K9 ["generationId"]
       65 NAMECALL                         R6 R6 K13 ["FireGuest"]
       67 CALL                             R6 4 0
       68 NEWCLOSURE                       R6 P1
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R0
       72 FASTPCALL                        pcall 1 ; [+2]
       73 GETIMPORT                        R5 K3 [pcall]
       75 CALL                             R5 1 2
       76 JUMPIFNOT                        R5 ; [+23]
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K16 ["Materialized"]
       80 GETUPVAL                         R8 0
       81 JUMPIFEQ                         R8 R1 ; [+2]
       83 RETURN                           R0 0
       84 GETUPVAL                         R8 1
       85 GETUPVAL                         R10 2
       86 GETTABLEKS                       R10 R10 K7 ["MeshGenStatusChanged"]
       88 LOADNIL                          R11
       89 DUPTABLE                         R12 K15 [{[1], ["status"], ["generationId"], ["errorMessage"] = }]
       90 SETTABLEKS                       R1 R12 K0 ["requestId"]
       92 SETTABLEKS                       R7 R12 K8 ["status"]
       94 SETTABLEKS                       R4 R12 K9 ["generationId"]
       96 NAMECALL                         R8 R8 K13 ["FireGuest"]
       98 CALL                             R8 4 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R7 5
      101 GETTABLEKS                       R7 R7 K17 ["MaterializeFailed"]
      103 FASTCALL1                        TOSTRING R6 ; [+3]
      104 MOVE                             R9 R6
      105 GETIMPORT                        R8 K6 [tostring]
      107 CALL                             R8 1 1
      108 GETUPVAL                         R9 0
      109 JUMPIFEQ                         R9 R1 ; [+2]
      111 RETURN                           R0 0
      112 GETUPVAL                         R9 1
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K7 ["MeshGenStatusChanged"]
      116 LOADNIL                          R12
      117 DUPTABLE                         R13 K18 [{"requestId", "status", "generationId", "errorMessage"}]
      118 SETTABLEKS                       R1 R13 K0 ["requestId"]
      120 SETTABLEKS                       R7 R13 K8 ["status"]
      122 SETTABLEKS                       R4 R13 K9 ["generationId"]
      124 SETTABLEKS                       R8 R13 K11 ["errorMessage"]
      126 NAMECALL                         R9 R9 K13 ["FireGuest"]
      128 CALL                             R9 4 0
      129 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 SETUPVAL                         R4 2
        9 LOADNIL                          R4
       10 SETUPVAL                         R4 1
       11 JUMPIFNOT                        R3 ; [+10]
       12 GETIMPORT                        R4 K2 [coroutine.status]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 JUMPIFEQKS                       R4 K3 ["dead"] ; [+5]
       18 GETIMPORT                        R4 K6 [task.cancel]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R3 R2 K7 ["requestId"]
       24 SETUPVAL                         R3 2
       25 GETIMPORT                        R3 K9 [task.spawn]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETUPVAL                         R3 1
       31 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+22]
        7 GETTABLEKS                       R2 R1 K3 ["requestId"]
        9 GETUPVAL                         R3 0
       10 JUMPIFNOTEQ                      R2 R3 ; [+17]
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 SETUPVAL                         R3 0
       15 LOADNIL                          R3
       16 SETUPVAL                         R3 1
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETIMPORT                        R3 K6 [coroutine.status]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFEQKS                       R3 K7 ["dead"] ; [+5]
       24 GETIMPORT                        R3 K10 [task.cancel]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETIMPORT                        R1 K2 [coroutine.status]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["dead"] ; [+5]
       12 GETIMPORT                        R1 K6 [task.cancel]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R0 2
       17 JUMPIFNOT                        R0 ; [+2]
       18 GETUPVAL                         R0 2
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+2]
       22 GETUPVAL                         R0 3
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          REF R2
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K0 ["MeshGenGenerate"]
       15 NEWCLOSURE                       R9 P2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          REF R3
       18 CAPTURE                          REF R2
       19 CAPTURE                          VAL R5
       20 NAMECALL                         R6 R0 K1 ["OnHostEvent"]
       22 CALL                             R6 3 2
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K2 ["MeshGenCancel"]
       26 NEWCLOSURE                       R11 P3
       27 CAPTURE                          REF R2
       28 CAPTURE                          REF R3
       29 NAMECALL                         R8 R0 K1 ["OnHostEvent"]
       31 CALL                             R8 3 2
       32 NEWCLOSURE                       R10 P4
       33 CAPTURE                          REF R3
       34 CAPTURE                          REF R2
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R9
       37 DUPTABLE                         R11 K4 [{"destroy"}]
       38 SETTABLEKS                       R10 R11 K3 ["destroy"]
       40 CLOSEUPVALS                      R2
       41 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Networking"]
       27 GETTABLEKS                       R4 R4 K11 ["Events"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Host"]
       36 GETTABLEKS                       R5 R5 K13 ["Services"]
       38 GETTABLEKS                       R5 R5 K14 ["createMeshGenerationServices"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K15 ["Gen3dTypes"]
       43 GETTABLEKS                       R5 R5 K16 ["Enums"]
       45 GETTABLEKS                       R5 R5 K17 ["PreviewState"]
       47 DUPCLOSURE                       R6 K18 [PROTO_0]
       48 DUPCLOSURE                       R7 K19 [PROTO_1]
       49 DUPCLOSURE                       R8 K20 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R9 K21 [PROTO_10]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 RETURN                           R9 1
