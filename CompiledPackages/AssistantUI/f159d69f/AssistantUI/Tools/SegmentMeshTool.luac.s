PROTO_0:
        0 LOADK                            R1 K0 ["SegmentMesh-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantSegmentMeshMaxUserParts"]
        3 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["([^,]+)"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K5 [string.match]
       10 MOVE                             R8 R5
       11 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+9]
       14 JUMPIFEQKS                       R7 K7 [""] ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K10 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 1 ; [-16]
       25 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["selectedInstanceRef"]
        2 JUMPIFEQKNIL                     R3 ; [+35]
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K2 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFEQKS                       R6 K3 ["table"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       15 LOADK                            R6 K4 ["selectedInstanceRef must be a table"]
       16 GETIMPORT                        R4 K6 [assert]
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R7 R3 K7 ["uniqueId"]
       21 FASTCALL1                        TYPEOF R7 ; [+2]
       22 GETIMPORT                        R6 K2 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFEQKS                       R6 K8 ["string"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       31 LOADK                            R6 K9 ["selectedInstanceRef.uniqueId must be a string"]
       32 GETIMPORT                        R4 K6 [assert]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K7 ["uniqueId"]
       37 RETURN                           R4 1
       38 GETTABLEKS                       R4 R2 K10 ["instance_path"]
       40 JUMPIFEQKNIL                     R4 ; [+44]
       42 JUMPIFEQKS                       R4 K11 [""] ; [+42]
       44 GETTABLEKS                       R5 R0 K12 ["instances"]
       46 GETTABLEKS                       R5 R5 K13 ["resolveInstanceByPathAsync"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 JUMPIFNOTEQKNIL                  R5 ; [+10]
       52 GETIMPORT                        R6 K15 [error]
       54 LOADK                            R7 K16 ["could not resolve instance_path \"%*\"; it must point to an existing MeshPart or Model."]
       55 MOVE                             R9 R4
       56 NAMECALL                         R7 R7 K17 ["format"]
       58 CALL                             R7 2 1
       59 LOADN                            R8 0
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R6 R5 K18 ["className"]
       63 JUMPIFEQKS                       R6 K19 ["MeshPart"] ; [+18]
       65 GETTABLEKS                       R6 R5 K18 ["className"]
       67 JUMPIFEQKS                       R6 K20 ["Model"] ; [+14]
       69 GETIMPORT                        R6 K15 [error]
       71 LOADK                            R7 K21 ["requires a MeshPart or Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       72 MOVE                             R9 R4
       73 GETTABLEKS                       R10 R5 K18 ["className"]
       75 GETTABLEKS                       R11 R5 K22 ["name"]
       77 NAMECALL                         R7 R7 K17 ["format"]
       79 CALL                             R7 4 1
       80 LOADN                            R8 0
       81 CALL                             R6 2 0
       82 GETTABLEKS                       R6 R5 K7 ["uniqueId"]
       84 RETURN                           R6 1
       85 GETIMPORT                        R5 K24 [pcall]
       87 MOVE                             R6 R1
       88 CALL                             R5 1 2
       89 MOVE                             R8 R5
       90 JUMPIFNOT                        R8 ; [+4]
       91 JUMPIFNOTEQKNIL                  R6 ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       97 LOADK                            R9 K25 ["selectedInstanceRef or instance_path must be provided — mesh segmentation requires a source MeshPart or Model"]
       98 GETIMPORT                        R7 K6 [assert]
      100 CALL                             R7 2 0
      101 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      103 RETURN                           R7 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R2 K6 ["parts"]
       17 LOADNIL                          R4
       18 FASTCALL1                        TYPEOF R3 ; [+3]
       19 MOVE                             R6 R3
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+6]
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R3
       27 CALL                             R5 1 1
       28 MOVE                             R4 R5
       29 JUMP                             ; [+16]
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K1 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       41 LOADK                            R7 K8 ["parts must be a comma-separated string or an array of part names"]
       42 GETIMPORT                        R5 K5 [assert]
       44 CALL                             R5 2 0
       45 MOVE                             R4 R3
       46 LENGTH                           R7 R4
       47 LOADN                            R8 2
       48 JUMPIFLE                         R8 R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 LOADK                            R7 K9 ["parts must contain at least %* entries"]
       53 LOADN                            R9 2
       54 NAMECALL                         R7 R7 K10 ["format"]
       56 CALL                             R7 2 1
       57 FASTCALL2                        ASSERT R6 R7 ; [+3]
       59 GETIMPORT                        R5 K5 [assert]
       61 CALL                             R5 2 0
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K11 ["FIntAssistantSegmentMeshMaxUserParts"]
       65 LENGTH                           R8 R4
       66 JUMPIFLE                         R8 R5 ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 LOADK                            R8 K12 ["parts must contain at most %* entries"]
       71 MOVE                             R10 R5
       72 NAMECALL                         R8 R8 K10 ["format"]
       74 CALL                             R8 2 1
       75 FASTCALL2                        ASSERT R7 R8 ; [+3]
       77 GETIMPORT                        R6 K5 [assert]
       79 CALL                             R6 2 0
       80 GETTABLEKS                       R6 R2 K13 ["isManualRun"]
       82 JUMPIFEQKNIL                     R6 ; [+16]
       84 FASTCALL1                        TYPEOF R6 ; [+3]
       85 MOVE                             R10 R6
       86 GETIMPORT                        R9 K1 [typeof]
       88 CALL                             R9 1 1
       89 JUMPIFEQKS                       R9 K14 ["boolean"] ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 FASTCALL2K                       ASSERT R8 K15 ; [+4]
       95 LOADK                            R9 K15 ["isManualRun must be a boolean"]
       96 GETIMPORT                        R7 K5 [assert]
       98 CALL                             R7 2 0
       99 GETUPVAL                         R7 2
      100 MOVE                             R8 R0
      101 MOVE                             R9 R1
      102 MOVE                             R10 R2
      103 CALL                             R7 3 1
      104 DUPTABLE                         R8 K18 [{"partNames", "isManualRun", "selectedUniqueId"}]
      105 SETTABLEKS                       R4 R8 K16 ["partNames"]
      107 SETTABLEKS                       R6 R8 K13 ["isManualRun"]
      109 SETTABLEKS                       R7 R8 K17 ["selectedUniqueId"]
      111 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedMeshRef"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["generateSegmentMesh"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K3 ["generateSegmentMeshAsync"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["insertSegmentedModel"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"requestId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["insertSegmentedModelAsync"]
       19 DUPTABLE                         R1 K3 [{"requestId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["requestId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelSegmentation"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"requestId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["requestId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        6 JUMPIFNOT                        R4 ; [+34]
        7 LOADB                            R5 1
        8 GETTABLEKS                       R6 R0 K1 ["targetId"]
       10 JUMPIFEQKNIL                     R6 ; [+11]
       12 GETTABLEKS                       R7 R0 K1 ["targetId"]
       14 FASTCALL1                        TYPEOF R7 ; [+2]
       15 GETIMPORT                        R6 K3 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K4 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       24 LOADK                            R6 K5 ["targetId must be a string"]
       25 GETIMPORT                        R4 K7 [assert]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K1 ["targetId"]
       30 JUMPIF                           R4 ; [+5]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K8 ["resolveTargetAsync"]
       34 GETUPVAL                         R5 2
       35 CALL                             R4 1 1
       36 MOVE                             R3 R4
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          REF R3
       40 JUMP                             ; [+14]
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K9 ["bridges"]
       44 GETTABLEKS                       R4 R4 K10 ["SegmentMesh"]
       46 GETTABLEKS                       R4 R4 K11 ["createGuestContext"]
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 CALL                             R4 2 1
       51 GETTABLEKS                       R1 R4 K12 ["bridge"]
       53 GETTABLEKS                       R2 R1 K13 ["getSelectedMeshRef"]
       55 GETUPVAL                         R4 5
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K14 ["environment"]
       59 MOVE                             R6 R2
       60 MOVE                             R7 R0
       61 CALL                             R4 3 1
       62 LOADK                            R6 K15 ["SegmentMesh-"]
       63 GETUPVAL                         R7 6
       64 LOADB                            R9 0
       65 NAMECALL                         R7 R7 K16 ["GenerateGUID"]
       67 CALL                             R7 2 1
       68 CONCAT                           R5 R6 R7
       69 DUPTABLE                         R6 K20 [{"requestId", "partNames", "selectedUniqueId"}]
       70 SETTABLEKS                       R5 R6 K17 ["requestId"]
       72 GETTABLEKS                       R7 R4 K18 ["partNames"]
       74 SETTABLEKS                       R7 R6 K18 ["partNames"]
       76 GETTABLEKS                       R7 R4 K19 ["selectedUniqueId"]
       78 SETTABLEKS                       R7 R6 K19 ["selectedUniqueId"]
       80 GETIMPORT                        R7 K22 [pcall]
       82 NEWCLOSURE                       R8 P1
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          REF R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          REF R1
       88 CALL                             R7 1 2
       89 JUMPIF                           R7 ; [+11]
       90 GETIMPORT                        R9 K24 [error]
       92 LOADK                            R11 K25 ["Mesh segmentation failed with error: "]
       93 FASTCALL1                        TOSTRING R8 ; [+3]
       94 MOVE                             R13 R8
       95 GETIMPORT                        R12 K27 [tostring]
       97 CALL                             R12 1 1
       98 CONCAT                           R10 R11 R12
       99 LOADN                            R11 0
      100 CALL                             R9 2 0
      101 GETIMPORT                        R9 K22 [pcall]
      103 NEWCLOSURE                       R10 P2
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          REF R3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          REF R1
      109 CALL                             R9 1 2
      110 JUMPIF                           R9 ; [+31]
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K0 ["FFlagAssistantUseNewDMNetworking"]
      114 JUMPIFNOT                        R11 ; [+8]
      115 GETIMPORT                        R11 K22 [pcall]
      117 NEWCLOSURE                       R12 P3
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          REF R3
      120 CAPTURE                          VAL R5
      121 CALL                             R11 1 0
      122 JUMP                             ; [+8]
      123 GETIMPORT                        R11 K22 [pcall]
      125 GETTABLEKS                       R12 R1 K28 ["cancelSegmentationAsync"]
      127 DUPTABLE                         R13 K29 [{"requestId"}]
      128 SETTABLEKS                       R5 R13 K17 ["requestId"]
      130 CALL                             R11 2 0
      131 GETIMPORT                        R11 K24 [error]
      133 LOADK                            R13 K30 ["Failed to insert segmented model with error: "]
      134 FASTCALL1                        TOSTRING R10 ; [+3]
      135 MOVE                             R15 R10
      136 GETIMPORT                        R14 K27 [tostring]
      138 CALL                             R14 1 1
      139 CONCAT                           R12 R13 R14
      140 LOADN                            R13 0
      141 CALL                             R11 2 0
      142 GETIMPORT                        R11 K33 [table.concat]
      144 GETTABLEKS                       R12 R4 K18 ["partNames"]
      146 LOADK                            R13 K34 [", "]
      147 CALL                             R11 2 1
      148 DUPTABLE                         R12 K37 [{"tag", "requestId", "generationName"}]
      149 GETUPVAL                         R13 7
      150 GETTABLEKS                       R13 R13 K38 ["getLinkTag"]
      152 MOVE                             R14 R5
      153 CALL                             R13 1 1
      154 SETTABLEKS                       R13 R12 K35 ["tag"]
      156 SETTABLEKS                       R5 R12 K17 ["requestId"]
      158 SETTABLEKS                       R11 R12 K36 ["generationName"]
      160 CLOSEUPVALS                      R1
      161 RETURN                           R12 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+25]
        9 FASTCALL1                        TOSTRING R4 ; [+3]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K3 [tostring]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K4 ["addText"]
       19 CALL                             R6 2 1
       20 DUPTABLE                         R8 K6 [{"errorMessage"}]
       21 SETTABLEKS                       R5 R8 K5 ["errorMessage"]
       23 NAMECALL                         R6 R6 K7 ["setStructuredContent"]
       25 CALL                             R6 2 1
       26 LOADB                            R8 1
       27 NAMECALL                         R6 R6 K8 ["setError"]
       29 CALL                             R6 2 1
       30 NAMECALL                         R6 R6 K9 ["build"]
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
       34 GETUPVAL                         R5 2
       35 CALL                             R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["toString"]
       39 DUPTABLE                         R8 K13 [{"tag", "generationName"}]
       40 GETTABLEKS                       R9 R4 K11 ["tag"]
       42 SETTABLEKS                       R9 R8 K11 ["tag"]
       44 GETTABLEKS                       R9 R4 K12 ["generationName"]
       46 SETTABLEKS                       R9 R8 K12 ["generationName"]
       48 CALL                             R7 1 -1
       49 NAMECALL                         R5 R5 K4 ["addText"]
       51 CALL                             R5 -1 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K7 ["setStructuredContent"]
       55 CALL                             R5 2 1
       56 NAMECALL                         R5 R5 K9 ["build"]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_13:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        6 JUMPIFNOT                        R4 ; [+11]
        7 GETIMPORT                        R4 K2 [pcall]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R4 1 2
       15 MOVE                             R2 R4
       16 MOVE                             R3 R5
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K3 ["bridges"]
       21 GETTABLEKS                       R4 R4 K4 ["SegmentMesh"]
       23 GETTABLEKS                       R4 R4 K5 ["createGuestContext"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R4 R4 K6 ["bridge"]
       30 GETIMPORT                        R5 K2 [pcall]
       32 GETTABLEKS                       R6 R4 K7 ["getSelectedMeshRef"]
       34 CALL                             R5 1 2
       35 MOVE                             R2 R5
       36 MOVE                             R3 R6
       37 JUMPIFNOT                        R2 ; [+2]
       38 MOVE                             R1 R3
       39 JUMP                             ; [+9]
       40 GETIMPORT                        R4 K9 [warn]
       42 LOADK                            R5 K10 ["[SegmentMesh] getSelectedMeshRef failed:"]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R7 R3
       45 GETIMPORT                        R6 K12 [tostring]
       47 CALL                             R6 1 1
       48 CALL                             R4 2 0
       49 JUMPIFNOT                        R1 ; [+18]
       50 DUPTABLE                         R4 K17 [{"uniqueId", "name", "className", "isValid"}]
       51 GETTABLEKS                       R5 R1 K13 ["uniqueId"]
       53 SETTABLEKS                       R5 R4 K13 ["uniqueId"]
       55 GETTABLEKS                       R5 R1 K14 ["name"]
       57 SETTABLEKS                       R5 R4 K14 ["name"]
       59 GETTABLEKS                       R5 R1 K15 ["className"]
       61 SETTABLEKS                       R5 R4 K15 ["className"]
       63 GETTABLEKS                       R5 R1 K18 ["isSegmentable"]
       65 SETTABLEKS                       R5 R4 K16 ["isValid"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R4
       69 NEWTABLE                         R5 0 2
       71 DUPTABLE                         R6 K23 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       72 GETUPVAL                         R7 6
       73 GETTABLEKS                       R7 R7 K24 ["SelectedInstanceRef"]
       75 SETTABLEKS                       R7 R6 K14 ["name"]
       77 GETUPVAL                         R7 7
       78 GETTABLEKS                       R7 R7 K25 ["Instance"]
       80 SETTABLEKS                       R7 R6 K19 ["inputType"]
       82 SETTABLEKS                       R4 R6 K20 ["initialValue"]
       84 DUPTABLE                         R7 K29 [{["name"], ["inputType"], ["initialValue"], ["required"] = True, ["min"] = 2, ["max"]}]
       85 GETUPVAL                         R8 6
       86 GETTABLEKS                       R8 R8 K30 ["Parts"]
       88 SETTABLEKS                       R8 R7 K14 ["name"]
       90 GETUPVAL                         R8 7
       91 GETTABLEKS                       R8 R8 K31 ["Array"]
       93 SETTABLEKS                       R8 R7 K19 ["inputType"]
       95 GETUPVAL                         R8 8
       96 SETTABLEKS                       R8 R7 K20 ["initialValue"]
       98 GETUPVAL                         R8 9
       99 SETTABLEKS                       R8 R7 K28 ["max"]
      101 SETLIST                          R5 R6 2 [1]
      103 DUPTABLE                         R6 K35 [{"formId", "fields", "validation"}]
      104 GETUPVAL                         R7 10
      105 GETTABLEKS                       R7 R7 K32 ["formId"]
      107 SETTABLEKS                       R7 R6 K32 ["formId"]
      109 SETTABLEKS                       R5 R6 K33 ["fields"]
      111 GETUPVAL                         R7 11
      112 DUPTABLE                         R8 K38 [{"kind", "rule"}]
      113 GETUPVAL                         R9 12
      114 GETTABLEKS                       R9 R9 K39 ["Not"]
      116 SETTABLEKS                       R9 R8 K36 ["kind"]
      118 GETUPVAL                         R9 11
      119 DUPTABLE                         R10 K43 [{["kind"], ["field"], ["value"] = False}]
      120 GETUPVAL                         R11 12
      121 GETTABLEKS                       R11 R11 K44 ["Equals"]
      123 SETTABLEKS                       R11 R10 K36 ["kind"]
      125 GETUPVAL                         R11 6
      126 GETTABLEKS                       R11 R11 K45 ["SelectedInstanceRefIsValid"]
      128 SETTABLEKS                       R11 R10 K40 ["field"]
      130 CALL                             R9 1 1
      131 SETTABLEKS                       R9 R8 K37 ["rule"]
      133 CALL                             R7 1 1
      134 SETTABLEKS                       R7 R6 K34 ["validation"]
      136 DUPTABLE                         R7 K47 [{"name", "arguments"}]
      137 GETUPVAL                         R8 13
      138 GETTABLEKS                       R8 R8 K48 ["AskInput"]
      140 SETTABLEKS                       R8 R7 K14 ["name"]
      142 SETTABLEKS                       R6 R7 K46 ["arguments"]
      144 RETURN                           R7 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K6 [{["parts"], ["isManualRun"] = True, ["selectedInstanceRef"], ["targetId"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K7 ["Parts"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K1 ["parts"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K8 ["SelectedInstanceRef"]
       16 GETTABLE                         R3 R1 R4
       17 SETTABLEKS                       R3 R2 K4 ["selectedInstanceRef"]
       19 GETUPVAL                         R3 2
       20 SETTABLEKS                       R3 R2 K5 ["targetId"]
       22 DUPTABLE                         R3 K11 [{"name", "arguments"}]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K12 ["SegmentMesh"]
       26 SETTABLEKS                       R4 R3 K9 ["name"]
       28 SETTABLEKS                       R2 R3 K10 ["arguments"]
       30 RETURN                           R3 1

PROTO_15:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+5]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          REF R2
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          UPVAL U12
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U13
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U12
       28 NEWTABLE                         R5 0 2
       30 MOVE                             R6 R3
       31 MOVE                             R7 R4
       32 SETLIST                          R5 R6 2 [1]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["SegmentMesh"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U7
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K2 ["FIntAssistantSegmentMeshMaxUserParts"]
       23 GETUPVAL                         R6 8
       24 GETTABLEKS                       R6 R6 K3 ["define"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R8 9
       28 GETTABLEKS                       R8 R8 K4 ["SegmentMesh"]
       30 NAMECALL                         R6 R6 K5 ["setName"]
       32 CALL                             R6 2 1
       33 LOADK                            R8 K6 ["Segments an existing mesh into named sub-parts using AI. Requires a source MeshPart or Model and up to %* part names (e.g. [\"head\", \"body\", \"tail\"]). Returns a new Model containing the segmented parts, inserted as a sibling of the source."]
       34 MOVE                             R10 R5
       35 NAMECALL                         R8 R8 K7 ["format"]
       37 CALL                             R8 2 1
       38 NAMECALL                         R6 R6 K8 ["setDescription"]
       40 CALL                             R6 2 1
       41 LOADK                            R8 K9 ["parts"]
       42 DUPTABLE                         R9 K14 [{["type"] = "array", ["description"], ["items"]}]
       43 LOADK                            R10 K15 ["List of part names to segment the mesh into (max %*). Example: [\"head\", \"body\", \"tail\"]."]
       44 MOVE                             R12 R5
       45 NAMECALL                         R10 R10 K7 ["format"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K12 ["description"]
       50 DUPTABLE                         R10 K17 [{["type"] = "string"}]
       51 SETTABLEKS                       R10 R9 K13 ["items"]
       53 NAMECALL                         R6 R6 K18 ["addArgument"]
       55 CALL                             R6 3 1
       56 LOADK                            R8 K19 ["instance_path"]
       57 DUPTABLE                         R9 K21 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       58 NAMECALL                         R6 R6 K22 ["addOptionalArgument"]
       60 CALL                             R6 3 1
       61 LOADK                            R8 K23 ["Mesh Segmentation"]
       62 NAMECALL                         R6 R6 K24 ["setTitle"]
       64 CALL                             R6 2 1
       65 DUPTABLE                         R8 K32 [{["title"] = "Mesh Segmentation", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       66 NAMECALL                         R6 R6 K33 ["setAnnotations"]
       68 CALL                             R6 2 1
       69 MOVE                             R8 R4
       70 NAMECALL                         R6 R6 K34 ["setHandler"]
       72 CALL                             R6 2 1
       73 NAMECALL                         R6 R6 K35 ["build"]
       75 CALL                             R6 1 1
       76 NEWCLOSURE                       R7 P2
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U13
       87 CAPTURE                          UPVAL U14
       88 CAPTURE                          UPVAL U15
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          UPVAL U16
       91 DUPTABLE                         R8 K40 [{["command"] = "segment_mesh", ["getDescription"], ["runToolChain"]}]
       92 DUPCLOSURE                       R9 K41 [PROTO_16]
       93 CAPTURE                          UPVAL U17
       94 SETTABLEKS                       R9 R8 K38 ["getDescription"]
       96 SETTABLEKS                       R7 R8 K39 ["runToolChain"]
       98 DUPTABLE                         R9 K46 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
       99 SETTABLEKS                       R6 R9 K42 ["definition"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K47 ["FFlagAssistantSegmentMeshTool"]
      104 JUMPIFNOT                        R11 ; [+6]
      105 NEWTABLE                         R10 0 1
      107 MOVE                             R11 R8
      108 SETLIST                          R10 R11 1 [1]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R10
      112 SETTABLEKS                       R10 R9 K43 ["slashCommands"]
      114 DUPCLOSURE                       R10 K48 [PROTO_17]
      115 SETTABLEKS                       R10 R9 K44 ["getPreExecuteWarning"]
      117 DUPTABLE                         R10 K50 [{["resetTimeoutOnProgress"] = True}]
      118 SETTABLEKS                       R10 R9 K45 ["toolCallOptions"]
      120 RETURN                           R9 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["ModelContextProtocol"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["AskInput"]
       31 GETTABLEKS                       R6 R6 K15 ["AskInputTypes"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Guest"]
       38 GETTABLEKS                       R7 R7 K17 ["Environment"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K18 ["Flags"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Util"]
       50 GETTABLEKS                       R9 R9 K19 ["NetworkingIdentity"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R0 K20 ["Remotes"]
       57 GETTABLEKS                       R10 R10 K21 ["SegmentMeshRemotes"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K13 ["Util"]
       64 GETTABLEKS                       R11 R11 K22 ["SegmentMesh"]
       66 GETTABLEKS                       R11 R11 K23 ["SegmentMeshTypes"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K13 ["Util"]
       73 GETTABLEKS                       R12 R12 K24 ["SlashCommandConfiguration"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K25 ["Tools"]
       80 GETTABLEKS                       R13 R13 K26 ["ToolTypes"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K10 [require]
       85 GETTABLEKS                       R14 R0 K13 ["Util"]
       87 GETTABLEKS                       R14 R14 K27 ["ToolUtils"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K10 [require]
       92 GETTABLEKS                       R15 R0 K28 ["Resources"]
       94 GETTABLEKS                       R15 R15 K29 ["Localization"]
       96 GETTABLEKS                       R15 R15 K30 ["Translator"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K10 [require]
      101 GETTABLEKS                       R16 R0 K31 ["Types"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R4 K13 ["Util"]
      106 GETTABLEKS                       R16 R16 K32 ["ToolBuilder"]
      108 GETTABLEKS                       R17 R4 K13 ["Util"]
      110 GETTABLEKS                       R17 R17 K33 ["ToolResult"]
      112 GETTABLEKS                       R18 R12 K34 ["ToolNames"]
      114 GETTABLEKS                       R19 R5 K35 ["INPUT_TYPE"]
      116 GETTABLEKS                       R20 R5 K36 ["RULE_KIND"]
      118 GETTABLEKS                       R21 R5 K37 ["asRule"]
      120 GETTABLEKS                       R22 R11 K38 ["Configs"]
      122 GETTABLEKS                       R22 R22 K22 ["SegmentMesh"]
      124 GETTABLEKS                       R23 R22 K39 ["row"]
      126 DUPCLOSURE                       R24 K40 [PROTO_0]
      127 CAPTURE                          VAL R1
      128 DUPCLOSURE                       R25 K41 [PROTO_1]
      129 CAPTURE                          VAL R7
      130 DUPCLOSURE                       R26 K42 [PROTO_2]
      131 DUPCLOSURE                       R27 K43 [PROTO_3]
      132 DUPCLOSURE                       R28 K44 [PROTO_4]
      133 CAPTURE                          VAL R26
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R27
      136 DUPCLOSURE                       R29 K45 [PROTO_18]
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R28
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R26
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R14
      155 RETURN                           R29 1
