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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 LOADNIL                          R1
       16 GETTABLEKS                       R2 R0 K6 ["parts"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K7 ["getIsAskInputToolEnabled"]
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+17]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R6 R2
       25 GETIMPORT                        R5 K1 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       34 LOADK                            R5 K8 ["parts must be a table"]
       35 GETIMPORT                        R3 K5 [assert]
       37 CALL                             R3 2 0
       38 MOVE                             R1 R2
       39 JUMP                             ; [+19]
       40 FASTCALL1                        TYPEOF R2 ; [+3]
       41 MOVE                             R6 R2
       42 GETIMPORT                        R5 K1 [typeof]
       44 CALL                             R5 1 1
       45 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       47 LOADB                            R4 0 +1
       48 LOADB                            R4 1
       49 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       51 LOADK                            R5 K10 ["parts must be a comma-separated string of part names"]
       52 GETIMPORT                        R3 K5 [assert]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 1
       56 MOVE                             R4 R2
       57 CALL                             R3 1 1
       58 MOVE                             R1 R3
       59 LENGTH                           R5 R1
       60 LOADN                            R6 2
       61 JUMPIFLE                         R6 R5 ; [+2]
       63 LOADB                            R4 0 +1
       64 LOADB                            R4 1
       65 LOADK                            R6 K11 ["parts must contain at least %* entries"]
       66 LOADN                            R8 2
       67 NAMECALL                         R6 R6 K12 ["format"]
       69 CALL                             R6 2 1
       70 MOVE                             R5 R6
       71 FASTCALL2                        ASSERT R4 R5 ; [+3]
       73 GETIMPORT                        R3 K5 [assert]
       75 CALL                             R3 2 0
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K13 ["FIntAssistantSegmentMeshMaxUserParts"]
       79 LENGTH                           R6 R1
       80 JUMPIFLE                         R6 R3 ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 LOADK                            R7 K14 ["parts must contain at most %* entries"]
       85 MOVE                             R9 R3
       86 NAMECALL                         R7 R7 K12 ["format"]
       88 CALL                             R7 2 1
       89 MOVE                             R6 R7
       90 FASTCALL2                        ASSERT R5 R6 ; [+3]
       92 GETIMPORT                        R4 K5 [assert]
       94 CALL                             R4 2 0
       95 GETTABLEKS                       R4 R0 K15 ["isManualRun"]
       97 JUMPIFEQKNIL                     R4 ; [+16]
       99 FASTCALL1                        TYPEOF R4 ; [+3]
      100 MOVE                             R8 R4
      101 GETIMPORT                        R7 K1 [typeof]
      103 CALL                             R7 1 1
      104 JUMPIFEQKS                       R7 K16 ["boolean"] ; [+2]
      106 LOADB                            R6 0 +1
      107 LOADB                            R6 1
      108 FASTCALL2K                       ASSERT R6 K17 ; [+4]
      110 LOADK                            R7 K17 ["isManualRun must be a boolean"]
      111 GETIMPORT                        R5 K5 [assert]
      113 CALL                             R5 2 0
      114 GETTABLEKS                       R5 R0 K18 ["selectedInstanceRef"]
      116 LOADNIL                          R6
      117 JUMPIFEQKNIL                     R5 ; [+34]
      119 FASTCALL1                        TYPEOF R5 ; [+3]
      120 MOVE                             R10 R5
      121 GETIMPORT                        R9 K1 [typeof]
      123 CALL                             R9 1 1
      124 JUMPIFEQKS                       R9 K2 ["table"] ; [+2]
      126 LOADB                            R8 0 +1
      127 LOADB                            R8 1
      128 FASTCALL2K                       ASSERT R8 K19 ; [+4]
      130 LOADK                            R9 K19 ["selectedInstanceRef must be a table"]
      131 GETIMPORT                        R7 K5 [assert]
      133 CALL                             R7 2 0
      134 GETTABLEKS                       R10 R5 K20 ["uniqueId"]
      136 FASTCALL1                        TYPEOF R10 ; [+2]
      137 GETIMPORT                        R9 K1 [typeof]
      139 CALL                             R9 1 1
      140 JUMPIFEQKS                       R9 K9 ["string"] ; [+2]
      142 LOADB                            R8 0 +1
      143 LOADB                            R8 1
      144 FASTCALL2K                       ASSERT R8 K21 ; [+4]
      146 LOADK                            R9 K21 ["selectedInstanceRef.uniqueId must be a string"]
      147 GETIMPORT                        R7 K5 [assert]
      149 CALL                             R7 2 0
      150 GETTABLEKS                       R6 R5 K20 ["uniqueId"]
      152 JUMPIFNOTEQKNIL                  R6 ; [+2]
      154 LOADB                            R8 0 +1
      155 LOADB                            R8 1
      156 FASTCALL2K                       ASSERT R8 K22 ; [+4]
      158 LOADK                            R9 K22 ["selectedInstanceRef must be provided — mesh segmentation requires a source MeshPart or Model"]
      159 GETIMPORT                        R7 K5 [assert]
      161 CALL                             R7 2 0
      162 DUPTABLE                         R7 K25 [{"partNames", "isManualRun", "selectedUniqueId"}]
      163 SETTABLEKS                       R1 R7 K23 ["partNames"]
      165 SETTABLEKS                       R4 R7 K15 ["isManualRun"]
      167 SETTABLEKS                       R6 R7 K24 ["selectedUniqueId"]
      169 RETURN                           R7 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertSegmentedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["bridges"]
        6 GETTABLEKS                       R2 R2 K1 ["SegmentMesh"]
        8 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R2 R2 K3 ["bridge"]
       15 LOADK                            R4 K4 ["SegmentMesh-"]
       16 GETUPVAL                         R5 2
       17 LOADB                            R7 0
       18 NAMECALL                         R5 R5 K5 ["GenerateGUID"]
       20 CALL                             R5 2 1
       21 CONCAT                           R3 R4 R5
       22 GETIMPORT                        R4 K7 [pcall]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CALL                             R4 1 2
       29 JUMPIF                           R4 ; [+11]
       30 GETIMPORT                        R6 K9 [error]
       32 LOADK                            R8 K10 ["Mesh segmentation failed with error: "]
       33 FASTCALL1                        TOSTRING R5 ; [+3]
       34 MOVE                             R10 R5
       35 GETIMPORT                        R9 K12 [tostring]
       37 CALL                             R9 1 1
       38 CONCAT                           R7 R8 R9
       39 LOADN                            R8 0
       40 CALL                             R6 2 0
       41 GETIMPORT                        R6 K7 [pcall]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CALL                             R6 1 2
       47 JUMPIF                           R6 ; [+19]
       48 GETIMPORT                        R8 K7 [pcall]
       50 GETTABLEKS                       R9 R2 K13 ["cancelSegmentationAsync"]
       52 DUPTABLE                         R10 K15 [{"requestId"}]
       53 SETTABLEKS                       R3 R10 K14 ["requestId"]
       55 CALL                             R8 2 0
       56 GETIMPORT                        R8 K9 [error]
       58 LOADK                            R10 K16 ["Failed to insert segmented model with error: "]
       59 FASTCALL1                        TOSTRING R7 ; [+3]
       60 MOVE                             R12 R7
       61 GETIMPORT                        R11 K12 [tostring]
       63 CALL                             R11 1 1
       64 CONCAT                           R9 R10 R11
       65 LOADN                            R10 0
       66 CALL                             R8 2 0
       67 GETIMPORT                        R8 K19 [table.concat]
       69 GETTABLEKS                       R9 R1 K20 ["partNames"]
       71 LOADK                            R10 K21 [", "]
       72 CALL                             R8 2 1
       73 DUPTABLE                         R9 K24 [{"tag", "requestId", "generationName"}]
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K25 ["getLinkTag"]
       77 MOVE                             R11 R3
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K22 ["tag"]
       81 SETTABLEKS                       R3 R9 K14 ["requestId"]
       83 SETTABLEKS                       R8 R9 K23 ["generationName"]
       85 RETURN                           R9 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
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
       52 DUPTABLE                         R7 K20 [{"name", "inputType", "initialValue"}]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K21 ["SelectedInstanceRef"]
       56 SETTABLEKS                       R8 R7 K13 ["name"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K22 ["Instance"]
       61 SETTABLEKS                       R8 R7 K18 ["inputType"]
       63 SETTABLEKS                       R5 R7 K19 ["initialValue"]
       65 DUPTABLE                         R8 K24 [{["name"], ["inputType"], ["initialValue"] = }]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K25 ["Parts"]
       69 SETTABLEKS                       R9 R8 K13 ["name"]
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K26 ["Array"]
       74 SETTABLEKS                       R9 R8 K18 ["inputType"]
       76 SETLIST                          R6 R7 2 [1]
       78 DUPTABLE                         R7 K30 [{"formId", "fields", "validation"}]
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K27 ["formId"]
       82 SETTABLEKS                       R8 R7 K27 ["formId"]
       84 SETTABLEKS                       R6 R7 K28 ["fields"]
       86 GETUPVAL                         R8 4
       87 DUPTABLE                         R9 K33 [{"kind", "rules"}]
       88 GETUPVAL                         R10 5
       89 GETTABLEKS                       R10 R10 K34 ["All"]
       91 SETTABLEKS                       R10 R9 K31 ["kind"]
       93 NEWTABLE                         R10 0 3
       95 GETUPVAL                         R11 4
       96 DUPTABLE                         R12 K36 [{"kind", "field"}]
       97 GETUPVAL                         R13 5
       98 GETTABLEKS                       R13 R13 K37 ["Present"]
      100 SETTABLEKS                       R13 R12 K31 ["kind"]
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R13 R13 K21 ["SelectedInstanceRef"]
      105 SETTABLEKS                       R13 R12 K35 ["field"]
      107 CALL                             R11 1 1
      108 GETUPVAL                         R12 4
      109 DUPTABLE                         R13 K39 [{"kind", "rule"}]
      110 GETUPVAL                         R14 5
      111 GETTABLEKS                       R14 R14 K40 ["Not"]
      113 SETTABLEKS                       R14 R13 K31 ["kind"]
      115 GETUPVAL                         R14 4
      116 DUPTABLE                         R15 K43 [{["kind"], ["field"], ["value"] = False}]
      117 GETUPVAL                         R16 5
      118 GETTABLEKS                       R16 R16 K44 ["Equals"]
      120 SETTABLEKS                       R16 R15 K31 ["kind"]
      122 GETUPVAL                         R16 1
      123 GETTABLEKS                       R16 R16 K45 ["SelectedInstanceRefIsValid"]
      125 SETTABLEKS                       R16 R15 K35 ["field"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K38 ["rule"]
      130 CALL                             R12 1 1
      131 GETUPVAL                         R13 4
      132 DUPTABLE                         R14 K49 [{["kind"], ["field"], ["min"] = 2, ["max"]}]
      133 GETUPVAL                         R15 5
      134 GETTABLEKS                       R15 R15 K50 ["Range"]
      136 SETTABLEKS                       R15 R14 K31 ["kind"]
      138 GETUPVAL                         R15 1
      139 GETTABLEKS                       R15 R15 K25 ["Parts"]
      141 SETTABLEKS                       R15 R14 K35 ["field"]
      143 GETUPVAL                         R15 6
      144 SETTABLEKS                       R15 R14 K48 ["max"]
      146 CALL                             R13 1 -1
      147 SETLIST                          R10 R11 -1 [1]
      149 SETTABLEKS                       R10 R9 K32 ["rules"]
      151 CALL                             R8 1 1
      152 SETTABLEKS                       R8 R7 K29 ["validation"]
      154 DUPTABLE                         R8 K52 [{"name", "arguments"}]
      155 GETUPVAL                         R9 7
      156 GETTABLEKS                       R9 R9 K53 ["AskInput"]
      158 SETTABLEKS                       R9 R8 K13 ["name"]
      160 SETTABLEKS                       R7 R8 K51 ["arguments"]
      162 RETURN                           R8 1

PROTO_10:
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

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 DUPCLOSURE                       R2 K0 [PROTO_10]
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U7
       13 NEWTABLE                         R3 0 2
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 SETLIST                          R3 R4 2 [1]
       19 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["SegmentMesh"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 SETUPVAL                         R0 0
        1 DUPTABLE                         R2 K5 [{[1], ["isManualRun"] = True, ["selectedInstanceRef"] = }]
        2 SETTABLEKS                       R0 R2 K0 ["parts"]
        4 DUPTABLE                         R3 K8 [{"name", "arguments"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K9 ["SegmentMesh"]
        8 SETTABLEKS                       R4 R3 K6 ["name"]
       10 SETTABLEKS                       R2 R3 K7 ["arguments"]
       12 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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
       67 DUPCLOSURE                       R10 K28 [PROTO_14]
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

PROTO_19:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
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
       22 LOADK                            R7 K4 ["Segments an existing mesh into named sub-parts using AI. Requires a source MeshPart or Model and up to %* comma-separated part names (e.g. \"head, body, tail\"). Returns a new Model containing the segmented parts, inserted as a sibling of the source."]
       23 MOVE                             R9 R3
       24 NAMECALL                         R7 R7 K5 ["format"]
       26 CALL                             R7 2 1
       27 MOVE                             R6 R7
       28 NAMECALL                         R4 R4 K6 ["setDescription"]
       30 CALL                             R4 2 1
       31 LOADK                            R6 K7 ["parts"]
       32 DUPTABLE                         R7 K11 [{["type"] = "string", ["description"]}]
       33 LOADK                            R9 K12 ["Comma-separated list of part names to segment the mesh into (max %*). Example: \"head, body, tail\"."]
       34 MOVE                             R11 R3
       35 NAMECALL                         R9 R9 K5 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R8 R9
       39 SETTABLEKS                       R8 R7 K10 ["description"]
       41 NAMECALL                         R4 R4 K13 ["addArgument"]
       43 CALL                             R4 3 1
       44 LOADK                            R6 K14 ["selectedInstanceRef"]
       45 DUPTABLE                         R7 K19 [{["type"] = "object", ["description"] = "The source mesh: an InstanceRef pointing to a MeshPart or to a Model containing the mesh to segment.", ["properties"], ["required"]}]
       46 DUPTABLE                         R8 K21 [{"uniqueId"}]
       47 DUPTABLE                         R9 K23 [{["type"] = "string", ["description"] = "Unique instance id of the source MeshPart or Model."}]
       48 SETTABLEKS                       R9 R8 K20 ["uniqueId"]
       50 SETTABLEKS                       R8 R7 K17 ["properties"]
       52 NEWTABLE                         R8 0 1
       54 LOADK                            R9 K20 ["uniqueId"]
       55 SETLIST                          R8 R9 1 [1]
       57 SETTABLEKS                       R8 R7 K18 ["required"]
       59 NAMECALL                         R4 R4 K13 ["addArgument"]
       61 CALL                             R4 3 1
       62 DUPTABLE                         R6 K31 [{["title"] = "Mesh Segmentation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       63 NAMECALL                         R4 R4 K32 ["setAnnotations"]
       65 CALL                             R4 2 1
       66 MOVE                             R6 R2
       67 NAMECALL                         R4 R4 K33 ["setHandler"]
       69 CALL                             R4 2 1
       70 NAMECALL                         R4 R4 K34 ["build"]
       72 CALL                             R4 1 1
       73 NEWCLOSURE                       R5 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          UPVAL U11
       79 CAPTURE                          UPVAL U12
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U13
       83 LOADK                            R6 K35 [""]
       84 DUPTABLE                         R7 K42 [{["command"] = "segment_mesh", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
       85 DUPCLOSURE                       R8 K43 [PROTO_12]
       86 CAPTURE                          UPVAL U14
       87 SETTABLEKS                       R8 R7 K38 ["getDescription"]
       89 GETUPVAL                         R9 15
       90 GETTABLEKS                       R9 R9 K44 ["getIsAskInputToolEnabled"]
       92 CALL                             R9 0 1
       93 JUMPIFNOT                        R9 ; [+2]
       94 MOVE                             R8 R5
       95 JUMP                             ; [+1]
       96 LOADNIL                          R8
       97 SETTABLEKS                       R8 R7 K39 ["runToolChain"]
       99 GETUPVAL                         R9 15
      100 GETTABLEKS                       R9 R9 K44 ["getIsAskInputToolEnabled"]
      102 CALL                             R9 0 1
      103 JUMPIFNOT                        R9 ; [+2]
      104 LOADNIL                          R8
      105 JUMP                             ; [+3]
      106 NEWCLOSURE                       R8 P4
      107 CAPTURE                          REF R6
      108 CAPTURE                          UPVAL U7
      109 SETTABLEKS                       R8 R7 K40 ["mapToToolCall"]
      111 NEWCLOSURE                       R8 P5
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          UPVAL U14
      115 CAPTURE                          REF R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          UPVAL U17
      118 SETTABLEKS                       R8 R7 K41 ["getInputRequestArguments"]
      120 DUPTABLE                         R8 K49 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      121 SETTABLEKS                       R4 R8 K45 ["definition"]
      123 GETUPVAL                         R10 5
      124 GETTABLEKS                       R10 R10 K50 ["FFlagAssistantSegmentMeshTool"]
      126 JUMPIFNOT                        R10 ; [+6]
      127 NEWTABLE                         R9 0 1
      129 MOVE                             R10 R7
      130 SETLIST                          R9 R10 1 [1]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R9
      134 SETTABLEKS                       R9 R8 K46 ["slashCommands"]
      136 DUPCLOSURE                       R9 K51 [PROTO_19]
      137 SETTABLEKS                       R9 R8 K47 ["getPreExecuteWarning"]
      139 DUPTABLE                         R9 K54 [{["resetTimeoutOnProgress"] = True}]
      140 SETTABLEKS                       R9 R8 K48 ["toolCallOptions"]
      142 CLOSEUPVALS                      R6
      143 RETURN                           R8 1

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
       31 GETTABLEKS                       R5 R0 K15 ["FlagUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K17 ["Parent"]
       43 GETTABLEKS                       R7 R7 K18 ["ModelContextProtocol"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Util"]
       50 GETTABLEKS                       R8 R8 K19 ["SlashCommandConfiguration"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K20 ["Tools"]
       57 GETTABLEKS                       R9 R9 K21 ["ToolTypes"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Util"]
       64 GETTABLEKS                       R10 R10 K22 ["ToolUtils"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R0 K23 ["Resources"]
       71 GETTABLEKS                       R11 R11 K24 ["Localization"]
       73 GETTABLEKS                       R11 R11 K25 ["Translator"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K26 ["Types"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K9 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Util"]
       85 GETTABLEKS                       R13 R13 K27 ["SegmentMesh"]
       87 GETTABLEKS                       R13 R13 K28 ["SegmentMeshTypes"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R6 K10 ["Util"]
       92 GETTABLEKS                       R13 R13 K29 ["ToolBuilder"]
       94 GETTABLEKS                       R14 R6 K10 ["Util"]
       96 GETTABLEKS                       R14 R14 K30 ["ToolResult"]
       98 GETTABLEKS                       R15 R8 K31 ["ToolNames"]
      100 GETTABLEKS                       R16 R2 K32 ["INPUT_TYPE"]
      102 GETTABLEKS                       R17 R2 K33 ["RULE_KIND"]
      104 GETTABLEKS                       R18 R2 K34 ["rule"]
      106 GETTABLEKS                       R19 R7 K35 ["Configs"]
      108 GETTABLEKS                       R19 R19 K27 ["SegmentMesh"]
      110 GETTABLEKS                       R20 R19 K36 ["row"]
      112 DUPCLOSURE                       R21 K37 [PROTO_0]
      113 CAPTURE                          VAL R1
      114 DUPCLOSURE                       R22 K38 [PROTO_1]
      115 DUPCLOSURE                       R23 K39 [PROTO_2]
      116 CAPTURE                          VAL R5
      117 DUPCLOSURE                       R24 K40 [PROTO_3]
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R22
      120 CAPTURE                          VAL R5
      121 DUPCLOSURE                       R25 K41 [PROTO_20]
      122 CAPTURE                          VAL R24
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R22
      140 RETURN                           R25 1
