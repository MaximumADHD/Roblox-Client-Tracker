PROTO_0:
        0 LOADK                            R1 K0 ["MeshGen-%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["size.%* must be defined"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 LOADN                            R4 0
       13 CALL                             R2 2 0
       14 FASTCALL1                        TONUMBER R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K5 [tonumber]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+11]
       21 GETIMPORT                        R3 K1 [error]
       23 LOADK                            R5 K6 ["size.%* must be a number"]
       24 MOVE                             R7 R0
       25 NAMECALL                         R5 R5 K3 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 LOADN                            R5 0
       30 CALL                             R3 2 0
       31 LOADN                            R3 0
       32 JUMPIFNOTLE                      R2 R3 ; [+11]
       34 GETIMPORT                        R3 K1 [error]
       36 LOADK                            R5 K7 ["size.%* must be a positive number"]
       37 MOVE                             R7 R0
       38 NAMECALL                         R5 R5 K3 ["format"]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 LOADN                            R5 0
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K6 ["textPrompt"]
       17 LOADB                            R4 0
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R6 R2
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+7]
       25 LENGTH                           R5 R2
       26 LOADN                            R6 0
       27 JUMPIFLT                         R6 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       33 LOADK                            R5 K8 ["textPrompt must be a non-empty string"]
       34 GETIMPORT                        R3 K5 [assert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R1 K9 ["size"]
       39 LOADNIL                          R4
       40 JUMPIFEQKNIL                     R3 ; [+38]
       42 FASTCALL1                        TYPEOF R3 ; [+3]
       43 MOVE                             R8 R3
       44 GETIMPORT                        R7 K1 [typeof]
       46 CALL                             R7 1 1
       47 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       53 LOADK                            R7 K10 ["size must be a table"]
       54 GETIMPORT                        R5 K5 [assert]
       56 CALL                             R5 2 0
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          VAL R3
       59 MOVE                             R6 R5
       60 LOADK                            R7 K11 ["x"]
       61 CALL                             R6 1 0
       62 MOVE                             R6 R5
       63 LOADK                            R7 K12 ["y"]
       64 CALL                             R6 1 0
       65 MOVE                             R6 R5
       66 LOADK                            R7 K13 ["z"]
       67 CALL                             R6 1 0
       68 GETTABLEKS                       R7 R3 K11 ["x"]
       70 GETTABLEKS                       R8 R3 K12 ["y"]
       72 GETTABLEKS                       R9 R3 K13 ["z"]
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R6 K16 [Vector3.new]
       77 CALL                             R6 3 1
       78 MOVE                             R4 R6
       79 GETTABLEKS                       R5 R1 K17 ["maxTriangles"]
       81 JUMPIFEQKNIL                     R5 ; [+33]
       83 FASTCALL1                        TYPEOF R5 ; [+3]
       84 MOVE                             R9 R5
       85 GETIMPORT                        R8 K1 [typeof]
       87 CALL                             R8 1 1
       88 JUMPIFEQKS                       R8 K18 ["number"] ; [+2]
       90 LOADB                            R7 0 +1
       91 LOADB                            R7 1
       92 FASTCALL2K                       ASSERT R7 K19 ; [+4]
       94 LOADK                            R8 K19 ["maxTriangles must be a number"]
       95 GETIMPORT                        R6 K5 [assert]
       97 CALL                             R6 2 0
       98 GETUPVAL                         R6 0
       99 JUMPIFLT                         R5 R6 ; [+4]
      101 GETUPVAL                         R6 1
      102 JUMPIFNOTLT                      R6 R5 ; [+12]
      104 GETIMPORT                        R6 K21 [error]
      106 LOADK                            R8 K22 ["maxTriangles must be between %* and %* (inclusive)"]
      107 GETUPVAL                         R10 0
      108 GETUPVAL                         R11 1
      109 NAMECALL                         R8 R8 K23 ["format"]
      111 CALL                             R8 3 1
      112 MOVE                             R7 R8
      113 LOADN                            R8 0
      114 CALL                             R6 2 0
      115 GETTABLEKS                       R6 R1 K24 ["isManualRun"]
      117 JUMPIFEQKNIL                     R6 ; [+16]
      119 FASTCALL1                        TYPEOF R6 ; [+3]
      120 MOVE                             R10 R6
      121 GETIMPORT                        R9 K1 [typeof]
      123 CALL                             R9 1 1
      124 JUMPIFEQKS                       R9 K25 ["boolean"] ; [+2]
      126 LOADB                            R8 0 +1
      127 LOADB                            R8 1
      128 FASTCALL2K                       ASSERT R8 K26 ; [+4]
      130 LOADK                            R9 K26 ["isManualRun must be a boolean"]
      131 GETIMPORT                        R7 K5 [assert]
      133 CALL                             R7 2 0
      134 GETTABLEKS                       R7 R1 K27 ["useSelectedBoundingBox"]
      136 JUMPIFEQKNIL                     R7 ; [+22]
      138 FASTCALL1                        TYPEOF R7 ; [+3]
      139 MOVE                             R11 R7
      140 GETIMPORT                        R10 K1 [typeof]
      142 CALL                             R10 1 1
      143 JUMPIFEQKS                       R10 K25 ["boolean"] ; [+2]
      145 LOADB                            R9 0 +1
      146 LOADB                            R9 1
      147 FASTCALL2K                       ASSERT R9 K28 ; [+4]
      149 LOADK                            R10 K28 ["useSelectedBoundingBox must be a boolean"]
      150 GETIMPORT                        R8 K5 [assert]
      152 CALL                             R8 2 0
      153 JUMPIFNOT                        R7 ; [+5]
      154 GETTABLEKS                       R9 R0 K29 ["bridge"]
      156 GETTABLEKS                       R8 R9 K30 ["validateHasSelectedBoundingBoxAsync"]
      158 CALL                             R8 0 0
      159 DUPTABLE                         R8 K31 [{"textPrompt", "size", "maxTriangles", "isManualRun", "useSelectedBoundingBox"}]
      160 SETTABLEKS                       R2 R8 K6 ["textPrompt"]
      162 SETTABLEKS                       R4 R8 K9 ["size"]
      164 SETTABLEKS                       R5 R8 K17 ["maxTriangles"]
      166 SETTABLEKS                       R6 R8 K24 ["isManualRun"]
      168 SETTABLEKS                       R7 R8 K27 ["useSelectedBoundingBox"]
      170 RETURN                           R8 1

PROTO_3:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 SETTABLE                         R7 R0 R5
        6 FORGLOOP                         R2 1 ; [-3]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["assign"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 LOADNIL                          R8
        5 SETTABLE                         R8 R0 R6
        6 FORGLOOP                         R3 1 ; [-3]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["assign"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 MOVE                             R2 R0
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R2 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R3 K2 ["messageId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R4 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FailureReasonToPreviewStateMap"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Invalid failure reason provided"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 SETTABLEKS                       R1 R0 K4 ["previewState"]
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R0 K5 ["failureReason"]
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["previewImages"]
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K3 [table.create]
        5 GETUPVAL                         R3 0
        6 LOADK                            R4 K4 [""]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 SETTABLEKS                       R1 R0 K0 ["previewImages"]
       11 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["previewImages should be initialized"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 2
       20 SETTABLE                         R3 R1 R2
       21 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 GETUPVAL                         R4 0
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R2
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 NEWCLOSURE                       R6 P4
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R2
       19 DUPTABLE                         R7 K7 [{"updateWidget", "replaceContent", "setPreviewState", "setFailureReason", "setPreviewImage"}]
       20 SETTABLEKS                       R2 R7 K2 ["updateWidget"]
       22 SETTABLEKS                       R3 R7 K3 ["replaceContent"]
       24 SETTABLEKS                       R4 R7 K4 ["setPreviewState"]
       26 SETTABLEKS                       R5 R7 K5 ["setFailureReason"]
       28 SETTABLEKS                       R6 R7 K6 ["setPreviewImage"]
       30 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["generateAssetsAsync"]
        5 DUPTABLE                         R1 K7 [{"requestId", "textPrompt", "size", "maxTriangles", "useSelectedBoundingBox"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["size"]
       17 SETTABLEKS                       R2 R1 K4 ["size"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K5 ["maxTriangles"]
       22 SETTABLEKS                       R2 R1 K5 ["maxTriangles"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K6 ["useSelectedBoundingBox"]
       27 SETTABLEKS                       R2 R1 K6 ["useSelectedBoundingBox"]
       29 CALL                             R0 1 1
       30 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R2 K1 ["Generated"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R5 R2 K0 ["type"]
        2 JUMPIFEQKS                       R5 K1 ["Initialized"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["Generation meta must be of type 'Initialized'"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["setPreviewState"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R6 K7 ["GeneratingMesh"]
       22 CALL                             R4 1 0
       23 GETTABLEKS                       R4 R1 K8 ["textPrompt"]
       25 GETIMPORT                        R5 K10 [pcall]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 CALL                             R5 1 2
       33 JUMPIF                           R5 ; [+2]
       34 MOVE                             R7 R6
       35 JUMP                             ; [+1]
       36 LOADK                            R7 K11 [""]
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R8 R6 K12 ["generationId"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 GETTABLEKS                       R10 R0 K13 ["toolArgs"]
       44 GETTABLEKS                       R9 R10 K14 ["environment"]
       46 GETTABLEKS                       R11 R9 K15 ["EventLogger"]
       48 GETTABLEKS                       R10 R11 K16 ["logMeshGenCompleted"]
       50 DUPTABLE                         R11 K21 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       51 GETTABLEKS                       R12 R2 K17 ["requestId"]
       53 SETTABLEKS                       R12 R11 K17 ["requestId"]
       55 SETTABLEKS                       R8 R11 K12 ["generationId"]
       57 SETTABLEKS                       R5 R11 K18 ["success"]
       59 SETTABLEKS                       R7 R11 K19 ["errorMessage"]
       61 SETTABLEKS                       R4 R11 K20 ["prompt"]
       63 CALL                             R10 1 0
       64 JUMPIF                           R5 ; [+29]
       65 GETIMPORT                        R10 K24 [string.find]
       67 GETIMPORT                        R11 K26 [string.lower]
       69 MOVE                             R12 R7
       70 CALL                             R11 1 1
       71 LOADK                            R12 K27 ["moderat"]
       72 CALL                             R10 2 1
       73 JUMPIFNOT                        R10 ; [+9]
       74 GETTABLEKS                       R10 R3 K28 ["setFailureReason"]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K29 ["FailureReason"]
       79 GETTABLEKS                       R11 R12 K30 ["GenerationModerated"]
       81 CALL                             R10 1 0
       82 JUMP                             ; [+8]
       83 GETTABLEKS                       R10 R3 K28 ["setFailureReason"]
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K29 ["FailureReason"]
       88 GETTABLEKS                       R11 R12 K31 ["GenerationFailed"]
       90 CALL                             R10 1 0
       91 LOADB                            R10 0
       92 MOVE                             R11 R7
       93 RETURN                           R10 2
       94 DUPTABLE                         R11 K33 [{"type", "requestId", "generationId", "generationName"}]
       95 LOADK                            R12 K34 ["Generated"]
       96 SETTABLEKS                       R12 R11 K0 ["type"]
       98 GETTABLEKS                       R12 R2 K17 ["requestId"]
      100 SETTABLEKS                       R12 R11 K17 ["requestId"]
      102 SETTABLEKS                       R8 R11 K12 ["generationId"]
      104 SETTABLEKS                       R4 R11 K32 ["generationName"]
      106 MOVE                             R12 R2
      107 LOADNIL                          R13
      108 LOADNIL                          R14
      109 FORGPREP                         R12
      110 LOADNIL                          R17
      111 SETTABLE                         R17 R2 R15
      112 FORGLOOP                         R12 1 ; [-3]
      114 GETUPVAL                         R13 2
      115 GETTABLEKS                       R12 R13 K35 ["assign"]
      117 MOVE                             R13 R2
      118 MOVE                             R14 R11
      119 CALL                             R12 2 0
      120 MOVE                             R10 R2
      121 GETTABLEKS                       R11 R3 K36 ["updateWidget"]
      123 NEWCLOSURE                       R12 P1
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          VAL R10
      126 CALL                             R11 1 0
      127 LOADB                            R11 1
      128 MOVE                             R12 R6
      129 RETURN                           R11 2

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["publishAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{"requestId", "generationId", "hasPredeterminedSize"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["generationId"]
       14 SETTABLEKS                       R2 R1 K3 ["generationId"]
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R2 R1 K4 ["hasPredeterminedSize"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R2 K1 ["Published"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 JUMPIFEQKS                       R5 K1 ["Generated"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["Generation meta must be of type 'Generated'"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["setPreviewState"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R6 K7 ["Publishing"]
       22 CALL                             R4 1 0
       23 GETIMPORT                        R4 K9 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R4 1 2
       30 JUMPIF                           R4 ; [+2]
       31 MOVE                             R6 R5
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K10 [""]
       34 GETTABLEKS                       R8 R0 K11 ["toolArgs"]
       36 GETTABLEKS                       R7 R8 K12 ["environment"]
       38 JUMPIF                           R4 ; [+35]
       39 GETTABLEKS                       R9 R7 K13 ["EventLogger"]
       41 GETTABLEKS                       R8 R9 K14 ["logMeshGenPublishedAssets"]
       43 DUPTABLE                         R9 K21 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       44 GETTABLEKS                       R10 R1 K15 ["requestId"]
       46 SETTABLEKS                       R10 R9 K15 ["requestId"]
       48 GETTABLEKS                       R10 R1 K16 ["generationId"]
       50 SETTABLEKS                       R10 R9 K16 ["generationId"]
       52 SETTABLEKS                       R4 R9 K17 ["success"]
       54 SETTABLEKS                       R6 R9 K18 ["errorMessage"]
       56 LOADNIL                          R10
       57 SETTABLEKS                       R10 R9 K19 ["meshId"]
       59 LOADNIL                          R10
       60 SETTABLEKS                       R10 R9 K20 ["imageId"]
       62 CALL                             R8 1 0
       63 GETTABLEKS                       R8 R3 K22 ["setFailureReason"]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K23 ["FailureReason"]
       68 GETTABLEKS                       R9 R10 K24 ["PublishFailed"]
       70 CALL                             R8 1 0
       71 LOADB                            R8 0
       72 MOVE                             R9 R6
       73 RETURN                           R8 2
       74 GETTABLEKS                       R8 R5 K25 ["assets"]
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 FORGPREP                         R8
       79 GETTABLEKS                       R13 R12 K19 ["meshId"]
       81 LOADK                            R15 K26 ["%d+"]
       82 NAMECALL                         R13 R13 K27 ["match"]
       84 CALL                             R13 2 1
       85 GETTABLEKS                       R14 R12 K28 ["textureId"]
       87 LOADK                            R16 K26 ["%d+"]
       88 NAMECALL                         R14 R14 K27 ["match"]
       90 CALL                             R14 2 1
       91 GETTABLEKS                       R16 R7 K13 ["EventLogger"]
       93 GETTABLEKS                       R15 R16 K14 ["logMeshGenPublishedAssets"]
       95 DUPTABLE                         R16 K21 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       96 GETTABLEKS                       R17 R1 K15 ["requestId"]
       98 SETTABLEKS                       R17 R16 K15 ["requestId"]
      100 GETTABLEKS                       R17 R1 K16 ["generationId"]
      102 SETTABLEKS                       R17 R16 K16 ["generationId"]
      104 SETTABLEKS                       R4 R16 K17 ["success"]
      106 SETTABLEKS                       R6 R16 K18 ["errorMessage"]
      108 FASTCALL1                        TONUMBER R13 ; [+3]
      109 MOVE                             R18 R13
      110 GETIMPORT                        R17 K30 [tonumber]
      112 CALL                             R17 1 1
      113 SETTABLEKS                       R17 R16 K19 ["meshId"]
      115 FASTCALL1                        TONUMBER R14 ; [+3]
      116 MOVE                             R18 R14
      117 GETIMPORT                        R17 K30 [tonumber]
      119 CALL                             R17 1 1
      120 SETTABLEKS                       R17 R16 K20 ["imageId"]
      122 CALL                             R15 1 0
      123 FORGLOOP                         R8 2 ; [-45]
      125 DUPTABLE                         R9 K32 [{"type", "requestId", "generationId", "generationName"}]
      126 LOADK                            R10 K33 ["Published"]
      127 SETTABLEKS                       R10 R9 K0 ["type"]
      129 GETTABLEKS                       R10 R1 K15 ["requestId"]
      131 SETTABLEKS                       R10 R9 K15 ["requestId"]
      133 GETTABLEKS                       R10 R1 K16 ["generationId"]
      135 SETTABLEKS                       R10 R9 K16 ["generationId"]
      137 GETTABLEKS                       R10 R1 K31 ["generationName"]
      139 SETTABLEKS                       R10 R9 K31 ["generationName"]
      141 MOVE                             R10 R1
      142 LOADNIL                          R11
      143 LOADNIL                          R12
      144 FORGPREP                         R10
      145 LOADNIL                          R15
      146 SETTABLE                         R15 R1 R13
      147 FORGLOOP                         R10 1 ; [-3]
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R10 R11 K34 ["assign"]
      152 MOVE                             R11 R1
      153 MOVE                             R12 R9
      154 CALL                             R10 2 0
      155 MOVE                             R8 R1
      156 GETTABLEKS                       R9 R3 K35 ["updateWidget"]
      158 NEWCLOSURE                       R10 P1
      159 CAPTURE                          UPVAL U1
      160 CAPTURE                          VAL R8
      161 CALL                             R9 1 0
      162 LOADB                            R9 1
      163 RETURN                           R9 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["insertAssetsAsync"]
        5 DUPTABLE                         R1 K4 [{"requestId", "avoidWorkspace"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["avoidWorkspace"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_22:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 JUMPIFEQKS                       R5 K1 ["Published"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["Generation meta must be of type 'Published'"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["setPreviewState"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R6 K7 ["Inserting"]
       22 CALL                             R4 1 0
       23 GETIMPORT                        R4 K9 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R4 1 2
       30 JUMPIF                           R4 ; [+2]
       31 MOVE                             R6 R5
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K10 [""]
       34 GETTABLEKS                       R8 R0 K11 ["toolArgs"]
       36 GETTABLEKS                       R7 R8 K12 ["environment"]
       38 GETTABLEKS                       R9 R7 K13 ["EventLogger"]
       40 GETTABLEKS                       R8 R9 K14 ["logMeshGenMeshInserted"]
       42 DUPTABLE                         R9 K19 [{"requestId", "generationId", "success", "errorMessage"}]
       43 GETTABLEKS                       R10 R1 K15 ["requestId"]
       45 SETTABLEKS                       R10 R9 K15 ["requestId"]
       47 GETTABLEKS                       R10 R1 K16 ["generationId"]
       49 SETTABLEKS                       R10 R9 K16 ["generationId"]
       51 SETTABLEKS                       R4 R9 K17 ["success"]
       53 SETTABLEKS                       R6 R9 K18 ["errorMessage"]
       55 CALL                             R8 1 0
       56 JUMPIF                           R4 ; [+11]
       57 GETTABLEKS                       R8 R3 K20 ["setFailureReason"]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R10 R11 K21 ["FailureReason"]
       62 GETTABLEKS                       R9 R10 K22 ["InsertFailed"]
       64 CALL                             R8 1 0
       65 LOADB                            R8 0
       66 MOVE                             R9 R6
       67 RETURN                           R8 2
       68 GETTABLEKS                       R8 R3 K5 ["setPreviewState"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R10 R11 K6 ["PreviewState"]
       73 GETTABLEKS                       R9 R10 K1 ["Published"]
       75 CALL                             R8 1 0
       76 LOADB                            R8 1
       77 GETTABLEKS                       R9 R5 K23 ["fullName"]
       79 RETURN                           R8 2

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["maxTriangles"]
        2 GETTABLEKS                       R2 R0 K1 ["useSelectedBoundingBox"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       10 LOADK                            R5 K2 ["useSelectedBoundingBox must be provided"]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["join"]
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K6 [{"maxTriangles", "useSelectedBoundingBox"}]
       19 SETTABLEKS                       R1 R5 K0 ["maxTriangles"]
       21 SETTABLEKS                       R2 R5 K1 ["useSelectedBoundingBox"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 MOVE                             R6 R3
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_24:
        0 JUMPIF                           R0 ; [+24]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["bridge"]
        4 GETTABLEKS                       R2 R3 K1 ["removeSelectedBoundsAsync"]
        6 DUPTABLE                         R3 K3 [{"requestId"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["requestId"]
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["bridge"]
       16 GETTABLEKS                       R2 R3 K4 ["cancelGenerationAsync"]
       18 DUPTABLE                         R3 K3 [{"requestId"}]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K2 ["requestId"]
       22 SETTABLEKS                       R4 R3 K2 ["requestId"]
       24 CALL                             R2 1 0
       25 SETUPVAL                         R0 2
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K6 [type]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+3]
       33 MOVE                             R2 R1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETUPVAL                         R2 3
       37 GETUPVAL                         R2 4
       38 JUMPIFNOT                        R2 ; [+18]
       39 GETUPVAL                         R2 4
       40 GETIMPORT                        R3 K10 [coroutine.running]
       42 CALL                             R3 0 1
       43 JUMPIFEQ                         R2 R3 ; [+13]
       45 GETIMPORT                        R2 K12 [coroutine.status]
       47 GETUPVAL                         R3 4
       48 CALL                             R2 1 1
       49 JUMPIFEQKS                       R2 K13 ["dead"] ; [+7]
       51 GETIMPORT                        R2 K16 [task.cancel]
       53 GETUPVAL                         R3 4
       54 CALL                             R2 1 0
       55 LOADNIL                          R2
       56 SETUPVAL                         R2 4
       57 GETUPVAL                         R2 5
       58 NAMECALL                         R2 R2 K17 ["Fire"]
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_26:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 3
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R3 4
       10 AND                              R4 R0 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 4
       15 LOADB                            R4 0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K2 [coroutine.status]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K3 ["dead"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       13 LOADK                            R2 K4 ["Generation thread already exists"]
       14 GETIMPORT                        R0 K6 [assert]
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 2
       21 GETIMPORT                        R0 K9 [task.spawn]
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 0
       31 GETUPVAL                         R0 1
       32 JUMPIFNOTEQKNIL                  R0 ; [+5]
       34 GETUPVAL                         R0 8
       35 NAMECALL                         R0 R0 K10 ["Wait"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R2 1
       39 JUMPIFNOTEQKNIL                  R2 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 FASTCALL2K                       ASSERT R1 K11 ; [+4]
       45 LOADK                            R2 K11 ["Generation end result should not be nil after generation ends"]
       46 GETIMPORT                        R0 K6 [assert]
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 1
       50 GETUPVAL                         R1 2
       51 RETURN                           R0 2

PROTO_28:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation thread not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R2 K5 [coroutine.status]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K6 ["dead"] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       17 LOADK                            R2 K7 ["Generation thread already dead"]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 LOADB                            R1 0
       23 LOADK                            R2 K8 ["Canceled"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K9 ["setFailureReason"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R2 R3 K10 ["FailureReason"]
       31 GETTABLEKS                       R1 R2 K11 ["GenerationCanceled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["size"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["useSelectedBoundingBox"]
        9 JUMPIFEQKB                       R1 TRUE ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R5 3
        4 GETTABLEKS                       R4 R5 K0 ["isManualRun"]
        6 NOT                              R3 R4
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["Published"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        9 LOADK                            R2 K2 ["Generation meta must be of type 'Published'"]
       10 GETIMPORT                        R0 K4 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K5 ["bridge"]
       16 GETTABLEKS                       R0 R1 K6 ["selectLinkedAssets"]
       18 DUPTABLE                         R1 K8 [{"requestId"}]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K7 ["requestId"]
       22 SETTABLEKS                       R2 R1 K7 ["requestId"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_32:
        0 GETTABLEKS                       R3 R2 K0 ["mode"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Modes"]
        5 GETTABLEKS                       R4 R5 K2 ["NeedsInput"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+8]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R3 R2 K3 ["runGeneration"]
       16 GETTABLEKS                       R3 R2 K0 ["mode"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K1 ["Modes"]
       21 GETTABLEKS                       R4 R5 K4 ["ShowPreview"]
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R0
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K5 ["generationMeta"]
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R8 R9 K6 ["new"]
       37 CALL                             R8 0 1
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          REF R6
       42 CAPTURE                          REF R7
       43 CAPTURE                          REF R5
       44 CAPTURE                          VAL R8
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R6
       48 CAPTURE                          REF R7
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R10 R2 K7 ["retryGeneration"]
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          REF R5
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U6
       62 SETTABLEKS                       R10 R2 K8 ["cancelGeneration"]
       64 NEWCLOSURE                       R10 P4
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R10 R2 K9 ["publishAssets"]
       71 NEWCLOSURE                       R10 P5
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R10 R2 K10 ["insertAssets"]
       78 NEWCLOSURE                       R10 P6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R10 R2 K11 ["onChipClicked"]
       83 CLOSEUPVALS                      R5
       84 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Modes"]
        5 GETTABLEKS                       R3 R4 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K3 ["handlerArgs"]
       12 GETTABLEKS                       R2 R3 K4 ["isThirdPartyRequest"]
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K5 ["generationMeta"]
       18 GETTABLEKS                       R5 R0 K6 ["bridge"]
       20 GETTABLEKS                       R4 R5 K7 ["listenToLinkChanges"]
       22 DUPTABLE                         R5 K10 [{"generationName", "requestId"}]
       23 GETTABLEKS                       R6 R1 K11 ["name"]
       25 SETTABLEKS                       R6 R5 K8 ["generationName"]
       27 GETTABLEKS                       R6 R3 K9 ["requestId"]
       29 SETTABLEKS                       R6 R5 K9 ["requestId"]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["maxTriangles"]
        6 GETTABLEKS                       R4 R2 K1 ["isManualRun"]
        8 GETTABLEKS                       R5 R2 K2 ["useSelectedBoundingBox"]
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 MOVE                             R7 R4
       14 JUMPIFNOT                        R7 ; [+4]
       15 JUMPIFEQKNIL                     R5 ; [+2]
       17 LOADB                            R7 0 +1
       18 LOADB                            R7 1
       19 JUMPIFNOT                        R7 ; [+48]
       20 DUPTABLE                         R8 K8 [{"type", "mode", "initialUseSelectedBoundingBox", "initialMaxTriangles", "runGeneration"}]
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R9 R10 K9 ["Type"]
       24 SETTABLEKS                       R9 R8 K3 ["type"]
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R10 R11 K10 ["Modes"]
       29 GETTABLEKS                       R9 R10 K11 ["NeedsInput"]
       31 SETTABLEKS                       R9 R8 K4 ["mode"]
       33 JUMPIFEQKNIL                     R5 ; [+3]
       35 MOVE                             R9 R5
       36 JUMP                             ; [+1]
       37 GETUPVAL                         R9 3
       38 SETTABLEKS                       R9 R8 K5 ["initialUseSelectedBoundingBox"]
       40 JUMPIFEQKNIL                     R3 ; [+3]
       42 MOVE                             R9 R3
       43 JUMP                             ; [+1]
       44 GETUPVAL                         R9 4
       45 SETTABLEKS                       R9 R8 K6 ["initialMaxTriangles"]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K12 ["createUnimplemented"]
       50 LOADK                            R10 K7 ["runGeneration"]
       51 CALL                             R9 1 1
       52 SETTABLEKS                       R9 R8 K7 ["runGeneration"]
       54 GETUPVAL                         R9 6
       55 MOVE                             R10 R0
       56 MOVE                             R11 R2
       57 MOVE                             R12 R8
       58 CALL                             R9 3 0
       59 GETTABLEKS                       R9 R6 K13 ["replaceContent"]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 0
       63 GETUPVAL                         R9 7
       64 MOVE                             R10 R0
       65 MOVE                             R11 R8
       66 CALL                             R9 2 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R9 R0 K14 ["toolArgs"]
       70 GETTABLEKS                       R8 R9 K15 ["environment"]
       72 GETTABLEKS                       R10 R8 K16 ["EventLogger"]
       74 GETTABLEKS                       R9 R10 K17 ["logMeshGenActivated"]
       76 CALL                             R9 0 0
       77 DUPTABLE                         R9 K19 [{"type", "requestId"}]
       78 LOADK                            R10 K20 ["Initialized"]
       79 SETTABLEKS                       R10 R9 K3 ["type"]
       81 LOADK                            R11 K21 ["MeshGen-%*"]
       82 GETUPVAL                         R13 8
       83 LOADB                            R15 0
       84 NAMECALL                         R13 R13 K22 ["GenerateGUID"]
       86 CALL                             R13 2 1
       87 NAMECALL                         R11 R11 K23 ["format"]
       89 CALL                             R11 2 1
       90 MOVE                             R10 R11
       91 SETTABLEKS                       R10 R9 K18 ["requestId"]
       93 DUPTABLE                         R10 K41 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R11 R12 K9 ["Type"]
       97 SETTABLEKS                       R11 R10 K3 ["type"]
       99 GETUPVAL                         R13 2
      100 GETTABLEKS                       R12 R13 K10 ["Modes"]
      102 GETTABLEKS                       R11 R12 K42 ["ShowPreview"]
      104 SETTABLEKS                       R11 R10 K4 ["mode"]
      106 LOADB                            R11 1
      107 SETTABLEKS                       R11 R10 K24 ["expanded"]
      109 GETTABLEKS                       R11 R2 K43 ["textPrompt"]
      111 SETTABLEKS                       R11 R10 K25 ["name"]
      113 GETTABLEKS                       R11 R2 K43 ["textPrompt"]
      115 SETTABLEKS                       R11 R10 K26 ["displayName"]
      117 LOADNIL                          R11
      118 SETTABLEKS                       R11 R10 K27 ["className"]
      120 LOADNIL                          R11
      121 SETTABLEKS                       R11 R10 K28 ["previewImages"]
      123 GETUPVAL                         R13 9
      124 GETTABLEKS                       R12 R13 K44 ["PreviewState"]
      126 GETTABLEKS                       R11 R12 K45 ["GeneratingMesh"]
      128 SETTABLEKS                       R11 R10 K29 ["previewState"]
      130 LOADNIL                          R11
      131 SETTABLEKS                       R11 R10 K30 ["failureReason"]
      133 LOADNIL                          R11
      134 SETTABLEKS                       R11 R10 K31 ["generationRetryCount"]
      136 LOADNIL                          R11
      137 SETTABLEKS                       R11 R10 K32 ["publishAttemptCount"]
      139 SETTABLEKS                       R2 R10 K33 ["validatedArgs"]
      141 SETTABLEKS                       R9 R10 K34 ["generationMeta"]
      143 GETUPVAL                         R12 5
      144 GETTABLEKS                       R11 R12 K12 ["createUnimplemented"]
      146 LOADK                            R12 K35 ["retryGeneration"]
      147 CALL                             R11 1 1
      148 SETTABLEKS                       R11 R10 K35 ["retryGeneration"]
      150 GETUPVAL                         R12 5
      151 GETTABLEKS                       R11 R12 K12 ["createUnimplemented"]
      153 LOADK                            R12 K36 ["cancelGeneration"]
      154 CALL                             R11 1 1
      155 SETTABLEKS                       R11 R10 K36 ["cancelGeneration"]
      157 GETUPVAL                         R12 5
      158 GETTABLEKS                       R11 R12 K12 ["createUnimplemented"]
      160 LOADK                            R12 K37 ["publishAssets"]
      161 CALL                             R11 1 1
      162 SETTABLEKS                       R11 R10 K37 ["publishAssets"]
      164 GETUPVAL                         R12 5
      165 GETTABLEKS                       R11 R12 K12 ["createUnimplemented"]
      167 LOADK                            R12 K38 ["insertAssets"]
      168 CALL                             R11 1 1
      169 SETTABLEKS                       R11 R10 K38 ["insertAssets"]
      171 LOADB                            R11 0
      172 SETTABLEKS                       R11 R10 K39 ["shouldShowChip"]
      174 GETUPVAL                         R12 5
      175 GETTABLEKS                       R11 R12 K12 ["createUnimplemented"]
      177 LOADK                            R12 K40 ["onChipClicked"]
      178 CALL                             R11 1 1
      179 SETTABLEKS                       R11 R10 K40 ["onChipClicked"]
      181 GETUPVAL                         R11 6
      182 MOVE                             R12 R0
      183 MOVE                             R13 R2
      184 MOVE                             R14 R10
      185 CALL                             R11 3 0
      186 GETTABLEKS                       R11 R6 K13 ["replaceContent"]
      188 MOVE                             R12 R10
      189 CALL                             R11 1 0
      190 GETUPVAL                         R11 7
      191 MOVE                             R12 R0
      192 MOVE                             R13 R10
      193 CALL                             R11 2 0
      194 GETTABLEKS                       R11 R10 K35 ["retryGeneration"]
      196 CALL                             R11 0 2
      197 JUMPIF                           R11 ; [+10]
      198 GETIMPORT                        R13 K47 [error]
      200 LOADK                            R15 K48 ["Mesh generation failed with error: %*"]
      201 MOVE                             R17 R12
      202 NAMECALL                         R15 R15 K23 ["format"]
      204 CALL                             R15 2 1
      205 MOVE                             R14 R15
      206 LOADN                            R15 0
      207 CALL                             R13 2 0
      208 JUMPIFNOT                        R4 ; [+2]
      209 LOADK                            R13 K49 ["Mesh generated successfully"]
      210 RETURN                           R13 1
      211 GETTABLEKS                       R13 R10 K37 ["publishAssets"]
      213 CALL                             R13 0 2
      214 JUMPIF                           R13 ; [+10]
      215 GETIMPORT                        R15 K47 [error]
      217 LOADK                            R17 K50 ["Failed to publish assets with error: %*"]
      218 MOVE                             R19 R14
      219 NAMECALL                         R17 R17 K23 ["format"]
      221 CALL                             R17 2 1
      222 MOVE                             R16 R17
      223 LOADN                            R17 0
      224 CALL                             R15 2 0
      225 GETTABLEKS                       R15 R10 K38 ["insertAssets"]
      227 CALL                             R15 0 2
      228 JUMPIF                           R15 ; [+10]
      229 GETIMPORT                        R17 K47 [error]
      231 LOADK                            R19 K51 ["Failed to insert assets with error: %*"]
      232 MOVE                             R21 R16
      233 NAMECALL                         R19 R19 K23 ["format"]
      235 CALL                             R19 2 1
      236 MOVE                             R18 R19
      237 LOADN                            R19 0
      238 CALL                             R17 2 0
      239 DUPTABLE                         R17 K54 [{"fullName", "tag"}]
      240 SETTABLEKS                       R16 R17 K52 ["fullName"]
      242 GETUPVAL                         R19 10
      243 GETTABLEKS                       R18 R19 K55 ["getLinkTag"]
      245 GETTABLEKS                       R19 R9 K18 ["requestId"]
      247 CALL                             R18 1 1
      248 SETTABLEKS                       R18 R17 K53 ["tag"]
      250 RETURN                           R17 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["showChip"]
       13 SETTABLEKS                       R1 R0 K5 ["shouldShowChip"]
       15 DUPTABLE                         R1 K7 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K6 ["rawTransformValues"]
       19 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewState"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["Signal"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Tools"]
       31 GETTABLEKS                       R5 R6 K14 ["ToolTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K1 [script]
       41 LOADK                            R8 K16 ["MeshGen"]
       42 NAMECALL                         R6 R6 K3 ["FindFirstAncestor"]
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R9 R6 K17 ["MeshGenTool"]
       49 GETTABLEKS                       R8 R9 K18 ["MeshGenBridgeTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K9 [require]
       54 GETTABLEKS                       R9 R6 K19 ["MeshGenConstants"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K9 [require]
       59 GETTABLEKS                       R10 R6 K20 ["MeshGenContentWidget"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K9 [require]
       64 GETTABLEKS                       R11 R6 K21 ["MeshGenTypes"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K9 [require]
       69 GETTABLEKS                       R13 R0 K22 ["Flags"]
       71 GETTABLEKS                       R12 R13 K23 ["FFlagAssistantPersistConversations"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R12 R8 K24 ["Enums"]
       76 GETTABLEKS                       R13 R8 K25 ["DEFAULT_MAX_TRIANGLES"]
       78 GETTABLEKS                       R14 R8 K26 ["DEFAULT_USE_SELECTED_BOUNDING_BOX"]
       80 GETTABLEKS                       R15 R8 K27 ["MAX_TRIANGLES_LOWER_BOUND"]
       82 GETTABLEKS                       R16 R8 K28 ["MAX_TRIANGLES_UPPER_BOUND"]
       84 GETTABLEKS                       R17 R8 K29 ["PREVIEW_IMAGE_COUNT"]
       86 DUPCLOSURE                       R18 K30 [PROTO_0]
       87 CAPTURE                          VAL R1
       88 DUPCLOSURE                       R19 K31 [PROTO_2]
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R16
       91 DUPCLOSURE                       R20 K32 [PROTO_3]
       92 CAPTURE                          VAL R2
       93 DUPCLOSURE                       R21 K33 [PROTO_4]
       94 CAPTURE                          VAL R2
       95 DUPCLOSURE                       R22 K34 [PROTO_14]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R17
      100 DUPCLOSURE                       R23 K35 [PROTO_17]
      101 CAPTURE                          VAL R22
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R2
      104 DUPCLOSURE                       R24 K36 [PROTO_20]
      105 CAPTURE                          VAL R22
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R2
      108 DUPCLOSURE                       R25 K37 [PROTO_22]
      109 CAPTURE                          VAL R22
      110 CAPTURE                          VAL R12
      111 LOADNIL                          R26
      112 NEWCLOSURE                       R27 P8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          REF R26
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R23
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R24
      121 CAPTURE                          VAL R25
      122 DUPCLOSURE                       R28 K38 [PROTO_33]
      123 CAPTURE                          VAL R9
      124 DUPCLOSURE                       R26 K39 [PROTO_34]
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R22
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R27
      132 CAPTURE                          VAL R28
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R10
      136 DUPCLOSURE                       R29 K40 [PROTO_36]
      137 CAPTURE                          VAL R22
      138 DUPCLOSURE                       R30 K41 [PROTO_37]
      139 CAPTURE                          VAL R22
      140 DUPCLOSURE                       R31 K42 [PROTO_38]
      141 CAPTURE                          VAL R22
      142 DUPTABLE                         R32 K46 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage"}]
      143 SETTABLEKS                       R29 R32 K43 ["updateContentHeader"]
      145 SETTABLEKS                       R30 R32 K44 ["setPreviewStateAsync"]
      147 SETTABLEKS                       R31 R32 K45 ["setPreviewImage"]
      149 DUPTABLE                         R33 K51 [{"bridge", "startGeneration", "propsInit", "propsReady"}]
      150 SETTABLEKS                       R32 R33 K47 ["bridge"]
      152 SETTABLEKS                       R26 R33 K48 ["startGeneration"]
      154 SETTABLEKS                       R27 R33 K49 ["propsInit"]
      156 SETTABLEKS                       R28 R33 K50 ["propsReady"]
      158 CLOSEUPVALS                      R26
      159 RETURN                           R33 1
