PROTO_0:
        0 JUMPIFNOT                        R1 ; [+5]
        1 LOADK                            R4 K0 ["MaterialVariant"]
        2 NAMECALL                         R2 R1 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["startRecording"]
        9 LOADK                            R3 K3 ["AssistantSetMaterials"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R3 R0 K4 ["selection"]
       13 GETTABLEKS                       R2 R3 K5 ["get"]
       15 CALL                             R2 0 1
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADB                            R9 1
       23 SETTABLE                         R9 R3 R8
       24 NAMECALL                         R9 R8 K6 ["GetDescendants"]
       26 CALL                             R9 1 3
       27 FORGPREP                         R9
       28 LOADB                            R14 1
       29 SETTABLE                         R14 R3 R13
       30 FORGLOOP                         R9 2 ; [-3]
       32 FORGLOOP                         R4 2 ; [-11]
       34 NEWTABLE                         R4 0 0
       36 MOVE                             R5 R3
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 LOADK                            R12 K7 ["BasePart"]
       41 NAMECALL                         R10 R8 K1 ["IsA"]
       43 CALL                             R10 2 1
       44 JUMPIFNOT                        R10 ; [+7]
       45 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       47 MOVE                             R11 R4
       48 MOVE                             R12 R8
       49 GETIMPORT                        R10 K10 [table.insert]
       51 CALL                             R10 2 0
       52 FORGLOOP                         R5 2 ; [-13]
       54 LENGTH                           R5 R4
       55 JUMPIFNOTEQKN                    R5 K11 [0] ; [+12]
       57 GETTABLEKS                       R6 R0 K4 ["selection"]
       59 GETTABLEKS                       R5 R6 K12 ["set"]
       61 NEWTABLE                         R6 0 1
       63 MOVE                             R7 R1
       64 SETLIST                          R6 R7 1 [1]
       66 CALL                             R5 1 0
       67 RETURN                           R0 0
       68 MOVE                             R5 R4
       69 LOADNIL                          R6
       70 LOADNIL                          R7
       71 FORGPREP                         R5
       72 GETTABLEKS                       R10 R1 K13 ["BaseMaterial"]
       74 SETTABLEKS                       R10 R9 K14 ["Material"]
       76 GETTABLEKS                       R10 R1 K15 ["Name"]
       78 SETTABLEKS                       R10 R9 K0 ["MaterialVariant"]
       80 FORGLOOP                         R5 2 ; [-9]
       82 GETTABLEKS                       R5 R0 K16 ["endRecording"]
       84 LOADK                            R6 K3 ["AssistantSetMaterials"]
       85 CALL                             R5 1 0
       86 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R5 K0 ["MaterialVariant"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["collectSet"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["GetDescendants"]
        6 CALL                             R2 1 1
        7 DUPCLOSURE                       R3 K2 [PROTO_1]
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

PROTO_3:
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

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-MaterialGenLink-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["generateMaterialVariantsAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["uploadMaterialsAsync"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["generationId"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["materialVariants"]
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

PROTO_9:
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
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["assetIds"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+4]
        8 GETTABLEKS                       R8 R1 K1 ["studsPerTile"]
       10 SETTABLEKS                       R8 R7 K2 ["StudsPerTile"]
       12 FORGLOOP                         R2 2 ; [-8]
       14 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["assetIds"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+10]
        8 GETTABLEKS                       R9 R1 K1 ["isOrganic"]
       10 JUMPIFNOT                        R9 ; [+3]
       11 GETIMPORT                        R8 K5 [Enum.MaterialPattern.Organic]
       13 JUMP                             ; [+2]
       14 GETIMPORT                        R8 K7 [Enum.MaterialPattern.Regular]
       16 SETTABLEKS                       R8 R7 K3 ["MaterialPattern"]
       18 FORGLOOP                         R2 2 ; [-14]
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["assetId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 LOADK                            R4 K1 ["Assistant-MaterialGenLink-%*"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["getLinkedInstances"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 LENGTH                           R5 R4
       14 JUMPIFNOTEQKN                    R5 K4 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["selection"]
       20 GETTABLEKS                       R5 R6 K6 ["set"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"displayName", "shouldShowChip"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["displayName"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["shouldShowChip"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 DUPTABLE                         R1 K5 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K4 ["rawTransformValues"]
       19 RETURN                           R1 1
       20 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+11]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["getContentHooks"]
       15 GETTABLEKS                       R6 R1 K3 ["contentId"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R5 K4 ["editContent"]
       20 MOVE                             R7 R4
       21 CALL                             R6 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K4 ["editContent"]
       26 DUPTABLE                         R6 K7 [{"messageId", "contentId", "transformFn"}]
       27 GETTABLEKS                       R7 R1 K5 ["messageId"]
       29 SETTABLEKS                       R7 R6 K5 ["messageId"]
       31 GETTABLEKS                       R7 R1 K3 ["contentId"]
       33 SETTABLEKS                       R7 R6 K3 ["contentId"]
       35 SETTABLEKS                       R4 R6 K6 ["transformFn"]
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R3 R1 ; [+15]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K1 ["InstanceChip"]
       12 LOADK                            R6 K2 ["Multiple"]
       13 DUPTABLE                         R7 K5 [{"name", "count"}]
       14 GETUPVAL                         R8 2
       15 SETTABLEKS                       R8 R7 K3 ["name"]
       17 SETTABLEKS                       R1 R7 K4 ["count"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+13]
       24 JUMPIFNOTEQKN                    R1 K7 [0] ; [+12]
       26 GETUPVAL                         R3 3
       27 LOADK                            R5 K1 ["InstanceChip"]
       28 LOADK                            R6 K8 ["Deleted"]
       29 DUPTABLE                         R7 K9 [{"name"}]
       30 GETUPVAL                         R8 2
       31 SETTABLEKS                       R8 R7 K3 ["name"]
       33 NAMECALL                         R3 R3 K6 ["getText"]
       35 CALL                             R3 4 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 4
       38 GETUPVAL                         R4 5
       39 DUPTABLE                         R5 K14 [{"messageId", "contentId", "newDisplayName", "showChip"}]
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R6 R7 K10 ["messageId"]
       43 SETTABLEKS                       R6 R5 K10 ["messageId"]
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R6 R7 K11 ["contentId"]
       48 SETTABLEKS                       R6 R5 K11 ["contentId"]
       50 SETTABLEKS                       R2 R5 K12 ["newDisplayName"]
       52 LOADN                            R7 0
       53 JUMPIFLT                         R7 R1 ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 SETTABLEKS                       R6 R5 K13 ["showChip"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 LOADK                            R4 K1 ["Assistant-MaterialGenLink-%*"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["observeLinkChanges"]
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R3
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R1 K3 ["assetIds"]
       10 GETTABLEKS                       R3 R1 K4 ["name"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R1 K5 ["onClickMaterial"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R1 K6 ["setStudsPerTile"]
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R1 K7 ["setIsOrganic"]
       29 NEWCLOSURE                       R4 P3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R1 K8 ["onChipClicked"]
       34 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R2 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 DUPTABLE                         R6 K2 [{"contentId", "name"}]
        5 SETTABLEKS                       R1 R6 K1 ["contentId"]
        7 SETTABLEKS                       R3 R6 K0 ["name"]
        9 CALL                             R4 2 0
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R5 R1 K0 ["name"]
        3 LOADK                            R6 K1 ["Assistant-MaterialGenLink-%*"]
        4 MOVE                             R8 R5
        5 NAMECALL                         R6 R6 K2 ["format"]
        7 CALL                             R6 2 1
        8 MOVE                             R4 R6
        9 NAMECALL                         R2 R2 K3 ["GetTagged"]
       11 CALL                             R2 2 1
       12 LOADB                            R3 0
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 MOVE                             R6 R2
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 NAMECALL                         R11 R10 K4 ["GetChildren"]
       21 CALL                             R11 1 1
       22 MOVE                             R12 R11
       23 LOADNIL                          R13
       24 LOADNIL                          R14
       25 FORGPREP                         R12
       26 LOADK                            R20 K5 ["MaterialVariant"]
       27 NAMECALL                         R18 R16 K6 ["IsA"]
       29 CALL                             R18 2 1
       30 FASTCALL2K                       ASSERT R18 K7 ; [+4]
       32 LOADK                            R19 K7 ["Tagged instance is not a MaterialVariant"]
       33 GETIMPORT                        R17 K9 [assert]
       35 CALL                             R17 2 0
       36 JUMPIF                           R3 ; [+11]
       37 LOADB                            R3 1
       38 GETTABLEKS                       R4 R16 K10 ["StudsPerTile"]
       40 GETTABLEKS                       R17 R16 K11 ["MaterialPattern"]
       42 GETIMPORT                        R18 K14 [Enum.MaterialPattern.Organic]
       44 JUMPIFEQ                         R17 R18 ; [+2]
       46 LOADB                            R5 0 +1
       47 LOADB                            R5 1
       48 GETTABLEKS                       R17 R16 K15 ["ColorMap"]
       50 GETUPVAL                         R18 1
       51 SETTABLE                         R16 R18 R17
       52 FORGLOOP                         R12 2 ; [-27]
       54 FORGLOOP                         R6 2 ; [-36]
       56 JUMPIFNOT                        R3 ; [+6]
       57 DUPTABLE                         R6 K18 [{"studsPerTile", "isOrganic"}]
       58 SETTABLEKS                       R4 R6 K16 ["studsPerTile"]
       60 SETTABLEKS                       R5 R6 K17 ["isOrganic"]
       62 RETURN                           R6 1
       63 LOADNIL                          R6
       64 RETURN                           R6 1

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Modes"]
        5 GETTABLEKS                       R3 R4 K2 ["Generated"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 DUPTABLE                         R4 K4 [{"name"}]
       17 GETTABLEKS                       R5 R1 K3 ["name"]
       19 SETTABLEKS                       R5 R4 K3 ["name"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R3 R2 K5 ["studsPerTile"]
       25 SETTABLEKS                       R3 R1 K5 ["studsPerTile"]
       27 GETTABLEKS                       R3 R2 K6 ["isOrganic"]
       29 SETTABLEKS                       R3 R1 K6 ["isOrganic"]
       31 GETTABLEKS                       R3 R1 K3 ["name"]
       33 GETUPVAL                         R4 3
       34 LOADNIL                          R5
       35 DUPTABLE                         R6 K8 [{"contentId", "name"}]
       36 SETTABLEKS                       R0 R6 K7 ["contentId"]
       38 SETTABLEKS                       R3 R6 K3 ["name"]
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["assetIds"]
        6 GETTABLEKS                       R5 R1 K3 ["name"]
        8 GETTABLEKS                       R6 R1 K4 ["studsPerTile"]
       10 GETTABLEKS                       R7 R1 K5 ["isOrganic"]
       12 DUPTABLE                         R8 K15 [{"type", "mode", "name", "displayName", "expanded", "assetIds", "studsPerTile", "isOrganic", "onClickMaterial", "setStudsPerTile", "setIsOrganic", "shouldShowChip", "onChipClicked"}]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R9 R10 K16 ["Type"]
       16 SETTABLEKS                       R9 R8 K6 ["type"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R10 R11 K17 ["Modes"]
       21 GETTABLEKS                       R9 R10 K18 ["Generated"]
       23 SETTABLEKS                       R9 R8 K7 ["mode"]
       25 SETTABLEKS                       R5 R8 K3 ["name"]
       27 SETTABLEKS                       R5 R8 K8 ["displayName"]
       29 LOADB                            R9 0
       30 SETTABLEKS                       R9 R8 K9 ["expanded"]
       32 SETTABLEKS                       R4 R8 K2 ["assetIds"]
       34 SETTABLEKS                       R6 R8 K4 ["studsPerTile"]
       36 SETTABLEKS                       R7 R8 K5 ["isOrganic"]
       38 GETUPVAL                         R10 1
       39 CALL                             R10 0 1
       40 JUMPIFNOT                        R10 ; [+6]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K19 ["createUnimplemented"]
       44 LOADK                            R10 K10 ["onClickMaterial"]
       45 CALL                             R9 1 1
       46 JUMP                             ; [+3]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R9 R8 K10 ["onClickMaterial"]
       52 GETUPVAL                         R10 1
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+6]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K19 ["createUnimplemented"]
       58 LOADK                            R10 K11 ["setStudsPerTile"]
       59 CALL                             R9 1 1
       60 JUMP                             ; [+4]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R8 K11 ["setStudsPerTile"]
       67 GETUPVAL                         R10 1
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R10 ; [+6]
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R9 R10 K19 ["createUnimplemented"]
       73 LOADK                            R10 K12 ["setIsOrganic"]
       74 CALL                             R9 1 1
       75 JUMP                             ; [+4]
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R9 R8 K12 ["setIsOrganic"]
       82 LOADB                            R9 1
       83 SETTABLEKS                       R9 R8 K13 ["shouldShowChip"]
       85 GETUPVAL                         R10 1
       86 CALL                             R10 0 1
       87 JUMPIFNOT                        R10 ; [+6]
       88 GETUPVAL                         R10 2
       89 GETTABLEKS                       R9 R10 K19 ["createUnimplemented"]
       91 LOADK                            R10 K14 ["onChipClicked"]
       92 CALL                             R9 1 1
       93 JUMP                             ; [+3]
       94 NEWCLOSURE                       R9 P3
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R9 R8 K14 ["onChipClicked"]
       99 GETUPVAL                         R9 1
      100 CALL                             R9 0 1
      101 JUMPIFNOT                        R9 ; [+4]
      102 GETUPVAL                         R9 7
      103 MOVE                             R10 R0
      104 MOVE                             R11 R8
      105 CALL                             R9 2 0
      106 NEWCLOSURE                       R9 P4
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          VAL R8
      109 GETUPVAL                         R10 1
      110 CALL                             R10 0 1
      111 JUMPIFNOT                        R10 ; [+11]
      112 GETUPVAL                         R11 9
      113 GETTABLEKS                       R10 R11 K20 ["getContentHooks"]
      115 GETTABLEKS                       R11 R1 K1 ["contentId"]
      117 CALL                             R10 1 1
      118 GETTABLEKS                       R11 R10 K21 ["editContent"]
      120 MOVE                             R12 R9
      121 CALL                             R11 1 0
      122 JUMP                             ; [+11]
      123 GETUPVAL                         R11 9
      124 GETTABLEKS                       R10 R11 K21 ["editContent"]
      126 DUPTABLE                         R11 K23 [{"messageId", "contentId", "transformFn"}]
      127 SETTABLEKS                       R2 R11 K0 ["messageId"]
      129 SETTABLEKS                       R3 R11 K1 ["contentId"]
      131 SETTABLEKS                       R9 R11 K22 ["transformFn"]
      133 CALL                             R10 1 0
      134 GETUPVAL                         R10 1
      135 CALL                             R10 0 1
      136 JUMPIFNOT                        R10 ; [+11]
      137 GETTABLEKS                       R10 R8 K3 ["name"]
      139 GETUPVAL                         R11 10
      140 MOVE                             R12 R0
      141 DUPTABLE                         R13 K24 [{"contentId", "name"}]
      142 SETTABLEKS                       R3 R13 K1 ["contentId"]
      144 SETTABLEKS                       R10 R13 K3 ["name"]
      146 CALL                             R11 2 0
      147 RETURN                           R0 0
      148 GETUPVAL                         R10 10
      149 MOVE                             R11 R0
      150 DUPTABLE                         R12 K25 [{"messageId", "contentId", "name"}]
      151 SETTABLEKS                       R2 R12 K0 ["messageId"]
      153 SETTABLEKS                       R3 R12 K1 ["contentId"]
      155 SETTABLEKS                       R5 R12 K3 ["name"]
      157 CALL                             R10 2 0
      158 RETURN                           R0 0

PROTO_32:
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
       49 LOADK                            R5 K13 ["Description"]
       50 GETUPVAL                         R6 2
       51 NAMECALL                         R3 R2 K14 ["SetAttribute"]
       53 CALL                             R3 3 0
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R3 R4 K15 ["addAssistantLink"]
       57 MOVE                             R4 R2
       58 GETUPVAL                         R6 1
       59 LOADK                            R7 K16 ["Assistant-MaterialGenLink-%*"]
       60 MOVE                             R9 R6
       61 NAMECALL                         R7 R7 K10 ["format"]
       63 CALL                             R7 2 1
       64 MOVE                             R5 R7
       65 CALL                             R3 2 0
       66 LOADNIL                          R3
       67 NEWTABLE                         R4 0 0
       69 LOADN                            R5 0
       70 LOADB                            R6 0
       71 MOVE                             R7 R0
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 GETUPVAL                         R12 4
       76 GETUPVAL                         R13 1
       77 CALL                             R12 1 1
       78 SETTABLEKS                       R12 R11 K7 ["Name"]
       80 GETUPVAL                         R12 5
       81 SETTABLEKS                       R12 R11 K17 ["BaseMaterial"]
       83 GETUPVAL                         R12 6
       84 SETTABLEKS                       R12 R11 K18 ["MaterialPattern"]
       86 SETTABLEKS                       R2 R11 K8 ["Parent"]
       88 GETTABLEKS                       R5 R11 K19 ["StudsPerTile"]
       90 GETTABLEKS                       R12 R11 K18 ["MaterialPattern"]
       92 GETIMPORT                        R13 K22 [Enum.MaterialPattern.Organic]
       94 JUMPIFEQ                         R12 R13 ; [+2]
       96 LOADB                            R6 0 +1
       97 LOADB                            R6 1
       98 GETTABLEKS                       R12 R11 K23 ["ColorMap"]
      100 GETUPVAL                         R13 7
      101 SETTABLE                         R11 R13 R12
      102 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      104 MOVE                             R14 R4
      105 MOVE                             R15 R12
      106 GETIMPORT                        R13 K26 [table.insert]
      108 CALL                             R13 2 0
      109 JUMPIF                           R3 ; [+1]
      110 MOVE                             R3 R11
      111 GETUPVAL                         R14 3
      112 GETTABLEKS                       R13 R14 K27 ["preloadMaterialVariant"]
      114 MOVE                             R14 R11
      115 CALL                             R13 1 0
      116 FORGLOOP                         R7 2 ; [-42]
      118 GETUPVAL                         R7 8
      119 GETUPVAL                         R8 9
      120 DUPTABLE                         R9 K34 [{"messageId", "contentId", "assetIds", "name", "studsPerTile", "isOrganic"}]
      121 GETUPVAL                         R10 10
      122 SETTABLEKS                       R10 R9 K28 ["messageId"]
      124 GETUPVAL                         R10 11
      125 SETTABLEKS                       R10 R9 K29 ["contentId"]
      127 SETTABLEKS                       R4 R9 K30 ["assetIds"]
      129 GETUPVAL                         R10 1
      130 SETTABLEKS                       R10 R9 K31 ["name"]
      132 SETTABLEKS                       R5 R9 K32 ["studsPerTile"]
      134 SETTABLEKS                       R6 R9 K33 ["isOrganic"]
      136 CALL                             R7 2 0
      137 JUMPIFNOT                        R3 ; [+12]
      138 DUPTABLE                         R7 K35 [{"BaseMaterial", "Name"}]
      139 GETTABLEKS                       R9 R3 K17 ["BaseMaterial"]
      141 GETTABLEKS                       R8 R9 K7 ["Name"]
      143 SETTABLEKS                       R8 R7 K17 ["BaseMaterial"]
      145 GETTABLEKS                       R8 R3 K7 ["Name"]
      147 SETTABLEKS                       R8 R7 K7 ["Name"]
      149 RETURN                           R7 1
      150 RETURN                           R0 0

PROTO_33:
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
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 NAMECALL                         R1 R1 K7 ["andThen"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["materialDescription"]
        6 GETTABLEKS                       R5 R1 K3 ["baseMaterial"]
        8 GETTABLEKS                       R6 R1 K4 ["materialId"]
       10 GETTABLEKS                       R7 R1 K5 ["materialPattern"]
       12 GETUPVAL                         R8 0
       13 LOADB                            R10 0
       14 NAMECALL                         R8 R8 K6 ["GenerateGUID"]
       16 CALL                             R8 2 1
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R9 R10 K7 ["startRecording"]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 0
       22 FASTCALL1                        TYPE R4 ; [+3]
       23 MOVE                             R13 R4
       24 GETIMPORT                        R12 K9 [type]
       26 CALL                             R12 1 1
       27 JUMPIFEQKS                       R12 K10 ["string"] ; [+2]
       29 LOADB                            R11 0 +1
       30 LOADB                            R11 1
       31 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       33 LOADK                            R12 K11 ["Bad materialDescription"]
       34 GETIMPORT                        R10 K13 [assert]
       36 CALL                             R10 2 0
       37 LOADB                            R11 1
       38 FASTCALL2K                       ASSERT R11 K14 ; [+4]
       40 LOADK                            R12 K14 ["Bad amount"]
       41 GETIMPORT                        R10 K13 [assert]
       43 CALL                             R10 2 0
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R9 R10 K15 ["try"]
       47 LOADN                            R11 4
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R11
       52 CALL                             R9 1 1
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 NAMECALL                         R9 R9 K16 ["andThen"]
       70 CALL                             R9 2 1
       71 NAMECALL                         R9 R9 K17 ["await"]
       73 CALL                             R9 1 2
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R11 R12 K18 ["endRecording"]
       77 MOVE                             R12 R8
       78 CALL                             R11 1 0
       79 RETURN                           R9 2

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["materialId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Bad materialId"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R0 K4 ["materialDescription"]
       11 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       13 MOVE                             R5 R3
       14 LOADK                            R6 K5 ["Bad materialDescription"]
       15 GETIMPORT                        R4 K3 [assert]
       17 CALL                             R4 2 0
       18 GETIMPORT                        R5 K8 [Enum.Material]
       20 GETTABLEKS                       R6 R0 K9 ["baseMaterial"]
       22 GETTABLE                         R4 R5 R6
       23 FASTCALL2K                       ASSERT R4 K10 ; [+5]
       25 MOVE                             R6 R4
       26 LOADK                            R7 K10 ["Bad baseMaterial"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETIMPORT                        R6 K12 [Enum.MaterialPattern]
       32 GETTABLEKS                       R7 R0 K13 ["materialPattern"]
       34 GETTABLE                         R5 R6 R7
       35 FASTCALL2K                       ASSERT R5 K14 ; [+5]
       37 MOVE                             R7 R5
       38 LOADK                            R8 K14 ["Bad materialPattern"]
       39 GETIMPORT                        R6 K3 [assert]
       41 CALL                             R6 2 0
       42 JUMPIFNOT                        R1 ; [+3]
       43 GETTABLEKS                       R6 R1 K15 ["messageId"]
       45 JUMPIF                           R6 ; [+1]
       46 LOADK                            R6 K16 [""]
       47 JUMPIFNOT                        R1 ; [+3]
       48 GETTABLEKS                       R7 R1 K17 ["contentId"]
       50 JUMPIF                           R7 ; [+1]
       51 LOADK                            R7 K16 [""]
       52 DUPTABLE                         R8 K22 [{"type", "mode", "name", "displayName"}]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K23 ["Type"]
       56 SETTABLEKS                       R9 R8 K18 ["type"]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K24 ["Modes"]
       61 GETTABLEKS                       R9 R10 K25 ["Generating"]
       63 SETTABLEKS                       R9 R8 K19 ["mode"]
       65 SETTABLEKS                       R2 R8 K20 ["name"]
       67 SETTABLEKS                       R2 R8 K21 ["displayName"]
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R8
       72 GETUPVAL                         R10 2
       73 CALL                             R10 0 1
       74 JUMPIFNOT                        R10 ; [+10]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R10 R11 K26 ["getContentHooks"]
       78 MOVE                             R11 R7
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R10 K27 ["editContent"]
       82 MOVE                             R12 R9
       83 CALL                             R11 1 0
       84 JUMP                             ; [+11]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R10 R11 K27 ["editContent"]
       88 DUPTABLE                         R11 K29 [{"messageId", "contentId", "transformFn"}]
       89 SETTABLEKS                       R6 R11 K15 ["messageId"]
       91 SETTABLEKS                       R7 R11 K17 ["contentId"]
       93 SETTABLEKS                       R9 R11 K28 ["transformFn"]
       95 CALL                             R10 1 0
       96 GETUPVAL                         R10 4
       97 LOADNIL                          R11
       98 DUPTABLE                         R12 K31 [{"messageId", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments"}]
       99 SETTABLEKS                       R6 R12 K15 ["messageId"]
      101 SETTABLEKS                       R7 R12 K17 ["contentId"]
      103 SETTABLEKS                       R3 R12 K4 ["materialDescription"]
      105 SETTABLEKS                       R4 R12 K9 ["baseMaterial"]
      107 SETTABLEKS                       R2 R12 K0 ["materialId"]
      109 SETTABLEKS                       R5 R12 K13 ["materialPattern"]
      111 LOADNIL                          R13
      112 SETTABLEKS                       R13 R12 K30 ["toolArguments"]
      114 CALL                             R10 2 2
      115 RETURN                           R10 2

PROTO_37:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 2
        9 JUMPIFNOT                        R3 ; [+15]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["toString"]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 CALL                             R6 0 1
       17 MOVE                             R8 R5
       18 NAMECALL                         R6 R6 K3 ["addText"]
       20 CALL                             R6 2 1
       21 NAMECALL                         R6 R6 K4 ["build"]
       23 CALL                             R6 1 -1
       24 RETURN                           R6 -1
       25 GETIMPORT                        R5 K6 [error]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_39:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["MaterialGen"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K8 [{"materialDescription", "baseMaterial", "materialPattern", "materialId"}]
        7 SETTABLEKS                       R0 R2 K4 ["materialDescription"]
        9 GETIMPORT                        R4 K12 [Enum.Material.Plastic]
       11 GETTABLEKS                       R3 R4 K13 ["Name"]
       13 SETTABLEKS                       R3 R2 K5 ["baseMaterial"]
       15 GETIMPORT                        R4 K16 [Enum.MaterialPattern.Regular]
       17 GETTABLEKS                       R3 R4 K13 ["Name"]
       19 SETTABLEKS                       R3 R2 K6 ["materialPattern"]
       21 LOADK                            R4 K17 ["%*_%*"]
       22 MOVE                             R6 R0
       23 GETUPVAL                         R7 1
       24 LOADB                            R9 0
       25 NAMECALL                         R7 R7 K18 ["GenerateGUID"]
       27 CALL                             R7 2 1
       28 LOADN                            R9 1
       29 LOADN                            R10 6
       30 NAMECALL                         R7 R7 K19 ["sub"]
       32 CALL                             R7 3 1
       33 NAMECALL                         R4 R4 K20 ["format"]
       35 CALL                             R4 3 1
       36 MOVE                             R3 R4
       37 SETTABLEKS                       R3 R2 K7 ["materialId"]
       39 SETTABLEKS                       R2 R1 K1 ["arguments"]
       41 RETURN                           R1 1

PROTO_40:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_41:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GenerateMaterial"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["externalHooks"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 LOADK                            R9 K3 ["MaterialGenTool_setStudsPerTile"]
       15 NEWCLOSURE                       R10 P2
       16 CAPTURE                          VAL R4
       17 NAMECALL                         R7 R1 K4 ["OnHostEvent"]
       19 CALL                             R7 3 1
       20 LOADK                            R10 K5 ["MaterialGenTool_setOrganicPattern"]
       21 NEWCLOSURE                       R11 P3
       22 CAPTURE                          VAL R4
       23 NAMECALL                         R8 R1 K4 ["OnHostEvent"]
       25 CALL                             R8 3 1
       26 LOADK                            R11 K6 ["MaterialGenTool_ApplyMaterialVariant"]
       27 NEWCLOSURE                       R12 P4
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R9 R1 K4 ["OnHostEvent"]
       33 CALL                             R9 3 1
       34 LOADK                            R12 K7 ["MaterialGenTool_SelectMaterialVariantFolder"]
       35 NEWCLOSURE                       R13 P5
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R2
       38 NAMECALL                         R10 R1 K4 ["OnHostEvent"]
       40 CALL                             R10 3 1
       41 LOADK                            R13 K8 ["MaterialGenTool_updateContentHeader"]
       42 NEWCLOSURE                       R14 P6
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R3
       46 NAMECALL                         R11 R1 K9 ["OnGuestEvent"]
       48 CALL                             R11 3 1
       49 LOADK                            R14 K10 ["MaterialGenTool_listenToLinkChanges"]
       50 NEWCLOSURE                       R15 P7
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R11
       56 NAMECALL                         R12 R1 K4 ["OnHostEvent"]
       58 CALL                             R12 3 1
       59 NEWCLOSURE                       R13 P8
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 NEWCLOSURE                       R14 P9
       66 CAPTURE                          VAL R12
       67 GETUPVAL                         R15 4
       68 CALL                             R15 0 1
       69 JUMPIFNOT                        R15 ; [+19]
       70 LOADK                            R17 K11 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       71 NEWCLOSURE                       R18 P10
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R4
       74 NAMECALL                         R15 R1 K12 ["OnHostInvokeAsync"]
       76 CALL                             R15 3 1
       77 GETUPVAL                         R17 7
       78 GETTABLEKS                       R16 R17 K13 ["registerHydrator"]
       80 GETUPVAL                         R18 8
       81 GETTABLEKS                       R17 R18 K14 ["Type"]
       83 NEWCLOSURE                       R18 P11
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R12
       88 CALL                             R16 2 0
       89 LOADK                            R17 K15 ["MaterialGenTool_updateMaterialGenContentWidget"]
       90 NEWCLOSURE                       R18 P12
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U9
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R13
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R12
      102 NAMECALL                         R15 R1 K9 ["OnGuestEvent"]
      104 CALL                             R15 3 1
      105 LOADK                            R18 K16 ["MaterialGenTool_generateMaterialVariantsAsync"]
      106 NEWCLOSURE                       R19 P13
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R15
      115 NAMECALL                         R16 R1 K12 ["OnHostInvokeAsync"]
      117 CALL                             R16 3 1
      118 NEWCLOSURE                       R17 P14
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R16
      124 NEWCLOSURE                       R18 P15
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R17
      127 CAPTURE                          UPVAL U13
      128 GETUPVAL                         R20 14
      129 GETTABLEKS                       R19 R20 K17 ["define"]
      131 CALL                             R19 0 1
      132 GETUPVAL                         R22 15
      133 GETTABLEKS                       R21 R22 K18 ["MaterialGen"]
      135 NAMECALL                         R19 R19 K19 ["setName"]
      137 CALL                             R19 2 1
      138 LOADK                            R21 K20 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      139 NAMECALL                         R19 R19 K21 ["setDescription"]
      141 CALL                             R19 2 1
      142 LOADK                            R21 K22 ["materialDescription"]
      143 DUPTABLE                         R22 K24 [{"type"}]
      144 LOADK                            R23 K25 ["string"]
      145 SETTABLEKS                       R23 R22 K23 ["type"]
      147 NAMECALL                         R19 R19 K26 ["addArgument"]
      149 CALL                             R19 3 1
      150 LOADK                            R21 K27 ["baseMaterial"]
      151 DUPTABLE                         R22 K29 [{"enum"}]
      152 GETUPVAL                         R24 2
      153 GETTABLEKS                       R23 R24 K30 ["useEnumExcept"]
      155 GETIMPORT                        R24 K33 [Enum.Material]
      157 NEWTABLE                         R25 8 0
      159 GETIMPORT                        R26 K35 [Enum.Material.Neon]
      161 LOADB                            R27 1
      162 SETTABLE                         R27 R25 R26
      163 GETIMPORT                        R26 K37 [Enum.Material.Glass]
      165 LOADB                            R27 1
      166 SETTABLE                         R27 R25 R26
      167 GETIMPORT                        R26 K39 [Enum.Material.ForceField]
      169 LOADB                            R27 1
      170 SETTABLE                         R27 R25 R26
      171 GETIMPORT                        R26 K41 [Enum.Material.Air]
      173 LOADB                            R27 1
      174 SETTABLE                         R27 R25 R26
      175 GETIMPORT                        R26 K43 [Enum.Material.Water]
      177 LOADB                            R27 1
      178 SETTABLE                         R27 R25 R26
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K28 ["enum"]
      182 NAMECALL                         R19 R19 K26 ["addArgument"]
      184 CALL                             R19 3 1
      185 LOADK                            R21 K44 ["materialPattern"]
      186 DUPTABLE                         R22 K29 [{"enum"}]
      187 GETUPVAL                         R24 2
      188 GETTABLEKS                       R23 R24 K45 ["useEnum"]
      190 GETIMPORT                        R24 K47 [Enum.MaterialPattern]
      192 CALL                             R23 1 1
      193 SETTABLEKS                       R23 R22 K28 ["enum"]
      195 NAMECALL                         R19 R19 K26 ["addArgument"]
      197 CALL                             R19 3 1
      198 LOADK                            R21 K48 ["materialId"]
      199 DUPTABLE                         R22 K24 [{"type"}]
      200 LOADK                            R23 K25 ["string"]
      201 SETTABLEKS                       R23 R22 K23 ["type"]
      203 NAMECALL                         R19 R19 K26 ["addArgument"]
      205 CALL                             R19 3 1
      206 MOVE                             R21 R18
      207 NAMECALL                         R19 R19 K49 ["setHandler"]
      209 CALL                             R19 2 1
      210 NAMECALL                         R19 R19 K50 ["build"]
      212 CALL                             R19 1 1
      213 DUPTABLE                         R20 K54 [{"command", "getDescription", "mapToToolCall"}]
      214 LOADK                            R21 K55 ["material"]
      215 SETTABLEKS                       R21 R20 K51 ["command"]
      217 DUPCLOSURE                       R21 K56 [PROTO_38]
      218 CAPTURE                          UPVAL U6
      219 SETTABLEKS                       R21 R20 K52 ["getDescription"]
      221 DUPCLOSURE                       R21 K57 [PROTO_39]
      222 CAPTURE                          UPVAL U15
      223 CAPTURE                          UPVAL U10
      224 SETTABLEKS                       R21 R20 K53 ["mapToToolCall"]
      226 DUPTABLE                         R21 K59 [{"transformInitialContent"}]
      227 DUPCLOSURE                       R22 K60 [PROTO_40]
      228 CAPTURE                          UPVAL U8
      229 SETTABLEKS                       R22 R21 K58 ["transformInitialContent"]
      231 DUPTABLE                         R22 K68 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      232 SETTABLEKS                       R19 R22 K61 ["definition"]
      234 NEWTABLE                         R23 0 1
      236 MOVE                             R24 R20
      237 SETLIST                          R23 R24 1 [1]
      239 SETTABLEKS                       R23 R22 K62 ["slashCommands"]
      241 GETUPVAL                         R24 16
      242 CALL                             R24 0 1
      243 JUMPIFNOT                        R24 ; [+6]
      244 NEWTABLE                         R23 0 1
      246 GETUPVAL                         R24 8
      247 SETLIST                          R23 R24 1 [1]
      249 JUMP                             ; [+1]
      250 LOADNIL                          R23
      251 SETTABLEKS                       R23 R22 K63 ["contentWidgets"]
      253 SETTABLEKS                       R21 R22 K64 ["streamTransform"]
      255 DUPCLOSURE                       R23 K69 [PROTO_41]
      256 SETTABLEKS                       R23 R22 K65 ["getPreExecuteWarning"]
      258 DUPCLOSURE                       R23 K70 [PROTO_42]
      259 CAPTURE                          UPVAL U6
      260 SETTABLEKS                       R23 R22 K66 ["displayNameFunction"]
      262 DUPTABLE                         R23 K72 [{"resetTimeoutOnProgress"}]
      263 LOADB                            R24 1
      264 SETTABLEKS                       R24 R23 K71 ["resetTimeoutOnProgress"]
      266 SETTABLEKS                       R23 R22 K67 ["toolCallOptions"]
      268 RETURN                           R22 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["MaterialService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Parent"]
       29 GETTABLEKS                       R5 R6 K13 ["Dash"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Guest"]
       36 GETTABLEKS                       R6 R7 K15 ["Environment"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R9 R0 K16 ["Components"]
       43 GETTABLEKS                       R8 R9 K17 ["ContentWidgets"]
       45 GETTABLEKS                       R7 R8 K18 ["MaterialGenContentWidget"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Parent"]
       52 GETTABLEKS                       R8 R9 K19 ["ModelContextProtocol"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Parent"]
       59 GETTABLEKS                       R9 R10 K20 ["Promise"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R12 R0 K21 ["Util"]
       66 GETTABLEKS                       R11 R12 K22 ["Serializer"]
       68 GETTABLEKS                       R10 R11 K23 ["SerializerRegistry"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R12 R0 K24 ["Tools"]
       75 GETTABLEKS                       R11 R12 K25 ["ToolTypes"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R13 R0 K21 ["Util"]
       82 GETTABLEKS                       R12 R13 K26 ["ToolUtils"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R15 R0 K27 ["Resources"]
       89 GETTABLEKS                       R14 R15 K28 ["Localization"]
       91 GETTABLEKS                       R13 R14 K29 ["Translator"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K11 [require]
       96 GETTABLEKS                       R14 R0 K30 ["Types"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K11 [require]
      101 GETTABLEKS                       R16 R0 K31 ["Flags"]
      103 GETTABLEKS                       R15 R16 K32 ["FFlagAssistantPersistConversations"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R17 R0 K31 ["Flags"]
      110 GETTABLEKS                       R16 R17 K33 ["FFlagAssistantRegisterWidgetsThroughTools"]
      112 CALL                             R15 1 1
      113 GETTABLEKS                       R17 R7 K21 ["Util"]
      115 GETTABLEKS                       R16 R17 K34 ["ToolBuilder"]
      117 GETTABLEKS                       R18 R7 K21 ["Util"]
      119 GETTABLEKS                       R17 R18 K35 ["ToolResult"]
      121 GETTABLEKS                       R18 R10 K36 ["ToolNames"]
      123 DUPCLOSURE                       R19 K37 [PROTO_0]
      124 DUPCLOSURE                       R20 K38 [PROTO_2]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 DUPCLOSURE                       R21 K39 [PROTO_3]
      128 DUPCLOSURE                       R22 K40 [PROTO_4]
      129 DUPCLOSURE                       R23 K41 [PROTO_43]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R15
      147 RETURN                           R23 1
