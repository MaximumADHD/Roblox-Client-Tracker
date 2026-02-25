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
        7 DUPTABLE                         R3 K3 [{"name", "shouldShowChip"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K1 ["name"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K2 ["shouldShowChip"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R1 R0 K1 ["name"]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K2 ["shouldShowChip"]
       22 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["newName"]
        6 GETTABLEKS                       R5 R1 K3 ["showChip"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K4 ["editContent"]
       11 DUPTABLE                         R7 K6 [{"messageId", "contentId", "transformFn"}]
       12 SETTABLEKS                       R2 R7 K0 ["messageId"]
       14 SETTABLEKS                       R3 R7 K1 ["contentId"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 SETTABLEKS                       R8 R7 K5 ["transformFn"]
       23 CALL                             R6 1 0
       24 RETURN                           R0 0

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
       39 DUPTABLE                         R5 K14 [{"messageId", "contentId", "newName", "showChip"}]
       40 GETUPVAL                         R6 6
       41 SETTABLEKS                       R6 R5 K10 ["messageId"]
       43 GETUPVAL                         R6 7
       44 SETTABLEKS                       R6 R5 K11 ["contentId"]
       46 SETTABLEKS                       R2 R5 K12 ["newName"]
       48 LOADN                            R7 0
       49 JUMPIFLT                         R7 R1 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K13 ["showChip"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["name"]
        6 LOADK                            R6 K3 ["Assistant-MaterialGenLink-%*"]
        7 MOVE                             R8 R4
        8 NAMECALL                         R6 R6 K4 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K5 ["observeLinkChanges"]
       15 GETUPVAL                         R7 1
       16 MOVE                             R8 R5
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CALL                             R6 3 0
       27 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["assetIds"]
        6 GETTABLEKS                       R5 R1 K3 ["name"]
        8 GETTABLEKS                       R6 R1 K4 ["studsPerTile"]
       10 GETTABLEKS                       R7 R1 K5 ["isOrganic"]
       12 DUPTABLE                         R8 K14 [{"type", "mode", "name", "expanded", "assetIds", "studsPerTile", "isOrganic", "onClickMaterial", "setStudsPerTile", "setIsOrganic", "shouldShowChip", "onChipClicked"}]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R9 R10 K15 ["Type"]
       16 SETTABLEKS                       R9 R8 K6 ["type"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R10 R11 K16 ["Modes"]
       21 GETTABLEKS                       R9 R10 K17 ["Generated"]
       23 SETTABLEKS                       R9 R8 K7 ["mode"]
       25 SETTABLEKS                       R5 R8 K3 ["name"]
       27 LOADB                            R9 0
       28 SETTABLEKS                       R9 R8 K8 ["expanded"]
       30 SETTABLEKS                       R4 R8 K2 ["assetIds"]
       32 SETTABLEKS                       R6 R8 K4 ["studsPerTile"]
       34 SETTABLEKS                       R7 R8 K5 ["isOrganic"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R9 R8 K9 ["onClickMaterial"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R9 R8 K10 ["setStudsPerTile"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R9 R8 K11 ["setIsOrganic"]
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K12 ["shouldShowChip"]
       56 NEWCLOSURE                       R9 P3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K13 ["onChipClicked"]
       61 GETUPVAL                         R9 5
       62 CALL                             R9 0 1
       63 JUMPIFNOT                        R9 ; [+15]
       64 GETUPVAL                         R10 6
       65 GETTABLEKS                       R9 R10 K18 ["editContent"]
       67 DUPTABLE                         R10 K20 [{"messageId", "contentId", "transformFn"}]
       68 SETTABLEKS                       R2 R10 K0 ["messageId"]
       70 SETTABLEKS                       R3 R10 K1 ["contentId"]
       72 NEWCLOSURE                       R11 P4
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R11 R10 K19 ["transformFn"]
       77 CALL                             R9 1 0
       78 JUMP                             ; [+17]
       79 GETUPVAL                         R9 8
       80 GETTABLEKS                       R10 R1 K21 ["toolArguments"]
       82 CALL                             R9 1 2
       83 GETUPVAL                         R12 6
       84 GETTABLEKS                       R11 R12 K22 ["addToolContent"]
       86 MOVE                             R12 R2
       87 DUPTABLE                         R13 K26 [{"toolUse", "toolResult", "content"}]
       88 SETTABLEKS                       R9 R13 K23 ["toolUse"]
       90 SETTABLEKS                       R10 R13 K24 ["toolResult"]
       92 SETTABLEKS                       R8 R13 K25 ["content"]
       94 CALL                             R11 2 1
       95 MOVE                             R3 R11
       96 GETUPVAL                         R9 9
       97 MOVE                             R10 R0
       98 DUPTABLE                         R11 K27 [{"messageId", "contentId", "name"}]
       99 SETTABLEKS                       R2 R11 K0 ["messageId"]
      101 SETTABLEKS                       R3 R11 K1 ["contentId"]
      103 SETTABLEKS                       R5 R11 K3 ["name"]
      105 CALL                             R9 2 0
      106 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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
       44 JUMPIFNOT                        R6 ; [+59]
       45 JUMPIFNOT                        R1 ; [+3]
       46 GETTABLEKS                       R6 R1 K15 ["messageId"]
       48 JUMPIF                           R6 ; [+1]
       49 LOADK                            R6 K16 [""]
       50 JUMPIFNOT                        R1 ; [+3]
       51 GETTABLEKS                       R7 R1 K17 ["contentId"]
       53 JUMPIF                           R7 ; [+1]
       54 LOADK                            R7 K16 [""]
       55 DUPTABLE                         R8 K21 [{"type", "mode", "name"}]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K22 ["Type"]
       59 SETTABLEKS                       R9 R8 K18 ["type"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K23 ["Modes"]
       64 GETTABLEKS                       R9 R10 K24 ["Generating"]
       66 SETTABLEKS                       R9 R8 K19 ["mode"]
       68 SETTABLEKS                       R2 R8 K20 ["name"]
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R9 R10 K25 ["editContent"]
       73 DUPTABLE                         R10 K27 [{"messageId", "contentId", "transformFn"}]
       74 SETTABLEKS                       R6 R10 K15 ["messageId"]
       76 SETTABLEKS                       R7 R10 K17 ["contentId"]
       78 NEWCLOSURE                       R11 P0
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R11 R10 K26 ["transformFn"]
       83 CALL                             R9 1 0
       84 GETUPVAL                         R9 4
       85 LOADNIL                          R10
       86 DUPTABLE                         R11 K29 [{"messageId", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments"}]
       87 SETTABLEKS                       R6 R11 K15 ["messageId"]
       89 SETTABLEKS                       R7 R11 K17 ["contentId"]
       91 SETTABLEKS                       R3 R11 K4 ["materialDescription"]
       93 SETTABLEKS                       R4 R11 K9 ["baseMaterial"]
       95 SETTABLEKS                       R2 R11 K0 ["materialId"]
       97 SETTABLEKS                       R5 R11 K13 ["materialPattern"]
       99 LOADNIL                          R12
      100 SETTABLEKS                       R12 R11 K28 ["toolArguments"]
      102 CALL                             R9 2 2
      103 RETURN                           R9 2
      104 NEWCLOSURE                       R6 P1
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U6
      114 GETUPVAL                         R8 2
      115 GETTABLEKS                       R7 R8 K30 ["getOrAddMessage"]
      117 LOADK                            R8 K31 ["assistant"]
      118 MOVE                             R9 R6
      119 CALL                             R7 2 0
      120 LOADNIL                          R7
      121 RETURN                           R7 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_36:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GenerateMaterial"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_38:
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
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 NAMECALL                         R11 R1 K9 ["OnGuestEvent"]
       49 CALL                             R11 3 1
       50 LOADK                            R14 K10 ["MaterialGenTool_listenToLinkChanges"]
       51 NEWCLOSURE                       R15 P7
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R11
       57 NAMECALL                         R12 R1 K4 ["OnHostEvent"]
       59 CALL                             R12 3 1
       60 LOADK                            R15 K11 ["MaterialGenTool_updateMaterialGenContentWidget"]
       61 NEWCLOSURE                       R16 P8
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R10
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R12
       72 NAMECALL                         R13 R1 K9 ["OnGuestEvent"]
       74 CALL                             R13 3 1
       75 LOADK                            R16 K12 ["MaterialGenTool_generateMaterialVariantsAsync"]
       76 NEWCLOSURE                       R17 P9
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U12
       84 CAPTURE                          VAL R4
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U13
       87 CAPTURE                          VAL R13
       88 NAMECALL                         R14 R1 K13 ["OnHostInvokeAsync"]
       90 CALL                             R14 3 1
       91 NEWCLOSURE                       R15 P10
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R14
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U14
       99 NEWCLOSURE                       R16 P11
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          VAL R15
      103 CAPTURE                          UPVAL U15
      104 GETUPVAL                         R18 16
      105 GETTABLEKS                       R17 R18 K14 ["define"]
      107 CALL                             R17 0 1
      108 GETUPVAL                         R20 17
      109 GETTABLEKS                       R19 R20 K15 ["MaterialGen"]
      111 NAMECALL                         R17 R17 K16 ["setName"]
      113 CALL                             R17 2 1
      114 LOADK                            R19 K17 ["materialDescription"]
      115 DUPTABLE                         R20 K19 [{"type"}]
      116 LOADK                            R21 K20 ["string"]
      117 SETTABLEKS                       R21 R20 K18 ["type"]
      119 NAMECALL                         R17 R17 K21 ["addArgument"]
      121 CALL                             R17 3 1
      122 LOADK                            R19 K22 ["baseMaterial"]
      123 DUPTABLE                         R20 K24 [{"enum"}]
      124 GETUPVAL                         R22 3
      125 GETTABLEKS                       R21 R22 K25 ["useEnumExcept"]
      127 GETIMPORT                        R22 K28 [Enum.Material]
      129 NEWTABLE                         R23 8 0
      131 GETIMPORT                        R24 K30 [Enum.Material.Neon]
      133 LOADB                            R25 1
      134 SETTABLE                         R25 R23 R24
      135 GETIMPORT                        R24 K32 [Enum.Material.Glass]
      137 LOADB                            R25 1
      138 SETTABLE                         R25 R23 R24
      139 GETIMPORT                        R24 K34 [Enum.Material.ForceField]
      141 LOADB                            R25 1
      142 SETTABLE                         R25 R23 R24
      143 GETIMPORT                        R24 K36 [Enum.Material.Air]
      145 LOADB                            R25 1
      146 SETTABLE                         R25 R23 R24
      147 GETIMPORT                        R24 K38 [Enum.Material.Water]
      149 LOADB                            R25 1
      150 SETTABLE                         R25 R23 R24
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K23 ["enum"]
      154 NAMECALL                         R17 R17 K21 ["addArgument"]
      156 CALL                             R17 3 1
      157 LOADK                            R19 K39 ["materialPattern"]
      158 DUPTABLE                         R20 K24 [{"enum"}]
      159 GETUPVAL                         R22 3
      160 GETTABLEKS                       R21 R22 K40 ["useEnum"]
      162 GETIMPORT                        R22 K42 [Enum.MaterialPattern]
      164 CALL                             R21 1 1
      165 SETTABLEKS                       R21 R20 K23 ["enum"]
      167 NAMECALL                         R17 R17 K21 ["addArgument"]
      169 CALL                             R17 3 1
      170 LOADK                            R19 K43 ["materialId"]
      171 DUPTABLE                         R20 K19 [{"type"}]
      172 LOADK                            R21 K20 ["string"]
      173 SETTABLEKS                       R21 R20 K18 ["type"]
      175 NAMECALL                         R17 R17 K21 ["addArgument"]
      177 CALL                             R17 3 1
      178 MOVE                             R19 R16
      179 NAMECALL                         R17 R17 K44 ["setHandler"]
      181 CALL                             R17 2 1
      182 GETUPVAL                         R18 4
      183 CALL                             R18 0 1
      184 JUMPIFNOT                        R18 ; [+5]
      185 LOADK                            R20 K45 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      186 NAMECALL                         R18 R17 K46 ["setDescription"]
      188 CALL                             R18 2 1
      189 MOVE                             R17 R18
      190 NAMECALL                         R18 R17 K47 ["build"]
      192 CALL                             R18 1 1
      193 DUPTABLE                         R19 K51 [{"command", "getDescription", "mapToToolCall"}]
      194 LOADK                            R20 K52 ["material"]
      195 SETTABLEKS                       R20 R19 K48 ["command"]
      197 DUPCLOSURE                       R20 K53 [PROTO_33]
      198 CAPTURE                          UPVAL U18
      199 CAPTURE                          UPVAL U7
      200 SETTABLEKS                       R20 R19 K49 ["getDescription"]
      202 DUPCLOSURE                       R20 K54 [PROTO_34]
      203 CAPTURE                          UPVAL U17
      204 CAPTURE                          UPVAL U10
      205 SETTABLEKS                       R20 R19 K50 ["mapToToolCall"]
      207 DUPTABLE                         R20 K56 [{"transformInitialContent"}]
      208 DUPCLOSURE                       R21 K57 [PROTO_35]
      209 CAPTURE                          UPVAL U8
      210 SETTABLEKS                       R21 R20 K55 ["transformInitialContent"]
      212 DUPTABLE                         R21 K65 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      213 SETTABLEKS                       R18 R21 K58 ["definition"]
      215 NEWTABLE                         R22 0 1
      217 MOVE                             R23 R19
      218 SETLIST                          R22 R23 1 [1]
      220 SETTABLEKS                       R22 R21 K59 ["slashCommands"]
      222 GETUPVAL                         R23 19
      223 CALL                             R23 0 1
      224 JUMPIFNOT                        R23 ; [+6]
      225 NEWTABLE                         R22 0 1
      227 GETUPVAL                         R23 8
      228 SETLIST                          R22 R23 1 [1]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R22
      232 SETTABLEKS                       R22 R21 K60 ["contentWidgets"]
      234 GETUPVAL                         R23 4
      235 CALL                             R23 0 1
      236 JUMPIFNOT                        R23 ; [+2]
      237 MOVE                             R22 R20
      238 JUMP                             ; [+3]
      239 GETUPVAL                         R23 20
      240 GETTABLEKS                       R22 R23 K66 ["None"]
      242 SETTABLEKS                       R22 R21 K61 ["streamTransform"]
      244 DUPCLOSURE                       R22 K67 [PROTO_36]
      245 SETTABLEKS                       R22 R21 K62 ["getPreExecuteWarning"]
      247 DUPCLOSURE                       R22 K68 [PROTO_37]
      248 CAPTURE                          UPVAL U7
      249 SETTABLEKS                       R22 R21 K63 ["displayNameFunction"]
      251 GETUPVAL                         R23 4
      252 CALL                             R23 0 1
      253 JUMPIFNOT                        R23 ; [+5]
      254 DUPTABLE                         R22 K70 [{"resetTimeoutOnProgress"}]
      255 LOADB                            R23 1
      256 SETTABLEKS                       R23 R22 K69 ["resetTimeoutOnProgress"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R22
      260 SETTABLEKS                       R22 R21 K64 ["toolCallOptions"]
      262 RETURN                           R21 1

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
       64 GETTABLEKS                       R11 R0 K21 ["Tools"]
       66 GETTABLEKS                       R10 R11 K22 ["ToolTypes"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R12 R0 K23 ["Util"]
       73 GETTABLEKS                       R11 R12 K24 ["ToolUtils"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R14 R0 K25 ["Resources"]
       80 GETTABLEKS                       R13 R14 K26 ["Localization"]
       82 GETTABLEKS                       R12 R13 K27 ["Translator"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K28 ["Types"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K11 [require]
       92 GETTABLEKS                       R15 R0 K16 ["Components"]
       94 GETTABLEKS                       R14 R15 K29 ["UIToolRegistry"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K11 [require]
       99 GETTABLEKS                       R16 R0 K30 ["Flags"]
      101 GETTABLEKS                       R15 R16 K31 ["FFlagAssistantRegisterWidgetsThroughTools"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K11 [require]
      106 GETTABLEKS                       R17 R0 K30 ["Flags"]
      108 GETTABLEKS                       R16 R17 K32 ["FFlagMCPAssistantLongRunningToolCalls"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K11 [require]
      113 GETTABLEKS                       R18 R0 K30 ["Flags"]
      115 GETTABLEKS                       R17 R18 K33 ["FFlagMCPAssistantPreloadMaterialVariants"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K11 [require]
      120 GETTABLEKS                       R19 R0 K30 ["Flags"]
      122 GETTABLEKS                       R18 R19 K34 ["FFlagMCPAssistantSlashCommandMenu"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K11 [require]
      127 GETTABLEKS                       R20 R0 K30 ["Flags"]
      129 GETTABLEKS                       R19 R20 K35 ["FFlagMaterialGenErrorTextFiltered"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K11 [require]
      134 GETTABLEKS                       R21 R0 K30 ["Flags"]
      136 GETTABLEKS                       R20 R21 K36 ["FFlagRejectMaterialGeneratorError"]
      138 CALL                             R19 1 1
      139 GETTABLEKS                       R21 R7 K23 ["Util"]
      141 GETTABLEKS                       R20 R21 K37 ["ToolBuilder"]
      143 GETTABLEKS                       R22 R7 K23 ["Util"]
      145 GETTABLEKS                       R21 R22 K38 ["ToolResult"]
      147 GETTABLEKS                       R22 R9 K39 ["ToolNames"]
      149 MOVE                             R23 R21
      150 CALL                             R23 0 1
      151 LOADK                            R25 K40 ["Success"]
      152 NAMECALL                         R23 R23 K41 ["addText"]
      154 CALL                             R23 2 1
      155 NAMECALL                         R23 R23 K42 ["build"]
      157 CALL                             R23 1 1
      158 DUPCLOSURE                       R24 K43 [PROTO_0]
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R23
      163 DUPCLOSURE                       R25 K44 [PROTO_1]
      164 DUPCLOSURE                       R26 K45 [PROTO_3]
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R3
      167 DUPCLOSURE                       R27 K46 [PROTO_4]
      168 DUPCLOSURE                       R28 K47 [PROTO_5]
      169 DUPCLOSURE                       R29 K48 [PROTO_38]
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R13
      191 RETURN                           R29 1
