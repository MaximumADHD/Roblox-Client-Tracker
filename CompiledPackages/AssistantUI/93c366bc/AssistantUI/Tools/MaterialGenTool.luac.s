PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R2 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R3 K2 ["messageId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R4 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantUseNewMeshGenTool is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["toolArgs"]
       10 GETTABLEKS                       R1 R2 K4 ["externalHooks"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 DUPTABLE                         R3 K6 [{"updateWidget"}]
       17 SETTABLEKS                       R2 R3 K5 ["updateWidget"]
       19 RETURN                           R3 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["collectSet"]
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
        0 LOADK                            R2 K0 ["Assistant-MaterialGenLink-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"toolArgs", "handlerArgs"}]
        1 DUPTABLE                         R2 K4 [{"externalHooks"}]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K3 ["externalHooks"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["generateMaterialVariantsAsync"]
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
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K8 ["try"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["materialGen"]
        5 GETTABLEKS                       R0 R1 K2 ["uploadMaterialsAsync"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["generationId"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_11:
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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["try"]
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

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+22]
       12 GETUPVAL                         R5 3
       13 GETUPVAL                         R6 4
       14 DUPTABLE                         R7 K5 [{"messageId", "contentId", "isThirdPartyRequest"}]
       15 GETTABLEKS                       R8 R1 K2 ["messageId"]
       17 SETTABLEKS                       R8 R7 K2 ["messageId"]
       19 GETTABLEKS                       R8 R1 K3 ["contentId"]
       21 SETTABLEKS                       R8 R7 K3 ["contentId"]
       23 GETTABLEKS                       R8 R1 K4 ["isThirdPartyRequest"]
       25 SETTABLEKS                       R8 R7 K4 ["isThirdPartyRequest"]
       27 CALL                             R6 1 1
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K6 ["updateWidget"]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 1
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+11]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K7 ["getContentHooks"]
       40 GETTABLEKS                       R6 R1 K3 ["contentId"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K8 ["editContent"]
       45 MOVE                             R7 R4
       46 CALL                             R6 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R5 R6 K8 ["editContent"]
       51 DUPTABLE                         R6 K10 [{"messageId", "contentId", "transformFn"}]
       52 GETTABLEKS                       R7 R1 K2 ["messageId"]
       54 SETTABLEKS                       R7 R6 K2 ["messageId"]
       56 GETTABLEKS                       R7 R1 K3 ["contentId"]
       58 SETTABLEKS                       R7 R6 K3 ["contentId"]
       60 SETTABLEKS                       R4 R6 K9 ["transformFn"]
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

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
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R6 R7 K10 ["isThirdPartyRequest"]
       43 SETTABLEKS                       R6 R5 K10 ["isThirdPartyRequest"]
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R6 R7 K11 ["messageId"]
       48 SETTABLEKS                       R6 R5 K11 ["messageId"]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R6 R7 K12 ["contentId"]
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

PROTO_28:
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_34:
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
      109 GETUPVAL                         R10 9
      110 CALL                             R10 0 1
      111 JUMPIFNOT                        R10 ; [+22]
      112 GETUPVAL                         R10 10
      113 GETUPVAL                         R11 11
      114 DUPTABLE                         R12 K21 [{"messageId", "contentId", "isThirdPartyRequest"}]
      115 GETTABLEKS                       R13 R1 K0 ["messageId"]
      117 SETTABLEKS                       R13 R12 K0 ["messageId"]
      119 GETTABLEKS                       R13 R1 K1 ["contentId"]
      121 SETTABLEKS                       R13 R12 K1 ["contentId"]
      123 GETTABLEKS                       R13 R1 K20 ["isThirdPartyRequest"]
      125 SETTABLEKS                       R13 R12 K20 ["isThirdPartyRequest"]
      127 CALL                             R11 1 1
      128 CALL                             R10 1 1
      129 GETTABLEKS                       R11 R10 K22 ["updateWidget"]
      131 MOVE                             R12 R9
      132 CALL                             R11 1 0
      133 JUMP                             ; [+25]
      134 GETUPVAL                         R10 1
      135 CALL                             R10 0 1
      136 JUMPIFNOT                        R10 ; [+11]
      137 GETUPVAL                         R11 12
      138 GETTABLEKS                       R10 R11 K23 ["getContentHooks"]
      140 GETTABLEKS                       R11 R1 K1 ["contentId"]
      142 CALL                             R10 1 1
      143 GETTABLEKS                       R11 R10 K24 ["editContent"]
      145 MOVE                             R12 R9
      146 CALL                             R11 1 0
      147 JUMP                             ; [+11]
      148 GETUPVAL                         R11 12
      149 GETTABLEKS                       R10 R11 K24 ["editContent"]
      151 DUPTABLE                         R11 K26 [{"messageId", "contentId", "transformFn"}]
      152 SETTABLEKS                       R2 R11 K0 ["messageId"]
      154 SETTABLEKS                       R3 R11 K1 ["contentId"]
      156 SETTABLEKS                       R9 R11 K25 ["transformFn"]
      158 CALL                             R10 1 0
      159 GETUPVAL                         R10 1
      160 CALL                             R10 0 1
      161 JUMPIF                           R10 ; [+3]
      162 GETUPVAL                         R10 9
      163 CALL                             R10 0 1
      164 JUMPIFNOT                        R10 ; [+17]
      165 GETTABLEKS                       R10 R1 K20 ["isThirdPartyRequest"]
      167 GETTABLEKS                       R11 R8 K3 ["name"]
      169 JUMPIFNOT                        R10 ; [+1]
      170 RETURN                           R0 0
      171 GETUPVAL                         R12 13
      172 MOVE                             R13 R0
      173 DUPTABLE                         R14 K27 [{"isThirdPartyRequest", "contentId", "name"}]
      174 SETTABLEKS                       R10 R14 K20 ["isThirdPartyRequest"]
      176 SETTABLEKS                       R3 R14 K1 ["contentId"]
      178 SETTABLEKS                       R11 R14 K3 ["name"]
      180 CALL                             R12 2 0
      181 RETURN                           R0 0
      182 GETUPVAL                         R10 13
      183 MOVE                             R11 R0
      184 DUPTABLE                         R12 K28 [{"isThirdPartyRequest", "messageId", "contentId", "name"}]
      185 LOADNIL                          R13
      186 SETTABLEKS                       R13 R12 K20 ["isThirdPartyRequest"]
      188 SETTABLEKS                       R2 R12 K0 ["messageId"]
      190 SETTABLEKS                       R3 R12 K1 ["contentId"]
      192 SETTABLEKS                       R5 R12 K3 ["name"]
      194 CALL                             R10 2 0
      195 RETURN                           R0 0

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
      120 DUPTABLE                         R9 K35 [{"isThirdPartyRequest", "messageId", "contentId", "assetIds", "name", "studsPerTile", "isOrganic"}]
      121 GETUPVAL                         R11 10
      122 CALL                             R11 0 1
      123 JUMPIFNOT                        R11 ; [+4]
      124 GETUPVAL                         R11 11
      125 GETTABLEKS                       R10 R11 K28 ["isThirdPartyRequest"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R10
      129 SETTABLEKS                       R10 R9 K28 ["isThirdPartyRequest"]
      131 GETUPVAL                         R10 12
      132 SETTABLEKS                       R10 R9 K29 ["messageId"]
      134 GETUPVAL                         R10 13
      135 SETTABLEKS                       R10 R9 K30 ["contentId"]
      137 SETTABLEKS                       R4 R9 K31 ["assetIds"]
      139 GETUPVAL                         R10 1
      140 SETTABLEKS                       R10 R9 K32 ["name"]
      142 SETTABLEKS                       R5 R9 K33 ["studsPerTile"]
      144 SETTABLEKS                       R6 R9 K34 ["isOrganic"]
      146 CALL                             R7 2 0
      147 JUMPIFNOT                        R3 ; [+12]
      148 DUPTABLE                         R7 K36 [{"BaseMaterial", "Name"}]
      149 GETTABLEKS                       R9 R3 K17 ["BaseMaterial"]
      151 GETTABLEKS                       R8 R9 K7 ["Name"]
      153 SETTABLEKS                       R8 R7 K17 ["BaseMaterial"]
      155 GETTABLEKS                       R8 R3 K7 ["Name"]
      157 SETTABLEKS                       R8 R7 K7 ["Name"]
      159 RETURN                           R7 1
      160 RETURN                           R0 0

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
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R9 R9 K16 ["andThen"]
       72 CALL                             R9 2 1
       73 NAMECALL                         R9 R9 K17 ["await"]
       75 CALL                             R9 1 2
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R11 R12 K18 ["endRecording"]
       79 MOVE                             R12 R8
       80 CALL                             R11 1 0
       81 RETURN                           R9 2

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
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
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K24 ["Type"]
       61 SETTABLEKS                       R10 R9 K19 ["type"]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R11 R12 K25 ["Modes"]
       66 GETTABLEKS                       R10 R11 K26 ["Generating"]
       68 SETTABLEKS                       R10 R9 K20 ["mode"]
       70 SETTABLEKS                       R2 R9 K21 ["name"]
       72 SETTABLEKS                       R2 R9 K22 ["displayName"]
       74 NEWCLOSURE                       R10 P0
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R9
       77 GETUPVAL                         R11 2
       78 CALL                             R11 0 1
       79 JUMPIFNOT                        R11 ; [+16]
       80 GETUPVAL                         R11 3
       81 GETUPVAL                         R12 4
       82 DUPTABLE                         R13 K27 [{"messageId", "contentId", "isThirdPartyRequest"}]
       83 SETTABLEKS                       R7 R13 K16 ["messageId"]
       85 SETTABLEKS                       R8 R13 K18 ["contentId"]
       87 SETTABLEKS                       R6 R13 K15 ["isThirdPartyRequest"]
       89 CALL                             R12 1 1
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R11 K28 ["updateWidget"]
       93 MOVE                             R13 R10
       94 CALL                             R12 1 0
       95 JUMP                             ; [+24]
       96 GETUPVAL                         R11 5
       97 CALL                             R11 0 1
       98 JUMPIFNOT                        R11 ; [+10]
       99 GETUPVAL                         R12 6
      100 GETTABLEKS                       R11 R12 K29 ["getContentHooks"]
      102 MOVE                             R12 R8
      103 CALL                             R11 1 1
      104 GETTABLEKS                       R12 R11 K30 ["editContent"]
      106 MOVE                             R13 R10
      107 CALL                             R12 1 0
      108 JUMP                             ; [+11]
      109 GETUPVAL                         R12 6
      110 GETTABLEKS                       R11 R12 K30 ["editContent"]
      112 DUPTABLE                         R12 K32 [{"messageId", "contentId", "transformFn"}]
      113 SETTABLEKS                       R7 R12 K16 ["messageId"]
      115 SETTABLEKS                       R8 R12 K18 ["contentId"]
      117 SETTABLEKS                       R10 R12 K31 ["transformFn"]
      119 CALL                             R11 1 0
      120 GETUPVAL                         R11 7
      121 LOADNIL                          R12
      122 DUPTABLE                         R13 K34 [{"isThirdPartyRequest", "messageId", "contentId", "materialDescription", "baseMaterial", "materialId", "materialPattern", "toolArguments"}]
      123 GETUPVAL                         R15 2
      124 CALL                             R15 0 1
      125 JUMPIFNOT                        R15 ; [+2]
      126 MOVE                             R14 R6
      127 JUMP                             ; [+1]
      128 LOADNIL                          R14
      129 SETTABLEKS                       R14 R13 K15 ["isThirdPartyRequest"]
      131 SETTABLEKS                       R7 R13 K16 ["messageId"]
      133 SETTABLEKS                       R8 R13 K18 ["contentId"]
      135 SETTABLEKS                       R3 R13 K4 ["materialDescription"]
      137 SETTABLEKS                       R4 R13 K9 ["baseMaterial"]
      139 SETTABLEKS                       R2 R13 K0 ["materialId"]
      141 SETTABLEKS                       R5 R13 K13 ["materialPattern"]
      143 LOADNIL                          R14
      144 SETTABLEKS                       R14 R13 K33 ["toolArguments"]
      146 CALL                             R11 2 2
      147 RETURN                           R11 2

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MaterialGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

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
       39 CAPTURE                          VAL R2
       40 NAMECALL                         R11 R1 K4 ["OnHostEvent"]
       42 CALL                             R11 3 1
       43 LOADK                            R14 K8 ["MaterialGenTool_updateContentHeader"]
       44 NEWCLOSURE                       R15 P7
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 NAMECALL                         R12 R1 K9 ["OnGuestEvent"]
       53 CALL                             R12 3 1
       54 LOADK                            R15 K10 ["MaterialGenTool_listenToLinkChanges"]
       55 NEWCLOSURE                       R16 P8
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CAPTURE                          VAL R12
       61 NAMECALL                         R13 R1 K4 ["OnHostEvent"]
       63 CALL                             R13 3 1
       64 NEWCLOSURE                       R14 P9
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 NEWCLOSURE                       R15 P10
       71 CAPTURE                          VAL R13
       72 GETUPVAL                         R16 4
       73 CALL                             R16 0 1
       74 JUMPIFNOT                        R16 ; [+19]
       75 LOADK                            R18 K11 ["MaterialGenTool_rebuildLocalToolStateOnHydration"]
       76 NEWCLOSURE                       R19 P11
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R4
       79 NAMECALL                         R16 R1 K12 ["OnHostInvokeAsync"]
       81 CALL                             R16 3 1
       82 GETUPVAL                         R18 9
       83 GETTABLEKS                       R17 R18 K13 ["registerHydrator"]
       85 GETUPVAL                         R19 10
       86 GETTABLEKS                       R18 R19 K14 ["Type"]
       88 NEWCLOSURE                       R19 P12
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R13
       93 CALL                             R17 2 0
       94 LOADK                            R18 K15 ["MaterialGenTool_updateMaterialGenContentWidget"]
       95 NEWCLOSURE                       R19 P13
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R14
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R13
      110 NAMECALL                         R16 R1 K9 ["OnGuestEvent"]
      112 CALL                             R16 3 1
      113 LOADK                            R19 K16 ["MaterialGenTool_generateMaterialVariantsAsync"]
      114 NEWCLOSURE                       R20 P14
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U13
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R16
      123 CAPTURE                          UPVAL U5
      124 NAMECALL                         R17 R1 K12 ["OnHostInvokeAsync"]
      126 CALL                             R17 3 1
      127 NEWCLOSURE                       R18 P15
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U4
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R17
      136 NEWCLOSURE                       R19 P16
      137 CAPTURE                          UPVAL U2
      138 CAPTURE                          VAL R18
      139 CAPTURE                          UPVAL U15
      140 GETUPVAL                         R21 16
      141 GETTABLEKS                       R20 R21 K17 ["define"]
      143 CALL                             R20 0 1
      144 GETUPVAL                         R23 17
      145 GETTABLEKS                       R22 R23 K18 ["MaterialGen"]
      147 NAMECALL                         R20 R20 K19 ["setName"]
      149 CALL                             R20 2 1
      150 LOADK                            R22 K20 ["Returns the BaseMaterial and Name of the generated MaterialVariant. To use, these must both be set to the Material and MaterialVariant properties of BaseParts, respectively."]
      151 NAMECALL                         R20 R20 K21 ["setDescription"]
      153 CALL                             R20 2 1
      154 LOADK                            R22 K22 ["materialDescription"]
      155 DUPTABLE                         R23 K24 [{"type"}]
      156 LOADK                            R24 K25 ["string"]
      157 SETTABLEKS                       R24 R23 K23 ["type"]
      159 NAMECALL                         R20 R20 K26 ["addArgument"]
      161 CALL                             R20 3 1
      162 LOADK                            R22 K27 ["baseMaterial"]
      163 DUPTABLE                         R23 K29 [{"type", "enum"}]
      164 LOADK                            R24 K25 ["string"]
      165 SETTABLEKS                       R24 R23 K23 ["type"]
      167 GETUPVAL                         R25 2
      168 GETTABLEKS                       R24 R25 K30 ["useEnumExcept"]
      170 GETIMPORT                        R25 K33 [Enum.Material]
      172 NEWTABLE                         R26 8 0
      174 GETIMPORT                        R27 K35 [Enum.Material.Neon]
      176 LOADB                            R28 1
      177 SETTABLE                         R28 R26 R27
      178 GETIMPORT                        R27 K37 [Enum.Material.Glass]
      180 LOADB                            R28 1
      181 SETTABLE                         R28 R26 R27
      182 GETIMPORT                        R27 K39 [Enum.Material.ForceField]
      184 LOADB                            R28 1
      185 SETTABLE                         R28 R26 R27
      186 GETIMPORT                        R27 K41 [Enum.Material.Air]
      188 LOADB                            R28 1
      189 SETTABLE                         R28 R26 R27
      190 GETIMPORT                        R27 K43 [Enum.Material.Water]
      192 LOADB                            R28 1
      193 SETTABLE                         R28 R26 R27
      194 CALL                             R24 2 1
      195 SETTABLEKS                       R24 R23 K28 ["enum"]
      197 NAMECALL                         R20 R20 K26 ["addArgument"]
      199 CALL                             R20 3 1
      200 LOADK                            R22 K44 ["materialPattern"]
      201 DUPTABLE                         R23 K29 [{"type", "enum"}]
      202 LOADK                            R24 K25 ["string"]
      203 SETTABLEKS                       R24 R23 K23 ["type"]
      205 GETUPVAL                         R25 2
      206 GETTABLEKS                       R24 R25 K45 ["useEnum"]
      208 GETIMPORT                        R25 K47 [Enum.MaterialPattern]
      210 CALL                             R24 1 1
      211 SETTABLEKS                       R24 R23 K28 ["enum"]
      213 NAMECALL                         R20 R20 K26 ["addArgument"]
      215 CALL                             R20 3 1
      216 LOADK                            R22 K48 ["materialId"]
      217 DUPTABLE                         R23 K24 [{"type"}]
      218 LOADK                            R24 K25 ["string"]
      219 SETTABLEKS                       R24 R23 K23 ["type"]
      221 NAMECALL                         R20 R20 K26 ["addArgument"]
      223 CALL                             R20 3 1
      224 MOVE                             R22 R19
      225 NAMECALL                         R20 R20 K49 ["setHandler"]
      227 CALL                             R20 2 1
      228 NAMECALL                         R20 R20 K50 ["build"]
      230 CALL                             R20 1 1
      231 DUPTABLE                         R21 K54 [{"command", "getDescription", "mapToToolCall"}]
      232 LOADK                            R22 K55 ["material"]
      233 SETTABLEKS                       R22 R21 K51 ["command"]
      235 DUPCLOSURE                       R22 K56 [PROTO_41]
      236 CAPTURE                          UPVAL U8
      237 SETTABLEKS                       R22 R21 K52 ["getDescription"]
      239 DUPCLOSURE                       R22 K57 [PROTO_42]
      240 CAPTURE                          UPVAL U17
      241 CAPTURE                          UPVAL U12
      242 SETTABLEKS                       R22 R21 K53 ["mapToToolCall"]
      244 DUPTABLE                         R22 K59 [{"transformInitialContent"}]
      245 DUPCLOSURE                       R23 K60 [PROTO_43]
      246 CAPTURE                          UPVAL U10
      247 SETTABLEKS                       R23 R22 K58 ["transformInitialContent"]
      249 DUPTABLE                         R23 K68 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      250 SETTABLEKS                       R20 R23 K61 ["definition"]
      252 NEWTABLE                         R24 0 1
      254 MOVE                             R25 R21
      255 SETLIST                          R24 R25 1 [1]
      257 SETTABLEKS                       R24 R23 K62 ["slashCommands"]
      259 NEWTABLE                         R24 0 1
      261 GETUPVAL                         R25 10
      262 SETLIST                          R24 R25 1 [1]
      264 SETTABLEKS                       R24 R23 K63 ["contentWidgets"]
      266 SETTABLEKS                       R22 R23 K64 ["streamTransform"]
      268 DUPCLOSURE                       R24 K69 [PROTO_44]
      269 SETTABLEKS                       R24 R23 K65 ["getPreExecuteWarning"]
      271 DUPCLOSURE                       R24 K70 [PROTO_45]
      272 CAPTURE                          UPVAL U8
      273 SETTABLEKS                       R24 R23 K66 ["displayNameFunction"]
      275 DUPTABLE                         R24 K72 [{"resetTimeoutOnProgress"}]
      276 LOADB                            R25 1
      277 SETTABLEKS                       R25 R24 K71 ["resetTimeoutOnProgress"]
      279 SETTABLEKS                       R24 R23 K67 ["toolCallOptions"]
      281 RETURN                           R23 1

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
       41 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       43 GETTABLEKS                       R7 R8 K17 ["ExternalHooks"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R10 R0 K18 ["Components"]
       50 GETTABLEKS                       R9 R10 K19 ["ContentWidgets"]
       52 GETTABLEKS                       R8 R9 K20 ["MaterialGenContentWidget"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Parent"]
       59 GETTABLEKS                       R9 R10 K21 ["ModelContextProtocol"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R11 R0 K12 ["Parent"]
       66 GETTABLEKS                       R10 R11 K22 ["Promise"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R13 R0 K23 ["Util"]
       73 GETTABLEKS                       R12 R13 K24 ["Serializer"]
       75 GETTABLEKS                       R11 R12 K25 ["SerializerRegistry"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R13 R0 K26 ["Tools"]
       82 GETTABLEKS                       R12 R13 K27 ["ToolTypes"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R14 R0 K23 ["Util"]
       89 GETTABLEKS                       R13 R14 K28 ["ToolUtils"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R16 R0 K29 ["Resources"]
       96 GETTABLEKS                       R15 R16 K30 ["Localization"]
       98 GETTABLEKS                       R14 R15 K31 ["Translator"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K11 [require]
      103 GETTABLEKS                       R15 R0 K32 ["Types"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R17 R0 K33 ["Flags"]
      110 GETTABLEKS                       R16 R17 K34 ["FFlagAssistantPersistConversations"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K11 [require]
      115 GETTABLEKS                       R18 R0 K33 ["Flags"]
      117 GETTABLEKS                       R17 R18 K35 ["FFlagAssistantUseNewMeshGenTool"]
      119 CALL                             R16 1 1
      120 GETTABLEKS                       R18 R8 K23 ["Util"]
      122 GETTABLEKS                       R17 R18 K36 ["ToolBuilder"]
      124 GETTABLEKS                       R19 R8 K23 ["Util"]
      126 GETTABLEKS                       R18 R19 K37 ["ToolResult"]
      128 GETTABLEKS                       R19 R11 K38 ["ToolNames"]
      130 DUPCLOSURE                       R20 K39 [PROTO_1]
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 DUPCLOSURE                       R21 K40 [PROTO_2]
      134 DUPCLOSURE                       R22 K41 [PROTO_4]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 DUPCLOSURE                       R23 K42 [PROTO_5]
      138 DUPCLOSURE                       R24 K43 [PROTO_6]
      139 DUPCLOSURE                       R25 K44 [PROTO_46]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R19
      158 RETURN                           R25 1
