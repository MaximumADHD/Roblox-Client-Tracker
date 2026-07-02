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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUniqueTag"]
        6 LOADK                            R2 K1 ["Mat"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADK                            R2 K2 ["Assistant-MaterialGenLink-%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

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
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["getUniqueTag"]
        8 LOADK                            R4 K2 ["Mat"]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMP                             ; [+6]
       12 LOADK                            R4 K3 ["Assistant-MaterialGenLink-%*"]
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 GETUPVAL                         R4 2
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R4 K5 ["GetTagged"]
       22 CALL                             R4 2 1
       23 LENGTH                           R5 R4
       24 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K7 ["selection"]
       30 GETTABLEKS                       R5 R5 K8 ["set"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 0
       34 RETURN                           R0 0

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
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["getUniqueTag"]
        8 LOADK                            R4 K2 ["Mat"]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMP                             ; [+6]
       12 LOADK                            R4 K3 ["Assistant-MaterialGenLink-%*"]
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["observeTagChanges"]
       21 MOVE                             R5 R3
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

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
       49 LOADK                            R5 K13 ["Description"]
       50 GETUPVAL                         R6 2
       51 NAMECALL                         R3 R2 K14 ["SetAttribute"]
       53 CALL                             R3 3 0
       54 GETUPVAL                         R5 3
       55 GETUPVAL                         R6 1
       56 CALL                             R5 1 -1
       57 NAMECALL                         R3 R2 K15 ["AddTag"]
       59 CALL                             R3 -1 0
       60 LOADNIL                          R3
       61 NEWTABLE                         R4 0 0
       63 LOADN                            R5 0
       64 LOADB                            R6 0
       65 MOVE                             R7 R0
       66 LOADNIL                          R8
       67 LOADNIL                          R9
       68 FORGPREP                         R7
       69 GETUPVAL                         R12 4
       70 GETUPVAL                         R13 1
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K7 ["Name"]
       74 GETUPVAL                         R12 5
       75 SETTABLEKS                       R12 R11 K16 ["BaseMaterial"]
       77 GETUPVAL                         R12 6
       78 SETTABLEKS                       R12 R11 K17 ["MaterialPattern"]
       80 SETTABLEKS                       R2 R11 K8 ["Parent"]
       82 GETTABLEKS                       R5 R11 K18 ["StudsPerTile"]
       84 GETTABLEKS                       R12 R11 K17 ["MaterialPattern"]
       86 GETIMPORT                        R13 K21 [Enum.MaterialPattern.Organic]
       88 JUMPIFEQ                         R12 R13 ; [+2]
       90 LOADB                            R6 0 +1
       91 LOADB                            R6 1
       92 GETTABLEKS                       R12 R11 K22 ["ColorMap"]
       94 GETUPVAL                         R13 7
       95 SETTABLE                         R11 R13 R12
       96 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       98 MOVE                             R14 R4
       99 MOVE                             R15 R12
      100 GETIMPORT                        R13 K25 [table.insert]
      102 CALL                             R13 2 0
      103 JUMPIF                           R3 ; [+1]
      104 MOVE                             R3 R11
      105 GETUPVAL                         R13 8
      106 GETTABLEKS                       R13 R13 K26 ["preloadMaterialVariant"]
      108 MOVE                             R14 R11
      109 CALL                             R13 1 0
      110 FORGLOOP                         R7 2 ; [-42]
      112 GETUPVAL                         R7 9
      113 GETUPVAL                         R8 10
      114 DUPTABLE                         R9 K33 [{"isThirdPartyRequest", "contentId", "assetIds", "name", "studsPerTile", "isOrganic"}]
      115 GETUPVAL                         R10 11
      116 GETTABLEKS                       R10 R10 K27 ["isThirdPartyRequest"]
      118 SETTABLEKS                       R10 R9 K27 ["isThirdPartyRequest"]
      120 GETUPVAL                         R10 12
      121 SETTABLEKS                       R10 R9 K28 ["contentId"]
      123 SETTABLEKS                       R4 R9 K29 ["assetIds"]
      125 GETUPVAL                         R10 1
      126 SETTABLEKS                       R10 R9 K30 ["name"]
      128 SETTABLEKS                       R5 R9 K31 ["studsPerTile"]
      130 SETTABLEKS                       R6 R9 K32 ["isOrganic"]
      132 CALL                             R7 2 0
      133 JUMPIFNOT                        R3 ; [+12]
      134 DUPTABLE                         R7 K34 [{"BaseMaterial", "Name"}]
      135 GETTABLEKS                       R8 R3 K16 ["BaseMaterial"]
      137 GETTABLEKS                       R8 R8 K7 ["Name"]
      139 SETTABLEKS                       R8 R7 K16 ["BaseMaterial"]
      141 GETTABLEKS                       R8 R3 K7 ["Name"]
      143 SETTABLEKS                       R8 R7 K7 ["Name"]
      145 RETURN                           R7 1
      146 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R1 K0 ["contentId"]
        2 GETTABLEKS                       R3 R1 K1 ["materialDescription"]
        4 GETTABLEKS                       R4 R1 K2 ["baseMaterial"]
        6 GETTABLEKS                       R5 R1 K3 ["materialId"]
        8 GETTABLEKS                       R6 R1 K4 ["materialPattern"]
       10 GETUPVAL                         R7 0
       11 LOADB                            R9 0
       12 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       14 CALL                             R7 2 1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K6 ["startRecording"]
       18 MOVE                             R9 R7
       19 CALL                             R8 1 0
       20 FASTCALL1                        TYPE R3 ; [+3]
       21 MOVE                             R12 R3
       22 GETIMPORT                        R11 K8 [type]
       24 CALL                             R11 1 1
       25 JUMPIFEQKS                       R11 K9 ["string"] ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 FASTCALL2K                       ASSERT R10 K10 ; [+4]
       31 LOADK                            R11 K10 ["Bad materialDescription"]
       32 GETIMPORT                        R9 K12 [assert]
       34 CALL                             R9 2 0
       35 LOADB                            R10 1
       36 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       38 LOADK                            R11 K13 ["Bad amount"]
       39 GETIMPORT                        R9 K12 [assert]
       41 CALL                             R9 2 0
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K14 ["try"]
       45 LOADN                            R10 4
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R10
       50 CALL                             R8 1 1
       51 NEWCLOSURE                       R10 P1
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 NAMECALL                         R8 R8 K15 ["andThen"]
       69 CALL                             R8 2 1
       70 NAMECALL                         R8 R8 K16 ["await"]
       72 CALL                             R8 1 2
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K17 ["endRecording"]
       76 MOVE                             R11 R7
       77 CALL                             R10 1 0
       78 RETURN                           R8 2

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
       52 DUPTABLE                         R8 K22 [{"type", "mode", "name", "displayName"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K23 ["Type"]
       56 SETTABLEKS                       R9 R8 K18 ["type"]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K24 ["Modes"]
       61 GETTABLEKS                       R9 R9 K25 ["Generating"]
       63 SETTABLEKS                       R9 R8 K19 ["mode"]
       65 SETTABLEKS                       R2 R8 K20 ["name"]
       67 SETTABLEKS                       R2 R8 K21 ["displayName"]
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R8
       72 DUPTABLE                         R12 K26 [{"contentId", "isThirdPartyRequest"}]
       73 SETTABLEKS                       R7 R12 K16 ["contentId"]
       75 SETTABLEKS                       R6 R12 K15 ["isThirdPartyRequest"]
       77 DUPTABLE                         R11 K29 [{"initArgs", "callArgs"}]
       78 GETUPVAL                         R13 2
       79 SETTABLEKS                       R13 R11 K27 ["initArgs"]
       81 DUPTABLE                         R13 K26 [{"contentId", "isThirdPartyRequest"}]
       82 GETTABLEKS                       R14 R12 K16 ["contentId"]
       84 SETTABLEKS                       R14 R13 K16 ["contentId"]
       86 GETTABLEKS                       R14 R12 K15 ["isThirdPartyRequest"]
       88 SETTABLEKS                       R14 R13 K15 ["isThirdPartyRequest"]
       90 SETTABLEKS                       R13 R11 K28 ["callArgs"]
       92 GETTABLEKS                       R12 R11 K27 ["initArgs"]
       94 GETTABLEKS                       R12 R12 K30 ["RESTRICTED_externalHooks"]
       96 NEWCLOSURE                       R13 P1
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 DUPTABLE                         R10 K32 [{"updateWidget"}]
      100 SETTABLEKS                       R13 R10 K31 ["updateWidget"]
      102 GETTABLEKS                       R11 R10 K31 ["updateWidget"]
      104 MOVE                             R12 R9
      105 CALL                             R11 1 0
      106 GETUPVAL                         R11 3
      107 LOADNIL                          R12
      108 DUPTABLE                         R13 K35 [{["isThirdPartyRequest"], ["contentId"], ["materialDescription"], ["baseMaterial"], [5], ["materialPattern"], ["toolArguments"] = }]
      109 SETTABLEKS                       R6 R13 K15 ["isThirdPartyRequest"]
      111 SETTABLEKS                       R7 R13 K16 ["contentId"]
      113 SETTABLEKS                       R3 R13 K4 ["materialDescription"]
      115 SETTABLEKS                       R4 R13 K9 ["baseMaterial"]
      117 SETTABLEKS                       R2 R13 K0 ["materialId"]
      119 SETTABLEKS                       R5 R13 K13 ["materialPattern"]
      121 CALL                             R11 2 2
      122 RETURN                           R11 2

PROTO_36:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 2
        9 JUMPIFNOT                        R3 ; [+15]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["toString"]
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

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["MaterialGen"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K8 [{"materialDescription", "baseMaterial", "materialPattern", "materialId"}]
        7 SETTABLEKS                       R0 R2 K4 ["materialDescription"]
        9 GETIMPORT                        R3 K12 [Enum.Material.Plastic]
       11 GETTABLEKS                       R3 R3 K13 ["Name"]
       13 SETTABLEKS                       R3 R2 K5 ["baseMaterial"]
       15 GETIMPORT                        R3 K16 [Enum.MaterialPattern.Regular]
       17 GETTABLEKS                       R3 R3 K13 ["Name"]
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
       14 LOADK                            R9 K2 ["MaterialGenTool_setStudsPerTile"]
       15 NEWCLOSURE                       R10 P3
       16 CAPTURE                          VAL R3
       17 NAMECALL                         R7 R1 K3 ["OnHostEvent"]
       19 CALL                             R7 3 1
       20 LOADK                            R10 K4 ["MaterialGenTool_setOrganicPattern"]
       21 NEWCLOSURE                       R11 P4
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R8 R1 K3 ["OnHostEvent"]
       25 CALL                             R8 3 1
       26 LOADK                            R11 K5 ["MaterialGenTool_ApplyMaterialVariant"]
       27 NEWCLOSURE                       R12 P5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R9 R1 K3 ["OnHostEvent"]
       33 CALL                             R9 3 1
       34 LOADK                            R12 K6 ["MaterialGenTool_SelectMaterialVariantFolder"]
       35 NEWCLOSURE                       R13 P6
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R2
       40 NAMECALL                         R10 R1 K3 ["OnHostEvent"]
       42 CALL                             R10 3 1
       43 LOADK                            R13 K7 ["MaterialGenTool_updateContentHeader"]
       44 NEWCLOSURE                       R14 P7
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R11 R1 K8 ["OnGuestEvent"]
       49 CALL                             R11 3 1
       50 LOADK                            R14 K9 ["MaterialGenTool_listenToLinkChanges"]
       51 NEWCLOSURE                       R15 P8
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R11
       57 NAMECALL                         R12 R1 K3 ["OnHostEvent"]
       59 CALL                             R12 3 1
       60 NEWCLOSURE                       R13 P9
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 NEWCLOSURE                       R14 P10
       66 CAPTURE                          VAL R12
       67 LOADK                            R17 K10 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       68 NEWCLOSURE                       R18 P11
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R3
       72 NAMECALL                         R15 R1 K11 ["OnHostInvokeAsync"]
       74 CALL                             R15 3 1
       75 GETUPVAL                         R16 8
       76 GETTABLEKS                       R16 R16 K12 ["registerHydrator"]
       78 GETUPVAL                         R17 9
       79 GETTABLEKS                       R17 R17 K13 ["Type"]
       81 NEWCLOSURE                       R18 P12
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R12
       86 CALL                             R16 2 0
       87 LOADK                            R18 K14 ["MaterialGenTool_updateMaterialGenContentWidget"]
       88 NEWCLOSURE                       R19 P13
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          VAL R13
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R12
       95 NAMECALL                         R16 R1 K8 ["OnGuestEvent"]
       97 CALL                             R16 3 1
       98 LOADK                            R19 K15 ["MaterialGenTool_generateMaterialVariantsAsync"]
       99 NEWCLOSURE                       R20 P14
      100 CAPTURE                          UPVAL U11
      101 CAPTURE                          VAL R2
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          VAL R3
      107 CAPTURE                          UPVAL U14
      108 CAPTURE                          VAL R16
      109 NAMECALL                         R17 R1 K11 ["OnHostInvokeAsync"]
      111 CALL                             R17 3 1
      112 NEWCLOSURE                       R18 P15
      113 CAPTURE                          UPVAL U9
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R17
      117 NEWCLOSURE                       R19 P16
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          VAL R18
      120 CAPTURE                          UPVAL U15
      121 GETUPVAL                         R20 16
      122 GETTABLEKS                       R20 R20 K16 ["define"]
      124 CALL                             R20 0 1
      125 GETUPVAL                         R22 17
      126 GETTABLEKS                       R22 R22 K17 ["MaterialGen"]
      128 NAMECALL                         R20 R20 K18 ["setName"]
      130 CALL                             R20 2 1
      131 LOADK                            R22 K19 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      132 NAMECALL                         R20 R20 K20 ["setDescription"]
      134 CALL                             R20 2 1
      135 LOADK                            R22 K21 ["materialDescription"]
      136 DUPTABLE                         R23 K24 [{["type"] = "string"}]
      137 NAMECALL                         R20 R20 K25 ["addArgument"]
      139 CALL                             R20 3 1
      140 LOADK                            R22 K26 ["baseMaterial"]
      141 DUPTABLE                         R23 K28 [{["type"] = "string", ["enum"]}]
      142 GETUPVAL                         R24 14
      143 GETTABLEKS                       R24 R24 K29 ["useEnumExcept"]
      145 GETIMPORT                        R25 K32 [Enum.Material]
      147 NEWTABLE                         R26 8 0
      149 GETIMPORT                        R27 K34 [Enum.Material.Neon]
      151 LOADB                            R28 1
      152 SETTABLE                         R28 R26 R27
      153 GETIMPORT                        R27 K36 [Enum.Material.Glass]
      155 LOADB                            R28 1
      156 SETTABLE                         R28 R26 R27
      157 GETIMPORT                        R27 K38 [Enum.Material.ForceField]
      159 LOADB                            R28 1
      160 SETTABLE                         R28 R26 R27
      161 GETIMPORT                        R27 K40 [Enum.Material.Air]
      163 LOADB                            R28 1
      164 SETTABLE                         R28 R26 R27
      165 GETIMPORT                        R27 K42 [Enum.Material.Water]
      167 LOADB                            R28 1
      168 SETTABLE                         R28 R26 R27
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K27 ["enum"]
      172 NAMECALL                         R20 R20 K25 ["addArgument"]
      174 CALL                             R20 3 1
      175 LOADK                            R22 K43 ["materialPattern"]
      176 DUPTABLE                         R23 K28 [{["type"] = "string", ["enum"]}]
      177 GETUPVAL                         R24 14
      178 GETTABLEKS                       R24 R24 K44 ["useEnum"]
      180 GETIMPORT                        R25 K46 [Enum.MaterialPattern]
      182 CALL                             R24 1 1
      183 SETTABLEKS                       R24 R23 K27 ["enum"]
      185 NAMECALL                         R20 R20 K25 ["addArgument"]
      187 CALL                             R20 3 1
      188 LOADK                            R22 K47 ["materialId"]
      189 DUPTABLE                         R23 K24 [{["type"] = "string"}]
      190 NAMECALL                         R20 R20 K25 ["addArgument"]
      192 CALL                             R20 3 1
      193 DUPTABLE                         R22 K55 [{["title"] = "Material Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      194 NAMECALL                         R20 R20 K56 ["setAnnotations"]
      196 CALL                             R20 2 1
      197 MOVE                             R22 R19
      198 NAMECALL                         R20 R20 K57 ["setHandler"]
      200 CALL                             R20 2 1
      201 NAMECALL                         R20 R20 K58 ["build"]
      203 CALL                             R20 1 1
      204 DUPTABLE                         R21 K63 [{["command"] = "generate_material", ["getDescription"], ["mapToToolCall"]}]
      205 DUPCLOSURE                       R22 K64 [PROTO_37]
      206 CAPTURE                          UPVAL U6
      207 SETTABLEKS                       R22 R21 K61 ["getDescription"]
      209 DUPCLOSURE                       R22 K65 [PROTO_38]
      210 CAPTURE                          UPVAL U17
      211 CAPTURE                          UPVAL U11
      212 SETTABLEKS                       R22 R21 K62 ["mapToToolCall"]
      214 DUPTABLE                         R22 K67 [{"transformInitialContent"}]
      215 DUPCLOSURE                       R23 K68 [PROTO_39]
      216 CAPTURE                          UPVAL U9
      217 SETTABLEKS                       R23 R22 K66 ["transformInitialContent"]
      219 DUPTABLE                         R23 K76 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      220 SETTABLEKS                       R20 R23 K69 ["definition"]
      222 NEWTABLE                         R24 0 1
      224 MOVE                             R25 R21
      225 SETLIST                          R24 R25 1 [1]
      227 SETTABLEKS                       R24 R23 K70 ["slashCommands"]
      229 GETUPVAL                         R25 18
      230 CALL                             R25 0 1
      231 JUMPIFNOT                        R25 ; [+2]
      232 LOADNIL                          R24
      233 JUMP                             ; [+5]
      234 NEWTABLE                         R24 0 1
      236 GETUPVAL                         R25 9
      237 SETLIST                          R24 R25 1 [1]
      239 SETTABLEKS                       R24 R23 K71 ["contentWidgets"]
      241 SETTABLEKS                       R22 R23 K72 ["streamTransform"]
      243 DUPCLOSURE                       R24 K77 [PROTO_40]
      244 SETTABLEKS                       R24 R23 K73 ["getPreExecuteWarning"]
      246 GETUPVAL                         R25 18
      247 CALL                             R25 0 1
      248 JUMPIFNOT                        R25 ; [+2]
      249 LOADNIL                          R24
      250 JUMP                             ; [+2]
      251 DUPCLOSURE                       R24 K78 [PROTO_41]
      252 CAPTURE                          UPVAL U6
      253 SETTABLEKS                       R24 R23 K74 ["displayNameFunction"]
      255 DUPTABLE                         R24 K81 [{["resetTimeoutOnProgress"] = True}]
      256 SETTABLEKS                       R24 R23 K75 ["toolCallOptions"]
      258 RETURN                           R23 1

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
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Dash"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Guest"]
       36 GETTABLEKS                       R6 R6 K15 ["Environment"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K16 ["Components"]
       43 GETTABLEKS                       R7 R7 K17 ["ContentWidgets"]
       45 GETTABLEKS                       R7 R7 K18 ["MaterialGenContentWidget"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K12 ["Parent"]
       52 GETTABLEKS                       R8 R8 K19 ["ModelContextProtocol"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Parent"]
       59 GETTABLEKS                       R9 R9 K20 ["Promise"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K21 ["Util"]
       66 GETTABLEKS                       R10 R10 K22 ["Serializer"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K21 ["Util"]
       73 GETTABLEKS                       R11 R11 K23 ["Tagging"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R12 R0 K24 ["Tools"]
       80 GETTABLEKS                       R12 R12 K25 ["ToolTypes"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K11 [require]
       85 GETTABLEKS                       R13 R0 K21 ["Util"]
       87 GETTABLEKS                       R13 R13 K26 ["ToolUtils"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K11 [require]
       92 GETTABLEKS                       R14 R0 K27 ["Resources"]
       94 GETTABLEKS                       R14 R14 K28 ["Localization"]
       96 GETTABLEKS                       R14 R14 K29 ["Translator"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K11 [require]
      101 GETTABLEKS                       R15 R0 K30 ["Types"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K11 [require]
      106 GETTABLEKS                       R16 R0 K31 ["Flags"]
      108 GETTABLEKS                       R16 R16 K32 ["FFlagAssistantSplitToolsAndWidgets"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K11 [require]
      113 GETTABLEKS                       R17 R0 K31 ["Flags"]
      115 GETTABLEKS                       R17 R17 K33 ["FFlagAssistantUseNewTags"]
      117 CALL                             R16 1 1
      118 GETTABLEKS                       R17 R7 K21 ["Util"]
      120 GETTABLEKS                       R17 R17 K34 ["ToolBuilder"]
      122 GETTABLEKS                       R18 R7 K21 ["Util"]
      124 GETTABLEKS                       R18 R18 K35 ["ToolResult"]
      126 GETTABLEKS                       R19 R11 K36 ["ToolNames"]
      128 DUPCLOSURE                       R20 K37 [PROTO_1]
      129 DUPCLOSURE                       R21 K38 [PROTO_2]
      130 DUPCLOSURE                       R22 K39 [PROTO_4]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 DUPCLOSURE                       R23 K40 [PROTO_5]
      134 DUPCLOSURE                       R24 K41 [PROTO_6]
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R10
      137 DUPCLOSURE                       R25 K42 [PROTO_42]
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R24
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R15
      157 RETURN                           R25 1
