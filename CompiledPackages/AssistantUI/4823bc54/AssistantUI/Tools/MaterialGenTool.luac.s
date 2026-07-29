PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["contentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R3 K3 [{"updateWidget"}]
        8 SETTABLEKS                       R2 R3 K2 ["updateWidget"]
       10 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+5]
        1 LOADK                            R4 K0 ["MaterialVariant"]
        2 NAMECALL                         R2 R1 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["startRecording"]
        9 LOADK                            R3 K3 ["AssistantSetMaterials"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K4 ["selection"]
       13 GETTABLEKS                       R2 R2 K5 ["get"]
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
       57 GETTABLEKS                       R5 R0 K4 ["selection"]
       59 GETTABLEKS                       R5 R5 K12 ["set"]
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

PROTO_3:
        0 LOADK                            R5 K0 ["MaterialVariant"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collectSet"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["GetDescendants"]
        6 CALL                             R2 1 1
        7 DUPCLOSURE                       R3 K2 [PROTO_3]
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"initArgs", "callArgs"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["initArgs"]
        4 DUPTABLE                         R2 K5 [{"contentId", "isThirdPartyRequest"}]
        5 GETTABLEKS                       R3 R0 K3 ["contentId"]
        7 SETTABLEKS                       R3 R2 K3 ["contentId"]
        9 GETTABLEKS                       R3 R0 K4 ["isThirdPartyRequest"]
       11 SETTABLEKS                       R3 R2 K4 ["isThirdPartyRequest"]
       13 SETTABLEKS                       R2 R1 K1 ["callArgs"]
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateMaterialVariantsAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R0 K2 ["uploadMaterialsAsync"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["generationId"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["assetId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantUseNewTags"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["getUniqueTag"]
        9 LOADK                            R4 K3 ["Mat"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 JUMP                             ; [+6]
       13 LOADK                            R4 K4 ["Assistant-MaterialGenLink-%*"]
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R4 K5 ["format"]
       17 CALL                             R4 2 1
       18 MOVE                             R3 R4
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K6 ["GetTagged"]
       23 CALL                             R4 2 1
       24 LENGTH                           R5 R4
       25 JUMPIFNOTEQKN                    R5 K7 [0] ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K8 ["selection"]
       31 GETTABLEKS                       R5 R5 K9 ["set"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"displayName", "shouldShowChip"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["displayName"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["shouldShowChip"]
       11 CALL                             R1 2 0
       12 DUPTABLE                         R1 K6 [{["rawTransformValues"] = True}]
       13 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 DUPTABLE                         R7 K4 [{"contentId", "isThirdPartyRequest"}]
        9 GETTABLEKS                       R8 R1 K2 ["contentId"]
       11 SETTABLEKS                       R8 R7 K2 ["contentId"]
       13 GETTABLEKS                       R8 R1 K3 ["isThirdPartyRequest"]
       15 SETTABLEKS                       R8 R7 K3 ["isThirdPartyRequest"]
       17 DUPTABLE                         R6 K7 [{"initArgs", "callArgs"}]
       18 GETUPVAL                         R8 1
       19 SETTABLEKS                       R8 R6 K5 ["initArgs"]
       21 DUPTABLE                         R8 K4 [{"contentId", "isThirdPartyRequest"}]
       22 GETTABLEKS                       R9 R7 K2 ["contentId"]
       24 SETTABLEKS                       R9 R8 K2 ["contentId"]
       26 GETTABLEKS                       R9 R7 K3 ["isThirdPartyRequest"]
       28 SETTABLEKS                       R9 R8 K3 ["isThirdPartyRequest"]
       30 SETTABLEKS                       R8 R6 K6 ["callArgs"]
       32 GETTABLEKS                       R7 R6 K5 ["initArgs"]
       34 GETTABLEKS                       R7 R7 K8 ["RESTRICTED_externalHooks"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 DUPTABLE                         R5 K10 [{"updateWidget"}]
       40 SETTABLEKS                       R8 R5 K9 ["updateWidget"]
       42 GETTABLEKS                       R6 R5 K9 ["updateWidget"]
       44 MOVE                             R7 R4
       45 CALL                             R6 1 0
       46 RETURN                           R0 0

PROTO_19:
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
       39 DUPTABLE                         R5 K14 [{"isThirdPartyRequest", "contentId", "newDisplayName", "showChip"}]
       40 GETUPVAL                         R6 6
       41 GETTABLEKS                       R6 R6 K10 ["isThirdPartyRequest"]
       43 SETTABLEKS                       R6 R5 K10 ["isThirdPartyRequest"]
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K11 ["contentId"]
       48 SETTABLEKS                       R6 R5 K11 ["contentId"]
       50 SETTABLEKS                       R2 R5 K12 ["newDisplayName"]
       52 LOADN                            R7 0
       53 JUMPIFLT                         R7 R1 ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 SETTABLEKS                       R6 R5 K13 ["showChip"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FFlagAssistantUseNewTags"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["getUniqueTag"]
        9 LOADK                            R4 K3 ["Mat"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 JUMP                             ; [+6]
       13 LOADK                            R4 K4 ["Assistant-MaterialGenLink-%*"]
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R4 K5 ["format"]
       17 CALL                             R4 2 1
       18 MOVE                             R3 R4
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["observeTagChanges"]
       22 MOVE                             R5 R3
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["assetIds"]
        2 GETTABLEKS                       R3 R1 K1 ["name"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R4 R1 K2 ["onClickMaterial"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R1 K3 ["setStudsPerTile"]
       15 NEWCLOSURE                       R4 P2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R4 R1 K4 ["setIsOrganic"]
       21 NEWCLOSURE                       R4 P3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R4 R1 K5 ["onChipClicked"]
       26 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R4 R3 K0 ["name"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R0
        6 DUPTABLE                         R7 K3 [{"isThirdPartyRequest", "contentId", "name"}]
        7 SETTABLEKS                       R1 R7 K1 ["isThirdPartyRequest"]
        9 SETTABLEKS                       R2 R7 K2 ["contentId"]
       11 SETTABLEKS                       R4 R7 K0 ["name"]
       13 CALL                             R5 2 0
       14 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R5 R1 K0 ["name"]
        4 CALL                             R4 1 -1
        5 NAMECALL                         R2 R2 K1 ["GetTagged"]
        7 CALL                             R2 -1 1
        8 LOADB                            R3 0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 MOVE                             R6 R2
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K2 ["GetChildren"]
       17 CALL                             R11 1 1
       18 MOVE                             R12 R11
       19 LOADNIL                          R13
       20 LOADNIL                          R14
       21 FORGPREP                         R12
       22 LOADK                            R20 K3 ["MaterialVariant"]
       23 NAMECALL                         R18 R16 K4 ["IsA"]
       25 CALL                             R18 2 1
       26 FASTCALL2K                       ASSERT R18 K5 ; [+4]
       28 LOADK                            R19 K5 ["Tagged instance is not a MaterialVariant"]
       29 GETIMPORT                        R17 K7 [assert]
       31 CALL                             R17 2 0
       32 JUMPIF                           R3 ; [+11]
       33 LOADB                            R3 1
       34 GETTABLEKS                       R4 R16 K8 ["StudsPerTile"]
       36 GETTABLEKS                       R17 R16 K9 ["MaterialPattern"]
       38 GETIMPORT                        R18 K12 [Enum.MaterialPattern.Organic]
       40 JUMPIFEQ                         R17 R18 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 GETTABLEKS                       R17 R16 K13 ["ColorMap"]
       46 GETUPVAL                         R18 2
       47 SETTABLE                         R16 R18 R17
       48 FORGLOOP                         R12 2 ; [-27]
       50 FORGLOOP                         R6 2 ; [-36]
       52 JUMPIFNOT                        R3 ; [+6]
       53 DUPTABLE                         R6 K16 [{"studsPerTile", "isOrganic"}]
       54 SETTABLEKS                       R4 R6 K14 ["studsPerTile"]
       56 SETTABLEKS                       R5 R6 K15 ["isOrganic"]
       58 RETURN                           R6 1
       59 LOADNIL                          R6
       60 RETURN                           R6 1

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Generated"]
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
       35 DUPTABLE                         R6 K10 [{["isThirdPartyRequest"] = False, ["contentId"], ["name"]}]
       36 SETTABLEKS                       R0 R6 K9 ["contentId"]
       38 SETTABLEKS                       R3 R6 K3 ["name"]
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["contentId"]
        2 GETTABLEKS                       R3 R1 K1 ["assetIds"]
        4 GETTABLEKS                       R4 R1 K2 ["name"]
        6 GETTABLEKS                       R5 R1 K3 ["studsPerTile"]
        8 GETTABLEKS                       R6 R1 K4 ["isOrganic"]
       10 DUPTABLE                         R7 K16 [{["type"], ["mode"], ["name"], ["displayName"], ["expanded"] = False, ["assetIds"], ["studsPerTile"], ["isOrganic"], ["onClickMaterial"], ["setStudsPerTile"], ["setIsOrganic"], ["shouldShowChip"] = True, ["onChipClicked"]}]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K17 ["Type"]
       14 SETTABLEKS                       R8 R7 K5 ["type"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K18 ["Modes"]
       19 GETTABLEKS                       R8 R8 K19 ["Generated"]
       21 SETTABLEKS                       R8 R7 K6 ["mode"]
       23 SETTABLEKS                       R4 R7 K2 ["name"]
       25 SETTABLEKS                       R4 R7 K7 ["displayName"]
       27 SETTABLEKS                       R3 R7 K1 ["assetIds"]
       29 SETTABLEKS                       R5 R7 K3 ["studsPerTile"]
       31 SETTABLEKS                       R6 R7 K4 ["isOrganic"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K20 ["createUnimplemented"]
       36 LOADK                            R9 K10 ["onClickMaterial"]
       37 CALL                             R8 1 1
       38 SETTABLEKS                       R8 R7 K10 ["onClickMaterial"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K20 ["createUnimplemented"]
       43 LOADK                            R9 K11 ["setStudsPerTile"]
       44 CALL                             R8 1 1
       45 SETTABLEKS                       R8 R7 K11 ["setStudsPerTile"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K20 ["createUnimplemented"]
       50 LOADK                            R9 K12 ["setIsOrganic"]
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R7 K12 ["setIsOrganic"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K20 ["createUnimplemented"]
       57 LOADK                            R9 K15 ["onChipClicked"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K15 ["onChipClicked"]
       61 GETUPVAL                         R8 2
       62 MOVE                             R9 R0
       63 MOVE                             R10 R7
       64 CALL                             R8 2 0
       65 NEWCLOSURE                       R8 P0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R7
       68 DUPTABLE                         R11 K22 [{"contentId", "isThirdPartyRequest"}]
       69 GETTABLEKS                       R12 R1 K0 ["contentId"]
       71 SETTABLEKS                       R12 R11 K0 ["contentId"]
       73 GETTABLEKS                       R12 R1 K21 ["isThirdPartyRequest"]
       75 SETTABLEKS                       R12 R11 K21 ["isThirdPartyRequest"]
       77 DUPTABLE                         R10 K25 [{"initArgs", "callArgs"}]
       78 GETUPVAL                         R12 4
       79 SETTABLEKS                       R12 R10 K23 ["initArgs"]
       81 DUPTABLE                         R12 K22 [{"contentId", "isThirdPartyRequest"}]
       82 GETTABLEKS                       R13 R11 K0 ["contentId"]
       84 SETTABLEKS                       R13 R12 K0 ["contentId"]
       86 GETTABLEKS                       R13 R11 K21 ["isThirdPartyRequest"]
       88 SETTABLEKS                       R13 R12 K21 ["isThirdPartyRequest"]
       90 SETTABLEKS                       R12 R10 K24 ["callArgs"]
       92 GETTABLEKS                       R11 R10 K23 ["initArgs"]
       94 GETTABLEKS                       R11 R11 K26 ["RESTRICTED_externalHooks"]
       96 NEWCLOSURE                       R12 P1
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R11
       99 DUPTABLE                         R9 K28 [{"updateWidget"}]
      100 SETTABLEKS                       R12 R9 K27 ["updateWidget"]
      102 GETTABLEKS                       R10 R9 K27 ["updateWidget"]
      104 MOVE                             R11 R8
      105 CALL                             R10 1 0
      106 GETTABLEKS                       R10 R1 K21 ["isThirdPartyRequest"]
      108 GETTABLEKS                       R11 R7 K2 ["name"]
      110 JUMPIFNOT                        R10 ; [+1]
      111 RETURN                           R0 0
      112 GETUPVAL                         R12 5
      113 MOVE                             R13 R0
      114 DUPTABLE                         R14 K29 [{"isThirdPartyRequest", "contentId", "name"}]
      115 SETTABLEKS                       R10 R14 K21 ["isThirdPartyRequest"]
      117 SETTABLEKS                       R2 R14 K0 ["contentId"]
      119 SETTABLEKS                       R11 R14 K2 ["name"]
      121 CALL                             R12 2 0
      122 RETURN                           R0 0

PROTO_31:
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
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       71 JUMPIF                           R4 ; [+5]
       72 LOADK                            R6 K18 ["Description"]
       73 GETUPVAL                         R7 4
       74 NAMECALL                         R4 R2 K19 ["SetAttribute"]
       76 CALL                             R4 3 0
       77 MOVE                             R6 R3
       78 NAMECALL                         R4 R2 K20 ["AddTag"]
       80 CALL                             R4 2 0
       81 LOADNIL                          R4
       82 NEWTABLE                         R5 0 0
       84 LOADN                            R6 0
       85 LOADB                            R7 0
       86 MOVE                             R8 R0
       87 LOADNIL                          R9
       88 LOADNIL                          R10
       89 FORGPREP                         R8
       90 GETUPVAL                         R13 5
       91 GETUPVAL                         R14 1
       92 CALL                             R13 1 1
       93 SETTABLEKS                       R13 R12 K7 ["Name"]
       95 GETUPVAL                         R13 6
       96 SETTABLEKS                       R13 R12 K21 ["BaseMaterial"]
       98 GETUPVAL                         R13 7
       99 SETTABLEKS                       R13 R12 K22 ["MaterialPattern"]
      101 SETTABLEKS                       R2 R12 K8 ["Parent"]
      103 GETTABLEKS                       R6 R12 K23 ["StudsPerTile"]
      105 GETTABLEKS                       R13 R12 K22 ["MaterialPattern"]
      107 GETIMPORT                        R14 K26 [Enum.MaterialPattern.Organic]
      109 JUMPIFEQ                         R13 R14 ; [+2]
      111 LOADB                            R7 0 +1
      112 LOADB                            R7 1
      113 GETTABLEKS                       R13 R12 K27 ["ColorMap"]
      115 GETUPVAL                         R14 2
      116 GETTABLEKS                       R14 R14 K17 ["FFlagAssistantSplitToolsAndWidgets"]
      118 JUMPIF                           R14 ; [+2]
      119 GETUPVAL                         R14 8
      120 SETTABLE                         R12 R14 R13
      121 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
      123 MOVE                             R15 R5
      124 MOVE                             R16 R13
      125 GETIMPORT                        R14 K30 [table.insert]
      127 CALL                             R14 2 0
      128 JUMPIF                           R4 ; [+1]
      129 MOVE                             R4 R12
      130 GETUPVAL                         R14 9
      131 GETTABLEKS                       R14 R14 K31 ["preloadMaterialVariant"]
      133 MOVE                             R15 R12
      134 CALL                             R14 1 0
      135 FORGLOOP                         R8 2 ; [-46]
      137 GETUPVAL                         R8 2
      138 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantSplitToolsAndWidgets"]
      140 JUMPIF                           R8 ; [+23]
      141 GETUPVAL                         R8 10
      142 GETUPVAL                         R9 11
      143 DUPTABLE                         R10 K38 [{"isThirdPartyRequest", "contentId", "assetIds", "name", "studsPerTile", "isOrganic"}]
      144 GETUPVAL                         R11 12
      145 GETTABLEKS                       R11 R11 K32 ["isThirdPartyRequest"]
      147 SETTABLEKS                       R11 R10 K32 ["isThirdPartyRequest"]
      149 GETUPVAL                         R11 12
      150 GETTABLEKS                       R11 R11 K33 ["contentId"]
      152 SETTABLEKS                       R11 R10 K33 ["contentId"]
      154 SETTABLEKS                       R5 R10 K34 ["assetIds"]
      156 GETUPVAL                         R11 1
      157 SETTABLEKS                       R11 R10 K35 ["name"]
      159 SETTABLEKS                       R6 R10 K36 ["studsPerTile"]
      161 SETTABLEKS                       R7 R10 K37 ["isOrganic"]
      163 CALL                             R8 2 0
      164 JUMPIFNOT                        R4 ; [+15]
      165 DUPTABLE                         R8 K41 [{"BaseMaterial", "Name", "AssetIds", "Tag"}]
      166 GETTABLEKS                       R9 R4 K21 ["BaseMaterial"]
      168 GETTABLEKS                       R9 R9 K7 ["Name"]
      170 SETTABLEKS                       R9 R8 K21 ["BaseMaterial"]
      172 GETUPVAL                         R9 1
      173 SETTABLEKS                       R9 R8 K7 ["Name"]
      175 SETTABLEKS                       R5 R8 K39 ["AssetIds"]
      177 SETTABLEKS                       R3 R8 K40 ["Tag"]
      179 RETURN                           R8 1
      180 RETURN                           R0 0

PROTO_32:
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
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 NAMECALL                         R1 R1 K7 ["andThen"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_33:
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
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 NAMECALL                         R7 R7 K14 ["andThen"]
       67 CALL                             R7 2 1
       68 NAMECALL                         R7 R7 K15 ["await"]
       70 CALL                             R7 1 2
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K16 ["endRecording"]
       74 MOVE                             R10 R6
       75 CALL                             R9 1 0
       76 RETURN                           R7 2

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_35:
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
       43 GETTABLEKS                       R6 R1 K15 ["isThirdPartyRequest"]
       45 JUMPIF                           R6 ; [+1]
       46 LOADB                            R6 0
       47 JUMPIFNOT                        R1 ; [+3]
       48 GETTABLEKS                       R7 R1 K16 ["contentId"]
       50 JUMPIF                           R7 ; [+1]
       51 LOADK                            R7 K17 [""]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantSplitToolsAndWidgets"]
       55 JUMPIF                           R8 ; [+54]
       56 DUPTABLE                         R8 K23 [{"type", "mode", "name", "displayName"}]
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K24 ["Type"]
       60 SETTABLEKS                       R9 R8 K19 ["type"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K25 ["Modes"]
       65 GETTABLEKS                       R9 R9 K26 ["Generating"]
       67 SETTABLEKS                       R9 R8 K20 ["mode"]
       69 SETTABLEKS                       R2 R8 K21 ["name"]
       71 SETTABLEKS                       R2 R8 K22 ["displayName"]
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R8
       76 DUPTABLE                         R12 K27 [{"contentId", "isThirdPartyRequest"}]
       77 SETTABLEKS                       R7 R12 K16 ["contentId"]
       79 SETTABLEKS                       R6 R12 K15 ["isThirdPartyRequest"]
       81 DUPTABLE                         R11 K30 [{"initArgs", "callArgs"}]
       82 GETUPVAL                         R13 3
       83 SETTABLEKS                       R13 R11 K28 ["initArgs"]
       85 DUPTABLE                         R13 K27 [{"contentId", "isThirdPartyRequest"}]
       86 GETTABLEKS                       R14 R12 K16 ["contentId"]
       88 SETTABLEKS                       R14 R13 K16 ["contentId"]
       90 GETTABLEKS                       R14 R12 K15 ["isThirdPartyRequest"]
       92 SETTABLEKS                       R14 R13 K15 ["isThirdPartyRequest"]
       94 SETTABLEKS                       R13 R11 K29 ["callArgs"]
       96 GETTABLEKS                       R12 R11 K28 ["initArgs"]
       98 GETTABLEKS                       R12 R12 K31 ["RESTRICTED_externalHooks"]
      100 NEWCLOSURE                       R13 P1
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 DUPTABLE                         R10 K33 [{"updateWidget"}]
      104 SETTABLEKS                       R13 R10 K32 ["updateWidget"]
      106 GETTABLEKS                       R11 R10 K32 ["updateWidget"]
      108 MOVE                             R12 R9
      109 CALL                             R11 1 0
      110 GETUPVAL                         R8 4
      111 LOADNIL                          R9
      112 DUPTABLE                         R10 K34 [{"isThirdPartyRequest", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern"}]
      113 SETTABLEKS                       R6 R10 K15 ["isThirdPartyRequest"]
      115 SETTABLEKS                       R7 R10 K16 ["contentId"]
      117 SETTABLEKS                       R3 R10 K4 ["materialDescription"]
      119 SETTABLEKS                       R4 R10 K9 ["baseMaterial"]
      121 SETTABLEKS                       R2 R10 K0 ["materialId"]
      123 SETTABLEKS                       R5 R10 K13 ["materialPattern"]
      125 CALL                             R8 2 2
      126 RETURN                           R8 2

PROTO_36:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 2
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantSplitToolsAndWidgets"]
       12 JUMPIFNOT                        R5 ; [+57]
       13 FASTCALL2                        ASSERT R3 R4 ; [+5]
       15 MOVE                             R6 R3
       16 MOVE                             R7 R4
       17 GETIMPORT                        R5 K4 [assert]
       19 CALL                             R5 2 0
       20 FASTCALL1                        TYPEOF R4 ; [+3]
       21 MOVE                             R8 R4
       22 GETIMPORT                        R7 K6 [typeof]
       24 CALL                             R7 1 1
       25 JUMPIFEQKS                       R7 K7 ["table"] ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       31 LOADK                            R7 K8 ["Expected result to be a table"]
       32 GETIMPORT                        R5 K4 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K9 ["toString"]
       38 DUPTABLE                         R6 K12 [{"BaseMaterial", "Name"}]
       39 GETTABLEKS                       R7 R4 K10 ["BaseMaterial"]
       41 SETTABLEKS                       R7 R6 K10 ["BaseMaterial"]
       43 GETTABLEKS                       R7 R4 K11 ["Name"]
       45 SETTABLEKS                       R7 R6 K11 ["Name"]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 3
       49 CALL                             R6 0 1
       50 MOVE                             R8 R5
       51 NAMECALL                         R6 R6 K13 ["addText"]
       53 CALL                             R6 2 1
       54 DUPTABLE                         R8 K16 [{"assetIds", "tag"}]
       55 GETTABLEKS                       R9 R4 K17 ["AssetIds"]
       57 SETTABLEKS                       R9 R8 K14 ["assetIds"]
       59 GETTABLEKS                       R9 R4 K18 ["Tag"]
       61 SETTABLEKS                       R9 R8 K15 ["tag"]
       63 NAMECALL                         R6 R6 K19 ["setStructuredContent"]
       65 CALL                             R6 2 1
       66 NAMECALL                         R6 R6 K20 ["build"]
       68 CALL                             R6 1 -1
       69 RETURN                           R6 -1
       70 JUMPIFNOT                        R3 ; [+15]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K9 ["toString"]
       74 MOVE                             R6 R4
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 3
       77 CALL                             R6 0 1
       78 MOVE                             R8 R5
       79 NAMECALL                         R6 R6 K13 ["addText"]
       81 CALL                             R6 2 1
       82 NAMECALL                         R6 R6 K20 ["build"]
       84 CALL                             R6 1 -1
       85 RETURN                           R6 -1
       86 GETIMPORT                        R5 K22 [error]
       88 MOVE                             R6 R4
       89 CALL                             R5 1 0
       90 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_38:
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

PROTO_39:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_40:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GenerateMaterial"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWTABLE                         R3 0 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 NEWCLOSURE                       R6 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 LOADNIL                          R7
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K2 ["FFlagAssistantSplitToolsAndWidgets"]
       18 JUMPIF                           R8 ; [+85]
       19 LOADK                            R10 K3 ["MaterialGenTool_setStudsPerTile"]
       20 NEWCLOSURE                       R11 P3
       21 CAPTURE                          VAL R3
       22 NAMECALL                         R8 R1 K4 ["OnHostEvent"]
       24 CALL                             R8 3 1
       25 LOADK                            R11 K5 ["MaterialGenTool_setOrganicPattern"]
       26 NEWCLOSURE                       R12 P4
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R9 R1 K4 ["OnHostEvent"]
       30 CALL                             R9 3 1
       31 LOADK                            R12 K6 ["MaterialGenTool_ApplyMaterialVariant"]
       32 NEWCLOSURE                       R13 P5
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R2
       36 NAMECALL                         R10 R1 K4 ["OnHostEvent"]
       38 CALL                             R10 3 1
       39 LOADK                            R13 K7 ["MaterialGenTool_SelectMaterialVariantFolder"]
       40 NEWCLOSURE                       R14 P6
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R2
       45 NAMECALL                         R11 R1 K4 ["OnHostEvent"]
       47 CALL                             R11 3 1
       48 LOADK                            R14 K8 ["MaterialGenTool_updateContentHeader"]
       49 NEWCLOSURE                       R15 P7
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R12 R1 K9 ["OnGuestEvent"]
       54 CALL                             R12 3 1
       55 LOADK                            R15 K10 ["MaterialGenTool_listenToLinkChanges"]
       56 NEWCLOSURE                       R16 P8
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R12
       62 NAMECALL                         R13 R1 K4 ["OnHostEvent"]
       64 CALL                             R13 3 1
       65 NEWCLOSURE                       R14 P9
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 NEWCLOSURE                       R15 P10
       71 CAPTURE                          VAL R13
       72 LOADK                            R18 K11 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       73 NEWCLOSURE                       R19 P11
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R3
       77 NAMECALL                         R16 R1 K12 ["OnHostInvokeAsync"]
       79 CALL                             R16 3 1
       80 GETUPVAL                         R17 8
       81 GETTABLEKS                       R17 R17 K13 ["registerHydrator"]
       83 GETUPVAL                         R18 9
       84 GETTABLEKS                       R18 R18 K14 ["Type"]
       86 NEWCLOSURE                       R19 P12
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R13
       91 CALL                             R17 2 0
       92 LOADK                            R19 K15 ["MaterialGenTool_updateMaterialGenContentWidget"]
       93 NEWCLOSURE                       R20 P13
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R14
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R13
      100 NAMECALL                         R17 R1 K9 ["OnGuestEvent"]
      102 CALL                             R17 3 1
      103 MOVE                             R7 R17
      104 LOADK                            R10 K16 ["MaterialGenTool_generateMaterialVariantsAsync"]
      105 NEWCLOSURE                       R11 P14
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U12
      110 CAPTURE                          UPVAL U1
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          VAL R3
      114 CAPTURE                          UPVAL U14
      115 CAPTURE                          REF R7
      116 NAMECALL                         R8 R1 K12 ["OnHostInvokeAsync"]
      118 CALL                             R8 3 1
      119 NEWCLOSURE                       R9 P15
      120 CAPTURE                          UPVAL U1
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R8
      125 NEWCLOSURE                       R10 P16
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          VAL R9
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U15
      130 GETUPVAL                         R11 16
      131 GETTABLEKS                       R11 R11 K17 ["define"]
      133 CALL                             R11 0 1
      134 GETUPVAL                         R13 17
      135 GETTABLEKS                       R13 R13 K18 ["MaterialGen"]
      137 NAMECALL                         R11 R11 K19 ["setName"]
      139 CALL                             R11 2 1
      140 LOADK                            R13 K20 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      141 NAMECALL                         R11 R11 K21 ["setDescription"]
      143 CALL                             R11 2 1
      144 LOADK                            R13 K22 ["materialDescription"]
      145 DUPTABLE                         R14 K25 [{["type"] = "string"}]
      146 NAMECALL                         R11 R11 K26 ["addArgument"]
      148 CALL                             R11 3 1
      149 LOADK                            R13 K27 ["baseMaterial"]
      150 DUPTABLE                         R14 K29 [{["type"] = "string", ["enum"]}]
      151 GETUPVAL                         R15 14
      152 GETTABLEKS                       R15 R15 K30 ["useEnumExcept"]
      154 GETIMPORT                        R16 K33 [Enum.Material]
      156 NEWTABLE                         R17 8 0
      158 GETIMPORT                        R18 K35 [Enum.Material.Neon]
      160 LOADB                            R19 1
      161 SETTABLE                         R19 R17 R18
      162 GETIMPORT                        R18 K37 [Enum.Material.Glass]
      164 LOADB                            R19 1
      165 SETTABLE                         R19 R17 R18
      166 GETIMPORT                        R18 K39 [Enum.Material.ForceField]
      168 LOADB                            R19 1
      169 SETTABLE                         R19 R17 R18
      170 GETIMPORT                        R18 K41 [Enum.Material.Air]
      172 LOADB                            R19 1
      173 SETTABLE                         R19 R17 R18
      174 GETIMPORT                        R18 K43 [Enum.Material.Water]
      176 LOADB                            R19 1
      177 SETTABLE                         R19 R17 R18
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K28 ["enum"]
      181 NAMECALL                         R11 R11 K26 ["addArgument"]
      183 CALL                             R11 3 1
      184 LOADK                            R13 K44 ["materialPattern"]
      185 DUPTABLE                         R14 K29 [{["type"] = "string", ["enum"]}]
      186 GETUPVAL                         R15 14
      187 GETTABLEKS                       R15 R15 K45 ["useEnum"]
      189 GETIMPORT                        R16 K47 [Enum.MaterialPattern]
      191 CALL                             R15 1 1
      192 SETTABLEKS                       R15 R14 K28 ["enum"]
      194 NAMECALL                         R11 R11 K26 ["addArgument"]
      196 CALL                             R11 3 1
      197 LOADK                            R13 K48 ["materialId"]
      198 DUPTABLE                         R14 K25 [{["type"] = "string"}]
      199 NAMECALL                         R11 R11 K26 ["addArgument"]
      201 CALL                             R11 3 1
      202 DUPTABLE                         R13 K56 [{["title"] = "Material Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      203 NAMECALL                         R11 R11 K57 ["setAnnotations"]
      205 CALL                             R11 2 1
      206 MOVE                             R13 R10
      207 NAMECALL                         R11 R11 K58 ["setHandler"]
      209 CALL                             R11 2 1
      210 NAMECALL                         R11 R11 K59 ["build"]
      212 CALL                             R11 1 1
      213 DUPTABLE                         R12 K64 [{["command"] = "generate_material", ["getDescription"], ["mapToToolCall"]}]
      214 DUPCLOSURE                       R13 K65 [PROTO_37]
      215 CAPTURE                          UPVAL U6
      216 SETTABLEKS                       R13 R12 K62 ["getDescription"]
      218 DUPCLOSURE                       R13 K66 [PROTO_38]
      219 CAPTURE                          UPVAL U11
      220 CAPTURE                          UPVAL U17
      221 SETTABLEKS                       R13 R12 K63 ["mapToToolCall"]
      223 DUPTABLE                         R13 K68 [{"transformInitialContent"}]
      224 DUPCLOSURE                       R14 K69 [PROTO_39]
      225 CAPTURE                          UPVAL U9
      226 SETTABLEKS                       R14 R13 K67 ["transformInitialContent"]
      228 DUPTABLE                         R14 K77 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      229 SETTABLEKS                       R11 R14 K70 ["definition"]
      231 NEWTABLE                         R15 0 1
      233 MOVE                             R16 R12
      234 SETLIST                          R15 R16 1 [1]
      236 SETTABLEKS                       R15 R14 K71 ["slashCommands"]
      238 GETUPVAL                         R16 1
      239 GETTABLEKS                       R16 R16 K2 ["FFlagAssistantSplitToolsAndWidgets"]
      241 JUMPIFNOT                        R16 ; [+2]
      242 LOADNIL                          R15
      243 JUMP                             ; [+5]
      244 NEWTABLE                         R15 0 1
      246 GETUPVAL                         R16 9
      247 SETLIST                          R15 R16 1 [1]
      249 SETTABLEKS                       R15 R14 K72 ["contentWidgets"]
      251 GETUPVAL                         R16 1
      252 GETTABLEKS                       R16 R16 K2 ["FFlagAssistantSplitToolsAndWidgets"]
      254 JUMPIFNOT                        R16 ; [+2]
      255 LOADNIL                          R15
      256 JUMP                             ; [+1]
      257 MOVE                             R15 R13
      258 SETTABLEKS                       R15 R14 K73 ["streamTransform"]
      260 DUPCLOSURE                       R15 K78 [PROTO_40]
      261 SETTABLEKS                       R15 R14 K74 ["getPreExecuteWarning"]
      263 GETUPVAL                         R16 1
      264 GETTABLEKS                       R16 R16 K2 ["FFlagAssistantSplitToolsAndWidgets"]
      266 JUMPIFNOT                        R16 ; [+2]
      267 LOADNIL                          R15
      268 JUMP                             ; [+2]
      269 DUPCLOSURE                       R15 K79 [PROTO_41]
      270 CAPTURE                          UPVAL U6
      271 SETTABLEKS                       R15 R14 K75 ["displayNameFunction"]
      273 DUPTABLE                         R15 K82 [{["resetTimeoutOnProgress"] = True}]
      274 SETTABLEKS                       R15 R14 K76 ["toolCallOptions"]
      276 CLOSEUPVALS                      R7
      277 RETURN                           R14 1

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
       27 GETTABLEKS                       R5 R0 K12 ["Components"]
       29 GETTABLEKS                       R5 R5 K13 ["ContentWidgets"]
       31 GETTABLEKS                       R5 R5 K14 ["DEPRECATED_MaterialGenContentWidget"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K11 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Parent"]
       38 GETTABLEKS                       R6 R6 K16 ["Dash"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Guest"]
       45 GETTABLEKS                       R7 R7 K18 ["Environment"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K19 ["Flags"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R0 K15 ["Parent"]
       57 GETTABLEKS                       R9 R9 K20 ["ModelContextProtocol"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K11 [require]
       62 GETTABLEKS                       R10 R0 K15 ["Parent"]
       64 GETTABLEKS                       R10 R10 K21 ["Promise"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K11 [require]
       69 GETTABLEKS                       R11 R0 K22 ["Util"]
       71 GETTABLEKS                       R11 R11 K23 ["Serializer"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K11 [require]
       76 GETTABLEKS                       R12 R0 K22 ["Util"]
       78 GETTABLEKS                       R12 R12 K24 ["Tagging"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K11 [require]
       83 GETTABLEKS                       R13 R0 K25 ["Tools"]
       85 GETTABLEKS                       R13 R13 K26 ["ToolTypes"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K11 [require]
       90 GETTABLEKS                       R14 R0 K22 ["Util"]
       92 GETTABLEKS                       R14 R14 K27 ["ToolUtils"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K11 [require]
       97 GETTABLEKS                       R15 R0 K28 ["Resources"]
       99 GETTABLEKS                       R15 R15 K29 ["Localization"]
      101 GETTABLEKS                       R15 R15 K30 ["Translator"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K11 [require]
      106 GETTABLEKS                       R16 R0 K31 ["Types"]
      108 CALL                             R15 1 1
      109 GETTABLEKS                       R16 R8 K22 ["Util"]
      111 GETTABLEKS                       R16 R16 K32 ["ToolBuilder"]
      113 GETTABLEKS                       R17 R8 K22 ["Util"]
      115 GETTABLEKS                       R17 R17 K33 ["ToolResult"]
      117 GETTABLEKS                       R18 R12 K34 ["ToolNames"]
      119 DUPCLOSURE                       R19 K35 [PROTO_1]
      120 DUPCLOSURE                       R20 K36 [PROTO_2]
      121 DUPCLOSURE                       R21 K37 [PROTO_4]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R3
      124 DUPCLOSURE                       R22 K38 [PROTO_5]
      125 DUPCLOSURE                       R23 K39 [PROTO_6]
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R11
      128 DUPCLOSURE                       R24 K40 [PROTO_42]
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R18
      147 RETURN                           R24 1
