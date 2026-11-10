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
       11 LOADK                            R1 K3 ["Assistant-MaterialGenLink-%*"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

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
        0 GETTABLEKS                       R1 R0 K0 ["materialDescription"]
        2 GETTABLEKS                       R2 R0 K1 ["baseMaterial"]
        4 GETTABLEKS                       R3 R0 K2 ["materialId"]
        6 GETTABLEKS                       R4 R0 K3 ["materialPattern"]
        8 GETUPVAL                         R5 0
        9 LOADB                            R7 0
       10 NAMECALL                         R5 R5 K4 ["GenerateGUID"]
       12 CALL                             R5 2 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["startRecording"]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R10 R1
       20 GETIMPORT                        R9 K7 [type]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K8 ["string"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       29 LOADK                            R9 K9 ["Bad materialDescription"]
       30 GETIMPORT                        R7 K11 [assert]
       32 CALL                             R7 2 0
       33 LOADB                            R8 1
       34 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       36 LOADK                            R9 K12 ["Bad amount"]
       37 GETIMPORT                        R7 K11 [assert]
       39 CALL                             R7 2 0
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K13 ["try"]
       43 LOADN                            R8 4
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R8
       48 CALL                             R6 1 1
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U7
       60 NAMECALL                         R6 R6 K14 ["andThen"]
       62 CALL                             R6 2 1
       63 NAMECALL                         R6 R6 K15 ["await"]
       65 CALL                             R6 1 2
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K16 ["endRecording"]
       69 MOVE                             R9 R5
       70 CALL                             R8 1 0
       71 RETURN                           R6 2

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_15:
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
       42 DUPTABLE                         R5 K15 [{"materialDescription", "baseMaterial", "materialId", "materialPattern"}]
       43 SETTABLEKS                       R2 R5 K4 ["materialDescription"]
       45 SETTABLEKS                       R3 R5 K9 ["baseMaterial"]
       47 SETTABLEKS                       R1 R5 K0 ["materialId"]
       49 SETTABLEKS                       R4 R5 K13 ["materialPattern"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K16 ["FFlagAssistantUseNewDMNetworking"]
       56 JUMPIFNOT                        R8 ; [+11]
       57 GETUPVAL                         R8 1
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K17 ["FOCUSED"]
       61 MOVE                             R11 R5
       62 NAMECALL                         R8 R8 K18 ["InvokeAsync"]
       64 CALL                             R8 3 2
       65 MOVE                             R6 R8
       66 MOVE                             R7 R9
       67 RETURN                           R6 2
       68 GETUPVAL                         R8 3
       69 LOADNIL                          R9
       70 MOVE                             R10 R5
       71 CALL                             R8 2 2
       72 MOVE                             R6 R8
       73 MOVE                             R7 R9
       74 RETURN                           R6 2

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_18:
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
       19 DUPTABLE                         R2 K11 [{["async"] = True, ["materialDescription"], ["baseMaterial"], ["materialPattern"], ["materialId"]}]
       20 GETUPVAL                         R3 0
       21 SETTABLEKS                       R3 R2 K7 ["materialDescription"]
       23 GETIMPORT                        R3 K15 [Enum.Material.Plastic]
       25 GETTABLEKS                       R3 R3 K16 ["Name"]
       27 SETTABLEKS                       R3 R2 K8 ["baseMaterial"]
       29 GETIMPORT                        R3 K19 [Enum.MaterialPattern.Regular]
       31 GETTABLEKS                       R3 R3 K16 ["Name"]
       33 SETTABLEKS                       R3 R2 K9 ["materialPattern"]
       35 SETTABLEKS                       R1 R2 K10 ["materialId"]
       37 DUPTABLE                         R3 K22 [{"name", "arguments"}]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K23 ["MaterialGen"]
       41 SETTABLEKS                       R4 R3 K20 ["name"]
       43 SETTABLEKS                       R2 R3 K21 ["arguments"]
       45 RETURN                           R3 1

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R2 0 1
        6 MOVE                             R3 R1
        7 SETLIST                          R2 R3 1 [1]
        9 RETURN                           R2 1

PROTO_20:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 NEWCLOSURE                       R6 P2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K3 ["FFlagAssistantUseNewDMNetworking"]
       26 JUMPIFNOT                        R9 ; [+35]
       27 GETUPVAL                         R9 7
       28 GETTABLEKS                       R9 R9 K4 ["invoke"]
       30 MOVE                             R10 R2
       31 LOADK                            R11 K5 ["MaterialGenTool.generateMaterialVariantsAsync"]
       32 CALL                             R9 2 1
       33 MOVE                             R8 R9
       34 GETUPVAL                         R9 8
       35 GETTABLEKS                       R9 R9 K6 ["new"]
       37 CALL                             R9 0 1
       38 NAMECALL                         R10 R2 K7 ["GetIdentity"]
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 9
       42 GETTABLEKS                       R11 R11 K8 ["Identity"]
       44 GETTABLEKS                       R11 R11 K9 ["Standalone"]
       46 JUMPIFEQ                         R10 R11 ; [+9]
       48 NEWCLOSURE                       R14 P3
       49 CAPTURE                          VAL R6
       50 NAMECALL                         R12 R8 K10 ["Connect"]
       52 CALL                             R12 2 -1
       53 NAMECALL                         R10 R9 K11 ["Add"]
       55 CALL                             R10 -1 0
       56 NEWCLOSURE                       R12 P4
       57 CAPTURE                          VAL R9
       58 NAMECALL                         R10 R3 K12 ["Once"]
       60 CALL                             R10 2 0
       61 JUMP                             ; [+9]
       62 GETTABLEKS                       R9 R0 K13 ["networkingOLD"]
       64 LOADK                            R12 K14 ["MaterialGenTool_generateMaterialVariantsAsync"]
       65 NEWCLOSURE                       R13 P5
       66 CAPTURE                          VAL R6
       67 NAMECALL                         R10 R9 K15 ["OnHostInvokeAsync"]
       69 CALL                             R10 3 1
       70 MOVE                             R7 R10
       71 NEWCLOSURE                       R9 P6
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          REF R8
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          REF R7
       76 NEWCLOSURE                       R10 P7
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          UPVAL U10
       80 GETUPVAL                         R11 11
       81 GETTABLEKS                       R11 R11 K16 ["define"]
       83 CALL                             R11 0 1
       84 GETUPVAL                         R13 12
       85 GETTABLEKS                       R13 R13 K17 ["MaterialGen"]
       87 NAMECALL                         R11 R11 K18 ["setName"]
       89 CALL                             R11 2 1
       90 LOADK                            R13 K19 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
       91 NAMECALL                         R11 R11 K20 ["setDescription"]
       93 CALL                             R11 2 1
       94 LOADK                            R13 K21 ["materialDescription"]
       95 DUPTABLE                         R14 K24 [{["type"] = "string"}]
       96 NAMECALL                         R11 R11 K25 ["addArgument"]
       98 CALL                             R11 3 1
       99 LOADK                            R13 K26 ["baseMaterial"]
      100 DUPTABLE                         R14 K28 [{["type"] = "string", ["enum"]}]
      101 GETUPVAL                         R15 6
      102 GETTABLEKS                       R15 R15 K29 ["useEnumExcept"]
      104 GETIMPORT                        R16 K32 [Enum.Material]
      106 NEWTABLE                         R17 8 0
      108 GETIMPORT                        R18 K34 [Enum.Material.Neon]
      110 LOADB                            R19 1
      111 SETTABLE                         R19 R17 R18
      112 GETIMPORT                        R18 K36 [Enum.Material.Glass]
      114 LOADB                            R19 1
      115 SETTABLE                         R19 R17 R18
      116 GETIMPORT                        R18 K38 [Enum.Material.ForceField]
      118 LOADB                            R19 1
      119 SETTABLE                         R19 R17 R18
      120 GETIMPORT                        R18 K40 [Enum.Material.Air]
      122 LOADB                            R19 1
      123 SETTABLE                         R19 R17 R18
      124 GETIMPORT                        R18 K42 [Enum.Material.Water]
      126 LOADB                            R19 1
      127 SETTABLE                         R19 R17 R18
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K27 ["enum"]
      131 NAMECALL                         R11 R11 K25 ["addArgument"]
      133 CALL                             R11 3 1
      134 LOADK                            R13 K43 ["materialPattern"]
      135 DUPTABLE                         R14 K28 [{["type"] = "string", ["enum"]}]
      136 GETUPVAL                         R15 6
      137 GETTABLEKS                       R15 R15 K44 ["useEnum"]
      139 GETIMPORT                        R16 K46 [Enum.MaterialPattern]
      141 CALL                             R15 1 1
      142 SETTABLEKS                       R15 R14 K27 ["enum"]
      144 NAMECALL                         R11 R11 K25 ["addArgument"]
      146 CALL                             R11 3 1
      147 LOADK                            R13 K47 ["materialId"]
      148 DUPTABLE                         R14 K24 [{["type"] = "string"}]
      149 NAMECALL                         R11 R11 K25 ["addArgument"]
      151 CALL                             R11 3 1
      152 LOADK                            R13 K48 ["Material Generation"]
      153 NAMECALL                         R11 R11 K49 ["setTitle"]
      155 CALL                             R11 2 1
      156 DUPTABLE                         R13 K57 [{["title"] = "Material Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      157 NAMECALL                         R11 R11 K58 ["setAnnotations"]
      159 CALL                             R11 2 1
      160 MOVE                             R13 R10
      161 NAMECALL                         R11 R11 K59 ["setHandler"]
      163 CALL                             R11 2 1
      164 NAMECALL                         R11 R11 K60 ["build"]
      166 CALL                             R11 1 1
      167 DUPTABLE                         R12 K65 [{["command"] = "generate_material", ["getDescription"], ["runToolChain"]}]
      168 DUPCLOSURE                       R13 K66 [PROTO_17]
      169 CAPTURE                          UPVAL U13
      170 SETTABLEKS                       R13 R12 K63 ["getDescription"]
      172 DUPCLOSURE                       R13 K67 [PROTO_19]
      173 CAPTURE                          UPVAL U1
      174 CAPTURE                          UPVAL U12
      175 SETTABLEKS                       R13 R12 K64 ["runToolChain"]
      177 DUPTABLE                         R13 K72 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      178 SETTABLEKS                       R11 R13 K68 ["definition"]
      180 NEWTABLE                         R14 0 1
      182 MOVE                             R15 R12
      183 SETLIST                          R14 R15 1 [1]
      185 SETTABLEKS                       R14 R13 K69 ["slashCommands"]
      187 DUPCLOSURE                       R14 K73 [PROTO_20]
      188 SETTABLEKS                       R14 R13 K70 ["getPreExecuteWarning"]
      190 DUPTABLE                         R14 K75 [{["resetTimeoutOnProgress"] = True}]
      191 SETTABLEKS                       R14 R13 K71 ["toolCallOptions"]
      193 CLOSEUPVALS                      R7
      194 RETURN                           R13 1

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
       19 GETTABLEKS                       R3 R0 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R3 K12 ["Bin"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K11 [require]
       28 GETTABLEKS                       R6 R3 K13 ["DMNetworking"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K11 [require]
       33 GETTABLEKS                       R7 R3 K14 ["Dash"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K11 [require]
       38 GETTABLEKS                       R8 R3 K15 ["ModelContextProtocol"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K11 [require]
       43 GETTABLEKS                       R9 R3 K16 ["Promise"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K11 [require]
       48 GETTABLEKS                       R10 R0 K17 ["Guest"]
       50 GETTABLEKS                       R10 R10 K18 ["Environment"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K11 [require]
       55 GETTABLEKS                       R11 R0 K19 ["Flags"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K11 [require]
       60 GETTABLEKS                       R12 R0 K20 ["Util"]
       62 GETTABLEKS                       R12 R12 K21 ["Tagging"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K11 [require]
       67 GETTABLEKS                       R13 R0 K22 ["Tools"]
       69 GETTABLEKS                       R13 R13 K23 ["ToolTypes"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K11 [require]
       74 GETTABLEKS                       R14 R0 K20 ["Util"]
       76 GETTABLEKS                       R14 R14 K24 ["ToolUtils"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K11 [require]
       81 GETTABLEKS                       R15 R0 K25 ["Resources"]
       83 GETTABLEKS                       R15 R15 K26 ["Localization"]
       85 GETTABLEKS                       R15 R15 K27 ["Translator"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K11 [require]
       90 GETTABLEKS                       R16 R0 K28 ["Types"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R5 K29 ["Remote"]
       95 GETTABLEKS                       R17 R7 K20 ["Util"]
       97 GETTABLEKS                       R17 R17 K30 ["ToolBuilder"]
       99 GETTABLEKS                       R18 R7 K20 ["Util"]
      101 GETTABLEKS                       R18 R18 K31 ["ToolResult"]
      103 GETTABLEKS                       R19 R12 K32 ["ToolNames"]
      105 DUPCLOSURE                       R20 K33 [PROTO_1]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R2
      108 DUPCLOSURE                       R21 K34 [PROTO_2]
      109 DUPCLOSURE                       R22 K35 [PROTO_3]
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 DUPCLOSURE                       R23 K36 [PROTO_21]
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R14
      127 RETURN                           R23 1
