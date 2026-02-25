PROTO_0:
        0 LOADK                            R5 K0 ["MaterialVariant"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["collectSet"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["GetDescendants"]
        6 CALL                             R2 1 1
        7 DUPCLOSURE                       R3 K2 [PROTO_0]
        8 CALL                             R1 2 1
        9 GETTABLE                         R2 R1 R0
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 1
       12 LOADN                            R2 1
       13 MOVE                             R5 R0
       14 MOVE                             R6 R2
       15 CONCAT                           R4 R5 R6
       16 GETTABLE                         R3 R1 R4
       17 JUMPIFNOT                        R3 ; [+2]
       18 ADDK                             R2 R2 K3 [1]
       19 JUMPBACK                         ; [-7]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 CONCAT                           R3 R4 R5
       23 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad materialDescription"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["number"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["Bad amount"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K8 ["try"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["generationId"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["UploadMaterialsAsync"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GetPluginComponent"]
        3 LOADK                            R1 K1 ["MaterialGenerator"]
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R2 R5 K2 ["materialVariants"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 SUBK                             R7 R5 K3 [1]
       14 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       16 MOVE                             R9 R1
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K6 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R2 2 ; [-9]
       23 GETIMPORT                        R2 K8 [pcall]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 2
       30 JUMPIF                           R2 ; [+11]
       31 GETUPVAL                         R4 2
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+5]
       34 GETIMPORT                        R4 K10 [error]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 RETURN                           R3 1
       39 NEWTABLE                         R4 0 0
       41 RETURN                           R4 1
       42 RETURN                           R3 1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Bad materials"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R2 1
        6 GETIMPORT                        R3 K3 [Instance.new]
        8 LOADK                            R4 K4 ["Folder"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K5 ["Name"]
       12 SETTABLEKS                       R0 R3 K6 ["Parent"]
       14 RETURN                           R3 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["studio://apply_material_variant/%s"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["![](image://instance/%s) %s"]
        3 GETTABLEKS                       R3 R0 K4 ["ClassName"]
        5 GETTABLEKS                       R4 R0 K5 ["Name"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 ["AssistantMaterials"]
        2 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R1 R3
        7 JUMP                             ; [+10]
        8 GETIMPORT                        R4 K4 [Instance.new]
       10 LOADK                            R5 K5 ["Folder"]
       11 CALL                             R4 1 1
       12 LOADK                            R5 K0 ["AssistantMaterials"]
       13 SETTABLEKS                       R5 R4 K6 ["Name"]
       15 SETTABLEKS                       R2 R4 K7 ["Parent"]
       17 MOVE                             R1 R4
       18 GETIMPORT                        R3 K10 [string.format]
       20 LOADK                            R4 K11 ["Material: %s"]
       21 GETUPVAL                         R5 1
       22 CALL                             R3 2 1
       23 MOVE                             R6 R3
       24 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 MOVE                             R2 R4
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R5 K4 [Instance.new]
       32 LOADK                            R6 K5 ["Folder"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R3 R5 K6 ["Name"]
       36 SETTABLEKS                       R1 R5 K7 ["Parent"]
       38 MOVE                             R2 R5
       39 NEWTABLE                         R3 0 0
       41 LOADN                            R4 0
       42 LOADB                            R5 0
       43 MOVE                             R6 R0
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 LOADN                            R13 10
       48 NAMECALL                         R11 R10 K12 ["GetDebugId"]
       50 CALL                             R11 2 1
       51 GETUPVAL                         R12 2
       52 GETUPVAL                         R13 3
       53 CALL                             R12 1 1
       54 SETTABLEKS                       R12 R10 K6 ["Name"]
       56 GETIMPORT                        R13 K15 [Enum.Material]
       58 GETUPVAL                         R14 4
       59 GETTABLE                         R12 R13 R14
       60 SETTABLEKS                       R12 R10 K16 ["BaseMaterial"]
       62 GETIMPORT                        R13 K18 [Enum.MaterialPattern]
       64 GETUPVAL                         R14 5
       65 GETTABLE                         R12 R13 R14
       66 SETTABLEKS                       R12 R10 K17 ["MaterialPattern"]
       68 SETTABLEKS                       R2 R10 K7 ["Parent"]
       70 GETUPVAL                         R13 6
       71 GETTABLEKS                       R12 R13 K19 ["guidToInfo"]
       73 DUPTABLE                         R13 K21 [{"instance"}]
       74 SETTABLEKS                       R10 R13 K20 ["instance"]
       76 SETTABLE                         R13 R12 R11
       77 GETTABLEKS                       R4 R10 K22 ["StudsPerTile"]
       79 GETTABLEKS                       R12 R10 K17 ["MaterialPattern"]
       81 GETIMPORT                        R13 K24 [Enum.MaterialPattern.Organic]
       83 JUMPIFEQ                         R12 R13 ; [+2]
       85 LOADB                            R5 0 +1
       86 LOADB                            R5 1
       87 DUPTABLE                         R14 K29 [{"guid", "url", "action", "tooltip"}]
       88 SETTABLEKS                       R11 R14 K25 ["guid"]
       90 GETTABLEKS                       R15 R10 K30 ["ColorMap"]
       92 SETTABLEKS                       R15 R14 K26 ["url"]
       94 GETIMPORT                        R15 K10 [string.format]
       96 LOADK                            R16 K31 ["studio://apply_material_variant/%s"]
       97 MOVE                             R17 R11
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K27 ["action"]
      101 GETTABLEKS                       R15 R10 K6 ["Name"]
      103 SETTABLEKS                       R15 R14 K28 ["tooltip"]
      105 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      107 MOVE                             R13 R3
      108 GETIMPORT                        R12 K34 [table.insert]
      110 CALL                             R12 2 0
      111 FORGLOOP                         R6 2 ; [-65]
      113 DUPTABLE                         R6 K39 [{"requestId", "instanceData", "studsPerTile", "isOrganic"}]
      114 GETUPVAL                         R9 7
      115 GETTABLEKS                       R8 R9 K35 ["requestId"]
      117 ORK                              R7 R8 K40 [""]
      118 SETTABLEKS                       R7 R6 K35 ["requestId"]
      120 SETTABLEKS                       R3 R6 K36 ["instanceData"]
      122 SETTABLEKS                       R4 R6 K37 ["studsPerTile"]
      124 SETTABLEKS                       R5 R6 K38 ["isOrganic"]
      126 GETUPVAL                         R7 8
      127 LOADK                            R9 K41 ["Materials"]
      128 MOVE                             R10 R6
      129 NAMECALL                         R7 R7 K42 ["DisplayContent"]
      131 CALL                             R7 3 0
      132 GETTABLEN                        R7 R0 1
      133 RETURN                           R7 1

PROTO_11:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad materials"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CALL                             R1 1 1
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 NAMECALL                         R1 R1 K7 ["andThen"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 LOADK                            R7 K0 ["CreateMaterial"]
        2 LOADK                            R8 K1 ["Description"]
        3 DUPTABLE                         R9 K5 [{"baseMaterial", "description", "materialPattern"}]
        4 FASTCALL1                        TOSTRING R2 ; [+3]
        5 MOVE                             R11 R2
        6 GETIMPORT                        R10 K7 [tostring]
        8 CALL                             R10 1 1
        9 SETTABLEKS                       R10 R9 K2 ["baseMaterial"]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R11 R1
       13 GETIMPORT                        R10 K7 [tostring]
       15 CALL                             R10 1 1
       16 SETTABLEKS                       R10 R9 K3 ["description"]
       18 FASTCALL1                        TOSTRING R4 ; [+3]
       19 MOVE                             R11 R4
       20 GETIMPORT                        R10 K7 [tostring]
       22 CALL                             R10 1 1
       23 SETTABLEKS                       R10 R9 K4 ["materialPattern"]
       25 NAMECALL                         R5 R5 K8 ["getText"]
       27 CALL                             R5 4 1
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K9 ["streamText"]
       31 GETTABLEKS                       R7 R0 K10 ["requestId"]
       33 GETIMPORT                        R8 K13 [string.format]
       35 LOADK                            R9 K14 ["\n%s\n"]
       36 MOVE                             R10 R5
       37 CALL                             R8 2 -1
       38 CALL                             R6 -1 0
       39 FASTCALL1                        TYPE R1 ; [+3]
       40 MOVE                             R10 R1
       41 GETIMPORT                        R9 K16 [type]
       43 CALL                             R9 1 1
       44 JUMPIFEQKS                       R9 K11 ["string"] ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 FASTCALL2K                       ASSERT R8 K17 ; [+4]
       50 LOADK                            R9 K17 ["Bad materialDescription"]
       51 GETIMPORT                        R7 K19 [assert]
       53 CALL                             R7 2 0
       54 LOADB                            R8 1
       55 FASTCALL2K                       ASSERT R8 K20 ; [+4]
       57 LOADK                            R9 K20 ["Bad amount"]
       58 GETIMPORT                        R7 K19 [assert]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R6 R7 K21 ["try"]
       64 LOADN                            R8 4
       65 NEWCLOSURE                       R7 P0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CALL                             R6 1 1
       70 NEWCLOSURE                       R8 P1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U9
       83 NAMECALL                         R6 R6 K22 ["andThen"]
       85 CALL                             R6 2 -1
       86 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 CALL                             R5 5 -1
        7 RETURN                           R5 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETTABLEKS                       R5 R1 K1 ["materialDescription"]
        4 FASTCALL1                        TYPE R5 ; [+2]
        5 GETIMPORT                        R4 K3 [type]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       14 LOADK                            R4 K5 ["Bad request.materialDescription"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R1 K8 ["materialId"]
       20 JUMPIF                           R2 ; [+2]
       21 GETTABLEKS                       R2 R1 K9 ["instanceId"]
       23 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K10 ["Bad request.materialId"]
       27 GETIMPORT                        R3 K7 [assert]
       29 CALL                             R3 2 0
       30 SETTABLEKS                       R2 R1 K8 ["materialId"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K11 ["StartRecordingActions"]
       35 GETTABLEKS                       R4 R0 K12 ["requestId"]
       37 CALL                             R3 1 0
       38 GETTABLEKS                       R4 R1 K1 ["materialDescription"]
       40 GETTABLEKS                       R5 R1 K13 ["baseMaterial"]
       42 GETTABLEKS                       R6 R1 K8 ["materialId"]
       44 GETTABLEKS                       R7 R1 K14 ["materialPattern"]
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R0
       48 MOVE                             R10 R4
       49 MOVE                             R11 R5
       50 MOVE                             R12 R6
       51 MOVE                             R13 R7
       52 CALL                             R8 5 1
       53 MOVE                             R3 R8
       54 NAMECALL                         R3 R3 K15 ["await"]
       56 CALL                             R3 1 2
       57 JUMPIF                           R3 ; [+51]
       58 GETUPVAL                         R5 2
       59 LOADK                            R7 K16 ["CreateMaterial"]
       60 LOADK                            R8 K17 ["FailedToCreateMaterialImprovedError"]
       61 NEWTABLE                         R9 0 0
       63 NAMECALL                         R5 R5 K18 ["getText"]
       65 CALL                             R5 4 1
       66 GETUPVAL                         R6 3
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+19]
       69 GETIMPORT                        R6 K20 [string.find]
       71 FASTCALL1                        TOSTRING R4 ; [+3]
       72 MOVE                             R8 R4
       73 GETIMPORT                        R7 K22 [tostring]
       75 CALL                             R7 1 1
       76 LOADK                            R8 K23 ["text is fully filtered"]
       77 CALL                             R6 2 1
       78 JUMPIFNOT                        R6 ; [+9]
       79 GETUPVAL                         R6 2
       80 LOADK                            R8 K16 ["CreateMaterial"]
       81 LOADK                            R9 K24 ["FailedToCreateMaterialTextFilteredError"]
       82 NEWTABLE                         R10 0 0
       84 NAMECALL                         R6 R6 K18 ["getText"]
       86 CALL                             R6 4 1
       87 MOVE                             R5 R6
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R6 R7 K25 ["streamText"]
       91 GETTABLEKS                       R7 R0 K12 ["requestId"]
       93 GETIMPORT                        R8 K27 [string.format]
       95 LOADK                            R9 K28 ["\n%s\n"]
       96 MOVE                             R10 R5
       97 CALL                             R8 2 -1
       98 CALL                             R6 -1 0
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R6 R7 K29 ["EndRecordingActions"]
      102 GETTABLEKS                       R7 R0 K12 ["requestId"]
      104 CALL                             R6 1 0
      105 GETIMPORT                        R6 K31 [error]
      107 MOVE                             R7 R5
      108 CALL                             R6 1 0
      109 GETTABLEKS                       R5 R1 K8 ["materialId"]
      111 JUMPIFNOT                        R5 ; [+7]
      112 GETUPVAL                         R6 0
      113 GETTABLEKS                       R5 R6 K32 ["set"]
      115 GETTABLEKS                       R6 R1 K8 ["materialId"]
      117 MOVE                             R7 R4
      118 CALL                             R5 2 0
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R5 R6 K29 ["EndRecordingActions"]
      122 GETTABLEKS                       R6 R0 K12 ["requestId"]
      124 CALL                             R5 1 0
      125 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R5 K13 ["Dash"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K14 ["Localization"]
       40 GETTABLEKS                       R5 R6 K14 ["Localization"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Packages"]
       47 GETTABLEKS                       R6 R7 K15 ["Promise"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R8 K16 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K6 ["Src"]
       61 GETTABLEKS                       R9 R10 K10 ["Utils"]
       63 GETTABLEKS                       R8 R9 K10 ["Utils"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R2 K17 ["GetService"]
       68 LOADK                            R9 K18 ["MaterialGenerationService"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R2 K17 ["GetService"]
       72 LOADK                            R10 K19 ["MaterialService"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R2 K17 ["GetService"]
       76 LOADK                            R11 K20 ["ChatbotUIService"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K6 ["Src"]
       82 GETTABLEKS                       R14 R15 K21 ["Flags"]
       84 GETTABLEKS                       R13 R14 K22 ["FFlagMaterialGenErrorTextFiltered"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R11 R12 K23 ["Get"]
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R16 R0 K6 ["Src"]
       93 GETTABLEKS                       R15 R16 K21 ["Flags"]
       95 GETTABLEKS                       R14 R15 K24 ["FFlagRejectMaterialGeneratorError"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R12 R13 K23 ["Get"]
      100 DUPCLOSURE                       R13 K25 [PROTO_1]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R9
      103 DUPCLOSURE                       R14 K26 [PROTO_3]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R8
      106 DUPCLOSURE                       R15 K27 [PROTO_6]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R12
      110 DUPCLOSURE                       R16 K28 [PROTO_7]
      111 DUPCLOSURE                       R17 K29 [PROTO_8]
      112 DUPCLOSURE                       R18 K30 [PROTO_9]
      113 DUPCLOSURE                       R19 K31 [PROTO_12]
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R10
      124 DUPCLOSURE                       R20 K32 [PROTO_13]
      125 CAPTURE                          VAL R19
      126 DUPCLOSURE                       R21 K33 [PROTO_14]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R7
      132 RETURN                           R21 1
