PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["uiState"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMP                             ; [+1]
        8 DUPTABLE                         R3 K6 [{["isExpanded"] = False}]
        9 SETTABLEKS                       R1 R3 K4 ["isExpanded"]
       11 GETIMPORT                        R4 K8 [table.freeze]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R0 K0 ["uiState"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["instanceIdsToNodes"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        9 LOADK                            R5 K1 ["expandKnownInstance was called for instance we don't know about"]
       10 GETIMPORT                        R3 K3 [assert]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R2 K4 ["datum"]
       15 GETTABLEKS                       R3 R3 K5 ["parentId"]
       17 JUMPIFEQKNIL                     R3 ; [+10]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["expandKnownInstance"]
       22 MOVE                             R4 R0
       23 GETTABLEKS                       R5 R2 K4 ["datum"]
       25 GETTABLEKS                       R5 R5 K5 ["parentId"]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 JUMPIFNOT                        R3 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R2
       35 LOADB                            R5 1
       36 CALL                             R3 2 0
       37 LOADB                            R3 1
       38 SETTABLEKS                       R3 R2 K7 ["isReceivingChildrenUpdates"]
       40 GETTABLEKS                       R4 R0 K8 ["instanceIdsToHiddenChildren"]
       42 GETTABLE                         R3 R4 R1
       43 JUMPIFNOTEQKNIL                  R3 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K9 ["replaceChildren"]
       49 MOVE                             R5 R0
       50 MOVE                             R6 R2
       51 MOVE                             R7 R3
       52 CALL                             R4 3 0
       53 GETTABLEKS                       R4 R0 K8 ["instanceIdsToHiddenChildren"]
       55 LOADNIL                          R5
       56 SETTABLE                         R5 R4 R1
       57 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["datum"]
        2 GETTABLEKS                       R3 R3 K1 ["parentId"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Got expanded datum with no parent ID"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+26]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["instanceIdsToNodes"]
       20 GETTABLEKS                       R3 R0 K0 ["datum"]
       22 GETTABLEKS                       R3 R3 K1 ["parentId"]
       24 GETTABLE                         R1 R2 R3
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       31 LOADK                            R4 K6 ["Couldn't find instance node for expanded datum"]
       32 GETIMPORT                        R2 K4 [assert]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K7 ["insertInto"]
       38 GETUPVAL                         R3 1
       39 MOVE                             R4 R1
       40 MOVE                             R5 R0
       41 CALL                             R2 3 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K5 ["instanceIdsToNodes"]
       46 GETTABLEKS                       R3 R0 K0 ["datum"]
       48 GETTABLEKS                       R3 R3 K1 ["parentId"]
       50 GETTABLE                         R1 R2 R3
       51 JUMPIFNOTEQKNIL                  R1 ; [+2]
       53 LOADB                            R3 0 +1
       54 LOADB                            R3 1
       55 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       57 LOADK                            R4 K6 ["Couldn't find instance node for expanded datum"]
       58 GETIMPORT                        R2 K4 [assert]
       60 CALL                             R2 2 0
       61 MOVE                             R2 R1
       62 JUMPIFEQKNIL                     R1 ; [+16]
       64 GETTABLEKS                       R3 R1 K0 ["datum"]
       66 GETTABLEKS                       R3 R3 K1 ["parentId"]
       68 JUMPIFNOT                        R3 ; [+8]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K5 ["instanceIdsToNodes"]
       72 GETTABLEKS                       R5 R1 K0 ["datum"]
       74 GETTABLEKS                       R5 R5 K1 ["parentId"]
       76 GETTABLE                         R3 R4 R5
       77 MOVE                             R1 R3
       78 JUMPBACK                         ; [-17]
       79 GETUPVAL                         R3 2
       80 GETTABLEKS                       R3 R3 K7 ["insertInto"]
       82 GETUPVAL                         R4 1
       83 MOVE                             R5 R2
       84 MOVE                             R6 R0
       85 CALL                             R3 3 0
       86 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["getFocusedRootState"]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R4 R0 K1 ["rootState"]
        5 GETTABLEKS                       R4 R4 K2 ["instanceIdsToNodes"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFEQKNIL                     R3 ; [+4]
       10 GETTABLEKS                       R4 R3 K3 ["isReceivingChildrenUpdates"]
       12 JUMPIF                           R4 ; [+50]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U1
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R4
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETTABLEKS                       R5 R0 K1 ["rootState"]
       23 JUMPIFNOTEQ                      R2 R5 ; [+39]
       25 GETTABLEKS                       R5 R0 K4 ["guestRpcInterface"]
       27 GETTABLEKS                       R5 R5 K5 ["expandAsync"]
       29 MOVE                             R6 R1
       30 CALL                             R5 1 1
       31 MOVE                             R6 R5
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETTABLEKS                       R12 R0 K1 ["rootState"]
       37 GETTABLEKS                       R12 R12 K2 ["instanceIdsToNodes"]
       39 GETTABLEKS                       R13 R10 K6 ["id"]
       41 GETTABLE                         R11 R12 R13
       42 JUMPIFEQKNIL                     R11 ; [+10]
       44 GETUPVAL                         R12 3
       45 CALL                             R12 0 1
       46 JUMPIFNOT                        R12 ; [+2]
       47 SETTABLEKS                       R10 R11 K7 ["datum"]
       49 MOVE                             R12 R4
       50 MOVE                             R13 R11
       51 CALL                             R12 1 0
       52 JUMP                             ; [+8]
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K8 ["createFromDatum"]
       56 MOVE                             R13 R10
       57 CALL                             R12 1 1
       58 MOVE                             R13 R4
       59 MOVE                             R14 R12
       60 CALL                             R13 1 0
       61 FORGLOOP                         R6 2 ; [-27]
       63 GETUPVAL                         R4 5
       64 GETTABLEKS                       R4 R4 K9 ["expandKnownInstance"]
       66 MOVE                             R5 R2
       67 MOVE                             R6 R1
       68 CALL                             R4 2 0
       69 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["getFocusedRootState"]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R4 R2 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       12 LOADK                            R6 K2 ["Unexpanding node that we are not tracking"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 JUMPIF                           R4 ; [+1]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R7 R2 K5 ["instanceIdsToHiddenChildren"]
       23 GETTABLE                         R6 R7 R1
       24 JUMPIFEQKNIL                     R6 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       30 LOADK                            R6 K6 ["Instance being unexpanded already has hidden children"]
       31 GETIMPORT                        R4 K4 [assert]
       33 CALL                             R4 2 0
       34 GETTABLEKS                       R4 R2 K5 ["instanceIdsToHiddenChildren"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K7 ["replaceChildren"]
       39 MOVE                             R6 R2
       40 MOVE                             R7 R3
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K8 ["empty"]
       44 CALL                             R8 0 -1
       45 CALL                             R5 -1 1
       46 SETTABLE                         R5 R4 R1
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R3
       49 LOADB                            R6 0
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["children"]
        2 JUMPIFEQKNIL                     R2 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["iterate"]
        7 GETTABLEKS                       R3 R1 K0 ["children"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R0
       13 MOVE                             R9 R5
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 1 ; [-5]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+9]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K2 ["unexpand"]
       24 MOVE                             R3 R0
       25 GETTABLEKS                       R4 R1 K3 ["datum"]
       27 GETTABLEKS                       R4 R4 K4 ["id"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["getFocusedRootState"]
        2 CALL                             R2 0 1
        3 MOVE                             R3 R1
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R9 R2 K1 ["instanceIdsToNodes"]
        9 GETTABLE                         R8 R9 R7
       10 JUMPIFNOTEQKNIL                  R8 ; [+2]
       12 LOADB                            R10 0 +1
       13 LOADB                            R10 1
       14 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       16 LOADK                            R11 K2 ["Collapsing node that we're not tracking"]
       17 GETIMPORT                        R9 K4 [assert]
       19 CALL                             R9 2 0
       20 GETUPVAL                         R9 0
       21 MOVE                             R10 R0
       22 MOVE                             R11 R8
       23 CALL                             R9 2 0
       24 FORGLOOP                         R3 2 ; [-18]
       26 GETTABLEKS                       R3 R2 K5 ["queueRootChanged"]
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedRootState"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K3 [os.clock]
        6 CALL                             R1 0 1
        7 LOADN                            R2 0
        8 LOADNIL                          R3
        9 GETIMPORT                        R4 K3 [os.clock]
       11 CALL                             R4 0 1
       12 GETIMPORT                        R5 K6 [table.clone]
       14 GETUPVAL                         R6 1
       15 CALL                             R5 1 1
       16 LOADN                            R6 1
       17 GETTABLE                         R7 R5 R6
       18 JUMPIFEQKNIL                     R7 ; [+73]
       20 ADDK                             R6 R6 K7 [1]
       21 GETTABLEKS                       R9 R0 K8 ["instanceIdsToNodes"]
       23 GETTABLE                         R8 R9 R7
       24 JUMPIFNOTEQKNIL                  R8 ; [+6]
       26 GETUPVAL                         R9 2
       27 LOADK                            R10 K9 ["ID being expanded no longer exists: %s"]
       28 MOVE                             R11 R7
       29 CALL                             R9 2 0
       30 JUMP                             ; [+60]
       31 GETUPVAL                         R9 3
       32 MOVE                             R10 R8
       33 CALL                             R9 1 1
       34 JUMPIF                           R9 ; [+33]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K10 ["expandAsync"]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R11 R8 K11 ["datum"]
       41 GETTABLEKS                       R11 R11 K12 ["id"]
       43 CALL                             R9 2 0
       44 GETUPVAL                         R9 5
       45 CALL                             R9 0 1
       46 JUMPIF                           R9 ; [+21]
       47 GETIMPORT                        R10 K3 [os.clock]
       49 CALL                             R10 0 1
       50 SUB                              R9 R10 R4
       51 LOADK                            R10 K13 [0.02]
       52 JUMPIFNOTLT                      R10 R9 ; [+15]
       54 GETTABLEKS                       R10 R0 K14 ["queueRootChanged"]
       56 CALL                             R10 0 0
       57 ADD                              R2 R2 R9
       58 JUMPIFNOTEQKNIL                  R3 ; [+2]
       60 MOVE                             R3 R9
       61 GETIMPORT                        R10 K17 [task.wait]
       63 CALL                             R10 0 0
       64 GETIMPORT                        R10 K3 [os.clock]
       66 CALL                             R10 0 1
       67 MOVE                             R4 R10
       68 GETTABLEKS                       R9 R8 K18 ["children"]
       70 JUMPIFEQKNIL                     R9 ; [+20]
       72 GETUPVAL                         R9 6
       73 GETTABLEKS                       R9 R9 K19 ["iterate"]
       75 GETTABLEKS                       R10 R8 K18 ["children"]
       77 CALL                             R9 1 3
       78 FORGPREP                         R9
       79 GETTABLEKS                       R16 R12 K11 ["datum"]
       81 GETTABLEKS                       R16 R16 K12 ["id"]
       83 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
       85 MOVE                             R15 R5
       86 GETIMPORT                        R14 K21 [table.insert]
       88 CALL                             R14 2 0
       89 FORGLOOP                         R9 1 ; [-11]
       91 JUMPBACK                         ; [-75]
       92 GETTABLEKS                       R7 R0 K14 ["queueRootChanged"]
       94 CALL                             R7 0 0
       95 GETIMPORT                        R8 K3 [os.clock]
       97 CALL                             R8 0 1
       98 SUB                              R7 R8 R4
       99 ADD                              R2 R2 R7
      100 GETIMPORT                        R8 K3 [os.clock]
      102 CALL                             R8 0 1
      103 SUB                              R7 R8 R1
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R8 R8 K22 ["analyticsInterface"]
      107 GETTABLEKS                       R8 R8 K23 ["logEvent"]
      109 DUPTABLE                         R9 K32 [{["eventName"] = "LuaExplorerExpandAllFinished", ["backends"], ["throttlingPercentage"], ["description"] = "Time it takes to perform an expandAll. timeToInteractivity is the time up to the first throttle. unthrottledTime is the total time ignoring throttles (that is, raw work), and totalTime is the complete time, start to finish, to finish seeing all instances.", ["lastUpdated"] = "2024-12-03"}]
      110 NEWTABLE                         R10 0 1
      112 LOADK                            R11 K33 ["EventIngest"]
      113 SETLIST                          R10 R11 1 [1]
      115 SETTABLEKS                       R10 R9 K26 ["backends"]
      117 GETIMPORT                        R10 K35 [game]
      119 LOADK                            R12 K36 ["LuaExplorerExpandAllFinishedThrottlingHundredthsPercent"]
      120 LOADN                            R13 10000
      121 NAMECALL                         R10 R10 K37 ["DefineFastInt"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K27 ["throttlingPercentage"]
      126 DUPTABLE                         R10 K41 [{"totalTime", "unthrottledTime", "timeToInteractivity"}]
      127 SETTABLEKS                       R7 R10 K38 ["totalTime"]
      129 SETTABLEKS                       R2 R10 K39 ["unthrottledTime"]
      131 OR                               R11 R3 R7
      132 SETTABLEKS                       R11 R10 K40 ["timeToInteractivity"]
      134 CALL                             R8 2 0
      135 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nilId"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 LOADK                            R2 K1 ["NoChildren"]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["getFocusedRootState"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R3 R3 K3 ["instanceIdsToNodes"]
       12 GETTABLE                         R2 R3 R1
       13 JUMPIFNOTEQKNIL                  R2 ; [+3]
       15 LOADK                            R3 K1 ["NoChildren"]
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R2 K4 ["uiState"]
       19 GETTABLEKS                       R5 R2 K5 ["datum"]
       21 GETTABLEKS                       R5 R5 K6 ["hasChildren"]
       23 JUMPIF                           R5 ; [+2]
       24 LOADK                            R4 K1 ["NoChildren"]
       25 RETURN                           R4 1
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETTABLEKS                       R5 R3 K7 ["isExpanded"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K8 ["Expanded"]
       31 RETURN                           R4 1
       32 LOADK                            R4 K9 ["Collapsed"]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Networking"]
       18 GETTABLEKS                       R3 R3 K9 ["createSession"]
       20 GETTABLEKS                       R3 R3 K10 ["ExplorerNode"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["ExplorerNodeChildrenMutable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Networking"]
       39 GETTABLEKS                       R6 R6 K9 ["createSession"]
       41 GETTABLEKS                       R6 R6 K13 ["SessionChildren"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["createDebugLogger"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Networking"]
       55 GETTABLEKS                       R8 R8 K9 ["createSession"]
       57 GETTABLEKS                       R8 R8 K15 ["createSessionTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K16 ["Flags"]
       64 GETTABLEKS                       R9 R9 K17 ["getFFlagDebugExplorerImmediateWaiting"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K16 ["Flags"]
       71 GETTABLEKS                       R10 R10 K18 ["getFFlagExplorerArrayError"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K16 ["Flags"]
       78 GETTABLEKS                       R11 R11 K19 ["getFFlagExplorerStreaming"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K20 ["isExpanded"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Util"]
       92 GETTABLEKS                       R13 R13 K21 ["profile"]
       94 CALL                             R12 1 1
       95 NEWTABLE                         R13 8 0
       97 MOVE                             R14 R6
       98 LOADK                            R15 K22 ["Expanding"]
       99 CALL                             R14 1 1
      100 DUPCLOSURE                       R15 K23 [PROTO_0]
      101 DUPCLOSURE                       R16 K24 [PROTO_1]
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R16 R13 K25 ["expandKnownInstance"]
      108 DUPCLOSURE                       R16 K26 [PROTO_3]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R13
      115 SETTABLEKS                       R16 R13 K27 ["expandAsync"]
      117 DUPCLOSURE                       R16 K28 [PROTO_4]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R15
      122 SETTABLEKS                       R16 R13 K29 ["unexpand"]
      124 DUPCLOSURE                       R16 K30 [PROTO_5]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R13
      129 DUPCLOSURE                       R17 K31 [PROTO_6]
      130 CAPTURE                          VAL R16
      131 SETTABLEKS                       R17 R13 K32 ["collapseAll"]
      133 DUPCLOSURE                       R17 K33 [PROTO_8]
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R17 R13 K34 ["expandAll"]
      141 DUPCLOSURE                       R17 K35 [PROTO_9]
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R17 R13 K36 ["getExpandState"]
      145 RETURN                           R13 1
