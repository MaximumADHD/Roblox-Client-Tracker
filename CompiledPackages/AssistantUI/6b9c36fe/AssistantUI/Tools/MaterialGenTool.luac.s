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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collectSet"]
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
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 LOADK                            R5 K1 ["Folder"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+1]
       10 RETURN                           R2 1
       11 GETIMPORT                        R3 K5 [Instance.new]
       13 LOADK                            R4 K1 ["Folder"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R1 R3 K6 ["Name"]
       17 SETTABLEKS                       R0 R3 K7 ["Parent"]
       19 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Mat"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R2 K3 ["Assistant-MaterialGenLink-%*"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateMaterialVariantsAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
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
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K8 ["try"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R0 K2 ["uploadMaterialsAsync"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["generationId"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["materialVariants"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 SUBK                             R6 R4 K1 [1]
        9 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       11 MOVE                             R8 R0
       12 MOVE                             R9 R6
       13 GETIMPORT                        R7 K4 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 GETIMPORT                        R1 K6 [pcall]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 2
       25 JUMPIF                           R1 ; [+4]
       26 GETIMPORT                        R3 K8 [error]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R2 1

PROTO_8:
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
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 ["AssistantMaterials"]
        2 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+7]
        6 LOADK                            R6 K2 ["Folder"]
        7 NAMECALL                         R4 R3 K3 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 MOVE                             R1 R3
       12 JUMP                             ; [+10]
       13 GETIMPORT                        R4 K6 [Instance.new]
       15 LOADK                            R5 K2 ["Folder"]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K0 ["AssistantMaterials"]
       18 SETTABLEKS                       R5 R4 K7 ["Name"]
       20 SETTABLEKS                       R2 R4 K8 ["Parent"]
       22 MOVE                             R1 R4
       23 GETIMPORT                        R3 K11 [string.format]
       25 LOADK                            R4 K12 ["Material: %s"]
       26 GETUPVAL                         R5 1
       27 CALL                             R3 2 1
       28 MOVE                             R6 R3
       29 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+7]
       33 LOADK                            R7 K2 ["Folder"]
       34 NAMECALL                         R5 R4 K3 ["IsA"]
       36 CALL                             R5 2 1
       37 JUMPIFNOT                        R5 ; [+2]
       38 MOVE                             R2 R4
       39 JUMP                             ; [+9]
       40 GETIMPORT                        R5 K6 [Instance.new]
       42 LOADK                            R6 K2 ["Folder"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R3 R5 K7 ["Name"]
       46 SETTABLEKS                       R1 R5 K8 ["Parent"]
       48 MOVE                             R2 R5
       49 GETUPVAL                         R4 1
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K13 ["FFlagAssistantUseNewTags"]
       53 JUMPIFNOT                        R5 ; [+8]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K14 ["getUniqueTag"]
       57 LOADK                            R6 K15 ["Mat"]
       58 MOVE                             R7 R4
       59 CALL                             R5 2 1
       60 MOVE                             R3 R5
       61 JUMP                             ; [+6]
       62 LOADK                            R5 K16 ["Assistant-MaterialGenLink-%*"]
       63 MOVE                             R7 R4
       64 NAMECALL                         R5 R5 K10 ["format"]
       66 CALL                             R5 2 1
       67 MOVE                             R3 R5
       68 MOVE                             R6 R3
       69 NAMECALL                         R4 R2 K17 ["AddTag"]
       71 CALL                             R4 2 0
       72 LOADNIL                          R4
       73 NEWTABLE                         R5 0 0
       75 MOVE                             R6 R0
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 GETUPVAL                         R11 4
       80 GETUPVAL                         R12 1
       81 CALL                             R11 1 1
       82 SETTABLEKS                       R11 R10 K7 ["Name"]
       84 GETUPVAL                         R11 5
       85 SETTABLEKS                       R11 R10 K18 ["BaseMaterial"]
       87 GETUPVAL                         R11 6
       88 SETTABLEKS                       R11 R10 K19 ["MaterialPattern"]
       90 SETTABLEKS                       R2 R10 K8 ["Parent"]
       92 GETTABLEKS                       R11 R10 K20 ["ColorMap"]
       94 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       96 MOVE                             R13 R5
       97 MOVE                             R14 R11
       98 GETIMPORT                        R12 K23 [table.insert]
      100 CALL                             R12 2 0
      101 JUMPIF                           R4 ; [+1]
      102 MOVE                             R4 R10
      103 GETUPVAL                         R12 7
      104 GETTABLEKS                       R12 R12 K24 ["preloadMaterialVariant"]
      106 MOVE                             R13 R10
      107 CALL                             R12 1 0
      108 FORGLOOP                         R6 2 ; [-30]
      110 JUMPIFNOT                        R4 ; [+15]
      111 DUPTABLE                         R6 K27 [{"BaseMaterial", "Name", "AssetIds", "Tag"}]
      112 GETTABLEKS                       R7 R4 K18 ["BaseMaterial"]
      114 GETTABLEKS                       R7 R7 K7 ["Name"]
      116 SETTABLEKS                       R7 R6 K18 ["BaseMaterial"]
      118 GETUPVAL                         R7 1
      119 SETTABLEKS                       R7 R6 K7 ["Name"]
      121 SETTABLEKS                       R5 R6 K25 ["AssetIds"]
      123 SETTABLEKS                       R3 R6 K26 ["Tag"]
      125 RETURN                           R6 1
      126 RETURN                           R0 0

PROTO_10:
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
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CALL                             R1 1 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 NAMECALL                         R1 R1 K7 ["andThen"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["materialDescription"]
        2 GETTABLEKS                       R3 R1 K1 ["baseMaterial"]
        4 GETTABLEKS                       R4 R1 K2 ["materialId"]
        6 GETTABLEKS                       R5 R1 K3 ["materialPattern"]
        8 GETUPVAL                         R6 0
        9 LOADB                            R8 0
       10 NAMECALL                         R6 R6 K4 ["GenerateGUID"]
       12 CALL                             R6 2 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["startRecording"]
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 FASTCALL1                        TYPE R2 ; [+3]
       19 MOVE                             R11 R2
       20 GETIMPORT                        R10 K7 [type]
       22 CALL                             R10 1 1
       23 JUMPIFEQKS                       R10 K8 ["string"] ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 FASTCALL2K                       ASSERT R9 K9 ; [+4]
       29 LOADK                            R10 K9 ["Bad materialDescription"]
       30 GETIMPORT                        R8 K11 [assert]
       32 CALL                             R8 2 0
       33 LOADB                            R9 1
       34 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       36 LOADK                            R10 K12 ["Bad amount"]
       37 GETIMPORT                        R8 K11 [assert]
       39 CALL                             R8 2 0
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K13 ["try"]
       43 LOADN                            R9 4
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R9
       48 CALL                             R7 1 1
       49 NEWCLOSURE                       R9 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          UPVAL U7
       60 NAMECALL                         R7 R7 K14 ["andThen"]
       62 CALL                             R7 2 1
       63 NAMECALL                         R7 R7 K15 ["await"]
       65 CALL                             R7 1 2
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K16 ["endRecording"]
       69 MOVE                             R10 R6
       70 CALL                             R9 1 0
       71 RETURN                           R7 2

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["materialId"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Bad materialId"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K4 ["materialDescription"]
       11 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K5 ["Bad materialDescription"]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 GETIMPORT                        R4 K8 [Enum.Material]
       20 GETTABLEKS                       R5 R0 K9 ["baseMaterial"]
       22 GETTABLE                         R3 R4 R5
       23 FASTCALL2K                       ASSERT R3 K10 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K10 ["Bad baseMaterial"]
       27 GETIMPORT                        R4 K3 [assert]
       29 CALL                             R4 2 0
       30 GETIMPORT                        R5 K12 [Enum.MaterialPattern]
       32 GETTABLEKS                       R6 R0 K13 ["materialPattern"]
       34 GETTABLE                         R4 R5 R6
       35 FASTCALL2K                       ASSERT R4 K14 ; [+5]
       37 MOVE                             R6 R4
       38 LOADK                            R7 K14 ["Bad materialPattern"]
       39 GETIMPORT                        R5 K3 [assert]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 0
       43 LOADNIL                          R6
       44 DUPTABLE                         R7 K15 [{"materialDescription", "baseMaterial", "materialId", "materialPattern"}]
       45 SETTABLEKS                       R2 R7 K4 ["materialDescription"]
       47 SETTABLEKS                       R3 R7 K9 ["baseMaterial"]
       49 SETTABLEKS                       R1 R7 K0 ["materialId"]
       51 SETTABLEKS                       R4 R7 K13 ["materialPattern"]
       53 CALL                             R5 2 2
       54 RETURN                           R5 2

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 CALL                             R3 3 2
        8 FASTCALL2                        ASSERT R3 R4 ; [+5]
       10 MOVE                             R6 R3
       11 MOVE                             R7 R4
       12 GETIMPORT                        R5 K3 [assert]
       14 CALL                             R5 2 0
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R8 R4
       17 GETIMPORT                        R7 K5 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K6 ["table"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       26 LOADK                            R7 K7 ["Expected result to be a table"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["toString"]
       33 DUPTABLE                         R6 K11 [{"BaseMaterial", "Name"}]
       34 GETTABLEKS                       R7 R4 K9 ["BaseMaterial"]
       36 SETTABLEKS                       R7 R6 K9 ["BaseMaterial"]
       38 GETTABLEKS                       R7 R4 K10 ["Name"]
       40 SETTABLEKS                       R7 R6 K10 ["Name"]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 2
       44 CALL                             R6 0 1
       45 MOVE                             R8 R5
       46 NAMECALL                         R6 R6 K12 ["addText"]
       48 CALL                             R6 2 1
       49 DUPTABLE                         R8 K15 [{"assetIds", "tag"}]
       50 GETTABLEKS                       R9 R4 K16 ["AssetIds"]
       52 SETTABLEKS                       R9 R8 K13 ["assetIds"]
       54 GETTABLEKS                       R9 R4 K17 ["Tag"]
       56 SETTABLEKS                       R9 R8 K14 ["tag"]
       58 NAMECALL                         R6 R6 K18 ["setStructuredContent"]
       60 CALL                             R6 2 1
       61 NAMECALL                         R6 R6 K19 ["build"]
       63 CALL                             R6 1 -1
       64 RETURN                           R6 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R5 0
        1 LOADK                            R7 K0 [" "]
        2 LOADK                            R8 K1 ["_"]
        3 NAMECALL                         R5 R5 K2 ["gsub"]
        5 CALL                             R5 3 1
        6 MOVE                             R2 R5
        7 LOADK                            R3 K1 ["_"]
        8 GETUPVAL                         R4 1
        9 LOADB                            R6 0
       10 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       12 CALL                             R4 2 1
       13 LOADN                            R6 1
       14 LOADN                            R7 6
       15 NAMECALL                         R4 R4 K4 ["sub"]
       17 CALL                             R4 3 1
       18 CONCAT                           R1 R2 R4
       19 DUPTABLE                         R2 K10 [{"async", "materialDescription", "baseMaterial", "materialPattern", "materialId"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K11 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADB                            R3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K5 ["async"]
       29 GETUPVAL                         R3 0
       30 SETTABLEKS                       R3 R2 K6 ["materialDescription"]
       32 GETIMPORT                        R3 K15 [Enum.Material.Plastic]
       34 GETTABLEKS                       R3 R3 K16 ["Name"]
       36 SETTABLEKS                       R3 R2 K7 ["baseMaterial"]
       38 GETIMPORT                        R3 K19 [Enum.MaterialPattern.Regular]
       40 GETTABLEKS                       R3 R3 K16 ["Name"]
       42 SETTABLEKS                       R3 R2 K8 ["materialPattern"]
       44 SETTABLEKS                       R1 R2 K9 ["materialId"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K20 ["FFlagAssistantAsyncSlashCommands"]
       49 JUMPIFNOT                        R3 ; [+21]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
       53 JUMPIF                           R3 ; [+17]
       54 DUPTABLE                         R3 K23 [{"name", "arguments"}]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K24 ["JobRun"]
       58 SETTABLEKS                       R4 R3 K21 ["name"]
       60 DUPTABLE                         R4 K26 [{"toolName", "arguments"}]
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R5 R5 K27 ["MaterialGen"]
       64 SETTABLEKS                       R5 R4 K25 ["toolName"]
       66 SETTABLEKS                       R2 R4 K22 ["arguments"]
       68 SETTABLEKS                       R4 R3 K22 ["arguments"]
       70 RETURN                           R3 1
       71 DUPTABLE                         R3 K23 [{"name", "arguments"}]
       72 GETUPVAL                         R4 3
       73 GETTABLEKS                       R4 R4 K27 ["MaterialGen"]
       75 SETTABLEKS                       R4 R3 K21 ["name"]
       77 SETTABLEKS                       R2 R3 K22 ["arguments"]
       79 RETURN                           R3 1

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWTABLE                         R2 0 1
        7 MOVE                             R3 R1
        8 SETLIST                          R2 R3 1 [1]
       10 RETURN                           R2 1

PROTO_17:
        0 LOADK                            R7 K0 [" "]
        1 LOADK                            R8 K1 ["_"]
        2 NAMECALL                         R5 R0 K2 ["gsub"]
        4 CALL                             R5 3 1
        5 MOVE                             R2 R5
        6 LOADK                            R3 K1 ["_"]
        7 GETUPVAL                         R4 0
        8 LOADB                            R6 0
        9 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       11 CALL                             R4 2 1
       12 LOADN                            R6 1
       13 LOADN                            R7 6
       14 NAMECALL                         R4 R4 K4 ["sub"]
       16 CALL                             R4 3 1
       17 CONCAT                           R1 R2 R4
       18 DUPTABLE                         R2 K7 [{"name", "arguments"}]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K8 ["MaterialGen"]
       22 SETTABLEKS                       R3 R2 K5 ["name"]
       24 DUPTABLE                         R3 K13 [{"materialDescription", "baseMaterial", "materialPattern", "materialId"}]
       25 SETTABLEKS                       R0 R3 K9 ["materialDescription"]
       27 GETIMPORT                        R4 K17 [Enum.Material.Plastic]
       29 GETTABLEKS                       R4 R4 K18 ["Name"]
       31 SETTABLEKS                       R4 R3 K10 ["baseMaterial"]
       33 GETIMPORT                        R4 K21 [Enum.MaterialPattern.Regular]
       35 GETTABLEKS                       R4 R4 K18 ["Name"]
       37 SETTABLEKS                       R4 R3 K11 ["materialPattern"]
       39 SETTABLEKS                       R1 R3 K12 ["materialId"]
       41 SETTABLEKS                       R3 R2 K6 ["arguments"]
       43 RETURN                           R2 1

PROTO_18:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R2
       10 LOADK                            R7 K2 ["MaterialGenTool_generateMaterialVariantsAsync"]
       11 NEWCLOSURE                       R8 P2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 NAMECALL                         R5 R1 K3 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 NEWCLOSURE                       R6 P3
       24 CAPTURE                          VAL R5
       25 NEWCLOSURE                       R7 P4
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U7
       29 GETUPVAL                         R8 8
       30 GETTABLEKS                       R8 R8 K4 ["define"]
       32 CALL                             R8 0 1
       33 GETUPVAL                         R10 9
       34 GETTABLEKS                       R10 R10 K5 ["MaterialGen"]
       36 NAMECALL                         R8 R8 K6 ["setName"]
       38 CALL                             R8 2 1
       39 LOADK                            R10 K7 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
       40 NAMECALL                         R8 R8 K8 ["setDescription"]
       42 CALL                             R8 2 1
       43 LOADK                            R10 K9 ["materialDescription"]
       44 DUPTABLE                         R11 K12 [{["type"] = "string"}]
       45 NAMECALL                         R8 R8 K13 ["addArgument"]
       47 CALL                             R8 3 1
       48 LOADK                            R10 K14 ["baseMaterial"]
       49 DUPTABLE                         R11 K16 [{["type"] = "string", ["enum"]}]
       50 GETUPVAL                         R12 6
       51 GETTABLEKS                       R12 R12 K17 ["useEnumExcept"]
       53 GETIMPORT                        R13 K20 [Enum.Material]
       55 NEWTABLE                         R14 8 0
       57 GETIMPORT                        R15 K22 [Enum.Material.Neon]
       59 LOADB                            R16 1
       60 SETTABLE                         R16 R14 R15
       61 GETIMPORT                        R15 K24 [Enum.Material.Glass]
       63 LOADB                            R16 1
       64 SETTABLE                         R16 R14 R15
       65 GETIMPORT                        R15 K26 [Enum.Material.ForceField]
       67 LOADB                            R16 1
       68 SETTABLE                         R16 R14 R15
       69 GETIMPORT                        R15 K28 [Enum.Material.Air]
       71 LOADB                            R16 1
       72 SETTABLE                         R16 R14 R15
       73 GETIMPORT                        R15 K30 [Enum.Material.Water]
       75 LOADB                            R16 1
       76 SETTABLE                         R16 R14 R15
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K15 ["enum"]
       80 NAMECALL                         R8 R8 K13 ["addArgument"]
       82 CALL                             R8 3 1
       83 LOADK                            R10 K31 ["materialPattern"]
       84 DUPTABLE                         R11 K16 [{["type"] = "string", ["enum"]}]
       85 GETUPVAL                         R12 6
       86 GETTABLEKS                       R12 R12 K32 ["useEnum"]
       88 GETIMPORT                        R13 K34 [Enum.MaterialPattern]
       90 CALL                             R12 1 1
       91 SETTABLEKS                       R12 R11 K15 ["enum"]
       93 NAMECALL                         R8 R8 K13 ["addArgument"]
       95 CALL                             R8 3 1
       96 LOADK                            R10 K35 ["materialId"]
       97 DUPTABLE                         R11 K12 [{["type"] = "string"}]
       98 NAMECALL                         R8 R8 K13 ["addArgument"]
      100 CALL                             R8 3 1
      101 DUPTABLE                         R10 K43 [{["title"] = "Material Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      102 NAMECALL                         R8 R8 K44 ["setAnnotations"]
      104 CALL                             R8 2 1
      105 MOVE                             R10 R7
      106 NAMECALL                         R8 R8 K45 ["setHandler"]
      108 CALL                             R8 2 1
      109 NAMECALL                         R8 R8 K46 ["build"]
      111 CALL                             R8 1 1
      112 DUPTABLE                         R9 K52 [{["command"] = "generate_material", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
      113 DUPCLOSURE                       R10 K53 [PROTO_14]
      114 CAPTURE                          UPVAL U10
      115 SETTABLEKS                       R10 R9 K49 ["getDescription"]
      117 GETUPVAL                         R11 3
      118 GETTABLEKS                       R11 R11 K54 ["FFlagAssistantAskInputTool"]
      120 JUMPIFNOT                        R11 ; [+5]
      121 DUPCLOSURE                       R10 K55 [PROTO_16]
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          UPVAL U9
      125 JUMP                             ; [+1]
      126 LOADNIL                          R10
      127 SETTABLEKS                       R10 R9 K50 ["runToolChain"]
      129 GETUPVAL                         R11 3
      130 GETTABLEKS                       R11 R11 K54 ["FFlagAssistantAskInputTool"]
      132 JUMPIFNOT                        R11 ; [+2]
      133 LOADNIL                          R10
      134 JUMP                             ; [+3]
      135 DUPCLOSURE                       R10 K56 [PROTO_17]
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          UPVAL U9
      138 SETTABLEKS                       R10 R9 K51 ["mapToToolCall"]
      140 DUPTABLE                         R10 K61 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      141 SETTABLEKS                       R8 R10 K57 ["definition"]
      143 NEWTABLE                         R11 0 1
      145 MOVE                             R12 R9
      146 SETLIST                          R11 R12 1 [1]
      148 SETTABLEKS                       R11 R10 K58 ["slashCommands"]
      150 DUPCLOSURE                       R11 K62 [PROTO_18]
      151 SETTABLEKS                       R11 R10 K59 ["getPreExecuteWarning"]
      153 DUPTABLE                         R11 K65 [{["resetTimeoutOnProgress"] = True}]
      154 SETTABLEKS                       R11 R10 K60 ["toolCallOptions"]
      156 RETURN                           R10 1

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
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["MaterialService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Guest"]
       30 GETTABLEKS                       R5 R5 K14 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K15 ["Flags"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Parent"]
       42 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K17 ["Promise"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K10 [require]
       54 GETTABLEKS                       R9 R0 K18 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["Tagging"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K10 [require]
       61 GETTABLEKS                       R10 R0 K20 ["Tools"]
       63 GETTABLEKS                       R10 R10 K21 ["ToolTypes"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K10 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Util"]
       70 GETTABLEKS                       R11 R11 K22 ["ToolUtils"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K10 [require]
       75 GETTABLEKS                       R12 R0 K23 ["Resources"]
       77 GETTABLEKS                       R12 R12 K24 ["Localization"]
       79 GETTABLEKS                       R12 R12 K25 ["Translator"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K10 [require]
       84 GETTABLEKS                       R13 R0 K26 ["Types"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R6 K18 ["Util"]
       89 GETTABLEKS                       R13 R13 K27 ["ToolBuilder"]
       91 GETTABLEKS                       R14 R6 K18 ["Util"]
       93 GETTABLEKS                       R14 R14 K28 ["ToolResult"]
       95 GETTABLEKS                       R15 R9 K29 ["ToolNames"]
       97 DUPCLOSURE                       R16 K30 [PROTO_1]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R2
      100 DUPCLOSURE                       R17 K31 [PROTO_2]
      101 DUPCLOSURE                       R18 K32 [PROTO_3]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R19 K33 [PROTO_19]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R11
      116 RETURN                           R19 1
