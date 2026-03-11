PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
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

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["newClassName"]
        4 GETTABLEKS                       R4 R1 K2 ["showChip"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U1
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+11]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K3 ["getContentHooks"]
       18 GETTABLEKS                       R7 R1 K4 ["contentId"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R7 R6 K5 ["editContent"]
       23 MOVE                             R8 R5
       24 CALL                             R7 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K5 ["editContent"]
       29 DUPTABLE                         R7 K8 [{"messageId", "contentId", "transformFn"}]
       30 GETTABLEKS                       R8 R1 K6 ["messageId"]
       32 SETTABLEKS                       R8 R7 K6 ["messageId"]
       34 GETTABLEKS                       R8 R1 K4 ["contentId"]
       36 SETTABLEKS                       R8 R7 K4 ["contentId"]
       38 SETTABLEKS                       R5 R7 K7 ["transformFn"]
       40 CALL                             R6 1 0
       41 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       46 DUPTABLE                         R6 K16 [{"messageId", "contentId", "newDisplayName", "newClassName", "showChip"}]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R7 R8 K11 ["messageId"]
       50 SETTABLEKS                       R7 R6 K11 ["messageId"]
       52 GETUPVAL                         R8 6
       53 GETTABLEKS                       R7 R8 K12 ["contentId"]
       55 SETTABLEKS                       R7 R6 K12 ["contentId"]
       57 SETTABLEKS                       R2 R6 K13 ["newDisplayName"]
       59 SETTABLEKS                       R3 R6 K14 ["newClassName"]
       61 LOADN                            R8 0
       62 JUMPIFLT                         R8 R1 ; [+2]
       64 LOADB                            R7 0 +1
       65 LOADB                            R7 1
       66 SETTABLEKS                       R7 R6 K15 ["showChip"]
       68 CALL                             R4 2 0
       69 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 GETTABLEKS                       R3 R1 K1 ["tag"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["observeLinkChanges"]
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K2 [{"assetId", "insertGuid"}]
        3 SETTABLEKS                       R0 R3 K0 ["assetId"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K3 ["tag"]
        8 LOADN                            R6 11
        9 NAMECALL                         R4 R4 K4 ["sub"]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K1 ["insertGuid"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"tag"}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["tag"]
        6 SETTABLEKS                       R3 R2 K0 ["tag"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
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

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 LOADNIL                          R3
       10 DUPTABLE                         R4 K6 [{"contentId", "name", "tag"}]
       11 SETTABLEKS                       R0 R4 K3 ["contentId"]
       13 GETTABLEKS                       R5 R1 K4 ["name"]
       15 SETTABLEKS                       R5 R4 K4 ["name"]
       17 GETTABLEKS                       R5 R1 K5 ["tag"]
       19 SETTABLEKS                       R5 R4 K5 ["tag"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Modes"]
        5 GETTABLEKS                       R3 R4 K2 ["Generated"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["FFlagAssistantPersistConversations is not enabled!"]
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
       28 GETUPVAL                         R3 1
       29 CALL                             R3 0 1
       30 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       32 LOADK                            R4 K3 ["FFlagAssistantPersistConversations is not enabled!"]
       33 GETIMPORT                        R2 K5 [assert]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 4
       37 LOADNIL                          R3
       38 DUPTABLE                         R4 K11 [{"contentId", "name", "tag"}]
       39 SETTABLEKS                       R0 R4 K8 ["contentId"]
       41 GETTABLEKS                       R5 R1 K9 ["name"]
       43 SETTABLEKS                       R5 R4 K9 ["name"]
       45 GETTABLEKS                       R5 R1 K10 ["tag"]
       47 SETTABLEKS                       R5 R4 K10 ["tag"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"tag"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["query"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["tag"]
        6 DUPTABLE                         R3 K12 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K13 ["Type"]
       10 SETTABLEKS                       R4 R3 K2 ["type"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K14 ["Modes"]
       15 GETTABLEKS                       R4 R5 K15 ["Generated"]
       17 SETTABLEKS                       R4 R3 K3 ["mode"]
       19 SETTABLEKS                       R1 R3 K4 ["name"]
       21 SETTABLEKS                       R1 R3 K5 ["displayName"]
       23 SETTABLEKS                       R2 R3 K1 ["tag"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K6 ["className"]
       28 SETTABLEKS                       R4 R3 K6 ["className"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K16 ["assets"]
       33 SETTABLEKS                       R4 R3 K7 ["assetIds"]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K8 ["expanded"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K9 ["shouldShowChip"]
       41 GETUPVAL                         R5 2
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+6]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R4 R5 K17 ["createUnimplemented"]
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
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R4 R5 K17 ["createUnimplemented"]
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
       76 LOADK                            R6 K18 ["FFlagAssistantPersistConversations is not enabled!"]
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
       93 GETUPVAL                         R5 2
       94 CALL                             R5 0 1
       95 JUMPIFNOT                        R5 ; [+6]
       96 GETUPVAL                         R6 7
       97 GETTABLEKS                       R5 R6 K21 ["editContent"]
       99 MOVE                             R6 R4
      100 CALL                             R5 1 0
      101 JUMP                             ; [+12]
      102 GETUPVAL                         R6 8
      103 GETTABLEKS                       R5 R6 K21 ["editContent"]
      105 DUPTABLE                         R6 K25 [{"messageId", "contentId", "transformFn"}]
      106 SETTABLEKS                       R0 R6 K22 ["messageId"]
      108 GETUPVAL                         R7 9
      109 SETTABLEKS                       R7 R6 K23 ["contentId"]
      111 SETTABLEKS                       R4 R6 K24 ["transformFn"]
      113 CALL                             R5 1 0
      114 GETUPVAL                         R5 2
      115 CALL                             R5 0 1
      116 JUMPIFNOT                        R5 ; [+24]
      117 GETUPVAL                         R5 9
      118 GETUPVAL                         R7 2
      119 CALL                             R7 0 1
      120 FASTCALL2K                       ASSERT R7 K18 ; [+4]
      122 LOADK                            R8 K18 ["FFlagAssistantPersistConversations is not enabled!"]
      123 GETIMPORT                        R6 K20 [assert]
      125 CALL                             R6 2 0
      126 GETUPVAL                         R6 10
      127 LOADNIL                          R7
      128 DUPTABLE                         R8 K26 [{"contentId", "name", "tag"}]
      129 SETTABLEKS                       R5 R8 K23 ["contentId"]
      131 GETTABLEKS                       R9 R3 K4 ["name"]
      133 SETTABLEKS                       R9 R8 K4 ["name"]
      135 GETTABLEKS                       R9 R3 K1 ["tag"]
      137 SETTABLEKS                       R9 R8 K1 ["tag"]
      139 CALL                             R6 2 0
      140 RETURN                           R0 0
      141 GETUPVAL                         R5 10
      142 LOADNIL                          R6
      143 DUPTABLE                         R7 K27 [{"messageId", "contentId", "name", "tag"}]
      144 SETTABLEKS                       R0 R7 K22 ["messageId"]
      146 GETUPVAL                         R8 9
      147 SETTABLEKS                       R8 R7 K23 ["contentId"]
      149 SETTABLEKS                       R1 R7 K4 ["name"]
      151 SETTABLEKS                       R2 R7 K1 ["tag"]
      153 CALL                             R5 2 0
      154 RETURN                           R0 0

PROTO_16:
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
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U7
       21 MOVE                             R6 R5
       22 MOVE                             R7 R1
       23 CALL                             R6 1 0
       24 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_21:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["messageId"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADK                            R2 K1 [""]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["contentId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K1 [""]
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["getContentHooks"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 DUPTABLE                         R5 K8 [{"type", "mode", "name", "displayName"}]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K9 ["Type"]
       24 SETTABLEKS                       R6 R5 K4 ["type"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K10 ["Modes"]
       29 GETTABLEKS                       R6 R7 K11 ["Generating"]
       31 SETTABLEKS                       R6 R5 K5 ["mode"]
       33 GETTABLEKS                       R6 R0 K12 ["query"]
       35 SETTABLEKS                       R6 R5 K6 ["name"]
       37 GETTABLEKS                       R6 R0 K12 ["query"]
       39 SETTABLEKS                       R6 R5 K7 ["displayName"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R5
       44 GETUPVAL                         R7 0
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+5]
       47 GETTABLEKS                       R7 R4 K13 ["editContent"]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 0
       51 JUMP                             ; [+11]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K13 ["editContent"]
       55 DUPTABLE                         R8 K15 [{"messageId", "contentId", "transformFn"}]
       56 SETTABLEKS                       R2 R8 K0 ["messageId"]
       58 SETTABLEKS                       R3 R8 K2 ["contentId"]
       60 SETTABLEKS                       R6 R8 K14 ["transformFn"]
       62 CALL                             R7 1 0
       63 GETUPVAL                         R7 4
       64 LOADNIL                          R8
       65 DUPTABLE                         R9 K17 [{"query", "oldTag"}]
       66 GETTABLEKS                       R10 R0 K12 ["query"]
       68 SETTABLEKS                       R10 R9 K12 ["query"]
       70 GETTABLEKS                       R10 R0 K18 ["tag"]
       72 SETTABLEKS                       R10 R9 K16 ["oldTag"]
       74 CALL                             R7 2 1
       75 GETTABLEKS                       R8 R7 K19 ["responseInfo"]
       77 JUMPIFNOT                        R8 ; [+24]
       78 GETTABLEKS                       R8 R7 K19 ["responseInfo"]
       80 FASTCALL2K                       ASSERT R8 K20 ; [+5]
       82 MOVE                             R10 R8
       83 LOADK                            R11 K20 ["Missing response info"]
       84 GETIMPORT                        R9 K22 [assert]
       86 CALL                             R9 2 0
       87 NEWCLOSURE                       R9 P1
       88 CAPTURE                          VAL R8
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U8
       99 MOVE                             R10 R9
      100 MOVE                             R11 R2
      101 CALL                             R10 1 0
      102 GETUPVAL                         R8 9
      103 CALL                             R8 0 1
      104 GETUPVAL                         R11 10
      105 GETTABLEKS                       R10 R11 K23 ["toString"]
      107 GETTABLEKS                       R11 R7 K24 ["result"]
      109 CALL                             R10 1 -1
      110 NAMECALL                         R8 R8 K25 ["addText"]
      112 CALL                             R8 -1 1
      113 NAMECALL                         R8 R8 K26 ["build"]
      115 CALL                             R8 1 -1
      116 RETURN                           R8 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MarketplaceInsertion"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["InsertFromMarketplace"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_24:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["externalHooks"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 LOADK                            R7 K3 ["MarketplaceInsertionTool_updateContentHeader"]
        9 NEWCLOSURE                       R8 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R3
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
       34 DUPCLOSURE                       R11 K9 [PROTO_6]
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U2
       37 NAMECALL                         R8 R1 K10 ["OnHostInvokeAsync"]
       39 CALL                             R8 3 1
       40 NEWCLOSURE                       R9 P5
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R6
       44 NEWCLOSURE                       R10 P6
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R7
       47 GETUPVAL                         R11 1
       48 CALL                             R11 0 1
       49 JUMPIFNOT                        R11 ; [+13]
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R11 R12 K11 ["registerHydrator"]
       53 GETUPVAL                         R13 6
       54 GETTABLEKS                       R12 R13 K12 ["Type"]
       56 NEWCLOSURE                       R13 P7
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CALL                             R11 2 0
       63 NEWCLOSURE                       R11 P8
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 LOADK                            R14 K13 ["MarketplaceInsertionTool_insertFromMarketplace"]
       73 NEWCLOSURE                       R15 P9
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R4
       81 NAMECALL                         R12 R1 K10 ["OnHostInvokeAsync"]
       83 CALL                             R12 3 1
       84 NEWCLOSURE                       R13 P10
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U0
       89 CAPTURE                          VAL R12
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          UPVAL U3
       96 GETUPVAL                         R15 12
       97 GETTABLEKS                       R14 R15 K14 ["define"]
       99 CALL                             R14 0 1
      100 GETUPVAL                         R17 13
      101 GETTABLEKS                       R16 R17 K15 ["InsertFromMarketplace"]
      103 NAMECALL                         R14 R14 K16 ["setName"]
      105 CALL                             R14 2 1
      106 LOADK                            R16 K17 ["Inserts a model from the Roblox marketplace into the game.\nReturns the inserted asset ID, a unique GUID to use for the asset in subsequent commands, and a list of other asset IDs that were found in the search.\n\nThe inserted model will be tagged with the GUID, prefixed with 'Assistant:'.\nTo reference the model in subsequent commands, CollectionService:GetTagged(\"Assistant:<GUID>\") can be used. You are guaranteed to get only one model back, as the GUID is unique.\nDon't tell the user about the GUID or the alternative asset IDs, these are for your own use only.\nIf you are asked to add more of a previously-inserted model, you should use the tag input property instead by searching for the generated tag in your conversation history.\n\nFor example:\n\tlocal instances = CollectionService:GetTagged(\"Assistant:1234-5678-9101\")\n\tinstances[1].Pivot = CFrame.new(0, 0, 0)\nwill move the model to the origin.\n"]
      107 NAMECALL                         R14 R14 K18 ["setDescription"]
      109 CALL                             R14 2 1
      110 LOADK                            R16 K19 ["query"]
      111 DUPTABLE                         R17 K22 [{"type", "description"}]
      112 LOADK                            R18 K23 ["string"]
      113 SETTABLEKS                       R18 R17 K20 ["type"]
      115 LOADK                            R18 K24 ["The name of the asset to insert."]
      116 SETTABLEKS                       R18 R17 K21 ["description"]
      118 NAMECALL                         R14 R14 K25 ["addArgument"]
      120 CALL                             R14 3 1
      121 LOADK                            R16 K26 ["tag"]
      122 DUPTABLE                         R17 K22 [{"type", "description"}]
      123 LOADK                            R18 K23 ["string"]
      124 SETTABLEKS                       R18 R17 K20 ["type"]
      126 LOADK                            R18 K27 ["Tag of a reference asset to clone, rather than downloading from the marketplace. Tag was likely generated in a previous marketplace insertion request."]
      127 SETTABLEKS                       R18 R17 K21 ["description"]
      129 NAMECALL                         R14 R14 K28 ["addOptionalArgument"]
      131 CALL                             R14 3 1
      132 MOVE                             R16 R13
      133 NAMECALL                         R14 R14 K29 ["setHandler"]
      135 CALL                             R14 2 1
      136 NAMECALL                         R14 R14 K30 ["build"]
      138 CALL                             R14 1 1
      139 DUPTABLE                         R15 K34 [{"command", "getDescription", "mapToToolCall"}]
      140 LOADK                            R16 K35 ["insert"]
      141 SETTABLEKS                       R16 R15 K31 ["command"]
      143 DUPCLOSURE                       R16 K36 [PROTO_22]
      144 CAPTURE                          UPVAL U4
      145 SETTABLEKS                       R16 R15 K32 ["getDescription"]
      147 DUPCLOSURE                       R16 K37 [PROTO_23]
      148 CAPTURE                          UPVAL U13
      149 SETTABLEKS                       R16 R15 K33 ["mapToToolCall"]
      151 DUPTABLE                         R16 K39 [{"transformInitialContent"}]
      152 DUPCLOSURE                       R17 K40 [PROTO_24]
      153 CAPTURE                          UPVAL U6
      154 SETTABLEKS                       R17 R16 K38 ["transformInitialContent"]
      156 DUPTABLE                         R17 K45 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
      157 SETTABLEKS                       R14 R17 K41 ["definition"]
      159 NEWTABLE                         R18 0 1
      161 MOVE                             R19 R15
      162 SETLIST                          R18 R19 1 [1]
      164 SETTABLEKS                       R18 R17 K42 ["slashCommands"]
      166 GETUPVAL                         R19 14
      167 CALL                             R19 0 1
      168 JUMPIFNOT                        R19 ; [+6]
      169 NEWTABLE                         R18 0 1
      171 GETUPVAL                         R19 6
      172 SETLIST                          R18 R19 1 [1]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R18
      176 SETTABLEKS                       R18 R17 K43 ["contentWidgets"]
      178 SETTABLEKS                       R16 R17 K44 ["streamTransform"]
      180 RETURN                           R17 1

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
       44 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       46 GETTABLEKS                       R7 R8 K19 ["ExternalHooks"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Parent"]
       53 GETTABLEKS                       R8 R9 K20 ["ModelContextProtocol"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Util"]
       60 GETTABLEKS                       R10 R11 K21 ["Serializer"]
       62 GETTABLEKS                       R9 R10 K22 ["SerializerRegistry"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R11 R0 K23 ["Tools"]
       69 GETTABLEKS                       R10 R11 K24 ["ToolTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R12 R0 K16 ["Util"]
       76 GETTABLEKS                       R11 R12 K25 ["ToolUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R14 R0 K26 ["Resources"]
       83 GETTABLEKS                       R13 R14 K27 ["Localization"]
       85 GETTABLEKS                       R12 R13 K28 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K29 ["Types"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K30 ["Flags"]
       97 GETTABLEKS                       R14 R15 K31 ["FFlagAssistantTestAutomation"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R16 R0 K30 ["Flags"]
      104 GETTABLEKS                       R15 R16 K32 ["FFlagAssistantPersistConversations"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R17 R0 K30 ["Flags"]
      111 GETTABLEKS                       R16 R17 K33 ["FFlagAssistantRegisterWidgetsThroughTools"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R17 R7 K16 ["Util"]
      116 GETTABLEKS                       R16 R17 K34 ["ToolBuilder"]
      118 GETTABLEKS                       R18 R7 K16 ["Util"]
      120 GETTABLEKS                       R17 R18 K35 ["ToolResult"]
      122 GETTABLEKS                       R18 R9 K36 ["ToolNames"]
      124 DUPCLOSURE                       R19 K37 [PROTO_25]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R15
      140 RETURN                           R19 1
