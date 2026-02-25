PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["This function should not be called when long running tool calls are enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["toString"]
       14 GETTABLEKS                       R4 R0 K4 ["result"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K5 ["addText"]
       19 CALL                             R1 -1 1
       20 NAMECALL                         R1 R1 K6 ["build"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["This function should not be called when long running tool calls are enabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["generateToolId"]
       12 CALL                             R2 0 1
       13 DUPTABLE                         R3 K8 [{"type", "id", "name", "input"}]
       14 LOADK                            R4 K9 ["tool_use"]
       15 SETTABLEKS                       R4 R3 K4 ["type"]
       17 SETTABLEKS                       R2 R3 K5 ["id"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K10 ["InsertFromMarketplace"]
       22 SETTABLEKS                       R4 R3 K6 ["name"]
       24 DUPTABLE                         R4 K12 [{"query"}]
       25 GETTABLEKS                       R5 R0 K6 ["name"]
       27 SETTABLEKS                       R5 R4 K11 ["query"]
       29 SETTABLEKS                       R4 R3 K7 ["input"]
       31 DUPTABLE                         R4 K16 [{"type", "id", "name", "content", "startTime", "startTimeAfterConfirmation"}]
       32 LOADK                            R5 K17 ["tool_result"]
       33 SETTABLEKS                       R5 R4 K4 ["type"]
       35 SETTABLEKS                       R2 R4 K5 ["id"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R5 R6 K10 ["InsertFromMarketplace"]
       40 SETTABLEKS                       R5 R4 K6 ["name"]
       42 GETUPVAL                         R9 0
       43 CALL                             R9 0 1
       44 NOT                              R8 R9
       45 FASTCALL2K                       ASSERT R8 K0 ; [+4]
       47 LOADK                            R9 K0 ["This function should not be called when long running tool calls are enabled"]
       48 GETIMPORT                        R7 K2 [assert]
       50 CALL                             R7 2 0
       51 GETUPVAL                         R6 3
       52 CALL                             R6 0 1
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K18 ["toString"]
       56 GETTABLEKS                       R9 R1 K19 ["result"]
       58 CALL                             R8 1 -1
       59 NAMECALL                         R6 R6 K20 ["addText"]
       61 CALL                             R6 -1 1
       62 NAMECALL                         R6 R6 K21 ["build"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R5 R6 K13 ["content"]
       67 SETTABLEKS                       R5 R4 K13 ["content"]
       69 LOADN                            R5 0
       70 SETTABLEKS                       R5 R4 K14 ["startTime"]
       72 LOADN                            R5 0
       73 SETTABLEKS                       R5 R4 K15 ["startTimeAfterConfirmation"]
       75 RETURN                           R3 2

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["tools"]
        3 GETTABLEKS                       R2 R3 K1 ["marketplaceInsertion"]
        5 GETTABLEKS                       R1 R2 K2 ["getFreeModelsAsync"]
        7 MOVE                             R2 R0
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 NEWTABLE                         R2 0 0
       12 GETTABLEN                        R6 R1 1
       13 GETTABLEKS                       R3 R6 K3 ["Results"]
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["assign"]
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K4 [{"name", "className", "shouldShowChip"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K1 ["name"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K2 ["className"]
       14 GETUPVAL                         R4 4
       15 SETTABLEKS                       R4 R3 K3 ["shouldShowChip"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R1 R0 K1 ["name"]
       22 GETUPVAL                         R1 3
       23 SETTABLEKS                       R1 R0 K2 ["className"]
       25 GETUPVAL                         R1 4
       26 SETTABLEKS                       R1 R0 K3 ["shouldShowChip"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["newName"]
        6 GETTABLEKS                       R5 R1 K3 ["newClassName"]
        8 GETTABLEKS                       R6 R1 K4 ["showChip"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K5 ["editContent"]
       13 DUPTABLE                         R8 K7 [{"messageId", "contentId", "transformFn"}]
       14 SETTABLEKS                       R2 R8 K0 ["messageId"]
       16 SETTABLEKS                       R3 R8 K1 ["contentId"]
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R6
       24 SETTABLEKS                       R9 R8 K6 ["transformFn"]
       26 CALL                             R7 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R3 K1 ["GetTagged"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K2 ["selection"]
       10 GETTABLEKS                       R4 R5 K3 ["set"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

PROTO_6:
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
       46 DUPTABLE                         R6 K16 [{"messageId", "contentId", "newName", "newClassName", "showChip"}]
       47 GETUPVAL                         R7 6
       48 SETTABLEKS                       R7 R6 K11 ["messageId"]
       50 GETUPVAL                         R7 7
       51 SETTABLEKS                       R7 R6 K12 ["contentId"]
       53 SETTABLEKS                       R2 R6 K13 ["newName"]
       55 SETTABLEKS                       R3 R6 K14 ["newClassName"]
       57 LOADN                            R8 0
       58 JUMPIFLT                         R8 R1 ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 SETTABLEKS                       R7 R6 K15 ["showChip"]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["messageId"]
        2 GETTABLEKS                       R3 R1 K1 ["contentId"]
        4 GETTABLEKS                       R4 R1 K2 ["name"]
        6 GETTABLEKS                       R5 R1 K3 ["tag"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K4 ["observeLinkChanges"]
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R5
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETTABLEKS                       R3 R1 K1 ["insertGuid"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["loadCachedAssetAsync"]
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
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R14 R15 K13 ["setPositionOnGround"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K2 [{"assetId", "insertGuid"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["assetId"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["insertGuid"]
        9 SETTABLEKS                       R3 R2 K1 ["insertGuid"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"tag"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["query"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["tag"]
        6 DUPTABLE                         R3 K11 [{"type", "mode", "name", "tag", "className", "assetIds", "expanded", "onSelectionChange", "shouldShowChip", "onChipClicked"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K12 ["Type"]
       10 SETTABLEKS                       R4 R3 K2 ["type"]
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+6]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K13 ["Modes"]
       18 GETTABLEKS                       R4 R5 K14 ["Generated"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R3 K3 ["mode"]
       24 SETTABLEKS                       R1 R3 K4 ["name"]
       26 SETTABLEKS                       R2 R3 K1 ["tag"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K5 ["className"]
       31 SETTABLEKS                       R4 R3 K5 ["className"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K15 ["assets"]
       36 SETTABLEKS                       R4 R3 K6 ["assetIds"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K7 ["expanded"]
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U0
       44 SETTABLEKS                       R4 R3 K8 ["onSelectionChange"]
       46 LOADB                            R4 0
       47 SETTABLEKS                       R4 R3 K9 ["shouldShowChip"]
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R4 R3 K10 ["onChipClicked"]
       54 GETUPVAL                         R4 2
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+16]
       57 GETUPVAL                         R5 5
       58 GETTABLEKS                       R4 R5 K16 ["editContent"]
       60 DUPTABLE                         R5 K20 [{"messageId", "contentId", "transformFn"}]
       61 SETTABLEKS                       R0 R5 K17 ["messageId"]
       63 GETUPVAL                         R6 6
       64 SETTABLEKS                       R6 R5 K18 ["contentId"]
       66 NEWCLOSURE                       R6 P2
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R6 R5 K19 ["transformFn"]
       71 CALL                             R4 1 0
       72 JUMP                             ; [+17]
       73 GETUPVAL                         R4 8
       74 MOVE                             R5 R3
       75 GETUPVAL                         R6 9
       76 CALL                             R4 2 2
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R6 R7 K21 ["addToolContent"]
       80 MOVE                             R7 R0
       81 DUPTABLE                         R8 K25 [{"toolUse", "toolResult", "content"}]
       82 SETTABLEKS                       R4 R8 K22 ["toolUse"]
       84 SETTABLEKS                       R5 R8 K23 ["toolResult"]
       86 SETTABLEKS                       R3 R8 K24 ["content"]
       88 CALL                             R6 2 1
       89 SETUPVAL                         R6 6
       90 GETUPVAL                         R4 10
       91 LOADNIL                          R5
       92 DUPTABLE                         R6 K26 [{"messageId", "contentId", "name", "tag"}]
       93 SETTABLEKS                       R0 R6 K17 ["messageId"]
       95 GETUPVAL                         R7 6
       96 SETTABLEKS                       R7 R6 K18 ["contentId"]
       98 SETTABLEKS                       R1 R6 K4 ["name"]
      100 SETTABLEKS                       R2 R6 K1 ["tag"]
      102 CALL                             R4 2 0
      103 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["responseInfo"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["Missing response info"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          REF R2
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U7
       21 GETUPVAL                         R5 1
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 MOVE                             R5 R4
       25 MOVE                             R6 R1
       26 CALL                             R5 1 0
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R5 R6 K4 ["getOrAddMessage"]
       31 LOADK                            R6 K5 ["assistant"]
       32 MOVE                             R7 R4
       33 CALL                             R5 2 0
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["loadCachedAssetAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to load asset"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["startRecording"]
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 LOADB                            R4 0
       17 NAMECALL                         R2 R2 K5 ["GenerateGUID"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R1 K6 ["Name"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K7 ["setPositionOnGround"]
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
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K13 ["endRecording"]
       43 GETUPVAL                         R5 2
       44 CALL                             R4 1 0
       45 MOVE                             R4 R3
       46 MOVE                             R5 R2
       47 GETTABLEKS                       R6 R1 K14 ["ClassName"]
       49 RETURN                           R4 3

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 JUMPIFEQKS                       R2 K1 ["Edit"] ; [+5]
        9 GETIMPORT                        R2 K3 [error]
       11 LOADK                            R3 K4 ["Unable to insert models from the marketplace in play mode"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R1 K5 ["query"]
       15 GETTABLEKS                       R3 R1 K6 ["oldTag"]
       17 GETUPVAL                         R4 2
       18 LOADB                            R6 0
       19 NAMECALL                         R4 R4 K7 ["GenerateGUID"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R3 ; [+43]
       23 GETUPVAL                         R5 3
       24 MOVE                             R7 R3
       25 NAMECALL                         R5 R5 K8 ["GetTagged"]
       27 CALL                             R5 2 1
       28 LENGTH                           R6 R5
       29 JUMPIFNOTEQKN                    R6 K9 [0] ; [+7]
       31 GETIMPORT                        R6 K3 [error]
       33 LOADK                            R8 K10 ["Failed to find asset with GUID: "]
       34 MOVE                             R9 R3
       35 CONCAT                           R7 R8 R9
       36 CALL                             R6 1 0
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R6 R7 K11 ["startRecording"]
       40 MOVE                             R7 R4
       41 CALL                             R6 1 0
       42 GETTABLEN                        R6 R5 1
       43 NAMECALL                         R6 R6 K12 ["Clone"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K13 ["setPositionOnGround"]
       49 MOVE                             R8 R6
       50 LOADB                            R9 1
       51 CALL                             R7 2 0
       52 GETIMPORT                        R7 K15 [workspace]
       54 SETTABLEKS                       R7 R6 K16 ["Parent"]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R7 R8 K17 ["endRecording"]
       59 MOVE                             R8 R4
       60 CALL                             R7 1 0
       61 DUPTABLE                         R7 K19 [{"result"}]
       62 LOADK                            R8 K20 ["Success!"]
       63 SETTABLEKS                       R8 R7 K18 ["result"]
       65 RETURN                           R7 1
       66 GETUPVAL                         R5 6
       67 MOVE                             R6 R2
       68 CALL                             R5 1 1
       69 GETIMPORT                        R6 K23 [table.clone]
       71 MOVE                             R7 R5
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K25 [table.remove]
       75 MOVE                             R8 R6
       76 LOADN                            R9 1
       77 CALL                             R7 2 1
       78 JUMPIF                           R7 ; [+4]
       79 GETIMPORT                        R8 K3 [error]
       81 LOADK                            R9 K26 ["Failed to find asset"]
       82 CALL                             R8 1 0
       83 NEWCLOSURE                       R8 P0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R2
       89 MOVE                             R9 R8
       90 MOVE                             R10 R7
       91 CALL                             R9 1 3
       92 MOVE                             R12 R6
       93 LOADNIL                          R13
       94 LOADNIL                          R14
       95 FORGPREP                         R12
       96 GETIMPORT                        R17 K29 [task.spawn]
       98 NEWCLOSURE                       R18 P1
       99 CAPTURE                          UPVAL U5
      100 CAPTURE                          VAL R16
      101 CALL                             R17 1 0
      102 FORGLOOP                         R12 2 ; [-7]
      104 DUPTABLE                         R12 K31 [{"result", "responseInfo"}]
      105 DUPTABLE                         R13 K34 [{"primaryResult", "secondaryResults"}]
      106 DUPTABLE                         R14 K37 [{"assetId", "insertGuid"}]
      107 SETTABLEKS                       R7 R14 K35 ["assetId"]
      109 SETTABLEKS                       R10 R14 K36 ["insertGuid"]
      111 SETTABLEKS                       R14 R13 K32 ["primaryResult"]
      113 SETTABLEKS                       R6 R13 K33 ["secondaryResults"]
      115 SETTABLEKS                       R13 R12 K18 ["result"]
      117 DUPTABLE                         R13 K41 [{"assets", "tag", "query", "insertGuid", "className"}]
      118 SETTABLEKS                       R5 R13 K38 ["assets"]
      120 SETTABLEKS                       R9 R13 K39 ["tag"]
      122 SETTABLEKS                       R2 R13 K5 ["query"]
      124 SETTABLEKS                       R10 R13 K36 ["insertGuid"]
      126 SETTABLEKS                       R11 R13 K40 ["className"]
      128 SETTABLEKS                       R13 R12 K30 ["responseInfo"]
      130 RETURN                           R12 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+43]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R4 R1 K0 ["messageId"]
        8 JUMPIF                           R4 ; [+1]
        9 LOADK                            R4 K1 [""]
       10 MOVE                             R2 R4
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R4 R1 K2 ["contentId"]
       14 JUMPIF                           R4 ; [+1]
       15 LOADK                            R4 K1 [""]
       16 MOVE                             R3 R4
       17 DUPTABLE                         R4 K6 [{"type", "mode", "name"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K7 ["Type"]
       21 SETTABLEKS                       R5 R4 K3 ["type"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K8 ["Modes"]
       26 GETTABLEKS                       R5 R6 K9 ["Generating"]
       28 SETTABLEKS                       R5 R4 K4 ["mode"]
       30 GETTABLEKS                       R5 R0 K10 ["query"]
       32 SETTABLEKS                       R5 R4 K5 ["name"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K11 ["editContent"]
       37 DUPTABLE                         R6 K13 [{"messageId", "contentId", "transformFn"}]
       38 SETTABLEKS                       R2 R6 K0 ["messageId"]
       40 SETTABLEKS                       R3 R6 K2 ["contentId"]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R7 R6 K12 ["transformFn"]
       47 CALL                             R5 1 0
       48 GETUPVAL                         R4 4
       49 LOADNIL                          R5
       50 DUPTABLE                         R6 K15 [{"query", "oldTag"}]
       51 GETTABLEKS                       R7 R0 K10 ["query"]
       53 SETTABLEKS                       R7 R6 K10 ["query"]
       55 GETTABLEKS                       R7 R0 K16 ["tag"]
       57 SETTABLEKS                       R7 R6 K14 ["oldTag"]
       59 CALL                             R4 2 1
       60 GETTABLEKS                       R5 R4 K17 ["responseInfo"]
       62 JUMPIFNOT                        R5 ; [+5]
       63 GETUPVAL                         R5 5
       64 MOVE                             R6 R4
       65 MOVE                             R7 R2
       66 MOVE                             R8 R3
       67 CALL                             R5 3 0
       68 GETUPVAL                         R5 0
       69 CALL                             R5 0 1
       70 JUMPIFNOT                        R5 ; [+15]
       71 GETUPVAL                         R5 6
       72 CALL                             R5 0 1
       73 GETUPVAL                         R8 7
       74 GETTABLEKS                       R7 R8 K18 ["toString"]
       76 GETTABLEKS                       R8 R4 K19 ["result"]
       78 CALL                             R7 1 -1
       79 NAMECALL                         R5 R5 K20 ["addText"]
       81 CALL                             R5 -1 1
       82 NAMECALL                         R5 R5 K21 ["build"]
       84 CALL                             R5 1 -1
       85 RETURN                           R5 -1
       86 GETUPVAL                         R5 8
       87 MOVE                             R6 R4
       88 CALL                             R5 1 -1
       89 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["FFlagMCPAssistantSlashCommandMenu must be enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R2 K3 ["SlashCommandDescriptions"]
       10 LOADK                            R3 K4 ["MarketplaceInsertion"]
       11 NAMECALL                         R0 R0 K5 ["getText"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_21:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["InsertFromMarketplace"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_22:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["externalHooks"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 LOADK                            R7 K3 ["MarketplaceInsertionTool_updateContentHeader"]
        9 NEWCLOSURE                       R8 P1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R5 R1 K4 ["OnGuestEvent"]
       15 CALL                             R5 3 1
       16 LOADK                            R8 K5 ["MarketplaceInsertionTool_selectInsertedAssets"]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R6 R1 K6 ["OnHostEvent"]
       22 CALL                             R6 3 1
       23 LOADK                            R9 K7 ["MarketplaceInsertionTool_listenToLinkChanges"]
       24 NEWCLOSURE                       R10 P3
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R5
       30 NAMECALL                         R7 R1 K6 ["OnHostEvent"]
       32 CALL                             R7 3 1
       33 LOADK                            R10 K8 ["MarketplaceInsertionTool_swapAsset"]
       34 DUPCLOSURE                       R11 K9 [PROTO_8]
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U2
       37 NAMECALL                         R8 R1 K10 ["OnHostInvokeAsync"]
       39 CALL                             R8 3 1
       40 NEWCLOSURE                       R9 P5
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R7
       49 LOADK                            R12 K11 ["MarketplaceInsertionTool_insertFromMarketplace"]
       50 NEWCLOSURE                       R13 P6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R4
       58 NAMECALL                         R10 R1 K10 ["OnHostInvokeAsync"]
       60 CALL                             R10 3 1
       61 NEWCLOSURE                       R11 P7
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U11
       71 GETUPVAL                         R13 12
       72 GETTABLEKS                       R12 R13 K12 ["define"]
       74 CALL                             R12 0 1
       75 GETUPVAL                         R15 13
       76 GETTABLEKS                       R14 R15 K13 ["InsertFromMarketplace"]
       78 NAMECALL                         R12 R12 K14 ["setName"]
       80 CALL                             R12 2 1
       81 LOADK                            R14 K15 ["Inserts a model from the Roblox marketplace into the game.\nReturns the inserted asset ID, a unique GUID to use for the asset in subsequent commands, and a list of other asset IDs that were found in the search.\n\nThe inserted model will be tagged with the GUID, prefixed with 'Assistant:'.\nTo reference the model in subsequent commands, CollectionService:GetTagged(\"Assistant:<GUID>\") can be used. You are guaranteed to get only one model back, as the GUID is unique.\nDon't tell the user about the GUID or the alternative asset IDs, these are for your own use only.\nIf you are asked to add more of a previously-inserted model, you should use the tag input property instead by searching for the generated tag in your conversation history.\n\nFor example:\n\tlocal instances = CollectionService:GetTagged(\"Assistant:1234-5678-9101\")\n\tinstances[1].Pivot = CFrame.new(0, 0, 0)\nwill move the model to the origin.\n"]
       82 NAMECALL                         R12 R12 K16 ["setDescription"]
       84 CALL                             R12 2 1
       85 LOADK                            R14 K17 ["query"]
       86 DUPTABLE                         R15 K20 [{"type", "description"}]
       87 LOADK                            R16 K21 ["string"]
       88 SETTABLEKS                       R16 R15 K18 ["type"]
       90 LOADK                            R16 K22 ["The name of the asset to insert."]
       91 SETTABLEKS                       R16 R15 K19 ["description"]
       93 NAMECALL                         R12 R12 K23 ["addArgument"]
       95 CALL                             R12 3 1
       96 LOADK                            R14 K24 ["tag"]
       97 DUPTABLE                         R15 K20 [{"type", "description"}]
       98 LOADK                            R16 K21 ["string"]
       99 SETTABLEKS                       R16 R15 K18 ["type"]
      101 LOADK                            R16 K25 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
      102 SETTABLEKS                       R16 R15 K19 ["description"]
      104 NAMECALL                         R12 R12 K26 ["addOptionalArgument"]
      106 CALL                             R12 3 1
      107 MOVE                             R14 R11
      108 NAMECALL                         R12 R12 K27 ["setHandler"]
      110 CALL                             R12 2 1
      111 NAMECALL                         R12 R12 K28 ["build"]
      113 CALL                             R12 1 1
      114 DUPTABLE                         R13 K32 [{"command", "getDescription", "mapToToolCall"}]
      115 LOADK                            R14 K33 ["insert"]
      116 SETTABLEKS                       R14 R13 K29 ["command"]
      118 DUPCLOSURE                       R14 K34 [PROTO_20]
      119 CAPTURE                          UPVAL U14
      120 CAPTURE                          UPVAL U4
      121 SETTABLEKS                       R14 R13 K30 ["getDescription"]
      123 DUPCLOSURE                       R14 K35 [PROTO_21]
      124 CAPTURE                          UPVAL U13
      125 SETTABLEKS                       R14 R13 K31 ["mapToToolCall"]
      127 DUPTABLE                         R14 K37 [{"transformInitialContent"}]
      128 DUPCLOSURE                       R15 K38 [PROTO_22]
      129 CAPTURE                          UPVAL U5
      130 SETTABLEKS                       R15 R14 K36 ["transformInitialContent"]
      132 DUPTABLE                         R15 K43 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
      133 SETTABLEKS                       R12 R15 K39 ["definition"]
      135 NEWTABLE                         R16 0 1
      137 MOVE                             R17 R13
      138 SETLIST                          R16 R17 1 [1]
      140 SETTABLEKS                       R16 R15 K40 ["slashCommands"]
      142 GETUPVAL                         R17 15
      143 CALL                             R17 0 1
      144 JUMPIFNOT                        R17 ; [+6]
      145 NEWTABLE                         R16 0 1
      147 GETUPVAL                         R17 5
      148 SETLIST                          R16 R17 1 [1]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R16
      152 SETTABLEKS                       R16 R15 K41 ["contentWidgets"]
      154 GETUPVAL                         R17 0
      155 CALL                             R17 0 1
      156 JUMPIFNOT                        R17 ; [+2]
      157 MOVE                             R16 R14
      158 JUMP                             ; [+3]
      159 GETUPVAL                         R17 16
      160 GETTABLEKS                       R16 R17 K44 ["None"]
      162 SETTABLEKS                       R16 R15 K42 ["streamTransform"]
      164 RETURN                           R15 1

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
       21 GETTABLEKS                       R6 R0 K11 ["Components"]
       23 GETTABLEKS                       R5 R6 K12 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R5 K13 ["AssetVariationContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R6 R0 K14 ["Parent"]
       32 GETTABLEKS                       R5 R6 K15 ["Dash"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R7 R0 K16 ["Util"]
       39 GETTABLEKS                       R6 R7 K17 ["DataModelType"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Parent"]
       46 GETTABLEKS                       R7 R8 K18 ["ModelContextProtocol"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K19 ["Tools"]
       53 GETTABLEKS                       R8 R9 K20 ["ToolTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R10 K21 ["ToolUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R12 R0 K22 ["Resources"]
       67 GETTABLEKS                       R11 R12 K23 ["Localization"]
       69 GETTABLEKS                       R10 R11 K24 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K25 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Components"]
       81 GETTABLEKS                       R12 R13 K26 ["UIToolRegistry"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R14 R0 K27 ["Flags"]
       88 GETTABLEKS                       R13 R14 K28 ["FFlagAssistantTestAutomation"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETTABLEKS                       R15 R0 K27 ["Flags"]
       95 GETTABLEKS                       R14 R15 K29 ["FFlagAssistantRegisterWidgetsThroughTools"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R16 R0 K27 ["Flags"]
      102 GETTABLEKS                       R15 R16 K30 ["FFlagMCPAssistantLongRunningToolCalls"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K10 [require]
      107 GETTABLEKS                       R17 R0 K27 ["Flags"]
      109 GETTABLEKS                       R16 R17 K31 ["FFlagMCPAssistantSlashCommandMenu"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R17 R6 K16 ["Util"]
      114 GETTABLEKS                       R16 R17 K32 ["ToolBuilder"]
      116 GETTABLEKS                       R18 R6 K16 ["Util"]
      118 GETTABLEKS                       R17 R18 K33 ["ToolResult"]
      120 GETTABLEKS                       R18 R7 K34 ["ToolNames"]
      122 DUPCLOSURE                       R19 K35 [PROTO_0]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R8
      126 DUPCLOSURE                       R20 K36 [PROTO_1]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R17
      131 DUPCLOSURE                       R21 K37 [PROTO_23]
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R11
      149 RETURN                           R21 1
