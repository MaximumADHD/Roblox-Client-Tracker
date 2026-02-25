PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["This function should not be called when long running tool calls are enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["generateToolId"]
       12 CALL                             R1 0 1
       13 DUPTABLE                         R2 K8 [{"type", "id", "name", "input"}]
       14 LOADK                            R3 K9 ["tool_use"]
       15 SETTABLEKS                       R3 R2 K4 ["type"]
       17 SETTABLEKS                       R1 R2 K5 ["id"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K10 ["MaterialGen"]
       22 SETTABLEKS                       R3 R2 K6 ["name"]
       24 GETIMPORT                        R3 K13 [table.clone]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K7 ["input"]
       30 DUPTABLE                         R3 K17 [{"type", "id", "name", "content", "startTime", "startTimeAfterConfirmation"}]
       31 LOADK                            R4 K18 ["tool_result"]
       32 SETTABLEKS                       R4 R3 K4 ["type"]
       34 SETTABLEKS                       R1 R3 K5 ["id"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K10 ["MaterialGen"]
       39 SETTABLEKS                       R4 R3 K6 ["name"]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K14 ["content"]
       44 SETTABLEKS                       R4 R3 K14 ["content"]
       46 LOADN                            R4 0
       47 SETTABLEKS                       R4 R3 K15 ["startTime"]
       49 LOADN                            R4 0
       50 SETTABLEKS                       R4 R3 K16 ["startTimeAfterConfirmation"]
       52 RETURN                           R2 2

PROTO_1:
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

PROTO_2:
        0 LOADK                            R5 K0 ["MaterialVariant"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["collectSet"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["GetDescendants"]
        6 CALL                             R2 1 1
        7 DUPCLOSURE                       R3 K2 [PROTO_2]
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

PROTO_4:
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

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-MaterialGenLink-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["generateMaterialVariantsAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["uploadMaterialsAsync"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["generationId"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_9:
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
       25 JUMPIF                           R1 ; [+11]
       26 GETUPVAL                         R3 2
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETIMPORT                        R3 K8 [error]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R2 1
       34 NEWTABLE                         R3 0 0
       36 RETURN                           R3 1
       37 RETURN                           R2 1

PROTO_10:
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
       21 CAPTURE                          UPVAL U2
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["assetId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["assign"]
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K3 [{"displayName", "shouldShowChip"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K1 ["displayName"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K2 ["shouldShowChip"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R1 R0 K1 ["displayName"]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K2 ["shouldShowChip"]
       22 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+11]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["getContentHooks"]
       15 GETTABLEKS                       R6 R1 K3 ["contentId"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R5 K4 ["editContent"]
       20 MOVE                             R7 R4
       21 CALL                             R6 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R5 R6 K4 ["editContent"]
       26 DUPTABLE                         R6 K7 [{"messageId", "contentId", "transformFn"}]
       27 GETTABLEKS                       R7 R1 K5 ["messageId"]
       29 SETTABLEKS                       R7 R6 K5 ["messageId"]
       31 GETTABLEKS                       R7 R1 K3 ["contentId"]
       33 SETTABLEKS                       R7 R6 K3 ["contentId"]
       35 SETTABLEKS                       R4 R6 K6 ["transformFn"]
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R3 R2 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 DUPTABLE                         R6 K2 [{"contentId", "name"}]
        5 SETTABLEKS                       R1 R6 K1 ["contentId"]
        7 SETTABLEKS                       R3 R6 K0 ["name"]
        9 CALL                             R4 2 0
       10 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_32:
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
      122 JUMP                             ; [+32]
      123 GETUPVAL                         R10 10
      124 CALL                             R10 0 1
      125 JUMPIFNOT                        R10 ; [+12]
      126 GETUPVAL                         R11 9
      127 GETTABLEKS                       R10 R11 K21 ["editContent"]
      129 DUPTABLE                         R11 K23 [{"messageId", "contentId", "transformFn"}]
      130 SETTABLEKS                       R2 R11 K0 ["messageId"]
      132 SETTABLEKS                       R3 R11 K1 ["contentId"]
      134 SETTABLEKS                       R9 R11 K22 ["transformFn"]
      136 CALL                             R10 1 0
      137 JUMP                             ; [+17]
      138 GETUPVAL                         R10 11
      139 GETTABLEKS                       R11 R1 K24 ["toolArguments"]
      141 CALL                             R10 1 2
      142 GETUPVAL                         R13 9
      143 GETTABLEKS                       R12 R13 K25 ["addToolContent"]
      145 MOVE                             R13 R2
      146 DUPTABLE                         R14 K29 [{"toolUse", "toolResult", "content"}]
      147 SETTABLEKS                       R10 R14 K26 ["toolUse"]
      149 SETTABLEKS                       R11 R14 K27 ["toolResult"]
      151 SETTABLEKS                       R8 R14 K28 ["content"]
      153 CALL                             R12 2 1
      154 MOVE                             R3 R12
      155 GETUPVAL                         R10 1
      156 CALL                             R10 0 1
      157 JUMPIFNOT                        R10 ; [+12]
      158 MOVE                             R10 R3
      159 GETTABLEKS                       R11 R8 K3 ["name"]
      161 GETUPVAL                         R12 12
      162 MOVE                             R13 R0
      163 DUPTABLE                         R14 K30 [{"contentId", "name"}]
      164 SETTABLEKS                       R10 R14 K1 ["contentId"]
      166 SETTABLEKS                       R11 R14 K3 ["name"]
      168 CALL                             R12 2 0
      169 RETURN                           R0 0
      170 GETUPVAL                         R10 12
      171 MOVE                             R11 R0
      172 DUPTABLE                         R12 K31 [{"messageId", "contentId", "name"}]
      173 SETTABLEKS                       R2 R12 K0 ["messageId"]
      175 SETTABLEKS                       R3 R12 K1 ["contentId"]
      177 SETTABLEKS                       R5 R12 K3 ["name"]
      179 CALL                             R10 2 0
      180 RETURN                           R0 0

PROTO_33:
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
      109 GETUPVAL                         R13 8
      110 CALL                             R13 0 1
      111 JUMPIFNOT                        R13 ; [+2]
      112 JUMPIF                           R3 ; [+1]
      113 MOVE                             R3 R11
      114 GETUPVAL                         R13 9
      115 CALL                             R13 0 1
      116 JUMPIFNOT                        R13 ; [+5]
      117 GETUPVAL                         R14 3
      118 GETTABLEKS                       R13 R14 K27 ["preloadMaterialVariant"]
      120 MOVE                             R14 R11
      121 CALL                             R13 1 0
      122 FORGLOOP                         R7 2 ; [-48]
      124 GETUPVAL                         R7 10
      125 GETUPVAL                         R8 11
      126 DUPTABLE                         R9 K35 [{"messageId", "contentId", "assetIds", "name", "studsPerTile", "isOrganic", "toolArguments"}]
      127 GETUPVAL                         R10 12
      128 SETTABLEKS                       R10 R9 K28 ["messageId"]
      130 GETUPVAL                         R10 13
      131 SETTABLEKS                       R10 R9 K29 ["contentId"]
      133 SETTABLEKS                       R4 R9 K30 ["assetIds"]
      135 GETUPVAL                         R10 1
      136 SETTABLEKS                       R10 R9 K31 ["name"]
      138 SETTABLEKS                       R5 R9 K32 ["studsPerTile"]
      140 SETTABLEKS                       R6 R9 K33 ["isOrganic"]
      142 GETUPVAL                         R11 8
      143 CALL                             R11 0 1
      144 JUMPIFNOT                        R11 ; [+2]
      145 LOADNIL                          R10
      146 JUMP                             ; [+3]
      147 GETUPVAL                         R11 14
      148 GETTABLEKS                       R10 R11 K34 ["toolArguments"]
      150 SETTABLEKS                       R10 R9 K34 ["toolArguments"]
      152 CALL                             R7 2 0
      153 GETUPVAL                         R7 8
      154 CALL                             R7 0 1
      155 JUMPIFNOT                        R7 ; [+15]
      156 JUMPIFNOT                        R3 ; [+12]
      157 DUPTABLE                         R7 K36 [{"BaseMaterial", "Name"}]
      158 GETTABLEKS                       R9 R3 K17 ["BaseMaterial"]
      160 GETTABLEKS                       R8 R9 K7 ["Name"]
      162 SETTABLEKS                       R8 R7 K17 ["BaseMaterial"]
      164 GETTABLEKS                       R8 R3 K7 ["Name"]
      166 SETTABLEKS                       R8 R7 K7 ["Name"]
      168 RETURN                           R7 1
      169 LOADNIL                          R7
      170 RETURN                           R7 1
      171 GETTABLEN                        R7 R0 1
      172 RETURN                           R7 1

PROTO_34:
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
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 CAPTURE                          UPVAL U15
       37 CAPTURE                          UPVAL U16
       38 CAPTURE                          UPVAL U17
       39 NAMECALL                         R1 R1 K7 ["andThen"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_35:
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
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U10
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R1
       72 NAMECALL                         R9 R9 K16 ["andThen"]
       74 CALL                             R9 2 1
       75 NAMECALL                         R9 R9 K17 ["await"]
       77 CALL                             R9 1 2
       78 GETUPVAL                         R12 1
       79 GETTABLEKS                       R11 R12 K18 ["endRecording"]
       81 MOVE                             R12 R8
       82 CALL                             R11 1 0
       83 RETURN                           R9 2

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["MaterialGen"]
        2 LOADK                            R4 K1 ["GeneratingDescription"]
        3 DUPTABLE                         R5 K5 [{"baseMaterial", "materialDescription", "materialPattern"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K6 ["Name"]
        7 SETTABLEKS                       R6 R5 K2 ["baseMaterial"]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K3 ["materialDescription"]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K6 ["Name"]
       15 SETTABLEKS                       R6 R5 K4 ["materialPattern"]
       17 NAMECALL                         R1 R1 K7 ["getText"]
       19 CALL                             R1 4 1
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R2 R3 K8 ["addTextContent"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 5
       27 LOADNIL                          R3
       28 DUPTABLE                         R4 K13 [{"messageId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments", "contentId"}]
       29 SETTABLEKS                       R0 R4 K9 ["messageId"]
       31 GETUPVAL                         R5 2
       32 SETTABLEKS                       R5 R4 K3 ["materialDescription"]
       34 GETUPVAL                         R5 1
       35 SETTABLEKS                       R5 R4 K2 ["baseMaterial"]
       37 GETUPVAL                         R5 6
       38 SETTABLEKS                       R5 R4 K10 ["materialId"]
       40 GETUPVAL                         R5 3
       41 SETTABLEKS                       R5 R4 K4 ["materialPattern"]
       43 GETUPVAL                         R5 7
       44 SETTABLEKS                       R5 R4 K11 ["toolArguments"]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K12 ["contentId"]
       49 CALL                             R2 2 2
       50 JUMPIF                           R2 ; [+41]
       51 GETUPVAL                         R4 0
       52 LOADK                            R6 K0 ["MaterialGen"]
       53 LOADK                            R7 K14 ["FailedToCreateMaterialImprovedError"]
       54 NAMECALL                         R4 R4 K7 ["getText"]
       56 CALL                             R4 3 1
       57 GETUPVAL                         R5 8
       58 CALL                             R5 0 1
       59 JUMPIFNOT                        R5 ; [+32]
       60 GETIMPORT                        R5 K17 [string.find]
       62 FASTCALL1                        TOSTRING R3 ; [+3]
       63 MOVE                             R7 R3
       64 GETIMPORT                        R6 K19 [tostring]
       66 CALL                             R6 1 1
       67 LOADK                            R7 K20 ["text is fully filtered"]
       68 CALL                             R5 2 1
       69 JUMPIFNOT                        R5 ; [+7]
       70 GETUPVAL                         R5 0
       71 LOADK                            R7 K0 ["MaterialGen"]
       72 LOADK                            R8 K21 ["FailedToCreateMaterialTextFilteredError"]
       73 NAMECALL                         R5 R5 K7 ["getText"]
       75 CALL                             R5 3 1
       76 MOVE                             R4 R5
       77 GETIMPORT                        R5 K23 [string.format]
       79 LOADK                            R6 K24 ["\n%s\n"]
       80 MOVE                             R7 R4
       81 CALL                             R5 2 1
       82 GETUPVAL                         R7 4
       83 GETTABLEKS                       R6 R7 K8 ["addTextContent"]
       85 MOVE                             R7 R0
       86 MOVE                             R8 R5
       87 CALL                             R6 2 0
       88 GETIMPORT                        R6 K26 [error]
       90 MOVE                             R7 R4
       91 CALL                             R6 1 0
       92 RETURN                           R0 0

PROTO_38:
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
       42 GETUPVAL                         R6 0
       43 CALL                             R6 0 1
       44 JUMPIFNOT                        R6 ; [+74]
       45 JUMPIFNOT                        R1 ; [+3]
       46 GETTABLEKS                       R6 R1 K15 ["messageId"]
       48 JUMPIF                           R6 ; [+1]
       49 LOADK                            R6 K16 [""]
       50 JUMPIFNOT                        R1 ; [+3]
       51 GETTABLEKS                       R7 R1 K17 ["contentId"]
       53 JUMPIF                           R7 ; [+1]
       54 LOADK                            R7 K16 [""]
       55 DUPTABLE                         R8 K22 [{"type", "mode", "name", "displayName"}]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K23 ["Type"]
       59 SETTABLEKS                       R9 R8 K18 ["type"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K24 ["Modes"]
       64 GETTABLEKS                       R9 R10 K25 ["Generating"]
       66 SETTABLEKS                       R9 R8 K19 ["mode"]
       68 SETTABLEKS                       R2 R8 K20 ["name"]
       70 SETTABLEKS                       R2 R8 K21 ["displayName"]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R8
       75 GETUPVAL                         R10 3
       76 CALL                             R10 0 1
       77 JUMPIFNOT                        R10 ; [+10]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R10 R11 K26 ["getContentHooks"]
       81 MOVE                             R11 R7
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R10 K27 ["editContent"]
       85 MOVE                             R12 R9
       86 CALL                             R11 1 0
       87 JUMP                             ; [+11]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R10 R11 K27 ["editContent"]
       91 DUPTABLE                         R11 K29 [{"messageId", "contentId", "transformFn"}]
       92 SETTABLEKS                       R6 R11 K15 ["messageId"]
       94 SETTABLEKS                       R7 R11 K17 ["contentId"]
       96 SETTABLEKS                       R9 R11 K28 ["transformFn"]
       98 CALL                             R10 1 0
       99 GETUPVAL                         R10 5
      100 LOADNIL                          R11
      101 DUPTABLE                         R12 K31 [{"messageId", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments"}]
      102 SETTABLEKS                       R6 R12 K15 ["messageId"]
      104 SETTABLEKS                       R7 R12 K17 ["contentId"]
      106 SETTABLEKS                       R3 R12 K4 ["materialDescription"]
      108 SETTABLEKS                       R4 R12 K9 ["baseMaterial"]
      110 SETTABLEKS                       R2 R12 K0 ["materialId"]
      112 SETTABLEKS                       R5 R12 K13 ["materialPattern"]
      114 LOADNIL                          R13
      115 SETTABLEKS                       R13 R12 K30 ["toolArguments"]
      117 CALL                             R10 2 2
      118 RETURN                           R10 2
      119 NEWCLOSURE                       R6 P1
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U7
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R7 R8 K32 ["getOrAddMessage"]
      132 LOADK                            R8 K33 ["assistant"]
      133 MOVE                             R9 R6
      134 CALL                             R7 2 0
      135 LOADNIL                          R7
      136 RETURN                           R7 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+30]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["runWithProgressLoop"]
        6 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R3 4 2
       12 JUMPIFNOT                        R3 ; [+15]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["toString"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 3
       19 CALL                             R6 0 1
       20 MOVE                             R8 R5
       21 NAMECALL                         R6 R6 K3 ["addText"]
       23 CALL                             R6 2 1
       24 NAMECALL                         R6 R6 K4 ["build"]
       26 CALL                             R6 1 -1
       27 RETURN                           R6 -1
       28 GETIMPORT                        R5 K6 [error]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 RETURN                           R0 0
       33 GETIMPORT                        R3 K9 [task.spawn]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 3
       41 CALL                             R3 0 1
       42 LOADK                            R5 K10 ["Success"]
       43 NAMECALL                         R3 R3 K3 ["addText"]
       45 CALL                             R3 2 1
       46 NAMECALL                         R3 R3 K4 ["build"]
       48 CALL                             R3 1 -1
       49 RETURN                           R3 -1
       50 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["FFlagMCPAssistantSlashCommandMenu must be enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R2 K3 ["SlashCommandDescriptions"]
       10 LOADK                            R3 K4 ["MaterialGen"]
       11 NAMECALL                         R0 R0 K5 ["getText"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_42:
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

PROTO_43:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_44:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GenerateMaterial"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_46:
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
       14 CAPTURE                          UPVAL U1
       15 LOADK                            R9 K3 ["MaterialGenTool_setStudsPerTile"]
       16 NEWCLOSURE                       R10 P2
       17 CAPTURE                          VAL R4
       18 NAMECALL                         R7 R1 K4 ["OnHostEvent"]
       20 CALL                             R7 3 1
       21 LOADK                            R10 K5 ["MaterialGenTool_setOrganicPattern"]
       22 NEWCLOSURE                       R11 P3
       23 CAPTURE                          VAL R4
       24 NAMECALL                         R8 R1 K4 ["OnHostEvent"]
       26 CALL                             R8 3 1
       27 LOADK                            R11 K6 ["MaterialGenTool_ApplyMaterialVariant"]
       28 NEWCLOSURE                       R12 P4
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R9 R1 K4 ["OnHostEvent"]
       34 CALL                             R9 3 1
       35 LOADK                            R12 K7 ["MaterialGenTool_SelectMaterialVariantFolder"]
       36 NEWCLOSURE                       R13 P5
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 NAMECALL                         R10 R1 K4 ["OnHostEvent"]
       41 CALL                             R10 3 1
       42 LOADK                            R13 K8 ["MaterialGenTool_updateContentHeader"]
       43 NEWCLOSURE                       R14 P6
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R3
       48 NAMECALL                         R11 R1 K9 ["OnGuestEvent"]
       50 CALL                             R11 3 1
       51 LOADK                            R14 K10 ["MaterialGenTool_listenToLinkChanges"]
       52 NEWCLOSURE                       R15 P7
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R11
       58 NAMECALL                         R12 R1 K4 ["OnHostEvent"]
       60 CALL                             R12 3 1
       61 NEWCLOSURE                       R13 P8
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R10
       67 NEWCLOSURE                       R14 P9
       68 CAPTURE                          VAL R12
       69 GETUPVAL                         R15 6
       70 CALL                             R15 0 1
       71 JUMPIFNOT                        R15 ; [+19]
       72 LOADK                            R17 K11 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       73 NEWCLOSURE                       R18 P10
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R4
       76 NAMECALL                         R15 R1 K12 ["OnHostInvokeAsync"]
       78 CALL                             R15 3 1
       79 GETUPVAL                         R17 9
       80 GETTABLEKS                       R16 R17 K13 ["registerHydrator"]
       82 GETUPVAL                         R18 10
       83 GETTABLEKS                       R17 R18 K14 ["Type"]
       85 NEWCLOSURE                       R18 P11
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R12
       90 CALL                             R16 2 0
       91 LOADK                            R17 K15 ["MaterialGenTool_updateMaterialGenContentWidget"]
       92 NEWCLOSURE                       R18 P12
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R13
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          VAL R3
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R12
      106 NAMECALL                         R15 R1 K9 ["OnGuestEvent"]
      108 CALL                             R15 3 1
      109 LOADK                            R18 K16 ["MaterialGenTool_generateMaterialVariantsAsync"]
      110 NEWCLOSURE                       R19 P13
      111 CAPTURE                          UPVAL U13
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          UPVAL U15
      118 CAPTURE                          VAL R4
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          UPVAL U16
      121 CAPTURE                          VAL R15
      122 NAMECALL                         R16 R1 K12 ["OnHostInvokeAsync"]
      124 CALL                             R16 3 1
      125 NEWCLOSURE                       R17 P14
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          UPVAL U10
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R16
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          UPVAL U17
      134 NEWCLOSURE                       R18 P15
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          VAL R17
      138 CAPTURE                          UPVAL U18
      139 GETUPVAL                         R20 19
      140 GETTABLEKS                       R19 R20 K17 ["define"]
      142 CALL                             R19 0 1
      143 GETUPVAL                         R22 20
      144 GETTABLEKS                       R21 R22 K18 ["MaterialGen"]
      146 NAMECALL                         R19 R19 K19 ["setName"]
      148 CALL                             R19 2 1
      149 LOADK                            R21 K20 ["materialDescription"]
      150 DUPTABLE                         R22 K22 [{"type"}]
      151 LOADK                            R23 K23 ["string"]
      152 SETTABLEKS                       R23 R22 K21 ["type"]
      154 NAMECALL                         R19 R19 K24 ["addArgument"]
      156 CALL                             R19 3 1
      157 LOADK                            R21 K25 ["baseMaterial"]
      158 DUPTABLE                         R22 K27 [{"enum"}]
      159 GETUPVAL                         R24 3
      160 GETTABLEKS                       R23 R24 K28 ["useEnumExcept"]
      162 GETIMPORT                        R24 K31 [Enum.Material]
      164 NEWTABLE                         R25 8 0
      166 GETIMPORT                        R26 K33 [Enum.Material.Neon]
      168 LOADB                            R27 1
      169 SETTABLE                         R27 R25 R26
      170 GETIMPORT                        R26 K35 [Enum.Material.Glass]
      172 LOADB                            R27 1
      173 SETTABLE                         R27 R25 R26
      174 GETIMPORT                        R26 K37 [Enum.Material.ForceField]
      176 LOADB                            R27 1
      177 SETTABLE                         R27 R25 R26
      178 GETIMPORT                        R26 K39 [Enum.Material.Air]
      180 LOADB                            R27 1
      181 SETTABLE                         R27 R25 R26
      182 GETIMPORT                        R26 K41 [Enum.Material.Water]
      184 LOADB                            R27 1
      185 SETTABLE                         R27 R25 R26
      186 CALL                             R23 2 1
      187 SETTABLEKS                       R23 R22 K26 ["enum"]
      189 NAMECALL                         R19 R19 K24 ["addArgument"]
      191 CALL                             R19 3 1
      192 LOADK                            R21 K42 ["materialPattern"]
      193 DUPTABLE                         R22 K27 [{"enum"}]
      194 GETUPVAL                         R24 3
      195 GETTABLEKS                       R23 R24 K43 ["useEnum"]
      197 GETIMPORT                        R24 K45 [Enum.MaterialPattern]
      199 CALL                             R23 1 1
      200 SETTABLEKS                       R23 R22 K26 ["enum"]
      202 NAMECALL                         R19 R19 K24 ["addArgument"]
      204 CALL                             R19 3 1
      205 LOADK                            R21 K46 ["materialId"]
      206 DUPTABLE                         R22 K22 [{"type"}]
      207 LOADK                            R23 K23 ["string"]
      208 SETTABLEKS                       R23 R22 K21 ["type"]
      210 NAMECALL                         R19 R19 K24 ["addArgument"]
      212 CALL                             R19 3 1
      213 MOVE                             R21 R18
      214 NAMECALL                         R19 R19 K47 ["setHandler"]
      216 CALL                             R19 2 1
      217 GETUPVAL                         R20 4
      218 CALL                             R20 0 1
      219 JUMPIFNOT                        R20 ; [+5]
      220 LOADK                            R22 K48 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      221 NAMECALL                         R20 R19 K49 ["setDescription"]
      223 CALL                             R20 2 1
      224 MOVE                             R19 R20
      225 NAMECALL                         R20 R19 K50 ["build"]
      227 CALL                             R20 1 1
      228 DUPTABLE                         R21 K54 [{"command", "getDescription", "mapToToolCall"}]
      229 LOADK                            R22 K55 ["material"]
      230 SETTABLEKS                       R22 R21 K51 ["command"]
      232 DUPCLOSURE                       R22 K56 [PROTO_41]
      233 CAPTURE                          UPVAL U21
      234 CAPTURE                          UPVAL U8
      235 SETTABLEKS                       R22 R21 K52 ["getDescription"]
      237 DUPCLOSURE                       R22 K57 [PROTO_42]
      238 CAPTURE                          UPVAL U20
      239 CAPTURE                          UPVAL U13
      240 SETTABLEKS                       R22 R21 K53 ["mapToToolCall"]
      242 DUPTABLE                         R22 K59 [{"transformInitialContent"}]
      243 DUPCLOSURE                       R23 K60 [PROTO_43]
      244 CAPTURE                          UPVAL U10
      245 SETTABLEKS                       R23 R22 K58 ["transformInitialContent"]
      247 DUPTABLE                         R23 K68 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      248 SETTABLEKS                       R20 R23 K61 ["definition"]
      250 NEWTABLE                         R24 0 1
      252 MOVE                             R25 R21
      253 SETLIST                          R24 R25 1 [1]
      255 SETTABLEKS                       R24 R23 K62 ["slashCommands"]
      257 GETUPVAL                         R25 22
      258 CALL                             R25 0 1
      259 JUMPIFNOT                        R25 ; [+6]
      260 NEWTABLE                         R24 0 1
      262 GETUPVAL                         R25 10
      263 SETLIST                          R24 R25 1 [1]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R24
      267 SETTABLEKS                       R24 R23 K63 ["contentWidgets"]
      269 GETUPVAL                         R25 4
      270 CALL                             R25 0 1
      271 JUMPIFNOT                        R25 ; [+2]
      272 MOVE                             R24 R22
      273 JUMP                             ; [+3]
      274 GETUPVAL                         R25 23
      275 GETTABLEKS                       R24 R25 K69 ["None"]
      277 SETTABLEKS                       R24 R23 K64 ["streamTransform"]
      279 DUPCLOSURE                       R24 K70 [PROTO_44]
      280 SETTABLEKS                       R24 R23 K65 ["getPreExecuteWarning"]
      282 DUPCLOSURE                       R24 K71 [PROTO_45]
      283 CAPTURE                          UPVAL U8
      284 SETTABLEKS                       R24 R23 K66 ["displayNameFunction"]
      286 GETUPVAL                         R25 4
      287 CALL                             R25 0 1
      288 JUMPIFNOT                        R25 ; [+5]
      289 DUPTABLE                         R24 K73 [{"resetTimeoutOnProgress"}]
      290 LOADB                            R25 1
      291 SETTABLEKS                       R25 R24 K72 ["resetTimeoutOnProgress"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R24
      295 SETTABLEKS                       R24 R23 K67 ["toolCallOptions"]
      297 RETURN                           R23 1

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
      101 GETTABLEKS                       R16 R0 K16 ["Components"]
      103 GETTABLEKS                       R15 R16 K31 ["UIToolRegistry"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R17 R0 K32 ["Flags"]
      110 GETTABLEKS                       R16 R17 K33 ["FFlagAssistantPersistConversations"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K11 [require]
      115 GETTABLEKS                       R18 R0 K32 ["Flags"]
      117 GETTABLEKS                       R17 R18 K34 ["FFlagAssistantRegisterWidgetsThroughTools"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K11 [require]
      122 GETTABLEKS                       R19 R0 K32 ["Flags"]
      124 GETTABLEKS                       R18 R19 K35 ["FFlagMCPAssistantLongRunningToolCalls"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K11 [require]
      129 GETTABLEKS                       R20 R0 K32 ["Flags"]
      131 GETTABLEKS                       R19 R20 K36 ["FFlagMCPAssistantPreloadMaterialVariants"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K11 [require]
      136 GETTABLEKS                       R21 R0 K32 ["Flags"]
      138 GETTABLEKS                       R20 R21 K37 ["FFlagMCPAssistantSlashCommandMenu"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K11 [require]
      143 GETTABLEKS                       R22 R0 K32 ["Flags"]
      145 GETTABLEKS                       R21 R22 K38 ["FFlagMaterialGenErrorTextFiltered"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K11 [require]
      150 GETTABLEKS                       R23 R0 K32 ["Flags"]
      152 GETTABLEKS                       R22 R23 K39 ["FFlagRejectMaterialGeneratorError"]
      154 CALL                             R21 1 1
      155 GETTABLEKS                       R23 R7 K21 ["Util"]
      157 GETTABLEKS                       R22 R23 K40 ["ToolBuilder"]
      159 GETTABLEKS                       R24 R7 K21 ["Util"]
      161 GETTABLEKS                       R23 R24 K41 ["ToolResult"]
      163 GETTABLEKS                       R24 R10 K42 ["ToolNames"]
      165 MOVE                             R25 R23
      166 CALL                             R25 0 1
      167 LOADK                            R27 K43 ["Success"]
      168 NAMECALL                         R25 R25 K44 ["addText"]
      170 CALL                             R25 2 1
      171 NAMECALL                         R25 R25 K45 ["build"]
      173 CALL                             R25 1 1
      174 DUPCLOSURE                       R26 K46 [PROTO_0]
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R25
      179 DUPCLOSURE                       R27 K47 [PROTO_1]
      180 DUPCLOSURE                       R28 K48 [PROTO_3]
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R3
      183 DUPCLOSURE                       R29 K49 [PROTO_4]
      184 DUPCLOSURE                       R30 K50 [PROTO_5]
      185 DUPCLOSURE                       R31 K51 [PROTO_46]
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R27
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R28
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R14
      210 RETURN                           R31 1
