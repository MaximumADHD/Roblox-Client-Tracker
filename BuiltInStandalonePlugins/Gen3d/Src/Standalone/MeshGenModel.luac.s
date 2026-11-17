PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ImageSelectionOps"]
        3 GETTABLEKS                       R1 R1 K1 ["createOrchestrator"]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 DUPTABLE                         R3 K6 [{"slotCount", "textPrompt", "model", "onSlotChanged"}]
        8 GETTABLEKS                       R4 R0 K2 ["slotCount"]
       10 SETTABLEKS                       R4 R3 K2 ["slotCount"]
       12 GETTABLEKS                       R4 R0 K3 ["textPrompt"]
       14 SETTABLEKS                       R4 R3 K3 ["textPrompt"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K7 ["getFStringAssistantMeshGenImageGenModelOverride"]
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R3 K4 ["model"]
       22 GETTABLEKS                       R4 R0 K5 ["onSlotChanged"]
       24 SETTABLEKS                       R4 R3 K5 ["onSlotChanged"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"status", "thumbnailContent", "errorMessage"}]
        1 GETTABLEKS                       R2 R0 K0 ["status"]
        3 SETTABLEKS                       R2 R1 K0 ["status"]
        5 GETTABLEKS                       R2 R0 K4 ["thumbnailTempId"]
        7 SETTABLEKS                       R2 R1 K1 ["thumbnailContent"]
        9 GETTABLEKS                       R2 R0 K2 ["errorMessage"]
       11 SETTABLEKS                       R2 R1 K2 ["errorMessage"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["current"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["current"]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETTABLEKS                       R1 R0 K1 ["cancel"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["MeshGenCancel"]
       14 LOADNIL                          R4
       15 DUPTABLE                         R5 K3 [{"requestId"}]
       16 SETTABLEKS                       R0 R5 K2 ["requestId"]
       18 NAMECALL                         R1 R1 K4 ["FireHost"]
       20 CALL                             R1 4 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 DUPCLOSURE                       R1 K1 [PROTO_6]
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 LOADNIL                          R1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_10:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 DUPTABLE                         R1 K5 [{"status", "startTime", "referenceImage", "generationId", "errorMessage"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["status"]
        8 SETTABLEKS                       R2 R1 K0 ["status"]
       10 GETTABLEKS                       R2 R0 K1 ["startTime"]
       12 SETTABLEKS                       R2 R1 K1 ["startTime"]
       14 GETTABLEKS                       R2 R0 K2 ["referenceImage"]
       16 SETTABLEKS                       R2 R1 K2 ["referenceImage"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["generationId"]
       21 SETTABLEKS                       R2 R1 K3 ["generationId"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["errorMessage"]
       26 SETTABLEKS                       R2 R1 K4 ["errorMessage"]
       28 RETURN                           R1 1

PROTO_11:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R1 K3 ["requestId"]
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETTABLEKS                       R2 R1 K3 ["requestId"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["current"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R1 K5 ["status"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["Materializing"]
       24 JUMPIFEQ                         R2 R3 ; [+5]
       26 GETUPVAL                         R2 0
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K4 ["current"]
       30 GETUPVAL                         R2 2
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          VAL R1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["MeshGenStatusChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       13 CALL                             R0 3 2
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

PROTO_14:
        0 DUPTABLE                         R0 K6 [{"prompt", "options", "referenceSlots", "selectedReferenceIndex", "generation", "editSessionId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["prompt"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["options"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["referenceSlots"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["selectedReferenceIndex"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["generation"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["editSessionId"]
       19 GETUPVAL                         R1 6
       20 GETTABLEKS                       R1 R1 K7 ["Model"]
       22 GETTABLEKS                       R1 R1 K8 ["publish"]
       24 GETUPVAL                         R2 7
       25 MOVE                             R3 R0
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 DUPTABLE                         R2 K4 [{"status", "thumbnailContent", "errorMessage"}]
        8 GETTABLEKS                       R3 R1 K1 ["status"]
       10 SETTABLEKS                       R3 R2 K1 ["status"]
       12 GETTABLEKS                       R3 R1 K5 ["thumbnailTempId"]
       14 SETTABLEKS                       R3 R2 K2 ["thumbnailContent"]
       16 GETTABLEKS                       R3 R1 K3 ["errorMessage"]
       18 SETTABLEKS                       R3 R2 K3 ["errorMessage"]
       20 GETUPVAL                         R3 2
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 DUPCLOSURE                       R1 K2 [PROTO_17]
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 GETUPVAL                         R1 5
       17 DUPTABLE                         R2 K6 [{"slotCount", "textPrompt", "onSlotChanged"}]
       18 GETUPVAL                         R3 6
       19 GETTABLEKS                       R3 R3 K7 ["REFERENCE_COUNT"]
       21 SETTABLEKS                       R3 R2 K3 ["slotCount"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["current"]
       26 SETTABLEKS                       R3 R2 K4 ["textPrompt"]
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          REF R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R3 R2 K5 ["onSlotChanged"]
       34 CALL                             R1 1 1
       35 MOVE                             R0 R1
       36 GETUPVAL                         R1 7
       37 SETTABLEKS                       R0 R1 K0 ["current"]
       39 GETTABLEKS                       R1 R0 K8 ["start"]
       41 CALL                             R1 0 0
       42 CLOSEUPVALS                      R0
       43 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R2 R1 K1 ["status"]
        7 JUMPIFNOTEQKS                    R2 K2 ["Ready"] ; [+4]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R2 R0 K1 ["getSlot"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 JUMPIFNOT                        R0 ; [+3]
       18 GETTABLEKS                       R3 R0 K2 ["cancel"]
       20 CALL                             R3 0 0
       21 GETUPVAL                         R3 3
       22 LOADB                            R5 0
       23 NAMECALL                         R3 R3 K3 ["GenerateGUID"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 4
       27 SETTABLEKS                       R3 R4 K0 ["current"]
       29 GETUPVAL                         R4 5
       30 DUPTABLE                         R5 K7 [{"status", "startTime", "referenceImage"}]
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K8 ["Generating"]
       34 SETTABLEKS                       R6 R5 K4 ["status"]
       36 GETIMPORT                        R6 K11 [os.clock]
       38 CALL                             R6 0 1
       39 SETTABLEKS                       R6 R5 K5 ["startTime"]
       41 JUMPIFNOT                        R2 ; [+3]
       42 GETTABLEKS                       R6 R2 K12 ["thumbnailTempId"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K6 ["referenceImage"]
       48 CALL                             R4 1 0
       49 GETUPVAL                         R4 0
       50 GETUPVAL                         R6 7
       51 GETTABLEKS                       R6 R6 K13 ["MeshGenGenerate"]
       53 LOADNIL                          R7
       54 DUPTABLE                         R8 K19 [{"requestId", "prompt", "output", "parts", "referenceImageUrl"}]
       55 SETTABLEKS                       R3 R8 K14 ["requestId"]
       57 GETUPVAL                         R9 8
       58 GETTABLEKS                       R9 R9 K0 ["current"]
       60 SETTABLEKS                       R9 R8 K15 ["prompt"]
       62 GETUPVAL                         R9 9
       63 GETTABLEKS                       R9 R9 K0 ["current"]
       65 GETTABLEKS                       R9 R9 K16 ["output"]
       67 SETTABLEKS                       R9 R8 K16 ["output"]
       69 GETUPVAL                         R9 9
       70 GETTABLEKS                       R9 R9 K0 ["current"]
       72 GETTABLEKS                       R9 R9 K17 ["parts"]
       74 SETTABLEKS                       R9 R8 K17 ["parts"]
       76 JUMPIFNOT                        R2 ; [+3]
       77 GETTABLEKS                       R9 R2 K20 ["presignedUrl"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R9
       81 SETTABLEKS                       R9 R8 K18 ["referenceImageUrl"]
       83 NAMECALL                         R4 R4 K21 ["FireHost"]
       85 CALL                             R4 4 0
       86 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R0 0 6
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Model"]
        5 GETTABLEKS                       R1 R1 K1 ["onIntent"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["SetPrompt"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["Model"]
       18 GETTABLEKS                       R2 R2 K1 ["onIntent"]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K3 ["SetOptions"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CALL                             R2 3 1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K0 ["Model"]
       31 GETTABLEKS                       R3 R3 K1 ["onIntent"]
       33 GETUPVAL                         R4 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K4 ["GenerateReferences"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U12
       46 CALL                             R3 3 1
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K0 ["Model"]
       50 GETTABLEKS                       R4 R4 K1 ["onIntent"]
       52 GETUPVAL                         R5 1
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K5 ["SelectReference"]
       56 NEWCLOSURE                       R7 P3
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U10
       59 CALL                             R4 3 1
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K0 ["Model"]
       63 GETTABLEKS                       R5 R5 K1 ["onIntent"]
       65 GETUPVAL                         R6 1
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K6 ["Generate"]
       69 NEWCLOSURE                       R8 P4
       70 CAPTURE                          UPVAL U14
       71 CAPTURE                          UPVAL U12
       72 CAPTURE                          UPVAL U15
       73 CAPTURE                          UPVAL U16
       74 CAPTURE                          UPVAL U17
       75 CAPTURE                          UPVAL U18
       76 CAPTURE                          UPVAL U19
       77 CAPTURE                          UPVAL U20
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U5
       80 CALL                             R5 3 1
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K0 ["Model"]
       84 GETTABLEKS                       R6 R6 K1 ["onIntent"]
       86 GETUPVAL                         R7 1
       87 GETUPVAL                         R8 2
       88 GETTABLEKS                       R8 R8 K7 ["Cancel"]
       90 NEWCLOSURE                       R9 P5
       91 CAPTURE                          UPVAL U21
       92 CAPTURE                          UPVAL U18
       93 CALL                             R6 3 -1
       94 SETLIST                          R0 R1 -1 [1]
       96 NEWCLOSURE                       R1 P6
       97 CAPTURE                          VAL R0
       98 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["Networking"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["useState"]
        9 LOADK                            R5 K3 [""]
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K2 ["useState"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K4 ["DEFAULT_OPTIONS"]
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K2 ["useState"]
       21 GETUPVAL                         R9 3
       22 CALL                             R8 1 2
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K2 ["useState"]
       26 LOADNIL                          R11
       27 CALL                             R10 1 2
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K2 ["useState"]
       31 LOADNIL                          R13
       32 CALL                             R12 1 2
       33 GETUPVAL                         R14 1
       34 GETTABLEKS                       R14 R14 K5 ["useRef"]
       36 MOVE                             R15 R4
       37 CALL                             R14 1 1
       38 GETUPVAL                         R15 1
       39 GETTABLEKS                       R15 R15 K5 ["useRef"]
       41 MOVE                             R16 R6
       42 CALL                             R15 1 1
       43 GETUPVAL                         R16 1
       44 GETTABLEKS                       R16 R16 K5 ["useRef"]
       46 MOVE                             R17 R8
       47 CALL                             R16 1 1
       48 GETUPVAL                         R17 1
       49 GETTABLEKS                       R17 R17 K5 ["useRef"]
       51 MOVE                             R18 R10
       52 CALL                             R17 1 1
       53 GETUPVAL                         R18 1
       54 GETTABLEKS                       R18 R18 K5 ["useRef"]
       56 LOADNIL                          R19
       57 CALL                             R18 1 1
       58 GETUPVAL                         R19 1
       59 GETTABLEKS                       R19 R19 K5 ["useRef"]
       61 LOADNIL                          R20
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R20 R0 K6 ["CreateReferenceOrchestrator"]
       65 JUMPIF                           R20 ; [+1]
       66 GETUPVAL                         R20 4
       67 GETUPVAL                         R21 1
       68 GETTABLEKS                       R21 R21 K7 ["useCallback"]
       70 NEWCLOSURE                       R22 P0
       71 CAPTURE                          VAL R16
       72 CAPTURE                          VAL R9
       73 NEWTABLE                         R23 0 0
       75 CALL                             R21 2 1
       76 GETUPVAL                         R22 1
       77 GETTABLEKS                       R22 R22 K7 ["useCallback"]
       79 NEWCLOSURE                       R23 P1
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R11
       82 NEWTABLE                         R24 0 0
       84 CALL                             R22 2 1
       85 GETUPVAL                         R23 1
       86 GETTABLEKS                       R23 R23 K7 ["useCallback"]
       88 NEWCLOSURE                       R24 P2
       89 CAPTURE                          VAL R18
       90 NEWTABLE                         R25 0 0
       92 CALL                             R23 2 1
       93 GETUPVAL                         R24 1
       94 GETTABLEKS                       R24 R24 K7 ["useCallback"]
       96 NEWCLOSURE                       R25 P3
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R2
       99 CAPTURE                          UPVAL U5
      100 NEWTABLE                         R26 0 1
      102 MOVE                             R27 R2
      103 SETLIST                          R26 R27 1 [1]
      105 CALL                             R24 2 1
      106 GETUPVAL                         R25 1
      107 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      109 NEWCLOSURE                       R26 P4
      110 CAPTURE                          VAL R23
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R21
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R22
      115 CAPTURE                          VAL R13
      116 NEWTABLE                         R27 0 1
      118 MOVE                             R28 R3
      119 SETLIST                          R27 R28 1 [1]
      121 CALL                             R25 2 0
      122 GETUPVAL                         R25 1
      123 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      125 NEWCLOSURE                       R26 P5
      126 CAPTURE                          VAL R23
      127 CAPTURE                          VAL R24
      128 NEWTABLE                         R27 0 2
      130 MOVE                             R28 R23
      131 MOVE                             R29 R24
      132 SETLIST                          R27 R28 2 [1]
      134 CALL                             R25 2 0
      135 GETUPVAL                         R25 1
      136 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      138 NEWCLOSURE                       R26 P6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          VAL R19
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          VAL R13
      144 NEWTABLE                         R27 0 1
      146 MOVE                             R28 R2
      147 SETLIST                          R27 R28 1 [1]
      149 CALL                             R25 2 0
      150 GETUPVAL                         R25 1
      151 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      153 NEWCLOSURE                       R26 P7
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R3
      160 CAPTURE                          UPVAL U2
      161 CAPTURE                          VAL R1
      162 NEWTABLE                         R27 0 7
      164 MOVE                             R28 R1
      165 MOVE                             R29 R4
      166 MOVE                             R30 R6
      167 MOVE                             R31 R8
      168 MOVE                             R32 R10
      169 MOVE                             R33 R12
      170 MOVE                             R34 R3
      171 SETLIST                          R27 R28 7 [1]
      173 CALL                             R25 2 0
      174 GETUPVAL                         R25 1
      175 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      177 NEWCLOSURE                       R26 P8
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          VAL R1
      180 CAPTURE                          UPVAL U7
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R21
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R17
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R13
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          UPVAL U5
      199 CAPTURE                          VAL R24
      200 NEWTABLE                         R27 0 7
      202 MOVE                             R28 R1
      203 MOVE                             R29 R2
      204 MOVE                             R30 R20
      205 MOVE                             R31 R23
      206 MOVE                             R32 R24
      207 MOVE                             R33 R21
      208 MOVE                             R34 R22
      209 SETLIST                          R27 R28 7 [1]
      211 CALL                             R25 2 0
      212 LOADNIL                          R25
      213 RETURN                           R25 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["Networking"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 DUPTABLE                         R4 K6 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K5 ["Inner"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Networking"]
       33 GETTABLEKS                       R5 R5 K15 ["Events"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Util"]
       42 GETTABLEKS                       R6 R6 K17 ["MeshGenViewModel"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K18 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K19 ["NetworkingContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K13 ["Src"]
       58 GETTABLEKS                       R8 R8 K20 ["Guest"]
       60 GETTABLEKS                       R8 R8 K21 ["buildImageSelectionServices"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K22 ["Bin"]
       67 GETTABLEKS                       R9 R9 K23 ["Common"]
       69 GETTABLEKS                       R9 R9 K24 ["defineLuaFlags"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K13 ["Src"]
       76 GETTABLEKS                       R10 R10 K25 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K26 ["useHostSessionId"]
       80 CALL                             R9 1 1
       81 GETTABLEKS                       R10 R5 K27 ["Intents"]
       83 GETTABLEKS                       R11 R2 K28 ["Gen3dTypes"]
       85 GETTABLEKS                       R11 R11 K29 ["Enums"]
       87 GETTABLEKS                       R11 R11 K30 ["PreviewState"]
       89 GETIMPORT                        R12 K33 [table.freeze]
       91 NEWTABLE                         R13 0 0
       93 CALL                             R12 1 1
       94 DUPCLOSURE                       R13 K34 [PROTO_0]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R14 K35 [PROTO_1]
       99 DUPCLOSURE                       R15 K36 [PROTO_26]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R0
      109 DUPCLOSURE                       R16 K37 [PROTO_27]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R15
      113 RETURN                           R16 1
