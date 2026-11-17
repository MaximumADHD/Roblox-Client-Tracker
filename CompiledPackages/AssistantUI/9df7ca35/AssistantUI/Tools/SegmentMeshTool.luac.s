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
       85 MOVE                             R6 R1
       86 FASTPCALL                        pcall 1 ; [+2]
       87 GETIMPORT                        R5 K24 [pcall]
       89 CALL                             R5 1 2
       90 MOVE                             R8 R5
       91 JUMPIFNOT                        R8 ; [+4]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       98 LOADK                            R9 K25 ["selectedInstanceRef or instance_path must be provided — mesh segmentation requires a source MeshPart or Model"]
       99 GETIMPORT                        R7 K6 [assert]
      101 CALL                             R7 2 0
      102 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      104 RETURN                           R7 1

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
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["generateSegmentMesh"]
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        7 CALL                             R0 3 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertSegmentedModel"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"requestId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["requestId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

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
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["targetId"]
        3 JUMPIFEQKNIL                     R3 ; [+11]
        5 GETTABLEKS                       R4 R0 K0 ["targetId"]
        7 FASTCALL1                        TYPEOF R4 ; [+2]
        8 GETIMPORT                        R3 K2 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       17 LOADK                            R3 K4 ["targetId must be a string"]
       18 GETIMPORT                        R1 K6 [assert]
       20 CALL                             R1 2 0
       21 GETTABLEKS                       R1 R0 K0 ["targetId"]
       23 JUMPIF                           R1 ; [+5]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["resolveTargetAsync"]
       27 GETUPVAL                         R2 1
       28 CALL                             R1 1 1
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R1
       32 GETUPVAL                         R3 3
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K8 ["environment"]
       36 MOVE                             R5 R2
       37 MOVE                             R6 R0
       38 CALL                             R3 3 1
       39 LOADK                            R5 K9 ["SegmentMesh-"]
       40 GETUPVAL                         R6 5
       41 LOADB                            R8 0
       42 NAMECALL                         R6 R6 K10 ["GenerateGUID"]
       44 CALL                             R6 2 1
       45 CONCAT                           R4 R5 R6
       46 DUPTABLE                         R5 K14 [{"requestId", "partNames", "selectedUniqueId"}]
       47 SETTABLEKS                       R4 R5 K11 ["requestId"]
       49 GETTABLEKS                       R6 R3 K12 ["partNames"]
       51 SETTABLEKS                       R6 R5 K12 ["partNames"]
       53 GETTABLEKS                       R6 R3 K13 ["selectedUniqueId"]
       55 SETTABLEKS                       R6 R5 K13 ["selectedUniqueId"]
       57 LOADNIL                          R6
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          REF R6
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 FASTPCALL                        pcall 1 ; [+2]
       64 GETIMPORT                        R7 K16 [pcall]
       66 CALL                             R7 1 2
       67 JUMPIF                           R7 ; [+11]
       68 GETIMPORT                        R9 K18 [error]
       70 LOADK                            R11 K19 ["Mesh segmentation failed with error: "]
       71 FASTCALL1                        TOSTRING R8 ; [+3]
       72 MOVE                             R13 R8
       73 GETIMPORT                        R12 K21 [tostring]
       75 CALL                             R12 1 1
       76 CONCAT                           R10 R11 R12
       77 LOADN                            R11 0
       78 CALL                             R9 2 0
       79 NEWCLOSURE                       R10 P2
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 FASTPCALL                        pcall 1 ; [+2]
       84 GETIMPORT                        R9 K16 [pcall]
       86 CALL                             R9 1 2
       87 JUMPIF                           R9 ; [+19]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 FASTPCALL                        pcall 1 ; [+2]
       93 GETIMPORT                        R11 K16 [pcall]
       95 CALL                             R11 1 0
       96 GETIMPORT                        R11 K18 [error]
       98 LOADK                            R13 K22 ["Failed to insert segmented model with error: "]
       99 FASTCALL1                        TOSTRING R10 ; [+3]
      100 MOVE                             R15 R10
      101 GETIMPORT                        R14 K21 [tostring]
      103 CALL                             R14 1 1
      104 CONCAT                           R12 R13 R14
      105 LOADN                            R13 0
      106 CALL                             R11 2 0
      107 GETIMPORT                        R11 K25 [table.concat]
      109 GETTABLEKS                       R12 R3 K12 ["partNames"]
      111 LOADK                            R13 K26 [", "]
      112 CALL                             R11 2 1
      113 DUPTABLE                         R12 K30 [{"tag", "requestId", "jobId", "generationName"}]
      114 GETUPVAL                         R13 6
      115 GETTABLEKS                       R13 R13 K31 ["getLinkTag"]
      117 MOVE                             R14 R4
      118 CALL                             R13 1 1
      119 SETTABLEKS                       R13 R12 K27 ["tag"]
      121 SETTABLEKS                       R4 R12 K11 ["requestId"]
      123 GETUPVAL                         R14 7
      124 GETTABLEKS                       R14 R14 K32 ["getFFlagGen3dSegmentMeshAssetIdUpload"]
      126 CALL                             R14 0 1
      127 JUMPIFNOT                        R14 ; [+4]
      128 JUMPIFNOT                        R6 ; [+3]
      129 GETTABLEKS                       R13 R6 K33 ["generationId"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R13
      133 SETTABLEKS                       R13 R12 K28 ["jobId"]
      135 SETTABLEKS                       R11 R12 K29 ["generationName"]
      137 CLOSEUPVALS                      R6
      138 RETURN                           R12 1

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
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R3 K1 [pcall]
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+25]
       10 FASTCALL1                        TOSTRING R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K3 [tostring]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 CALL                             R6 0 1
       17 MOVE                             R8 R5
       18 NAMECALL                         R6 R6 K4 ["addText"]
       20 CALL                             R6 2 1
       21 DUPTABLE                         R8 K6 [{"errorMessage"}]
       22 SETTABLEKS                       R5 R8 K5 ["errorMessage"]
       24 NAMECALL                         R6 R6 K7 ["setStructuredContent"]
       26 CALL                             R6 2 1
       27 LOADB                            R8 1
       28 NAMECALL                         R6 R6 K8 ["setError"]
       30 CALL                             R6 2 1
       31 NAMECALL                         R6 R6 K9 ["build"]
       33 CALL                             R6 1 -1
       34 RETURN                           R6 -1
       35 GETUPVAL                         R5 2
       36 CALL                             R5 0 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K10 ["toString"]
       40 DUPTABLE                         R8 K14 [{"tag", "jobId", "generationName"}]
       41 GETTABLEKS                       R9 R4 K11 ["tag"]
       43 SETTABLEKS                       R9 R8 K11 ["tag"]
       45 GETTABLEKS                       R9 R4 K12 ["jobId"]
       47 SETTABLEKS                       R9 R8 K12 ["jobId"]
       49 GETTABLEKS                       R9 R4 K13 ["generationName"]
       51 SETTABLEKS                       R9 R8 K13 ["generationName"]
       53 CALL                             R7 1 -1
       54 NAMECALL                         R5 R5 K4 ["addText"]
       56 CALL                             R5 -1 1
       57 MOVE                             R7 R4
       58 NAMECALL                         R5 R5 K7 ["setStructuredContent"]
       60 CALL                             R5 2 1
       61 NAMECALL                         R5 R5 K9 ["build"]
       63 CALL                             R5 1 -1
       64 RETURN                           R5 -1

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
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R4 K1 [pcall]
       11 CALL                             R4 1 2
       12 MOVE                             R2 R4
       13 MOVE                             R3 R5
       14 JUMPIFNOT                        R2 ; [+2]
       15 MOVE                             R1 R3
       16 JUMP                             ; [+9]
       17 GETIMPORT                        R4 K3 [warn]
       19 LOADK                            R5 K4 ["[SegmentMesh] getSelectedMeshRef failed:"]
       20 FASTCALL1                        TOSTRING R3 ; [+3]
       21 MOVE                             R7 R3
       22 GETIMPORT                        R6 K6 [tostring]
       24 CALL                             R6 1 1
       25 CALL                             R4 2 0
       26 JUMPIFNOT                        R1 ; [+18]
       27 DUPTABLE                         R4 K11 [{"uniqueId", "name", "className", "isValid"}]
       28 GETTABLEKS                       R5 R1 K7 ["uniqueId"]
       30 SETTABLEKS                       R5 R4 K7 ["uniqueId"]
       32 GETTABLEKS                       R5 R1 K8 ["name"]
       34 SETTABLEKS                       R5 R4 K8 ["name"]
       36 GETTABLEKS                       R5 R1 K9 ["className"]
       38 SETTABLEKS                       R5 R4 K9 ["className"]
       40 GETTABLEKS                       R5 R1 K12 ["isSegmentable"]
       42 SETTABLEKS                       R5 R4 K10 ["isValid"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 NEWTABLE                         R5 0 2
       48 DUPTABLE                         R6 K17 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K18 ["SelectedInstanceRef"]
       52 SETTABLEKS                       R7 R6 K8 ["name"]
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R7 R7 K19 ["Instance"]
       57 SETTABLEKS                       R7 R6 K13 ["inputType"]
       59 SETTABLEKS                       R4 R6 K14 ["initialValue"]
       61 DUPTABLE                         R7 K23 [{["name"], ["inputType"], ["initialValue"], ["required"] = True, ["min"] = 2, ["max"]}]
       62 GETUPVAL                         R8 4
       63 GETTABLEKS                       R8 R8 K24 ["Parts"]
       65 SETTABLEKS                       R8 R7 K8 ["name"]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K25 ["Array"]
       70 SETTABLEKS                       R8 R7 K13 ["inputType"]
       72 GETUPVAL                         R8 6
       73 SETTABLEKS                       R8 R7 K14 ["initialValue"]
       75 GETUPVAL                         R8 7
       76 SETTABLEKS                       R8 R7 K22 ["max"]
       78 SETLIST                          R5 R6 2 [1]
       80 DUPTABLE                         R6 K29 [{"formId", "fields", "validation"}]
       81 GETUPVAL                         R7 8
       82 GETTABLEKS                       R7 R7 K26 ["formId"]
       84 SETTABLEKS                       R7 R6 K26 ["formId"]
       86 SETTABLEKS                       R5 R6 K27 ["fields"]
       88 GETUPVAL                         R7 9
       89 DUPTABLE                         R8 K32 [{"kind", "rule"}]
       90 GETUPVAL                         R9 10
       91 GETTABLEKS                       R9 R9 K33 ["Not"]
       93 SETTABLEKS                       R9 R8 K30 ["kind"]
       95 GETUPVAL                         R9 9
       96 DUPTABLE                         R10 K37 [{["kind"], ["field"], ["value"] = False}]
       97 GETUPVAL                         R11 10
       98 GETTABLEKS                       R11 R11 K38 ["Equals"]
      100 SETTABLEKS                       R11 R10 K30 ["kind"]
      102 GETUPVAL                         R11 4
      103 GETTABLEKS                       R11 R11 K39 ["SelectedInstanceRefIsValid"]
      105 SETTABLEKS                       R11 R10 K34 ["field"]
      107 CALL                             R9 1 1
      108 SETTABLEKS                       R9 R8 K31 ["rule"]
      110 CALL                             R7 1 1
      111 SETTABLEKS                       R7 R6 K28 ["validation"]
      113 DUPTABLE                         R7 K41 [{"name", "arguments"}]
      114 GETUPVAL                         R8 11
      115 GETTABLEKS                       R8 R8 K42 ["AskInput"]
      117 SETTABLEKS                       R8 R7 K8 ["name"]
      119 SETTABLEKS                       R6 R7 K40 ["arguments"]
      121 RETURN                           R7 1

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
       11 CAPTURE                          REF R2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U11
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U10
       26 NEWTABLE                         R5 0 2
       28 MOVE                             R6 R3
       29 MOVE                             R7 R4
       30 SETLIST                          R5 R6 2 [1]
       32 CLOSEUPVALS                      R2
       33 RETURN                           R5 1

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
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U7
       20 GETUPVAL                         R5 8
       21 GETTABLEKS                       R5 R5 K2 ["FIntAssistantSegmentMeshMaxUserParts"]
       23 GETUPVAL                         R6 9
       24 GETTABLEKS                       R6 R6 K3 ["define"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R8 10
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
       77 CAPTURE                          UPVAL U11
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U12
       82 CAPTURE                          UPVAL U13
       83 CAPTURE                          VAL R5
       84 CAPTURE                          UPVAL U14
       85 CAPTURE                          UPVAL U15
       86 CAPTURE                          UPVAL U16
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          UPVAL U17
       89 DUPTABLE                         R8 K40 [{["command"] = "segment_mesh", ["getDescription"], ["runToolChain"]}]
       90 DUPCLOSURE                       R9 K41 [PROTO_16]
       91 CAPTURE                          UPVAL U18
       92 SETTABLEKS                       R9 R8 K38 ["getDescription"]
       94 SETTABLEKS                       R7 R8 K39 ["runToolChain"]
       96 DUPTABLE                         R9 K46 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
       97 SETTABLEKS                       R6 R9 K42 ["definition"]
       99 GETUPVAL                         R11 8
      100 GETTABLEKS                       R11 R11 K47 ["FFlagAssistantSegmentMeshTool"]
      102 JUMPIFNOT                        R11 ; [+6]
      103 NEWTABLE                         R10 0 1
      105 MOVE                             R11 R8
      106 SETLIST                          R10 R11 1 [1]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R10
      110 SETTABLEKS                       R10 R9 K43 ["slashCommands"]
      112 DUPCLOSURE                       R10 K48 [PROTO_17]
      113 SETTABLEKS                       R10 R9 K44 ["getPreExecuteWarning"]
      115 DUPTABLE                         R10 K50 [{["resetTimeoutOnProgress"] = True}]
      116 SETTABLEKS                       R10 R9 K45 ["toolCallOptions"]
      118 RETURN                           R9 1

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
       22 GETTABLEKS                       R5 R2 K12 ["Gen3dCore"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["AskInput"]
       36 GETTABLEKS                       R7 R7 K16 ["AskInputTypes"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R0 K17 ["Guest"]
       43 GETTABLEKS                       R8 R8 K18 ["Environment"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K19 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Util"]
       55 GETTABLEKS                       R10 R10 K20 ["NetworkingIdentity"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R0 K21 ["Remotes"]
       62 GETTABLEKS                       R11 R11 K22 ["SegmentMeshRemotes"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Util"]
       69 GETTABLEKS                       R12 R12 K23 ["SegmentMesh"]
       71 GETTABLEKS                       R12 R12 K24 ["SegmentMeshTypes"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K10 [require]
       76 GETTABLEKS                       R13 R0 K14 ["Util"]
       78 GETTABLEKS                       R13 R13 K25 ["SlashCommandConfiguration"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R0 K26 ["Tools"]
       85 GETTABLEKS                       R14 R14 K27 ["ToolTypes"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K10 [require]
       90 GETTABLEKS                       R15 R0 K14 ["Util"]
       92 GETTABLEKS                       R15 R15 K28 ["ToolUtils"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K10 [require]
       97 GETTABLEKS                       R16 R0 K29 ["Resources"]
       99 GETTABLEKS                       R16 R16 K30 ["Localization"]
      101 GETTABLEKS                       R16 R16 K31 ["Translator"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R0 K32 ["Types"]
      108 CALL                             R16 1 1
      109 GETTABLEKS                       R17 R5 K14 ["Util"]
      111 GETTABLEKS                       R17 R17 K33 ["ToolBuilder"]
      113 GETTABLEKS                       R18 R5 K14 ["Util"]
      115 GETTABLEKS                       R18 R18 K34 ["ToolResult"]
      117 GETTABLEKS                       R19 R13 K35 ["ToolNames"]
      119 GETTABLEKS                       R20 R6 K36 ["INPUT_TYPE"]
      121 GETTABLEKS                       R21 R6 K37 ["RULE_KIND"]
      123 GETTABLEKS                       R22 R6 K38 ["asRule"]
      125 GETTABLEKS                       R23 R12 K39 ["Configs"]
      127 GETTABLEKS                       R23 R23 K23 ["SegmentMesh"]
      129 GETTABLEKS                       R24 R23 K40 ["row"]
      131 DUPCLOSURE                       R25 K41 [PROTO_0]
      132 CAPTURE                          VAL R1
      133 DUPCLOSURE                       R26 K42 [PROTO_1]
      134 CAPTURE                          VAL R8
      135 DUPCLOSURE                       R27 K43 [PROTO_2]
      136 DUPCLOSURE                       R28 K44 [PROTO_3]
      137 DUPCLOSURE                       R29 K45 [PROTO_4]
      138 CAPTURE                          VAL R27
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R28
      141 DUPCLOSURE                       R30 K46 [PROTO_18]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R29
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R27
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R15
      161 RETURN                           R30 1
