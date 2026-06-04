PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["messageId"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R3 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 DUPTABLE                         R3 K3 [{"updateWidget"}]
        9 SETTABLEKS                       R2 R3 K2 ["updateWidget"]
       11 RETURN                           R3 1

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
        0 DUPTABLE                         R1 K2 [{"toolArgs", "handlerArgs"}]
        1 DUPTABLE                         R2 K4 [{"RESTRICTED_externalHooks"}]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K3 ["RESTRICTED_externalHooks"]
        5 SETTABLEKS                       R2 R1 K0 ["toolArgs"]
        7 DUPTABLE                         R2 K8 [{"messageId", "contentId", "isThirdPartyRequest"}]
        8 GETTABLEKS                       R3 R0 K5 ["messageId"]
       10 SETTABLEKS                       R3 R2 K5 ["messageId"]
       12 GETTABLEKS                       R3 R0 K6 ["contentId"]
       14 SETTABLEKS                       R3 R2 K6 ["contentId"]
       16 GETTABLEKS                       R3 R0 K7 ["isThirdPartyRequest"]
       18 SETTABLEKS                       R3 R2 K7 ["isThirdPartyRequest"]
       20 SETTABLEKS                       R2 R1 K1 ["handlerArgs"]
       22 RETURN                           R1 1

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
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 DUPTABLE                         R1 K5 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K4 ["rawTransformValues"]
       19 RETURN                           R1 1
       20 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K5 [{"messageId", "contentId", "isThirdPartyRequest"}]
       11 GETTABLEKS                       R8 R1 K2 ["messageId"]
       13 SETTABLEKS                       R8 R7 K2 ["messageId"]
       15 GETTABLEKS                       R8 R1 K3 ["contentId"]
       17 SETTABLEKS                       R8 R7 K3 ["contentId"]
       19 GETTABLEKS                       R8 R1 K4 ["isThirdPartyRequest"]
       21 SETTABLEKS                       R8 R7 K4 ["isThirdPartyRequest"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R7 R6 K6 ["toolArgs"]
       26 GETTABLEKS                       R7 R7 K7 ["RESTRICTED_externalHooks"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R6
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R7
       32 DUPTABLE                         R5 K9 [{"updateWidget"}]
       33 SETTABLEKS                       R8 R5 K8 ["updateWidget"]
       35 GETTABLEKS                       R6 R5 K8 ["updateWidget"]
       37 MOVE                             R7 R4
       38 CALL                             R6 1 0
       39 RETURN                           R0 0

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
       39 DUPTABLE                         R5 K15 [{"isThirdPartyRequest", "messageId", "contentId", "newDisplayName", "showChip"}]
       40 GETUPVAL                         R6 6
       41 GETTABLEKS                       R6 R6 K10 ["isThirdPartyRequest"]
       43 SETTABLEKS                       R6 R5 K10 ["isThirdPartyRequest"]
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K11 ["messageId"]
       48 SETTABLEKS                       R6 R5 K11 ["messageId"]
       50 GETUPVAL                         R6 6
       51 GETTABLEKS                       R6 R6 K12 ["contentId"]
       53 SETTABLEKS                       R6 R5 K12 ["contentId"]
       55 SETTABLEKS                       R2 R5 K13 ["newDisplayName"]
       57 LOADN                            R7 0
       58 JUMPIFLT                         R7 R1 ; [+2]
       60 LOADB                            R6 0 +1
       61 LOADB                            R6 1
       62 SETTABLEKS                       R6 R5 K14 ["showChip"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
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
       35 DUPTABLE                         R6 K9 [{"isThirdPartyRequest", "contentId", "name"}]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K7 ["isThirdPartyRequest"]
       39 SETTABLEKS                       R0 R6 K8 ["contentId"]
       41 SETTABLEKS                       R3 R6 K3 ["name"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"assetId"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "studsPerTile"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["studsPerTile"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"assetIds", "isOrganic"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["assetIds"]
        6 SETTABLEKS                       R0 R3 K1 ["isOrganic"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"name"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["contentId"]
        2 GETTABLEKS                       R3 R1 K1 ["assetIds"]
        4 GETTABLEKS                       R4 R1 K2 ["name"]
        6 GETTABLEKS                       R5 R1 K3 ["studsPerTile"]
        8 GETTABLEKS                       R6 R1 K4 ["isOrganic"]
       10 DUPTABLE                         R7 K14 [{"type", "mode", "name", "displayName", "expanded", "assetIds", "studsPerTile", "isOrganic", "onClickMaterial", "setStudsPerTile", "setIsOrganic", "shouldShowChip", "onChipClicked"}]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K15 ["Type"]
       14 SETTABLEKS                       R8 R7 K5 ["type"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K16 ["Modes"]
       19 GETTABLEKS                       R8 R8 K17 ["Generated"]
       21 SETTABLEKS                       R8 R7 K6 ["mode"]
       23 SETTABLEKS                       R4 R7 K2 ["name"]
       25 SETTABLEKS                       R4 R7 K7 ["displayName"]
       27 LOADB                            R8 0
       28 SETTABLEKS                       R8 R7 K8 ["expanded"]
       30 SETTABLEKS                       R3 R7 K1 ["assetIds"]
       32 SETTABLEKS                       R5 R7 K3 ["studsPerTile"]
       34 SETTABLEKS                       R6 R7 K4 ["isOrganic"]
       36 GETUPVAL                         R9 1
       37 CALL                             R9 0 1
       38 JUMPIFNOT                        R9 ; [+6]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K18 ["createUnimplemented"]
       42 LOADK                            R9 K9 ["onClickMaterial"]
       43 CALL                             R8 1 1
       44 JUMP                             ; [+3]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R8 R7 K9 ["onClickMaterial"]
       50 GETUPVAL                         R9 1
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+6]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K18 ["createUnimplemented"]
       56 LOADK                            R9 K10 ["setStudsPerTile"]
       57 CALL                             R8 1 1
       58 JUMP                             ; [+4]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R8 R7 K10 ["setStudsPerTile"]
       65 GETUPVAL                         R9 1
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+6]
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K18 ["createUnimplemented"]
       71 LOADK                            R9 K11 ["setIsOrganic"]
       72 CALL                             R8 1 1
       73 JUMP                             ; [+4]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R8 R7 K11 ["setIsOrganic"]
       80 LOADB                            R8 1
       81 SETTABLEKS                       R8 R7 K12 ["shouldShowChip"]
       83 GETUPVAL                         R9 1
       84 CALL                             R9 0 1
       85 JUMPIFNOT                        R9 ; [+6]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R8 R8 K18 ["createUnimplemented"]
       89 LOADK                            R9 K13 ["onChipClicked"]
       90 CALL                             R8 1 1
       91 JUMP                             ; [+3]
       92 NEWCLOSURE                       R8 P3
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R8 R7 K13 ["onChipClicked"]
       97 GETUPVAL                         R8 1
       98 CALL                             R8 0 1
       99 JUMPIFNOT                        R8 ; [+4]
      100 GETUPVAL                         R8 7
      101 MOVE                             R9 R0
      102 MOVE                             R10 R7
      103 CALL                             R8 2 0
      104 NEWCLOSURE                       R8 P4
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R7
      107 GETUPVAL                         R10 9
      108 DUPTABLE                         R11 K21 [{"messageId", "contentId", "isThirdPartyRequest"}]
      109 GETTABLEKS                       R12 R1 K19 ["messageId"]
      111 SETTABLEKS                       R12 R11 K19 ["messageId"]
      113 GETTABLEKS                       R12 R1 K0 ["contentId"]
      115 SETTABLEKS                       R12 R11 K0 ["contentId"]
      117 GETTABLEKS                       R12 R1 K20 ["isThirdPartyRequest"]
      119 SETTABLEKS                       R12 R11 K20 ["isThirdPartyRequest"]
      121 CALL                             R10 1 1
      122 GETTABLEKS                       R11 R10 K22 ["toolArgs"]
      124 GETTABLEKS                       R11 R11 K23 ["RESTRICTED_externalHooks"]
      126 NEWCLOSURE                       R12 P5
      127 CAPTURE                          VAL R10
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          VAL R11
      130 DUPTABLE                         R9 K25 [{"updateWidget"}]
      131 SETTABLEKS                       R12 R9 K24 ["updateWidget"]
      133 GETTABLEKS                       R10 R9 K24 ["updateWidget"]
      135 MOVE                             R11 R8
      136 CALL                             R10 1 0
      137 GETTABLEKS                       R10 R1 K20 ["isThirdPartyRequest"]
      139 GETTABLEKS                       R11 R7 K2 ["name"]
      141 JUMPIFNOT                        R10 ; [+1]
      142 RETURN                           R0 0
      143 GETUPVAL                         R12 10
      144 MOVE                             R13 R0
      145 DUPTABLE                         R14 K26 [{"isThirdPartyRequest", "contentId", "name"}]
      146 SETTABLEKS                       R10 R14 K20 ["isThirdPartyRequest"]
      148 SETTABLEKS                       R2 R14 K0 ["contentId"]
      150 SETTABLEKS                       R11 R14 K2 ["name"]
      152 CALL                             R12 2 0
      153 RETURN                           R0 0

PROTO_35:
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
      114 DUPTABLE                         R9 K34 [{"isThirdPartyRequest", "messageId", "contentId", "assetIds", "name", "studsPerTile", "isOrganic"}]
      115 GETUPVAL                         R10 11
      116 GETTABLEKS                       R10 R10 K27 ["isThirdPartyRequest"]
      118 SETTABLEKS                       R10 R9 K27 ["isThirdPartyRequest"]
      120 GETUPVAL                         R10 12
      121 SETTABLEKS                       R10 R9 K28 ["messageId"]
      123 GETUPVAL                         R10 13
      124 SETTABLEKS                       R10 R9 K29 ["contentId"]
      126 SETTABLEKS                       R4 R9 K30 ["assetIds"]
      128 GETUPVAL                         R10 1
      129 SETTABLEKS                       R10 R9 K31 ["name"]
      131 SETTABLEKS                       R5 R9 K32 ["studsPerTile"]
      133 SETTABLEKS                       R6 R9 K33 ["isOrganic"]
      135 CALL                             R7 2 0
      136 JUMPIFNOT                        R3 ; [+12]
      137 DUPTABLE                         R7 K35 [{"BaseMaterial", "Name"}]
      138 GETTABLEKS                       R8 R3 K16 ["BaseMaterial"]
      140 GETTABLEKS                       R8 R8 K7 ["Name"]
      142 SETTABLEKS                       R8 R7 K16 ["BaseMaterial"]
      144 GETTABLEKS                       R8 R3 K7 ["Name"]
      146 SETTABLEKS                       R8 R7 K7 ["Name"]
      148 RETURN                           R7 1
      149 RETURN                           R0 0

PROTO_36:
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
       36 CAPTURE                          UPVAL U15
       37 NAMECALL                         R1 R1 K7 ["andThen"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_37:
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
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K7 ["startRecording"]
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
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K15 ["try"]
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
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R9 R9 K16 ["andThen"]
       72 CALL                             R9 2 1
       73 NAMECALL                         R9 R9 K17 ["await"]
       75 CALL                             R9 1 2
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K18 ["endRecording"]
       79 MOVE                             R12 R8
       80 CALL                             R11 1 0
       81 RETURN                           R9 2

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_39:
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
       48 GETTABLEKS                       R7 R1 K16 ["messageId"]
       50 JUMPIF                           R7 ; [+1]
       51 LOADK                            R7 K17 [""]
       52 JUMPIFNOT                        R1 ; [+3]
       53 GETTABLEKS                       R8 R1 K18 ["contentId"]
       55 JUMPIF                           R8 ; [+1]
       56 LOADK                            R8 K17 [""]
       57 DUPTABLE                         R9 K23 [{"type", "mode", "name", "displayName"}]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K24 ["Type"]
       61 SETTABLEKS                       R10 R9 K19 ["type"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K25 ["Modes"]
       66 GETTABLEKS                       R10 R10 K26 ["Generating"]
       68 SETTABLEKS                       R10 R9 K20 ["mode"]
       70 SETTABLEKS                       R2 R9 K21 ["name"]
       72 SETTABLEKS                       R2 R9 K22 ["displayName"]
       74 NEWCLOSURE                       R10 P0
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R9
       77 GETUPVAL                         R12 2
       78 DUPTABLE                         R13 K27 [{"messageId", "contentId", "isThirdPartyRequest"}]
       79 SETTABLEKS                       R7 R13 K16 ["messageId"]
       81 SETTABLEKS                       R8 R13 K18 ["contentId"]
       83 SETTABLEKS                       R6 R13 K15 ["isThirdPartyRequest"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R12 K28 ["toolArgs"]
       88 GETTABLEKS                       R13 R13 K29 ["RESTRICTED_externalHooks"]
       90 NEWCLOSURE                       R14 P1
       91 CAPTURE                          VAL R12
       92 CAPTURE                          UPVAL U3
       93 CAPTURE                          VAL R13
       94 DUPTABLE                         R11 K31 [{"updateWidget"}]
       95 SETTABLEKS                       R14 R11 K30 ["updateWidget"]
       97 GETTABLEKS                       R12 R11 K30 ["updateWidget"]
       99 MOVE                             R13 R10
      100 CALL                             R12 1 0
      101 GETUPVAL                         R12 4
      102 LOADNIL                          R13
      103 DUPTABLE                         R14 K33 [{"isThirdPartyRequest", "messageId", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments"}]
      104 SETTABLEKS                       R6 R14 K15 ["isThirdPartyRequest"]
      106 SETTABLEKS                       R7 R14 K16 ["messageId"]
      108 SETTABLEKS                       R8 R14 K18 ["contentId"]
      110 SETTABLEKS                       R3 R14 K4 ["materialDescription"]
      112 SETTABLEKS                       R4 R14 K9 ["baseMaterial"]
      114 SETTABLEKS                       R2 R14 K0 ["materialId"]
      116 SETTABLEKS                       R5 R14 K13 ["materialPattern"]
      118 LOADNIL                          R15
      119 SETTABLEKS                       R15 R14 K32 ["toolArguments"]
      121 CALL                             R12 2 2
      122 RETURN                           R12 2

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_42:
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

PROTO_43:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
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
        4 GETTABLEKS                       R3 R0 K2 ["RESTRICTED_externalHooks"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R3
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R2
       13 NEWCLOSURE                       R7 P2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R2
       16 LOADK                            R10 K3 ["MaterialGenTool_setStudsPerTile"]
       17 NEWCLOSURE                       R11 P3
       18 CAPTURE                          VAL R4
       19 NAMECALL                         R8 R1 K4 ["OnHostEvent"]
       21 CALL                             R8 3 1
       22 LOADK                            R11 K5 ["MaterialGenTool_setOrganicPattern"]
       23 NEWCLOSURE                       R12 P4
       24 CAPTURE                          VAL R4
       25 NAMECALL                         R9 R1 K4 ["OnHostEvent"]
       27 CALL                             R9 3 1
       28 LOADK                            R12 K6 ["MaterialGenTool_ApplyMaterialVariant"]
       29 NEWCLOSURE                       R13 P5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R10 R1 K4 ["OnHostEvent"]
       35 CALL                             R10 3 1
       36 LOADK                            R13 K7 ["MaterialGenTool_SelectMaterialVariantFolder"]
       37 NEWCLOSURE                       R14 P6
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R2
       42 NAMECALL                         R11 R1 K4 ["OnHostEvent"]
       44 CALL                             R11 3 1
       45 LOADK                            R14 K8 ["MaterialGenTool_updateContentHeader"]
       46 NEWCLOSURE                       R15 P7
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R5
       50 NAMECALL                         R12 R1 K9 ["OnGuestEvent"]
       52 CALL                             R12 3 1
       53 LOADK                            R15 K10 ["MaterialGenTool_listenToLinkChanges"]
       54 NEWCLOSURE                       R16 P8
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R12
       60 NAMECALL                         R13 R1 K4 ["OnHostEvent"]
       62 CALL                             R13 3 1
       63 NEWCLOSURE                       R14 P9
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R11
       69 NEWCLOSURE                       R15 P10
       70 CAPTURE                          VAL R13
       71 GETUPVAL                         R16 6
       72 CALL                             R16 0 1
       73 JUMPIFNOT                        R16 ; [+20]
       74 LOADK                            R18 K11 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       75 NEWCLOSURE                       R19 P11
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          VAL R4
       79 NAMECALL                         R16 R1 K12 ["OnHostInvokeAsync"]
       81 CALL                             R16 3 1
       82 GETUPVAL                         R17 9
       83 GETTABLEKS                       R17 R17 K13 ["registerHydrator"]
       85 GETUPVAL                         R18 10
       86 GETTABLEKS                       R18 R18 K14 ["Type"]
       88 NEWCLOSURE                       R19 P12
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R13
       93 CALL                             R17 2 0
       94 LOADK                            R18 K15 ["MaterialGenTool_updateMaterialGenContentWidget"]
       95 NEWCLOSURE                       R19 P13
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R14
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R13
      107 NAMECALL                         R16 R1 K9 ["OnGuestEvent"]
      109 CALL                             R16 3 1
      110 LOADK                            R19 K16 ["MaterialGenTool_generateMaterialVariantsAsync"]
      111 NEWCLOSURE                       R20 P14
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          UPVAL U14
      118 CAPTURE                          VAL R4
      119 CAPTURE                          UPVAL U15
      120 CAPTURE                          VAL R16
      121 NAMECALL                         R17 R1 K12 ["OnHostInvokeAsync"]
      123 CALL                             R17 3 1
      124 NEWCLOSURE                       R18 P15
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R5
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R17
      130 NEWCLOSURE                       R19 P16
      131 CAPTURE                          UPVAL U15
      132 CAPTURE                          VAL R18
      133 CAPTURE                          UPVAL U16
      134 GETUPVAL                         R20 17
      135 GETTABLEKS                       R20 R20 K17 ["define"]
      137 CALL                             R20 0 1
      138 GETUPVAL                         R22 18
      139 GETTABLEKS                       R22 R22 K18 ["MaterialGen"]
      141 NAMECALL                         R20 R20 K19 ["setName"]
      143 CALL                             R20 2 1
      144 LOADK                            R22 K20 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      145 NAMECALL                         R20 R20 K21 ["setDescription"]
      147 CALL                             R20 2 1
      148 LOADK                            R22 K22 ["materialDescription"]
      149 DUPTABLE                         R23 K24 [{"type"}]
      150 LOADK                            R24 K25 ["string"]
      151 SETTABLEKS                       R24 R23 K23 ["type"]
      153 NAMECALL                         R20 R20 K26 ["addArgument"]
      155 CALL                             R20 3 1
      156 LOADK                            R22 K27 ["baseMaterial"]
      157 DUPTABLE                         R23 K29 [{"type", "enum"}]
      158 LOADK                            R24 K25 ["string"]
      159 SETTABLEKS                       R24 R23 K23 ["type"]
      161 GETUPVAL                         R24 15
      162 GETTABLEKS                       R24 R24 K30 ["useEnumExcept"]
      164 GETIMPORT                        R25 K33 [Enum.Material]
      166 NEWTABLE                         R26 8 0
      168 GETIMPORT                        R27 K35 [Enum.Material.Neon]
      170 LOADB                            R28 1
      171 SETTABLE                         R28 R26 R27
      172 GETIMPORT                        R27 K37 [Enum.Material.Glass]
      174 LOADB                            R28 1
      175 SETTABLE                         R28 R26 R27
      176 GETIMPORT                        R27 K39 [Enum.Material.ForceField]
      178 LOADB                            R28 1
      179 SETTABLE                         R28 R26 R27
      180 GETIMPORT                        R27 K41 [Enum.Material.Air]
      182 LOADB                            R28 1
      183 SETTABLE                         R28 R26 R27
      184 GETIMPORT                        R27 K43 [Enum.Material.Water]
      186 LOADB                            R28 1
      187 SETTABLE                         R28 R26 R27
      188 CALL                             R24 2 1
      189 SETTABLEKS                       R24 R23 K28 ["enum"]
      191 NAMECALL                         R20 R20 K26 ["addArgument"]
      193 CALL                             R20 3 1
      194 LOADK                            R22 K44 ["materialPattern"]
      195 DUPTABLE                         R23 K29 [{"type", "enum"}]
      196 LOADK                            R24 K25 ["string"]
      197 SETTABLEKS                       R24 R23 K23 ["type"]
      199 GETUPVAL                         R24 15
      200 GETTABLEKS                       R24 R24 K45 ["useEnum"]
      202 GETIMPORT                        R25 K47 [Enum.MaterialPattern]
      204 CALL                             R24 1 1
      205 SETTABLEKS                       R24 R23 K28 ["enum"]
      207 NAMECALL                         R20 R20 K26 ["addArgument"]
      209 CALL                             R20 3 1
      210 LOADK                            R22 K48 ["materialId"]
      211 DUPTABLE                         R23 K24 [{"type"}]
      212 LOADK                            R24 K25 ["string"]
      213 SETTABLEKS                       R24 R23 K23 ["type"]
      215 NAMECALL                         R20 R20 K26 ["addArgument"]
      217 CALL                             R20 3 1
      218 DUPTABLE                         R22 K54 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      219 LOADK                            R23 K55 ["Material Generation"]
      220 SETTABLEKS                       R23 R22 K49 ["title"]
      222 LOADB                            R23 0
      223 SETTABLEKS                       R23 R22 K50 ["readOnlyHint"]
      225 LOADB                            R23 0
      226 SETTABLEKS                       R23 R22 K51 ["destructiveHint"]
      228 LOADB                            R23 0
      229 SETTABLEKS                       R23 R22 K52 ["idempotentHint"]
      231 LOADB                            R23 0
      232 SETTABLEKS                       R23 R22 K53 ["openWorldHint"]
      234 NAMECALL                         R20 R20 K56 ["setAnnotations"]
      236 CALL                             R20 2 1
      237 MOVE                             R22 R19
      238 NAMECALL                         R20 R20 K57 ["setHandler"]
      240 CALL                             R20 2 1
      241 NAMECALL                         R20 R20 K58 ["build"]
      243 CALL                             R20 1 1
      244 DUPTABLE                         R21 K62 [{"command", "getDescription", "mapToToolCall"}]
      245 LOADK                            R22 K63 ["generate_material"]
      246 SETTABLEKS                       R22 R21 K59 ["command"]
      248 DUPCLOSURE                       R22 K64 [PROTO_41]
      249 CAPTURE                          UPVAL U7
      250 SETTABLEKS                       R22 R21 K60 ["getDescription"]
      252 DUPCLOSURE                       R22 K65 [PROTO_42]
      253 CAPTURE                          UPVAL U18
      254 CAPTURE                          UPVAL U12
      255 SETTABLEKS                       R22 R21 K61 ["mapToToolCall"]
      257 DUPTABLE                         R22 K67 [{"transformInitialContent"}]
      258 DUPCLOSURE                       R23 K68 [PROTO_43]
      259 CAPTURE                          UPVAL U10
      260 SETTABLEKS                       R23 R22 K66 ["transformInitialContent"]
      262 DUPTABLE                         R23 K76 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      263 SETTABLEKS                       R20 R23 K69 ["definition"]
      265 NEWTABLE                         R24 0 1
      267 MOVE                             R25 R21
      268 SETLIST                          R24 R25 1 [1]
      270 SETTABLEKS                       R24 R23 K70 ["slashCommands"]
      272 NEWTABLE                         R24 0 1
      274 GETUPVAL                         R25 10
      275 SETLIST                          R24 R25 1 [1]
      277 SETTABLEKS                       R24 R23 K71 ["contentWidgets"]
      279 SETTABLEKS                       R22 R23 K72 ["streamTransform"]
      281 DUPCLOSURE                       R24 K77 [PROTO_44]
      282 SETTABLEKS                       R24 R23 K73 ["getPreExecuteWarning"]
      284 DUPCLOSURE                       R24 K78 [PROTO_45]
      285 CAPTURE                          UPVAL U7
      286 SETTABLEKS                       R24 R23 K74 ["displayNameFunction"]
      288 DUPTABLE                         R24 K80 [{"resetTimeoutOnProgress"}]
      289 LOADB                            R25 1
      290 SETTABLEKS                       R25 R24 K79 ["resetTimeoutOnProgress"]
      292 SETTABLEKS                       R24 R23 K75 ["toolCallOptions"]
      294 RETURN                           R23 1

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
       41 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K17 ["RESTRICTED_ExternalHooks"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K18 ["Components"]
       50 GETTABLEKS                       R8 R8 K19 ["ContentWidgets"]
       52 GETTABLEKS                       R8 R8 K20 ["MaterialGenContentWidget"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Parent"]
       59 GETTABLEKS                       R9 R9 K21 ["ModelContextProtocol"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K12 ["Parent"]
       66 GETTABLEKS                       R10 R10 K22 ["Promise"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K23 ["Util"]
       73 GETTABLEKS                       R11 R11 K24 ["Serializer"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R12 R0 K23 ["Util"]
       80 GETTABLEKS                       R12 R12 K25 ["Tagging"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K11 [require]
       85 GETTABLEKS                       R13 R0 K26 ["Tools"]
       87 GETTABLEKS                       R13 R13 K27 ["ToolTypes"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K11 [require]
       92 GETTABLEKS                       R14 R0 K23 ["Util"]
       94 GETTABLEKS                       R14 R14 K28 ["ToolUtils"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K11 [require]
       99 GETTABLEKS                       R15 R0 K29 ["Resources"]
      101 GETTABLEKS                       R15 R15 K30 ["Localization"]
      103 GETTABLEKS                       R15 R15 K31 ["Translator"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R16 R0 K32 ["Types"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K11 [require]
      113 GETTABLEKS                       R17 R0 K33 ["Flags"]
      115 GETTABLEKS                       R17 R17 K34 ["FFlagAssistantMultipleChatPersistence"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K11 [require]
      120 GETTABLEKS                       R18 R0 K33 ["Flags"]
      122 GETTABLEKS                       R18 R18 K35 ["FFlagAssistantUseNewTags"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R8 K23 ["Util"]
      127 GETTABLEKS                       R18 R18 K36 ["ToolBuilder"]
      129 GETTABLEKS                       R19 R8 K23 ["Util"]
      131 GETTABLEKS                       R19 R19 K37 ["ToolResult"]
      133 GETTABLEKS                       R20 R12 K38 ["ToolNames"]
      135 DUPCLOSURE                       R21 K39 [PROTO_1]
      136 CAPTURE                          VAL R16
      137 DUPCLOSURE                       R22 K40 [PROTO_2]
      138 DUPCLOSURE                       R23 K41 [PROTO_4]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R3
      141 DUPCLOSURE                       R24 K42 [PROTO_5]
      142 DUPCLOSURE                       R25 K43 [PROTO_6]
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R11
      145 DUPCLOSURE                       R26 K44 [PROTO_46]
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R20
      165 RETURN                           R26 1
