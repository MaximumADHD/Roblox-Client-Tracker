PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createSignal"]
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 1
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isUnimplemented"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["getServerStorageContainer"]
        8 CALL                             R0 0 1
        9 JUMPIFNOTEQKNIL                  R0 ; [+2]
       11 RETURN                           R0 0
       12 LOADK                            R3 K2 ["AnimationGraphDefinition"]
       13 NAMECALL                         R1 R0 K3 ["QueryDescendants"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 NAMECALL                         R2 R2 K4 ["GenerateGUID"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["logStat"]
       23 DUPTABLE                         R4 K11 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       24 LOADK                            R5 K12 ["AnimationEditorTotalGraphs"]
       25 SETTABLEKS                       R5 R4 K6 ["eventName"]
       27 NEWTABLE                         R5 0 1
       29 LOADK                            R6 K13 ["RobloxTelemetryStat"]
       30 SETLIST                          R5 R6 1 [1]
       32 SETTABLEKS                       R5 R4 K7 ["backends"]
       34 GETIMPORT                        R5 K15 [game]
       36 LOADK                            R7 K16 ["AnimationEditorAnalyticsTotalGraphsThrottlingPercentage"]
       37 LOADN                            R8 16
       38 NAMECALL                         R5 R5 K17 ["DefineFastInt"]
       40 CALL                             R5 3 1
       41 SETTABLEKS                       R5 R4 K8 ["throttlingPercentage"]
       43 LOADK                            R5 K18 ["2026-03-25"]
       44 SETTABLEKS                       R5 R4 K9 ["lastUpdated"]
       46 LOADK                            R5 K19 ["Total number of animation graphs that exist where the graph editor will see them"]
       47 SETTABLEKS                       R5 R4 K10 ["description"]
       49 DUPTABLE                         R5 K21 [{"pollId"}]
       50 SETTABLEKS                       R2 R5 K20 ["pollId"]
       52 LENGTH                           R6 R1
       53 CALL                             R3 3 0
       54 NEWTABLE                         R3 0 0
       56 GETUPVAL                         R4 4
       57 NAMECALL                         R4 R4 K22 ["GetAnimationNodeTypes"]
       59 CALL                             R4 1 3
       60 FORGPREP                         R4
       61 GETTABLEKS                       R9 R8 K23 ["Name"]
       63 LOADN                            R10 0
       64 SETTABLE                         R10 R3 R9
       65 FORGLOOP                         R4 2 ; [-5]
       67 MOVE                             R4 R1
       68 LOADNIL                          R5
       69 LOADNIL                          R6
       70 FORGPREP                         R4
       71 LOADK                            R12 K2 ["AnimationGraphDefinition"]
       72 NAMECALL                         R10 R8 K24 ["IsA"]
       74 CALL                             R10 2 1
       75 FASTCALL2K                       ASSERT R10 K25 ; [+4]
       77 LOADK                            R11 K25 ["Luau: QueryDescendants needs magic function"]
       78 GETIMPORT                        R9 K27 [assert]
       80 CALL                             R9 2 0
       81 GETUPVAL                         R9 5
       82 GETTABLEKS                       R9 R9 K28 ["observeGraphState"]
       84 GETUPVAL                         R10 0
       85 GETUPVAL                         R11 6
       86 GETUPVAL                         R12 7
       87 GETTABLEKS                       R12 R12 K29 ["createSignal"]
       89 MOVE                             R13 R8
       90 CALL                             R12 1 1
       91 CALL                             R9 3 1
       92 LOADB                            R10 0
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K32 [table.clone]
       96 MOVE                             R11 R3
       97 CALL                             R10 1 1
       98 GETTABLEKS                       R11 R9 K33 ["graphPayloadMap"]
      100 JUMPIFEQKNIL                     R11 ; [+22]
      102 GETTABLEKS                       R11 R9 K33 ["graphPayloadMap"]
      104 GETTABLEKS                       R11 R11 K34 ["lookup"]
      106 LOADNIL                          R12
      107 LOADNIL                          R13
      108 FORGPREP                         R11
      109 GETTABLEKS                       R16 R15 K35 ["className"]
      111 JUMPIFEQKNIL                     R16 ; [+9]
      113 GETTABLEKS                       R16 R15 K35 ["className"]
      115 GETTABLEKS                       R20 R15 K35 ["className"]
      117 GETTABLE                         R19 R10 R20
      118 ORK                              R18 R19 K37 [0]
      119 ADDK                             R17 R18 K36 [1]
      120 SETTABLE                         R17 R10 R16
      121 FORGLOOP                         R11 2 ; [-13]
      123 GETUPVAL                         R11 3
      124 GETTABLEKS                       R11 R11 K38 ["logEvent"]
      126 DUPTABLE                         R12 K11 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
      127 LOADK                            R13 K39 ["AnimationEditorGraphInfo"]
      128 SETTABLEKS                       R13 R12 K6 ["eventName"]
      130 NEWTABLE                         R13 0 1
      132 LOADK                            R14 K40 ["EventIngest"]
      133 SETLIST                          R13 R14 1 [1]
      135 SETTABLEKS                       R13 R12 K7 ["backends"]
      137 GETIMPORT                        R13 K15 [game]
      139 LOADK                            R15 K41 ["AnimationEditorAnalyticsAnimationEditorGraphInfoThrottlingPercentage"]
      140 LOADN                            R16 16
      141 NAMECALL                         R13 R13 K17 ["DefineFastInt"]
      143 CALL                             R13 3 1
      144 SETTABLEKS                       R13 R12 K8 ["throttlingPercentage"]
      146 LOADK                            R13 K18 ["2026-03-25"]
      147 SETTABLEKS                       R13 R12 K9 ["lastUpdated"]
      149 LOADK                            R13 K42 ["Provides information on an available graph, sent on a poll"]
      150 SETTABLEKS                       R13 R12 K10 ["description"]
      152 DUPTABLE                         R13 K44 [{"nodeCounts", "pollId"}]
      153 SETTABLEKS                       R10 R13 K43 ["nodeCounts"]
      155 SETTABLEKS                       R2 R13 K20 ["pollId"]
      157 CALL                             R11 2 0
      158 FORGLOOP                         R4 2 ; [-88]
      160 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [task.wait]
        4 GETIMPORT                        R1 K4 [game]
        6 LOADK                            R3 K5 ["AnimationEditorAnalyticsPollRate"]
        7 LOADN                            R4 30
        8 NAMECALL                         R1 R1 K6 ["DefineFastInt"]
       10 CALL                             R1 3 -1
       11 CALL                             R0 -1 0
       12 JUMPBACK                         ; [-13]
       13 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AnalyticsContext"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Context"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K3 ["instanceRegistry"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["useContext"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K2 ["Context"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["useState"]
       26 DUPCLOSURE                       R4 K5 [PROTO_0]
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U5
       42 NEWTABLE                         R6 0 4
       44 GETTABLEKS                       R7 R0 K7 ["logEvent"]
       46 GETTABLEKS                       R8 R0 K8 ["logStat"]
       48 MOVE                             R9 R1
       49 MOVE                             R10 R3
       50 SETLIST                          R6 R7 4 [1]
       52 CALL                             R4 2 1
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K9 ["useEffect"]
       56 NEWCLOSURE                       R6 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R7 0 2
       61 GETTABLEKS                       R8 R2 K10 ["isOpen"]
       63 MOVE                             R9 R4
       64 SETLIST                          R7 R8 2 [1]
       66 CALL                             R5 2 0
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["Rig"]
       32 GETTABLEKS                       R5 R5 K15 ["AnimationRigDataUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K16 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K17 ["InstanceRegistryContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K18 ["Instances"]
       48 GETTABLEKS                       R7 R7 K19 ["InstanceSelectionRegistry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETIMPORT                        R8 K6 [script]
       55 GETTABLEKS                       R8 R8 K11 ["Parent"]
       57 GETTABLEKS                       R8 R8 K20 ["NativeGraphUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R2 K11 ["Parent"]
       64 GETTABLEKS                       R9 R9 K21 ["React"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R2 K11 ["Parent"]
       71 GETTABLEKS                       R10 R10 K22 ["Signals"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R2 K16 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K23 ["VisibleContext"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K24 [PROTO_5]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R7
       92 RETURN                           R11 1
