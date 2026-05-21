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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantUseNewMeshGenTool is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["toolArgs"]
       10 GETTABLEKS                       R1 R1 K4 ["externalHooks"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 DUPTABLE                         R3 K6 [{"updateWidget"}]
       17 SETTABLEKS                       R2 R3 K5 ["updateWidget"]
       19 RETURN                           R3 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["marketplaceInsertion"]
        5 GETTABLEKS                       R1 R1 K2 ["getFreeModelsAsync"]
        7 MOVE                             R2 R0
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 NEWTABLE                         R2 0 0
       12 GETTABLEN                        R3 R1 1
       13 GETTABLEKS                       R3 R3 K3 ["Results"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 LOADN                            R8 6
       19 JUMPIFLT                         R8 R6 ; [+15]
       21 GETTABLEKS                       R11 R7 K4 ["AssetId"]
       23 FASTCALL1                        TOSTRING R11 ; [+2]
       24 GETIMPORT                        R10 K6 [tostring]
       26 CALL                             R10 1 1
       27 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       29 MOVE                             R9 R2
       30 GETIMPORT                        R8 K9 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 ; [-16]
       35 LENGTH                           R5 R2
       36 LOADN                            R6 0
       37 JUMPIFLT                         R6 R5 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 LOADK                            R6 K10 ["Failed to find \"%*\" in the marketplace!"]
       42 MOVE                             R8 R0
       43 NAMECALL                         R6 R6 K11 ["format"]
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 FASTCALL2                        ASSERT R4 R5 ; [+3]
       49 GETIMPORT                        R3 K13 [assert]
       51 CALL                             R3 2 0
       52 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{"displayName", "className", "shouldShowChip"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["displayName"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["className"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K3 ["shouldShowChip"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 4
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 DUPTABLE                         R1 K6 [{"rawTransformValues"}]
       19 LOADB                            R2 1
       20 SETTABLEKS                       R2 R1 K5 ["rawTransformValues"]
       22 RETURN                           R1 1
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["newClassName"]
        4 GETTABLEKS                       R4 R1 K2 ["showChip"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U1
       12 GETUPVAL                         R6 2
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+22]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 DUPTABLE                         R8 K6 [{"messageId", "contentId", "isThirdPartyRequest"}]
       18 GETTABLEKS                       R9 R1 K3 ["messageId"]
       20 SETTABLEKS                       R9 R8 K3 ["messageId"]
       22 GETTABLEKS                       R9 R1 K4 ["contentId"]
       24 SETTABLEKS                       R9 R8 K4 ["contentId"]
       26 GETTABLEKS                       R9 R1 K5 ["isThirdPartyRequest"]
       28 SETTABLEKS                       R9 R8 K5 ["isThirdPartyRequest"]
       30 CALL                             R7 1 1
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R6 K7 ["updateWidget"]
       34 MOVE                             R8 R5
       35 CALL                             R7 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R6 1
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+11]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K8 ["getContentHooks"]
       43 GETTABLEKS                       R7 R1 K4 ["contentId"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K9 ["editContent"]
       48 MOVE                             R8 R5
       49 CALL                             R7 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R6 R6 K9 ["editContent"]
       54 DUPTABLE                         R7 K11 [{"messageId", "contentId", "transformFn"}]
       55 GETTABLEKS                       R8 R1 K3 ["messageId"]
       57 SETTABLEKS                       R8 R7 K3 ["messageId"]
       59 GETTABLEKS                       R8 R1 K4 ["contentId"]
       61 SETTABLEKS                       R8 R7 K4 ["contentId"]
       63 SETTABLEKS                       R5 R7 K10 ["transformFn"]
       65 CALL                             R6 1 0
       66 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R3 K1 ["GetTagged"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["selection"]
       10 GETTABLEKS                       R4 R4 K3 ["set"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

PROTO_7:
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
       37 LOADNIL                          R3
       38 LOADN                            R4 0
       39 JUMPIFNOTLT                      R4 R1 ; [+4]
       41 GETTABLEN                        R4 R0 1
       42 GETTABLEKS                       R3 R4 K10 ["ClassName"]
       44 GETUPVAL                         R4 4
       45 GETUPVAL                         R5 5
       46 DUPTABLE                         R6 K17 [{"isThirdPartyRequest", "messageId", "contentId", "newDisplayName", "newClassName", "showChip"}]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K11 ["isThirdPartyRequest"]
       50 SETTABLEKS                       R7 R6 K11 ["isThirdPartyRequest"]
       52 GETUPVAL                         R7 6
       53 GETTABLEKS                       R7 R7 K12 ["messageId"]
       55 SETTABLEKS                       R7 R6 K12 ["messageId"]
       57 GETUPVAL                         R7 6
       58 GETTABLEKS                       R7 R7 K13 ["contentId"]
       60 SETTABLEKS                       R7 R6 K13 ["contentId"]
       62 SETTABLEKS                       R2 R6 K14 ["newDisplayName"]
       64 SETTABLEKS                       R3 R6 K15 ["newClassName"]
       66 LOADN                            R8 0
       67 JUMPIFLT                         R8 R1 ; [+2]
       69 LOADB                            R7 0 +1
       70 LOADB                            R7 1
       71 SETTABLEKS                       R7 R6 K16 ["showChip"]
       73 CALL                             R4 2 0
       74 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 GETTABLEKS                       R3 R1 K1 ["tag"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["observeLinkChanges"]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R3
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CALL                             R4 3 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETTABLEKS                       R3 R1 K1 ["insertGuid"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["loadCachedAssetAsync"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 JUMPIF                           R4 ; [+2]
       10 LOADK                            R5 K3 ["load_failure"]
       11 RETURN                           R5 1
       12 LOADK                            R6 K4 ["Assistant:"]
       13 MOVE                             R7 R3
       14 CONCAT                           R5 R6 R7
       15 GETUPVAL                         R6 1
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K5 ["GetTagged"]
       19 CALL                             R6 2 1
       20 LENGTH                           R7 R6
       21 JUMPIFNOTEQKN                    R7 K6 [0] ; [+3]
       23 LOADK                            R7 K7 ["tag_not_found"]
       24 RETURN                           R7 1
       25 MOVE                             R7 R6
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 NAMECALL                         R12 R4 K8 ["Clone"]
       31 CALL                             R12 1 1
       32 GETTABLEKS                       R13 R11 K9 ["Name"]
       34 SETTABLEKS                       R13 R12 K9 ["Name"]
       36 LOADK                            R15 K10 ["PVInstance"]
       37 NAMECALL                         R13 R11 K11 ["IsA"]
       39 CALL                             R13 2 1
       40 JUMPIFNOT                        R13 ; [+18]
       41 LOADK                            R15 K10 ["PVInstance"]
       42 NAMECALL                         R13 R4 K11 ["IsA"]
       44 CALL                             R13 2 1
       45 JUMPIFNOT                        R13 ; [+13]
       46 NAMECALL                         R13 R11 K12 ["GetPivot"]
       48 CALL                             R13 1 1
       49 GETUPVAL                         R14 0
       50 GETTABLEKS                       R14 R14 K13 ["setPositionOnGround"]
       52 MOVE                             R15 R12
       53 LOADB                            R16 0
       54 GETTABLEKS                       R17 R13 K14 ["Position"]
       56 GETTABLEKS                       R18 R13 K15 ["LookVector"]
       58 CALL                             R14 4 0
       59 MOVE                             R15 R5
       60 NAMECALL                         R13 R12 K16 ["AddTag"]
       62 CALL                             R13 2 0
       63 GETIMPORT                        R13 K18 [workspace]
       65 SETTABLEKS                       R13 R12 K19 ["Parent"]
       67 LOADNIL                          R13
       68 SETTABLEKS                       R13 R11 K19 ["Parent"]
       70 FORGLOOP                         R7 2 ; [-42]
       72 LOADK                            R7 K20 ["success"]
       73 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K2 [{"assetId", "insertGuid"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["tag"]
        8 LOADN                            R6 11
        9 NAMECALL                         R4 R4 K4 ["sub"]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K1 ["insertGuid"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"tag"}]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["tag"]
        6 SETTABLEKS                       R3 R2 K0 ["tag"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K3 ["onSelectionChange"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["onChipClicked"]
       18 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"isThirdPartyRequest", "contentId", "name", "tag"}]
        5 SETTABLEKS                       R0 R5 K0 ["isThirdPartyRequest"]
        7 SETTABLEKS                       R1 R5 K1 ["contentId"]
        9 GETTABLEKS                       R6 R2 K2 ["name"]
       11 SETTABLEKS                       R6 R5 K2 ["name"]
       13 GETTABLEKS                       R6 R2 K3 ["tag"]
       15 SETTABLEKS                       R6 R5 K3 ["tag"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Generated"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K6 ["onSelectionChange"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R2 R1 K7 ["onChipClicked"]
       28 GETUPVAL                         R2 4
       29 LOADNIL                          R3
       30 DUPTABLE                         R4 K12 [{"isThirdPartyRequest", "contentId", "name", "tag"}]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K8 ["isThirdPartyRequest"]
       34 SETTABLEKS                       R0 R4 K9 ["contentId"]
       36 GETTABLEKS                       R5 R1 K10 ["name"]
       38 SETTABLEKS                       R5 R4 K10 ["name"]
       40 GETTABLEKS                       R5 R1 K11 ["tag"]
       42 SETTABLEKS                       R5 R4 K11 ["tag"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K2 [{"assetId", "insertGuid"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 GETUPVAL                         R4 1
        6 LOADN                            R6 11
        7 NAMECALL                         R4 R4 K3 ["sub"]
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["insertGuid"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"tag"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["query"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["tag"]
        6 DUPTABLE                         R3 K12 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K13 ["Type"]
       10 SETTABLEKS                       R4 R3 K2 ["type"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K14 ["Modes"]
       15 GETTABLEKS                       R4 R4 K15 ["Generated"]
       17 SETTABLEKS                       R4 R3 K3 ["mode"]
       19 SETTABLEKS                       R1 R3 K4 ["name"]
       21 SETTABLEKS                       R1 R3 K5 ["displayName"]
       23 SETTABLEKS                       R2 R3 K1 ["tag"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K6 ["className"]
       28 SETTABLEKS                       R4 R3 K6 ["className"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K16 ["assets"]
       33 SETTABLEKS                       R4 R3 K7 ["assetIds"]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K8 ["expanded"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K9 ["shouldShowChip"]
       41 GETUPVAL                         R5 2
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+6]
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K17 ["createUnimplemented"]
       47 LOADK                            R5 K10 ["onSelectionChange"]
       48 CALL                             R4 1 1
       49 JUMP                             ; [+3]
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R4 R3 K10 ["onSelectionChange"]
       55 GETUPVAL                         R5 2
       56 CALL                             R5 0 1
       57 JUMPIFNOT                        R5 ; [+6]
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K17 ["createUnimplemented"]
       61 LOADK                            R5 K11 ["onChipClicked"]
       62 CALL                             R4 1 1
       63 JUMP                             ; [+3]
       64 NEWCLOSURE                       R4 P1
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R4 R3 K11 ["onChipClicked"]
       69 GETUPVAL                         R4 2
       70 CALL                             R4 0 1
       71 JUMPIFNOT                        R4 ; [+18]
       72 GETUPVAL                         R5 2
       73 CALL                             R5 0 1
       74 FASTCALL2K                       ASSERT R5 K18 ; [+4]
       76 LOADK                            R6 K18 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
       77 GETIMPORT                        R4 K20 [assert]
       79 CALL                             R4 2 0
       80 NEWCLOSURE                       R4 P2
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R4 R3 K10 ["onSelectionChange"]
       85 NEWCLOSURE                       R4 P3
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R4 R3 K11 ["onChipClicked"]
       90 NEWCLOSURE                       R4 P4
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R3
       93 GETUPVAL                         R5 7
       94 CALL                             R5 0 1
       95 JUMPIFNOT                        R5 ; [+18]
       96 GETUPVAL                         R5 8
       97 GETUPVAL                         R6 9
       98 DUPTABLE                         R7 K24 [{"messageId", "contentId", "isThirdPartyRequest"}]
       99 SETTABLEKS                       R0 R7 K21 ["messageId"]
      101 GETUPVAL                         R8 10
      102 SETTABLEKS                       R8 R7 K22 ["contentId"]
      104 GETUPVAL                         R8 11
      105 SETTABLEKS                       R8 R7 K23 ["isThirdPartyRequest"]
      107 CALL                             R6 1 1
      108 CALL                             R5 1 1
      109 GETTABLEKS                       R6 R5 K25 ["updateWidget"]
      111 MOVE                             R7 R4
      112 CALL                             R6 1 0
      113 JUMP                             ; [+25]
      114 GETUPVAL                         R5 2
      115 CALL                             R5 0 1
      116 JUMPIFNOT                        R5 ; [+10]
      117 GETUPVAL                         R5 12
      118 GETTABLEKS                       R5 R5 K26 ["getContentHooks"]
      120 GETUPVAL                         R6 10
      121 CALL                             R5 1 1
      122 GETTABLEKS                       R6 R5 K27 ["editContent"]
      124 MOVE                             R7 R4
      125 CALL                             R6 1 0
      126 JUMP                             ; [+12]
      127 GETUPVAL                         R5 12
      128 GETTABLEKS                       R5 R5 K27 ["editContent"]
      130 DUPTABLE                         R6 K29 [{"messageId", "contentId", "transformFn"}]
      131 SETTABLEKS                       R0 R6 K21 ["messageId"]
      133 GETUPVAL                         R7 10
      134 SETTABLEKS                       R7 R6 K22 ["contentId"]
      136 SETTABLEKS                       R4 R6 K28 ["transformFn"]
      138 CALL                             R5 1 0
      139 GETUPVAL                         R5 7
      140 CALL                             R5 0 1
      141 JUMPIF                           R5 ; [+3]
      142 GETUPVAL                         R5 2
      143 CALL                             R5 0 1
      144 JUMPIFNOT                        R5 ; [+21]
      145 GETUPVAL                         R5 11
      146 GETUPVAL                         R6 10
      147 JUMPIFNOT                        R5 ; [+1]
      148 RETURN                           R0 0
      149 GETUPVAL                         R7 13
      150 LOADNIL                          R8
      151 DUPTABLE                         R9 K30 [{"isThirdPartyRequest", "contentId", "name", "tag"}]
      152 SETTABLEKS                       R5 R9 K23 ["isThirdPartyRequest"]
      154 SETTABLEKS                       R6 R9 K22 ["contentId"]
      156 GETTABLEKS                       R10 R3 K4 ["name"]
      158 SETTABLEKS                       R10 R9 K4 ["name"]
      160 GETTABLEKS                       R10 R3 K1 ["tag"]
      162 SETTABLEKS                       R10 R9 K1 ["tag"]
      164 CALL                             R7 2 0
      165 RETURN                           R0 0
      166 GETUPVAL                         R5 13
      167 LOADNIL                          R6
      168 DUPTABLE                         R7 K31 [{"isThirdPartyRequest", "messageId", "contentId", "name", "tag"}]
      169 GETUPVAL                         R8 11
      170 SETTABLEKS                       R8 R7 K23 ["isThirdPartyRequest"]
      172 SETTABLEKS                       R0 R7 K21 ["messageId"]
      174 GETUPVAL                         R8 10
      175 SETTABLEKS                       R8 R7 K22 ["contentId"]
      177 SETTABLEKS                       R1 R7 K4 ["name"]
      179 SETTABLEKS                       R2 R7 K1 ["tag"]
      181 CALL                             R5 2 0
      182 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["responseInfo"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+5]
        4 MOVE                             R6 R4
        5 LOADK                            R7 K1 ["Missing response info"]
        6 GETIMPORT                        R5 K3 [assert]
        8 CALL                             R5 2 0
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 MOVE                             R6 R5
       25 MOVE                             R7 R2
       26 CALL                             R6 1 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadCachedAssetAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to load asset"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["startRecording"]
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 LOADB                            R4 0
       17 NAMECALL                         R2 R2 K5 ["GenerateGUID"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R1 K6 ["Name"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K7 ["setPositionOnGround"]
       26 MOVE                             R4 R1
       27 LOADB                            R5 1
       28 CALL                             R3 2 0
       29 LOADK                            R4 K8 ["Assistant:"]
       30 MOVE                             R5 R2
       31 CONCAT                           R3 R4 R5
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R1 K9 ["AddTag"]
       35 CALL                             R4 2 0
       36 GETIMPORT                        R4 K11 [workspace]
       38 SETTABLEKS                       R4 R1 K12 ["Parent"]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K13 ["endRecording"]
       43 GETUPVAL                         R5 2
       44 CALL                             R4 1 0
       45 MOVE                             R4 R3
       46 MOVE                             R5 R2
       47 GETTABLEKS                       R6 R1 K14 ["ClassName"]
       49 RETURN                           R4 3

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 ["Edit"] ; [+5]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Unable to insert models from the marketplace in play mode"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K5 ["query"]
       12 GETTABLEKS                       R3 R1 K6 ["oldTag"]
       14 GETUPVAL                         R4 1
       15 LOADB                            R6 0
       16 NAMECALL                         R4 R4 K7 ["GenerateGUID"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R3 ; [+43]
       20 GETUPVAL                         R5 2
       21 MOVE                             R7 R3
       22 NAMECALL                         R5 R5 K8 ["GetTagged"]
       24 CALL                             R5 2 1
       25 LENGTH                           R6 R5
       26 JUMPIFNOTEQKN                    R6 K9 [0] ; [+7]
       28 GETIMPORT                        R6 K3 [error]
       30 LOADK                            R8 K10 ["Failed to find asset with GUID: "]
       31 MOVE                             R9 R3
       32 CONCAT                           R7 R8 R9
       33 CALL                             R6 1 0
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K11 ["startRecording"]
       37 MOVE                             R7 R4
       38 CALL                             R6 1 0
       39 GETTABLEN                        R6 R5 1
       40 NAMECALL                         R6 R6 K12 ["Clone"]
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K13 ["setPositionOnGround"]
       46 MOVE                             R8 R6
       47 LOADB                            R9 1
       48 CALL                             R7 2 0
       49 GETIMPORT                        R7 K15 [workspace]
       51 SETTABLEKS                       R7 R6 K16 ["Parent"]
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R7 R7 K17 ["endRecording"]
       56 MOVE                             R8 R4
       57 CALL                             R7 1 0
       58 DUPTABLE                         R7 K19 [{"result"}]
       59 LOADK                            R8 K20 ["Success!"]
       60 SETTABLEKS                       R8 R7 K18 ["result"]
       62 RETURN                           R7 1
       63 GETUPVAL                         R5 5
       64 MOVE                             R6 R2
       65 CALL                             R5 1 1
       66 GETIMPORT                        R6 K23 [table.clone]
       68 MOVE                             R7 R5
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K25 [table.remove]
       72 MOVE                             R8 R6
       73 LOADN                            R9 1
       74 CALL                             R7 2 1
       75 JUMPIF                           R7 ; [+4]
       76 GETIMPORT                        R8 K3 [error]
       78 LOADK                            R9 K26 ["Failed to find asset"]
       79 CALL                             R8 1 0
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          VAL R2
       86 MOVE                             R9 R8
       87 MOVE                             R10 R7
       88 CALL                             R9 1 3
       89 MOVE                             R12 R6
       90 LOADNIL                          R13
       91 LOADNIL                          R14
       92 FORGPREP                         R12
       93 GETIMPORT                        R17 K29 [task.spawn]
       95 NEWCLOSURE                       R18 P1
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          VAL R16
       98 CALL                             R17 1 0
       99 FORGLOOP                         R12 2 ; [-7]
      101 DUPTABLE                         R12 K31 [{"result", "responseInfo"}]
      102 DUPTABLE                         R13 K34 [{"primaryResult", "secondaryResults"}]
      103 DUPTABLE                         R14 K37 [{"assetId", "insertGuid"}]
      104 SETTABLEKS                       R7 R14 K35 ["assetId"]
      106 SETTABLEKS                       R10 R14 K36 ["insertGuid"]
      108 SETTABLEKS                       R14 R13 K32 ["primaryResult"]
      110 SETTABLEKS                       R6 R13 K33 ["secondaryResults"]
      112 SETTABLEKS                       R13 R12 K18 ["result"]
      114 DUPTABLE                         R13 K41 [{"assets", "tag", "query", "insertGuid", "className"}]
      115 SETTABLEKS                       R5 R13 K38 ["assets"]
      117 SETTABLEKS                       R9 R13 K39 ["tag"]
      119 SETTABLEKS                       R2 R13 K5 ["query"]
      121 SETTABLEKS                       R10 R13 K36 ["insertGuid"]
      123 SETTABLEKS                       R11 R13 K40 ["className"]
      125 SETTABLEKS                       R13 R12 K30 ["responseInfo"]
      127 RETURN                           R12 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["messageId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["contentId"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K2 [""]
       15 DUPTABLE                         R5 K8 [{"type", "mode", "name", "displayName"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K9 ["Type"]
       19 SETTABLEKS                       R6 R5 K4 ["type"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K10 ["Modes"]
       24 GETTABLEKS                       R6 R6 K11 ["Generating"]
       26 SETTABLEKS                       R6 R5 K5 ["mode"]
       28 GETTABLEKS                       R6 R0 K12 ["query"]
       30 SETTABLEKS                       R6 R5 K6 ["name"]
       32 GETTABLEKS                       R6 R0 K12 ["query"]
       34 SETTABLEKS                       R6 R5 K7 ["displayName"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R5
       39 GETUPVAL                         R7 2
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+16]
       42 GETUPVAL                         R7 3
       43 GETUPVAL                         R8 4
       44 DUPTABLE                         R9 K13 [{"messageId", "contentId", "isThirdPartyRequest"}]
       45 SETTABLEKS                       R3 R9 K1 ["messageId"]
       47 SETTABLEKS                       R4 R9 K3 ["contentId"]
       49 SETTABLEKS                       R2 R9 K0 ["isThirdPartyRequest"]
       51 CALL                             R8 1 1
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K14 ["updateWidget"]
       55 MOVE                             R9 R6
       56 CALL                             R8 1 0
       57 JUMP                             ; [+24]
       58 GETUPVAL                         R7 5
       59 CALL                             R7 0 1
       60 JUMPIFNOT                        R7 ; [+10]
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R7 R7 K15 ["getContentHooks"]
       64 MOVE                             R8 R4
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R7 K16 ["editContent"]
       68 MOVE                             R9 R6
       69 CALL                             R8 1 0
       70 JUMP                             ; [+11]
       71 GETUPVAL                         R7 6
       72 GETTABLEKS                       R7 R7 K16 ["editContent"]
       74 DUPTABLE                         R8 K18 [{"messageId", "contentId", "transformFn"}]
       75 SETTABLEKS                       R3 R8 K1 ["messageId"]
       77 SETTABLEKS                       R4 R8 K3 ["contentId"]
       79 SETTABLEKS                       R6 R8 K17 ["transformFn"]
       81 CALL                             R7 1 0
       82 GETUPVAL                         R7 7
       83 LOADNIL                          R8
       84 DUPTABLE                         R9 K20 [{"query", "oldTag"}]
       85 GETTABLEKS                       R10 R0 K12 ["query"]
       87 SETTABLEKS                       R10 R9 K12 ["query"]
       89 GETTABLEKS                       R10 R0 K21 ["tag"]
       91 SETTABLEKS                       R10 R9 K19 ["oldTag"]
       93 CALL                             R7 2 1
       94 GETTABLEKS                       R8 R7 K22 ["responseInfo"]
       96 JUMPIFNOT                        R8 ; [+27]
       97 GETTABLEKS                       R8 R7 K22 ["responseInfo"]
       99 FASTCALL2K                       ASSERT R8 K23 ; [+5]
      101 MOVE                             R10 R8
      102 LOADK                            R11 K23 ["Missing response info"]
      103 GETIMPORT                        R9 K25 [assert]
      105 CALL                             R9 2 0
      106 NEWCLOSURE                       R9 P1
      107 CAPTURE                          VAL R8
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          UPVAL U2
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R2
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U11
      121 MOVE                             R10 R9
      122 MOVE                             R11 R3
      123 CALL                             R10 1 0
      124 GETUPVAL                         R8 12
      125 CALL                             R8 0 1
      126 GETUPVAL                         R10 13
      127 GETTABLEKS                       R10 R10 K26 ["toString"]
      129 GETTABLEKS                       R11 R7 K27 ["result"]
      131 CALL                             R10 1 -1
      132 NAMECALL                         R8 R8 K28 ["addText"]
      134 CALL                             R8 -1 1
      135 NAMECALL                         R8 R8 K29 ["build"]
      137 CALL                             R8 1 -1
      138 RETURN                           R8 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MarketplaceInsertion"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_26:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["InsertFromMarketplace"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_27:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["externalHooks"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R3
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R2
       10 LOADK                            R8 K3 ["MarketplaceInsertionTool_updateContentHeader"]
       11 NEWCLOSURE                       R9 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R3
       18 NAMECALL                         R6 R1 K4 ["OnGuestEvent"]
       20 CALL                             R6 3 1
       21 LOADK                            R9 K5 ["MarketplaceInsertionTool_selectInsertedAssets"]
       22 NEWCLOSURE                       R10 P3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R7 R1 K6 ["OnHostEvent"]
       27 CALL                             R7 3 1
       28 LOADK                            R10 K7 ["MarketplaceInsertionTool_listenToLinkChanges"]
       29 NEWCLOSURE                       R11 P4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R6
       35 NAMECALL                         R8 R1 K6 ["OnHostEvent"]
       37 CALL                             R8 3 1
       38 LOADK                            R11 K8 ["MarketplaceInsertionTool_swapAsset"]
       39 DUPCLOSURE                       R12 K9 [PROTO_9]
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U4
       42 NAMECALL                         R9 R1 K10 ["OnHostInvokeAsync"]
       44 CALL                             R9 3 1
       45 NEWCLOSURE                       R10 P6
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R7
       49 NEWCLOSURE                       R11 P7
       50 CAPTURE                          VAL R8
       51 GETUPVAL                         R12 1
       52 CALL                             R12 0 1
       53 JUMPIFNOT                        R12 ; [+13]
       54 GETUPVAL                         R12 7
       55 GETTABLEKS                       R12 R12 K11 ["registerHydrator"]
       57 GETUPVAL                         R13 8
       58 GETTABLEKS                       R13 R13 K12 ["Type"]
       60 NEWCLOSURE                       R14 P8
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CALL                             R12 2 0
       67 NEWCLOSURE                       R12 P9
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R8
       79 LOADK                            R15 K13 ["MarketplaceInsertionTool_insertFromMarketplace"]
       80 NEWCLOSURE                       R16 P10
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R5
       87 NAMECALL                         R13 R1 K10 ["OnHostInvokeAsync"]
       89 CALL                             R13 3 1
       90 NEWCLOSURE                       R14 P11
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R13
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          UPVAL U5
      105 GETUPVAL                         R15 13
      106 GETTABLEKS                       R15 R15 K14 ["define"]
      108 CALL                             R15 0 1
      109 GETUPVAL                         R17 14
      110 GETTABLEKS                       R17 R17 K15 ["InsertFromMarketplace"]
      112 NAMECALL                         R15 R15 K16 ["setName"]
      114 CALL                             R15 2 1
      115 LOADK                            R17 K17 ["Inserts a model from the Roblox marketplace into the game.\nReturns the inserted asset ID, a unique GUID to use for the asset in subsequent commands, and a list of other asset IDs that were found in the search.\n\nThe inserted model will be tagged with the GUID, prefixed with 'Assistant:'.\nTo reference the model in subsequent commands, CollectionService:GetTagged(\"Assistant:<GUID>\") can be used. You are guaranteed to get only one model back, as the GUID is unique.\nDon't tell the user about the GUID or the alternative asset IDs, these are for your own use only.\nIf you are asked to add more of a previously-inserted model, you should use the tag input property instead by searching for the generated tag in your conversation history.\n\nFor example:\n\tlocal instances = CollectionService:GetTagged(\"Assistant:1234-5678-9101\")\n\tinstances[1].Pivot = CFrame.new(0, 0, 0)\nwill move the model to the origin.\n"]
      116 NAMECALL                         R15 R15 K18 ["setDescription"]
      118 CALL                             R15 2 1
      119 LOADK                            R17 K19 ["query"]
      120 DUPTABLE                         R18 K22 [{"type", "description"}]
      121 LOADK                            R19 K23 ["string"]
      122 SETTABLEKS                       R19 R18 K20 ["type"]
      124 LOADK                            R19 K24 ["The name of the asset to insert."]
      125 SETTABLEKS                       R19 R18 K21 ["description"]
      127 NAMECALL                         R15 R15 K25 ["addArgument"]
      129 CALL                             R15 3 1
      130 LOADK                            R17 K26 ["tag"]
      131 DUPTABLE                         R18 K22 [{"type", "description"}]
      132 LOADK                            R19 K23 ["string"]
      133 SETTABLEKS                       R19 R18 K20 ["type"]
      135 LOADK                            R19 K27 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
      136 SETTABLEKS                       R19 R18 K21 ["description"]
      138 NAMECALL                         R15 R15 K28 ["addOptionalArgument"]
      140 CALL                             R15 3 1
      141 DUPTABLE                         R17 K34 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      142 LOADK                            R18 K35 ["Marketplace Insertion"]
      143 SETTABLEKS                       R18 R17 K29 ["title"]
      145 LOADB                            R18 0
      146 SETTABLEKS                       R18 R17 K30 ["readOnlyHint"]
      148 LOADB                            R18 0
      149 SETTABLEKS                       R18 R17 K31 ["destructiveHint"]
      151 LOADB                            R18 0
      152 SETTABLEKS                       R18 R17 K32 ["idempotentHint"]
      154 LOADB                            R18 0
      155 SETTABLEKS                       R18 R17 K33 ["openWorldHint"]
      157 NAMECALL                         R15 R15 K36 ["setAnnotations"]
      159 CALL                             R15 2 1
      160 MOVE                             R17 R14
      161 NAMECALL                         R15 R15 K37 ["setHandler"]
      163 CALL                             R15 2 1
      164 NAMECALL                         R15 R15 K38 ["build"]
      166 CALL                             R15 1 1
      167 DUPTABLE                         R16 K42 [{"command", "getDescription", "mapToToolCall"}]
      168 LOADK                            R17 K43 ["insert"]
      169 SETTABLEKS                       R17 R16 K39 ["command"]
      171 DUPCLOSURE                       R17 K44 [PROTO_25]
      172 CAPTURE                          UPVAL U6
      173 SETTABLEKS                       R17 R16 K40 ["getDescription"]
      175 DUPCLOSURE                       R17 K45 [PROTO_26]
      176 CAPTURE                          UPVAL U14
      177 SETTABLEKS                       R17 R16 K41 ["mapToToolCall"]
      179 DUPTABLE                         R17 K47 [{"transformInitialContent"}]
      180 DUPCLOSURE                       R18 K48 [PROTO_27]
      181 CAPTURE                          UPVAL U8
      182 SETTABLEKS                       R18 R17 K46 ["transformInitialContent"]
      184 DUPTABLE                         R18 K53 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
      185 SETTABLEKS                       R15 R18 K49 ["definition"]
      187 NEWTABLE                         R19 0 1
      189 MOVE                             R20 R16
      190 SETLIST                          R19 R20 1 [1]
      192 SETTABLEKS                       R19 R18 K50 ["slashCommands"]
      194 NEWTABLE                         R19 0 1
      196 GETUPVAL                         R20 8
      197 SETLIST                          R19 R20 1 [1]
      199 SETTABLEKS                       R19 R18 K51 ["contentWidgets"]
      201 SETTABLEKS                       R17 R18 K52 ["streamTransform"]
      203 RETURN                           R18 1

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
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Components"]
       23 GETTABLEKS                       R4 R4 K12 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R4 K13 ["AssetVariationContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R0 K14 ["Parent"]
       32 GETTABLEKS                       R5 R5 K15 ["Dash"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K16 ["Util"]
       39 GETTABLEKS                       R6 R6 K17 ["DataModelType"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K18 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K19 ["ExternalHooks"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Parent"]
       53 GETTABLEKS                       R8 R8 K20 ["ModelContextProtocol"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K21 ["Serializer"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K22 ["Tools"]
       67 GETTABLEKS                       R10 R10 K23 ["ToolTypes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Util"]
       74 GETTABLEKS                       R11 R11 K24 ["ToolUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R0 K25 ["Resources"]
       81 GETTABLEKS                       R12 R12 K26 ["Localization"]
       83 GETTABLEKS                       R12 R12 K27 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K28 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETTABLEKS                       R14 R0 K29 ["Flags"]
       95 GETTABLEKS                       R14 R14 K30 ["FFlagAssistantMultipleChatPersistence"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R15 R0 K29 ["Flags"]
      102 GETTABLEKS                       R15 R15 K31 ["FFlagAssistantUseNewMeshGenTool"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R7 K16 ["Util"]
      107 GETTABLEKS                       R15 R15 K32 ["ToolBuilder"]
      109 GETTABLEKS                       R16 R7 K16 ["Util"]
      111 GETTABLEKS                       R16 R16 K33 ["ToolResult"]
      113 GETTABLEKS                       R17 R9 K34 ["ToolNames"]
      115 DUPCLOSURE                       R18 K35 [PROTO_1]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R13
      118 DUPCLOSURE                       R19 K36 [PROTO_28]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R17
      134 RETURN                           R19 1
