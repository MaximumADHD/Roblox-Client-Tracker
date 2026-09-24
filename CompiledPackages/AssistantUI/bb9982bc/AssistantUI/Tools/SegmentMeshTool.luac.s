PROTO_0:
        0 LOADK                            R1 K0 ["SegmentMesh-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantSegmentMeshMaxUserParts"]
        3 RETURN                           R0 1

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
       87 GETTABLEKS                       R6 R1 K25 ["getSelectedMeshRef"]
       89 CALL                             R5 1 2
       90 MOVE                             R8 R5
       91 JUMPIFNOT                        R8 ; [+4]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K26 ; [+4]
       98 LOADK                            R9 K26 ["selectedInstanceRef or instance_path must be provided — mesh segmentation requires a source MeshPart or Model"]
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
       15 LOADNIL                          R3
       16 GETTABLEKS                       R4 R2 K6 ["parts"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K7 ["FFlagAssistantAskInputTool"]
       21 JUMPIFNOT                        R5 ; [+17]
       22 FASTCALL1                        TYPEOF R4 ; [+3]
       23 MOVE                             R8 R4
       24 GETIMPORT                        R7 K1 [typeof]
       26 CALL                             R7 1 1
       27 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       33 LOADK                            R7 K8 ["parts must be a table"]
       34 GETIMPORT                        R5 K5 [assert]
       36 CALL                             R5 2 0
       37 MOVE                             R3 R4
       38 JUMP                             ; [+19]
       39 FASTCALL1                        TYPEOF R4 ; [+3]
       40 MOVE                             R8 R4
       41 GETIMPORT                        R7 K1 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFEQKS                       R7 K9 ["string"] ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       50 LOADK                            R7 K10 ["parts must be a comma-separated string of part names"]
       51 GETIMPORT                        R5 K5 [assert]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 1
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 MOVE                             R3 R5
       58 LENGTH                           R7 R3
       59 LOADN                            R8 2
       60 JUMPIFLE                         R8 R7 ; [+2]
       62 LOADB                            R6 0 +1
       63 LOADB                            R6 1
       64 LOADK                            R7 K11 ["parts must contain at least %* entries"]
       65 LOADN                            R9 2
       66 NAMECALL                         R7 R7 K12 ["format"]
       68 CALL                             R7 2 1
       69 FASTCALL2                        ASSERT R6 R7 ; [+3]
       71 GETIMPORT                        R5 K5 [assert]
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K13 ["FIntAssistantSegmentMeshMaxUserParts"]
       77 LENGTH                           R8 R3
       78 JUMPIFLE                         R8 R5 ; [+2]
       80 LOADB                            R7 0 +1
       81 LOADB                            R7 1
       82 LOADK                            R8 K14 ["parts must contain at most %* entries"]
       83 MOVE                             R10 R5
       84 NAMECALL                         R8 R8 K12 ["format"]
       86 CALL                             R8 2 1
       87 FASTCALL2                        ASSERT R7 R8 ; [+3]
       89 GETIMPORT                        R6 K5 [assert]
       91 CALL                             R6 2 0
       92 GETTABLEKS                       R6 R2 K15 ["isManualRun"]
       94 JUMPIFEQKNIL                     R6 ; [+16]
       96 FASTCALL1                        TYPEOF R6 ; [+3]
       97 MOVE                             R10 R6
       98 GETIMPORT                        R9 K1 [typeof]
      100 CALL                             R9 1 1
      101 JUMPIFEQKS                       R9 K16 ["boolean"] ; [+2]
      103 LOADB                            R8 0 +1
      104 LOADB                            R8 1
      105 FASTCALL2K                       ASSERT R8 K17 ; [+4]
      107 LOADK                            R9 K17 ["isManualRun must be a boolean"]
      108 GETIMPORT                        R7 K5 [assert]
      110 CALL                             R7 2 0
      111 GETUPVAL                         R7 2
      112 MOVE                             R8 R0
      113 MOVE                             R9 R1
      114 MOVE                             R10 R2
      115 CALL                             R7 3 1
      116 DUPTABLE                         R8 K20 [{"partNames", "isManualRun", "selectedUniqueId"}]
      117 SETTABLEKS                       R3 R8 K18 ["partNames"]
      119 SETTABLEKS                       R6 R8 K15 ["isManualRun"]
      121 SETTABLEKS                       R7 R8 K19 ["selectedUniqueId"]
      123 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateSegmentMeshAsync"]
        3 DUPTABLE                         R1 K4 [{"requestId", "partNames", "selectedUniqueId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["partNames"]
       10 SETTABLEKS                       R2 R1 K2 ["partNames"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["selectedUniqueId"]
       15 SETTABLEKS                       R2 R1 K3 ["selectedUniqueId"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertSegmentedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["SegmentMesh"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["environment"]
       16 MOVE                             R4 R1
       17 MOVE                             R5 R0
       18 CALL                             R2 3 1
       19 LOADK                            R4 K5 ["SegmentMesh-"]
       20 GETUPVAL                         R5 2
       21 LOADB                            R7 0
       22 NAMECALL                         R5 R5 K6 ["GenerateGUID"]
       24 CALL                             R5 2 1
       25 CONCAT                           R3 R4 R5
       26 GETIMPORT                        R4 K8 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CALL                             R4 1 2
       33 JUMPIF                           R4 ; [+11]
       34 GETIMPORT                        R6 K10 [error]
       36 LOADK                            R8 K11 ["Mesh segmentation failed with error: "]
       37 FASTCALL1                        TOSTRING R5 ; [+3]
       38 MOVE                             R10 R5
       39 GETIMPORT                        R9 K13 [tostring]
       41 CALL                             R9 1 1
       42 CONCAT                           R7 R8 R9
       43 LOADN                            R8 0
       44 CALL                             R6 2 0
       45 GETIMPORT                        R6 K8 [pcall]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CALL                             R6 1 2
       51 JUMPIF                           R6 ; [+19]
       52 GETIMPORT                        R8 K8 [pcall]
       54 GETTABLEKS                       R9 R1 K14 ["cancelSegmentationAsync"]
       56 DUPTABLE                         R10 K16 [{"requestId"}]
       57 SETTABLEKS                       R3 R10 K15 ["requestId"]
       59 CALL                             R8 2 0
       60 GETIMPORT                        R8 K10 [error]
       62 LOADK                            R10 K17 ["Failed to insert segmented model with error: "]
       63 FASTCALL1                        TOSTRING R7 ; [+3]
       64 MOVE                             R12 R7
       65 GETIMPORT                        R11 K13 [tostring]
       67 CALL                             R11 1 1
       68 CONCAT                           R9 R10 R11
       69 LOADN                            R10 0
       70 CALL                             R8 2 0
       71 GETIMPORT                        R8 K20 [table.concat]
       73 GETTABLEKS                       R9 R2 K21 ["partNames"]
       75 LOADK                            R10 K22 [", "]
       76 CALL                             R8 2 1
       77 DUPTABLE                         R9 K25 [{"tag", "requestId", "generationName"}]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K26 ["getLinkTag"]
       81 MOVE                             R11 R3
       82 CALL                             R10 1 1
       83 SETTABLEKS                       R10 R9 K23 ["tag"]
       85 SETTABLEKS                       R3 R9 K15 ["requestId"]
       87 SETTABLEKS                       R8 R9 K24 ["generationName"]
       89 RETURN                           R9 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["SegmentMesh"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K5 [pcall]
       15 GETTABLEKS                       R4 R1 K6 ["getSelectedMeshRef"]
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R4
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R6 K9 ["[SegmentMesh] getSelectedMeshRef failed:"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R8 R4
       26 GETIMPORT                        R7 K11 [tostring]
       28 CALL                             R7 1 1
       29 CALL                             R5 2 0
       30 JUMPIFNOT                        R2 ; [+18]
       31 DUPTABLE                         R5 K16 [{"uniqueId", "name", "className", "isValid"}]
       32 GETTABLEKS                       R6 R2 K12 ["uniqueId"]
       34 SETTABLEKS                       R6 R5 K12 ["uniqueId"]
       36 GETTABLEKS                       R6 R2 K13 ["name"]
       38 SETTABLEKS                       R6 R5 K13 ["name"]
       40 GETTABLEKS                       R6 R2 K14 ["className"]
       42 SETTABLEKS                       R6 R5 K14 ["className"]
       44 GETTABLEKS                       R6 R2 K17 ["isSegmentable"]
       46 SETTABLEKS                       R6 R5 K15 ["isValid"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 NEWTABLE                         R6 0 2
       52 DUPTABLE                         R7 K22 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K23 ["SelectedInstanceRef"]
       56 SETTABLEKS                       R8 R7 K13 ["name"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K24 ["Instance"]
       61 SETTABLEKS                       R8 R7 K18 ["inputType"]
       63 SETTABLEKS                       R5 R7 K19 ["initialValue"]
       65 DUPTABLE                         R8 K29 [{["name"], ["inputType"], ["initialValue"] = , ["required"] = True, ["min"] = 2, ["max"]}]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K30 ["Parts"]
       69 SETTABLEKS                       R9 R8 K13 ["name"]
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K31 ["Array"]
       74 SETTABLEKS                       R9 R8 K18 ["inputType"]
       76 GETUPVAL                         R9 3
       77 SETTABLEKS                       R9 R8 K28 ["max"]
       79 SETLIST                          R6 R7 2 [1]
       81 DUPTABLE                         R7 K35 [{"formId", "fields", "validation"}]
       82 GETUPVAL                         R8 4
       83 GETTABLEKS                       R8 R8 K32 ["formId"]
       85 SETTABLEKS                       R8 R7 K32 ["formId"]
       87 SETTABLEKS                       R6 R7 K33 ["fields"]
       89 GETUPVAL                         R8 5
       90 DUPTABLE                         R9 K38 [{"kind", "rule"}]
       91 GETUPVAL                         R10 6
       92 GETTABLEKS                       R10 R10 K39 ["Not"]
       94 SETTABLEKS                       R10 R9 K36 ["kind"]
       96 GETUPVAL                         R10 5
       97 DUPTABLE                         R11 K43 [{["kind"], ["field"], ["value"] = False}]
       98 GETUPVAL                         R12 6
       99 GETTABLEKS                       R12 R12 K44 ["Equals"]
      101 SETTABLEKS                       R12 R11 K36 ["kind"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K45 ["SelectedInstanceRefIsValid"]
      106 SETTABLEKS                       R12 R11 K40 ["field"]
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K37 ["rule"]
      111 CALL                             R8 1 1
      112 SETTABLEKS                       R8 R7 K34 ["validation"]
      114 DUPTABLE                         R8 K47 [{"name", "arguments"}]
      115 GETUPVAL                         R9 7
      116 GETTABLEKS                       R9 R9 K48 ["AskInput"]
      118 SETTABLEKS                       R9 R8 K13 ["name"]
      120 SETTABLEKS                       R7 R8 K46 ["arguments"]
      122 RETURN                           R8 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K5 [{["parts"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K6 ["Parts"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K1 ["parts"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K7 ["SelectedInstanceRef"]
       16 GETTABLE                         R3 R1 R4
       17 SETTABLEKS                       R3 R2 K4 ["selectedInstanceRef"]
       19 DUPTABLE                         R3 K10 [{"name", "arguments"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K11 ["SegmentMesh"]
       23 SETTABLEKS                       R4 R3 K8 ["name"]
       25 SETTABLEKS                       R2 R3 K9 ["arguments"]
       27 RETURN                           R3 1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 DUPCLOSURE                       R2 K0 [PROTO_11]
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U7
       13 NEWTABLE                         R3 0 2
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 SETLIST                          R3 R4 2 [1]
       19 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["SegmentMesh"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 SETUPVAL                         R0 0
        1 DUPTABLE                         R2 K5 [{[1], ["isManualRun"] = True, ["selectedInstanceRef"] = }]
        2 SETTABLEKS                       R0 R2 K0 ["parts"]
        4 DUPTABLE                         R3 K8 [{"name", "arguments"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K9 ["SegmentMesh"]
        8 SETTABLEKS                       R4 R3 K6 ["name"]
       10 SETTABLEKS                       R2 R3 K7 ["arguments"]
       12 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["isValid"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K1 ["SegmentMesh"]
        8 LOADK                            R4 K2 ["RequiresSingleMeshPart"]
        9 NAMECALL                         R1 R1 K3 ["getText"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["isSegmentableInstance"]
        5 DUPTABLE                         R3 K4 [{"uniqueId"}]
        6 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        8 SETTABLEKS                       R4 R3 K3 ["uniqueId"]
       10 CALL                             R1 2 2
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+4]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_17:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["parts"]
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R3 R0 K0 ["parts"]
       11 LENGTH                           R2 R3
       12 LOADN                            R3 0
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R3 R0 K0 ["parts"]
       21 CALL                             R2 1 1
       22 JUMP                             ; [+2]
       23 NEWTABLE                         R2 0 0
       25 LOADB                            R3 0
       26 LENGTH                           R4 R2
       27 LOADN                            R5 2
       28 JUMPIFNOTLE                      R5 R4 ; [+7]
       30 LENGTH                           R4 R2
       31 GETUPVAL                         R5 1
       32 JUMPIFLE                         R4 R5 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 GETTABLEKS                       R4 R0 K4 ["selectedInstanceRef"]
       38 LOADB                            R5 0
       39 JUMPIFEQKNIL                     R4 ; [+7]
       41 GETTABLEKS                       R6 R4 K5 ["isValid"]
       43 JUMPIFEQKB                       R6 TRUE ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 AND                              R6 R3 R5
       48 RETURN                           R6 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["SegmentMesh"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 LOADNIL                          R1
       13 GETIMPORT                        R2 K5 [pcall]
       15 GETTABLEKS                       R3 R0 K6 ["getSelectedMeshRef"]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R1 R3
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R4 K8 [warn]
       23 LOADK                            R5 K9 ["[SegmentMesh] getSelectedMeshRef failed:"]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R7 R3
       26 GETIMPORT                        R6 K11 [tostring]
       28 CALL                             R6 1 1
       29 CALL                             R4 2 0
       30 JUMPIFNOT                        R1 ; [+18]
       31 DUPTABLE                         R4 K16 [{"uniqueId", "name", "className", "isValid"}]
       32 GETTABLEKS                       R5 R1 K12 ["uniqueId"]
       34 SETTABLEKS                       R5 R4 K12 ["uniqueId"]
       36 GETTABLEKS                       R5 R1 K13 ["name"]
       38 SETTABLEKS                       R5 R4 K13 ["name"]
       40 GETTABLEKS                       R5 R1 K14 ["className"]
       42 SETTABLEKS                       R5 R4 K14 ["className"]
       44 GETTABLEKS                       R5 R1 K17 ["isSegmentable"]
       46 SETTABLEKS                       R5 R4 K15 ["isValid"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R4
       50 NEWTABLE                         R5 0 0
       52 MOVE                             R7 R5
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K18 ["createInstanceRowDefinition"]
       56 DUPTABLE                         R9 K25 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["validate"], ["resolveValidityAsync"]}]
       57 GETUPVAL                         R10 2
       58 LOADK                            R12 K1 ["SegmentMesh"]
       59 LOADK                            R13 K26 ["MeshInstanceLabel"]
       60 NAMECALL                         R10 R10 K27 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K19 ["label"]
       65 SETTABLEKS                       R4 R9 K22 ["initialValue"]
       67 DUPCLOSURE                       R10 K28 [PROTO_15]
       68 CAPTURE                          UPVAL U2
       69 SETTABLEKS                       R10 R9 K23 ["validate"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K24 ["resolveValidityAsync"]
       75 CALL                             R8 1 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R6 K31 [table.insert]
       79 CALL                             R6 -1 0
       80 MOVE                             R7 R5
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K32 ["createPartNamesRowDefinition"]
       84 DUPTABLE                         R9 K38 [{["label"], ["prop"] = "parts", ["initialValue"], ["maxParts"], ["minParts"] = 2, ["onChanged"]}]
       85 GETUPVAL                         R10 2
       86 LOADK                            R12 K39 ["MeshGen"]
       87 LOADK                            R13 K40 ["InputPartNamesTitle"]
       88 NAMECALL                         R10 R10 K27 ["getText"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K19 ["label"]
       93 GETUPVAL                         R10 3
       94 SETTABLEKS                       R10 R9 K22 ["initialValue"]
       96 GETUPVAL                         R10 4
       97 SETTABLEKS                       R10 R9 K34 ["maxParts"]
       99 NEWCLOSURE                       R10 P2
      100 CAPTURE                          UPVAL U3
      101 SETTABLEKS                       R10 R9 K37 ["onChanged"]
      103 CALL                             R8 1 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R6 K31 [table.insert]
      107 CALL                             R6 -1 0
      108 DUPTABLE                         R6 K45 [{"description", "confirmButtonText", "propertyRows", "canConfirm"}]
      109 GETUPVAL                         R7 2
      110 LOADK                            R9 K1 ["SegmentMesh"]
      111 LOADK                            R10 K46 ["PickDescription"]
      112 DUPTABLE                         R11 K48 [{"max"}]
      113 GETIMPORT                        R12 K51 [string.format]
      115 LOADK                            R13 K52 ["%d"]
      116 GETUPVAL                         R14 4
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K47 ["max"]
      120 NAMECALL                         R7 R7 K27 ["getText"]
      122 CALL                             R7 4 1
      123 SETTABLEKS                       R7 R6 K41 ["description"]
      125 GETUPVAL                         R7 2
      126 LOADK                            R9 K1 ["SegmentMesh"]
      127 LOADK                            R10 K53 ["ConfirmButton"]
      128 NAMECALL                         R7 R7 K27 ["getText"]
      130 CALL                             R7 3 1
      131 SETTABLEKS                       R7 R6 K42 ["confirmButtonText"]
      133 SETTABLEKS                       R5 R6 K43 ["propertyRows"]
      135 NEWCLOSURE                       R7 P3
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          UPVAL U4
      138 SETTABLEKS                       R7 R6 K44 ["canConfirm"]
      140 RETURN                           R6 1

PROTO_20:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_21:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 GETUPVAL                         R3 5
       10 GETTABLEKS                       R3 R3 K0 ["FIntAssistantSegmentMeshMaxUserParts"]
       12 GETUPVAL                         R4 6
       13 GETTABLEKS                       R4 R4 K1 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 7
       17 GETTABLEKS                       R6 R6 K2 ["SegmentMesh"]
       19 NAMECALL                         R4 R4 K3 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K4 ["Segments an existing mesh into named sub-parts using AI. Requires a source MeshPart or Model and up to %* comma-separated part names (e.g. \"head, body, tail\"). Returns a new Model containing the segmented parts, inserted as a sibling of the source."]
       23 MOVE                             R8 R3
       24 NAMECALL                         R6 R6 K5 ["format"]
       26 CALL                             R6 2 1
       27 NAMECALL                         R4 R4 K6 ["setDescription"]
       29 CALL                             R4 2 1
       30 LOADK                            R6 K7 ["parts"]
       31 DUPTABLE                         R7 K11 [{["type"] = "string", ["description"]}]
       32 LOADK                            R8 K12 ["Comma-separated list of part names to segment the mesh into (max %*). Example: \"head, body, tail\"."]
       33 MOVE                             R10 R3
       34 NAMECALL                         R8 R8 K5 ["format"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K10 ["description"]
       39 NAMECALL                         R4 R4 K13 ["addArgument"]
       41 CALL                             R4 3 1
       42 LOADK                            R6 K14 ["instance_path"]
       43 DUPTABLE                         R7 K16 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       44 NAMECALL                         R4 R4 K17 ["addOptionalArgument"]
       46 CALL                             R4 3 1
       47 DUPTABLE                         R6 K25 [{["title"] = "Mesh Segmentation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       48 NAMECALL                         R4 R4 K26 ["setAnnotations"]
       50 CALL                             R4 2 1
       51 MOVE                             R6 R2
       52 NAMECALL                         R4 R4 K27 ["setHandler"]
       54 CALL                             R4 2 1
       55 NAMECALL                         R4 R4 K28 ["build"]
       57 CALL                             R4 1 1
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 CAPTURE                          UPVAL U12
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U13
       68 LOADK                            R6 K29 [""]
       69 DUPTABLE                         R7 K36 [{["command"] = "segment_mesh", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
       70 DUPCLOSURE                       R8 K37 [PROTO_13]
       71 CAPTURE                          UPVAL U14
       72 SETTABLEKS                       R8 R7 K32 ["getDescription"]
       74 GETUPVAL                         R9 5
       75 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantAskInputTool"]
       77 JUMPIFNOT                        R9 ; [+2]
       78 MOVE                             R8 R5
       79 JUMP                             ; [+1]
       80 LOADNIL                          R8
       81 SETTABLEKS                       R8 R7 K33 ["runToolChain"]
       83 GETUPVAL                         R9 5
       84 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantAskInputTool"]
       86 JUMPIFNOT                        R9 ; [+2]
       87 LOADNIL                          R8
       88 JUMP                             ; [+3]
       89 NEWCLOSURE                       R8 P4
       90 CAPTURE                          REF R6
       91 CAPTURE                          UPVAL U7
       92 SETTABLEKS                       R8 R7 K34 ["mapToToolCall"]
       94 NEWCLOSURE                       R8 P5
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U15
       97 CAPTURE                          UPVAL U14
       98 CAPTURE                          REF R6
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U16
      101 SETTABLEKS                       R8 R7 K35 ["getInputRequestArguments"]
      103 DUPTABLE                         R8 K43 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      104 SETTABLEKS                       R4 R8 K39 ["definition"]
      106 GETUPVAL                         R10 5
      107 GETTABLEKS                       R10 R10 K44 ["FFlagAssistantSegmentMeshTool"]
      109 JUMPIFNOT                        R10 ; [+6]
      110 NEWTABLE                         R9 0 1
      112 MOVE                             R10 R7
      113 SETLIST                          R9 R10 1 [1]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R9
      117 SETTABLEKS                       R9 R8 K40 ["slashCommands"]
      119 DUPCLOSURE                       R9 K45 [PROTO_20]
      120 SETTABLEKS                       R9 R8 K41 ["getPreExecuteWarning"]
      122 DUPTABLE                         R9 K48 [{["resetTimeoutOnProgress"] = True}]
      123 SETTABLEKS                       R9 R8 K42 ["toolCallOptions"]
      125 CLOSEUPVALS                      R6
      126 RETURN                           R8 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AskInput"]
       19 GETTABLEKS                       R3 R3 K12 ["AskInputTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Components"]
       26 GETTABLEKS                       R4 R4 K14 ["DEPRECATED_PropertyRows"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Guest"]
       33 GETTABLEKS                       R5 R5 K16 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K17 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["Parent"]
       45 GETTABLEKS                       R7 R7 K19 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Util"]
       52 GETTABLEKS                       R8 R8 K20 ["SlashCommandConfiguration"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K21 ["Tools"]
       59 GETTABLEKS                       R9 R9 K22 ["ToolTypes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Util"]
       66 GETTABLEKS                       R10 R10 K23 ["ToolUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K24 ["Resources"]
       73 GETTABLEKS                       R11 R11 K25 ["Localization"]
       75 GETTABLEKS                       R11 R11 K26 ["Translator"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K27 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R13 R0 K28 ["Bridges"]
       87 GETTABLEKS                       R13 R13 K29 ["createSegmentMeshBridge"]
       89 GETTABLEKS                       R13 R13 K30 ["SegmentMeshBridgeTypes"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R14 R0 K10 ["Util"]
       96 GETTABLEKS                       R14 R14 K31 ["SegmentMesh"]
       98 GETTABLEKS                       R14 R14 K32 ["SegmentMeshTypes"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R6 K10 ["Util"]
      103 GETTABLEKS                       R14 R14 K33 ["ToolBuilder"]
      105 GETTABLEKS                       R15 R6 K10 ["Util"]
      107 GETTABLEKS                       R15 R15 K34 ["ToolResult"]
      109 GETTABLEKS                       R16 R8 K35 ["ToolNames"]
      111 GETTABLEKS                       R17 R2 K36 ["INPUT_TYPE"]
      113 GETTABLEKS                       R18 R2 K37 ["RULE_KIND"]
      115 GETTABLEKS                       R19 R2 K38 ["asRule"]
      117 GETTABLEKS                       R20 R7 K39 ["Configs"]
      119 GETTABLEKS                       R20 R20 K31 ["SegmentMesh"]
      121 GETTABLEKS                       R21 R20 K40 ["row"]
      123 DUPCLOSURE                       R22 K41 [PROTO_0]
      124 CAPTURE                          VAL R1
      125 DUPCLOSURE                       R23 K42 [PROTO_1]
      126 DUPCLOSURE                       R24 K43 [PROTO_2]
      127 CAPTURE                          VAL R5
      128 DUPCLOSURE                       R25 K44 [PROTO_3]
      129 DUPCLOSURE                       R26 K45 [PROTO_4]
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R25
      133 DUPCLOSURE                       R27 K46 [PROTO_21]
      134 CAPTURE                          VAL R26
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R23
      151 RETURN                           R27 1
