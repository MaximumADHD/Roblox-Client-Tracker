PROTO_0:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["(%d+)%s*$"]
        4 CALL                             R2 2 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K5 [tonumber]
        8 CALL                             R1 -1 1
        9 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+30]
       11 GETTABLEKS                       R7 R6 K3 ["NodeType"]
       13 GETIMPORT                        R8 K7 [Enum.AnimationNodeType.ClipNode]
       15 JUMPIFNOTEQ                      R7 R8 ; [+25]
       17 LOADK                            R9 K8 ["AnimationId"]
       18 NAMECALL                         R7 R6 K9 ["GetAttribute"]
       20 CALL                             R7 2 1
       21 FASTCALL1                        TYPEOF R7 ; [+3]
       22 MOVE                             R9 R7
       23 GETIMPORT                        R8 K11 [typeof]
       25 CALL                             R8 1 1
       26 JUMPIFNOTEQKS                    R8 K12 ["string"] ; [+14]
       28 GETIMPORT                        R8 K15 [table.find]
       30 MOVE                             R9 R1
       31 MOVE                             R10 R7
       32 CALL                             R8 2 1
       33 JUMPIF                           R8 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       36 MOVE                             R9 R1
       37 MOVE                             R10 R7
       38 GETIMPORT                        R8 K17 [table.insert]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R2 2 ; [-36]
       43 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ReloadAnimationClipAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETIMPORT                        R7 K1 [pcall]
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R6
       17 CALL                             R7 1 2
       18 JUMPIFNOT                        R7 ; [+8]
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R10 R1
       22 MOVE                             R11 R6
       23 GETIMPORT                        R9 K4 [table.insert]
       25 CALL                             R9 2 0
       26 JUMP                             ; [+9]
       27 GETIMPORT                        R9 K6 [warn]
       29 LOADK                            R10 K7 ["[PublishedClipContext] Failed to reload %*: %*"]
       30 MOVE                             R12 R6
       31 MOVE                             R13 R8
       32 NAMECALL                         R10 R10 K8 ["format"]
       34 CALL                             R10 3 1
       35 CALL                             R9 1 0
       36 FORGLOOP                         R2 2 ; [-25]
       38 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeAllGraphsInAnimSaves"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLE                         R9 R1 R6
        9 ORK                              R8 R9 K4 [0]
       10 ADDK                             R7 R8 K3 [1]
       11 SETTABLE                         R7 R1 R6
       12 FORGLOOP                         R2 2 ; [-5]
       14 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["assetId"]
        2 FASTCALL1                        TONUMBER R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tonumber]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K5 [table.clone]
       11 GETUPVAL                         R3 0
       12 LOADB                            R4 0
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 1
       15 GETUPVAL                         R4 1
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+6]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K6 ["observeSelectedGraphInstance"]
       21 LOADB                            R4 0
       22 CALL                             R3 1 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K7 ["observeSelectedGraphInstance_DEPRECATED"]
       27 LOADB                            R4 0
       28 CALL                             R3 1 1
       29 JUMPIFEQKNIL                     R3 ; [+14]
       31 GETIMPORT                        R4 K9 [table.find]
       33 MOVE                             R5 R2
       34 MOVE                             R6 R3
       35 CALL                             R4 2 1
       36 JUMPIF                           R4 ; [+7]
       37 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       39 MOVE                             R5 R2
       40 MOVE                             R6 R3
       41 GETIMPORT                        R4 K11 [table.insert]
       43 CALL                             R4 2 0
       44 NEWTABLE                         R4 0 0
       46 MOVE                             R5 R2
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETUPVAL                         R10 4
       51 MOVE                             R11 R9
       52 CALL                             R10 1 3
       53 FORGPREP                         R10
       54 GETIMPORT                        R16 K14 [string.match]
       56 MOVE                             R17 R14
       57 LOADK                            R18 K15 ["(%d+)%s*$"]
       58 CALL                             R16 2 -1
       59 FASTCALL                         TONUMBER ; [+2]
       60 GETIMPORT                        R15 K2 [tonumber]
       62 CALL                             R15 -1 1
       63 JUMPIFNOTEQ                      R15 R1 ; [+14]
       65 GETIMPORT                        R15 K9 [table.find]
       67 MOVE                             R16 R4
       68 MOVE                             R17 R14
       69 CALL                             R15 2 1
       70 JUMPIF                           R15 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       73 MOVE                             R16 R4
       74 MOVE                             R17 R14
       75 GETIMPORT                        R15 K11 [table.insert]
       77 CALL                             R15 2 0
       78 FORGLOOP                         R10 2 ; [-25]
       80 FORGLOOP                         R5 2 ; [-31]
       82 LENGTH                           R5 R4
       83 JUMPIFNOTEQKN                    R5 K16 [0] ; [+2]
       85 RETURN                           R0 0
       86 GETUPVAL                         R6 5
       87 GETIMPORT                        R7 K19 [task.spawn]
       89 NEWCLOSURE                       R8 P0
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          VAL R4
       92 CAPTURE                          UPVAL U7
       93 CALL                             R7 1 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R5 K11 [table.insert]
       97 CALL                             R5 -1 0
       98 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETIMPORT                        R5 K3 [task.cancel]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 0
       12 FORGLOOP                         R0 2 ; [-5]
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["onAnimationPublished"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CALL                             R1 1 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"clipReloadVersions"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["clipReloadVersions"]
        4 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K3 ["useProducer"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R0 K4 ["reloadAnimationClipsAsync"]
       27 JUMPIF                           R5 ; [+1]
       28 GETUPVAL                         R5 4
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       32 DUPCLOSURE                       R7 K6 [PROTO_4]
       33 CAPTURE                          UPVAL U5
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 NEWTABLE                         R9 0 3
       52 GETUPVAL                         R11 8
       53 CALL                             R11 0 1
       54 JUMPIFNOT                        R11 ; [+3]
       55 GETTABLEKS                       R10 R2 K8 ["observeSelectedGraphInstance"]
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R10 R1 K9 ["observeSelectedGraphInstance_DEPRECATED"]
       60 MOVE                             R11 R6
       61 MOVE                             R12 R5
       62 SETLIST                          R9 R10 3 [1]
       64 CALL                             R7 2 0
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       68 NEWCLOSURE                       R8 P2
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R9 0 1
       72 MOVE                             R10 R3
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K10 ["createElement"]
       79 GETUPVAL                         R9 10
       80 GETTABLEKS                       R9 R9 K11 ["Provider"]
       82 DUPTABLE                         R10 K13 [{"value"}]
       83 SETTABLEKS                       R7 R10 K12 ["value"]
       85 GETTABLEKS                       R11 R0 K14 ["children"]
       87 CALL                             R8 3 -1
       88 RETURN                           R8 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R8 1
        9 GETTABLE                         R7 R8 R6
       10 SETTABLE                         R7 R1 R6
       11 FORGLOOP                         R2 2 ; [-4]
       13 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R7 2
       11 GETTABLE                         R6 R7 R4
       12 JUMPIFEQ                         R6 R5 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R4
       18 GETIMPORT                        R6 K2 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-12]
       23 LENGTH                           R1 R0
       24 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K6 [task.spawn]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U1
       34 CALL                             R1 1 1
       35 NEWCLOSURE                       R2 P1
       36 CAPTURE                          VAL R1
       37 RETURN                           R2 1

PROTO_16:
        0 DUPTABLE                         R0 K1 [{"clipReloadVersions"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["clipReloadVersions"]
        4 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["useState"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 2
       12 GETTABLEKS                       R4 R0 K2 ["reloadAnimationClipsAsync"]
       14 JUMPIF                           R4 ; [+1]
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 3
       27 MOVE                             R8 R1
       28 MOVE                             R9 R2
       29 MOVE                             R10 R4
       30 SETLIST                          R7 R8 3 [1]
       32 CALL                             R5 2 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R7 0 1
       40 MOVE                             R8 R2
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K5 ["createElement"]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K6 ["Provider"]
       50 DUPTABLE                         R8 K8 [{"value"}]
       51 SETTABLEKS                       R5 R8 K7 ["value"]
       53 GETTABLEKS                       R9 R0 K9 ["children"]
       55 CALL                             R6 3 -1
       56 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationPublishingLibrary"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K13 ["GraphDropdownContextUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K14 ["NativeGraphContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["Networking"]
       40 GETTABLEKS                       R6 R6 K17 ["NetworkUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       54 GETTABLEKS                       R8 R8 K19 ["SelectedGraphContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K20 ["Flags"]
       61 GETTABLEKS                       R9 R9 K21 ["getFFlagAnimGraphUI_ReloadPublishedClips"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K20 ["Flags"]
       68 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphUI_RunTimeDebug"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K20 ["Flags"]
       75 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimationClipProviderReload"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R6 K24 ["createContext"]
       80 DUPTABLE                         R12 K26 [{"clipReloadVersions"}]
       81 NEWTABLE                         R13 0 0
       83 SETTABLEKS                       R13 R12 K25 ["clipReloadVersions"]
       85 CALL                             R11 1 1
       86 LOADK                            R12 K27 ["PublishedClipContext"]
       87 SETTABLEKS                       R12 R11 K28 ["displayName"]
       89 GETTABLEKS                       R12 R5 K29 ["createReplicatedState"]
       91 LOADK                            R13 K30 ["PublishedClipContext_clipReloadVersions"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K31 [PROTO_0]
       94 DUPCLOSURE                       R14 K32 [PROTO_1]
       95 DUPCLOSURE                       R15 K33 [PROTO_3]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R1
       98 DUPCLOSURE                       R16 K34 [PROTO_11]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R11
      110 DUPCLOSURE                       R17 K35 [PROTO_17]
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 DUPTABLE                         R18 K39 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      117 SETTABLEKS                       R11 R18 K36 ["Context"]
      119 SETTABLEKS                       R16 R18 K37 ["EditableDataModelProvider"]
      121 SETTABLEKS                       R17 R18 K38 ["UIDataModelProvider"]
      123 RETURN                           R18 1
