PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Pinned", "ThreadHistory", "Build", "Other"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Pinned"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pinned"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["ThreadHistory"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ThreadHistory"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["ThreadsMenu"]
       19 LOADK                            R4 K2 ["Build"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Build"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["ThreadsMenu"]
       27 LOADK                            R4 K3 ["Other"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Other"]
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["lastActivityAt"]
        2 GETTABLEKS                       R3 R1 K0 ["lastActivityAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["lastActivityAt"]
        8 GETTABLEKS                       R4 R1 K0 ["lastActivityAt"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["createdAt"]
       17 GETTABLEKS                       R3 R1 K1 ["createdAt"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["createdAt"]
       23 GETTABLEKS                       R4 R1 K1 ["createdAt"]
       25 JUMPIFLT                         R4 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["threadId"]
       32 GETTABLEKS                       R4 R1 K2 ["threadId"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 DUPTABLE                         R0 K2 [{"title", "threads"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantPinForBuildUI"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K4 ["Build"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K5 ["Pinned"]
       17 SETTABLEKS                       R1 R0 K0 ["title"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K1 ["threads"]
       23 DUPTABLE                         R1 K2 [{"title", "threads"}]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K3 ["FFlagAssistantPinForBuildUI"]
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K6 ["Other"]
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["ThreadHistory"]
       35 SETTABLEKS                       R2 R1 K0 ["title"]
       37 NEWTABLE                         R2 0 0
       39 SETTABLEKS                       R2 R1 K1 ["threads"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K1 ["threads"]
       44 LOADNIL                          R3
       45 LOADNIL                          R4
       46 FORGPREP                         R2
       47 GETTABLEKS                       R7 R6 K8 ["isDeleted"]
       49 JUMPIF                           R7 ; [+43]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K9 ["getThreadMetadata"]
       53 GETTABLEKS                       R8 R6 K10 ["threadId"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K11 ["isNewThread"]
       58 JUMPIF                           R8 ; [+34]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K12 ["FFlagAssistantHidePinForBuild"]
       62 JUMPIFNOT                        R8 ; [+3]
       63 GETTABLEKS                       R8 R6 K13 ["isSharedWithBuild"]
       65 JUMPIF                           R8 ; [+27]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K3 ["FFlagAssistantPinForBuildUI"]
       69 JUMPIFNOT                        R9 ; [+3]
       70 GETTABLEKS                       R8 R6 K13 ["isSharedWithBuild"]
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R8 R6 K14 ["isPinned"]
       75 JUMPIFNOT                        R8 ; [+9]
       76 GETTABLEKS                       R10 R0 K1 ["threads"]
       78 FASTCALL2                        TABLE_INSERT R10 R6 ; [+4]
       80 MOVE                             R11 R6
       81 GETIMPORT                        R9 K17 [table.insert]
       83 CALL                             R9 2 0
       84 JUMP                             ; [+8]
       85 GETTABLEKS                       R10 R1 K1 ["threads"]
       87 FASTCALL2                        TABLE_INSERT R10 R6 ; [+4]
       89 MOVE                             R11 R6
       90 GETIMPORT                        R9 K17 [table.insert]
       92 CALL                             R9 2 0
       93 FORGLOOP                         R2 2 ; [-47]
       95 NEWTABLE                         R2 0 2
       97 MOVE                             R5 R0
       98 MOVE                             R6 R1
       99 SETLIST                          R2 R5 2 [1]
      101 LOADNIL                          R3
      102 LOADNIL                          R4
      103 FORGPREP                         R2
      104 GETIMPORT                        R7 K19 [table.sort]
      106 GETTABLEKS                       R8 R6 K1 ["threads"]
      108 DUPCLOSURE                       R9 K20 [PROTO_1]
      109 CALL                             R7 2 0
      110 FORGLOOP                         R2 2 ; [-7]
      112 NEWTABLE                         R2 0 2
      114 MOVE                             R3 R0
      115 MOVE                             R4 R1
      116 SETLIST                          R2 R3 2 [1]
      118 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R4 0 2
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 SETLIST                          R4 R5 2 [1]
       27 CALL                             R2 2 1
       28 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isRenaming"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["initialText"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R3 K0 ["TextBox"]
        3 LOADB                            R4 1
        4 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 NAMECALL                         R2 R1 K2 ["CaptureFocus"]
       11 CALL                             R2 1 0
       12 LOADN                            R2 1
       13 SETTABLEKS                       R2 R1 K3 ["SelectionStart"]
       15 GETTABLEKS                       R4 R1 K5 ["Text"]
       17 LENGTH                           R3 R4
       18 ADDK                             R2 R3 K4 [1]
       19 SETTABLEKS                       R2 R1 K6 ["CursorPosition"]
       21 GETTABLEKS                       R2 R1 K7 ["FocusLost"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R2 R2 K8 ["Connect"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKS                       R0 K0 [""] ; [+7]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+2]
       13 GETUPVAL                         R0 3
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["onRenameCommit"]
        2 GETTABLEKS                       R2 R0 K1 ["onRenameCancel"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 GETTABLEKS                       R4 R0 K3 ["initialText"]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 2
       18 GETTABLEKS                       R8 R0 K5 ["isRenaming"]
       20 GETTABLEKS                       R9 R0 K3 ["initialText"]
       22 SETLIST                          R7 R8 2 [1]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R2
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 LENGTH                           R7 R3
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K7 ["MAX_THREAD_NAME_LENGTH"]
       40 JUMPIFLE                         R7 R8 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R9 0 3
       54 MOVE                             R10 R3
       55 MOVE                             R11 R1
       56 MOVE                             R12 R2
       57 SETLIST                          R9 R10 3 [1]
       59 CALL                             R7 2 1
       60 DUPTABLE                         R8 K13 [{"renameText", "setRenameText", "inputRef", "hasError", "onReturnPressed"}]
       61 SETTABLEKS                       R3 R8 K8 ["renameText"]
       63 SETTABLEKS                       R4 R8 K9 ["setRenameText"]
       65 SETTABLEKS                       R5 R8 K10 ["inputRef"]
       67 NOT                              R9 R6
       68 SETTABLEKS                       R9 R8 K11 ["hasError"]
       70 SETTABLEKS                       R7 R8 K12 ["onReturnPressed"]
       72 RETURN                           R8 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R1 K2 ["Initialize"]
        9 JUMPIFEQ                         R0 R4 ; [+12]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R1 K3 ["Default"]
       14 JUMPIFEQ                         R0 R4 ; [+7]
       16 GETTABLEKS                       R4 R1 K4 ["Disabled"]
       18 JUMPIFNOTEQ                      R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K3 [{["cancelTransform"] = True}]
        7 RETURN                           R2 2
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R0 K0 ["title"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["get"]
       14 CALL                             R2 0 1
       15 GETTABLEKS                       R3 R2 K5 ["EventLogger"]
       17 GETTABLEKS                       R3 R3 K6 ["logThreadRenamed"]
       19 DUPTABLE                         R4 K12 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
       20 GETUPVAL                         R5 2
       21 SETTABLEKS                       R5 R4 K7 ["conversationId"]
       23 GETUPVAL                         R5 3
       24 SETTABLEKS                       R5 R4 K8 ["threadId"]
       26 SETTABLEKS                       R1 R4 K9 ["oldTitle"]
       28 GETUPVAL                         R5 0
       29 SETTABLEKS                       R5 R4 K10 ["newTitle"]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K13 ["ThreadNamingSource"]
       34 GETTABLEKS                       R5 R5 K14 ["ManualRename"]
       36 SETTABLEKS                       R5 R4 K11 ["namingSource"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant] Failed to persist ACP session title: %*"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["threadId"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["acpSessionId"]
       18 JUMPIFNOT                        R2 ; [+18]
       19 GETUPVAL                         R2 5
       20 JUMPIFNOT                        R2 ; [+16]
       21 GETUPVAL                         R2 5
       22 DUPTABLE                         R4 K4 [{"sessionId", "title"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K1 ["acpSessionId"]
       26 SETTABLEKS                       R5 R4 K2 ["sessionId"]
       28 SETTABLEKS                       R0 R4 K3 ["title"]
       30 NAMECALL                         R2 R2 K5 ["updateSessionInfo"]
       32 CALL                             R2 2 1
       33 DUPCLOSURE                       R4 K6 [PROTO_14]
       34 NAMECALL                         R2 R2 K7 ["catch"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 6
       38 LOADB                            R3 0
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_16:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_16]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["service"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["sessionId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useState"]
       21 LOADB                            R5 0
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 0
       31 CALL                             R6 2 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K4 ["useState"]
       35 LOADB                            R8 0
       36 CALL                             R7 1 2
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K4 ["useState"]
       40 LOADB                            R10 0
       41 CALL                             R9 1 2
       42 GETTABLEKS                       R13 R0 K6 ["isSelected"]
       44 NOT                              R12 R13
       45 NOT                              R11 R12
       46 GETUPVAL                         R12 4
       47 CALL                             R12 0 1
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R10
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 1
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K5 ["useCallback"]
       59 NEWCLOSURE                       R15 P2
       60 CAPTURE                          VAL R10
       61 NEWTABLE                         R16 0 0
       63 CALL                             R14 2 1
       64 GETTABLEKS                       R15 R0 K7 ["thread"]
       66 GETUPVAL                         R16 0
       67 GETTABLEKS                       R16 R16 K5 ["useCallback"]
       69 NEWCLOSURE                       R17 P3
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R12
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R10
       77 NEWTABLE                         R18 0 4
       79 MOVE                             R19 R1
       80 MOVE                             R20 R12
       81 MOVE                             R21 R3
       82 MOVE                             R22 R15
       83 SETLIST                          R18 R19 4 [1]
       85 CALL                             R16 2 1
       86 GETUPVAL                         R17 7
       87 DUPTABLE                         R18 K12 [{"isRenaming", "initialText", "onRenameCommit", "onRenameCancel"}]
       88 SETTABLEKS                       R9 R18 K8 ["isRenaming"]
       90 GETUPVAL                         R20 8
       91 GETTABLEKS                       R20 R20 K13 ["FFlagAssistantUntitledChatPlaceholder"]
       93 JUMPIFNOT                        R20 ; [+4]
       94 JUMPIFNOT                        R15 ; [+3]
       95 GETTABLEKS                       R19 R15 K14 ["title"]
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R19 R0 K15 ["text"]
      100 SETTABLEKS                       R19 R18 K9 ["initialText"]
      102 SETTABLEKS                       R16 R18 K10 ["onRenameCommit"]
      104 SETTABLEKS                       R14 R18 K11 ["onRenameCancel"]
      106 CALL                             R17 1 1
      107 LOADNIL                          R18
      108 JUMPIFNOT                        R15 ; [+24]
      109 NOT                              R19 R11
      110 JUMPIFNOT                        R19 ; [+14]
      111 LOADB                            R19 0
      112 LOADN                            R20 0
      113 GETTABLEKS                       R21 R15 K16 ["lastViewedAt"]
      115 JUMPIFNOTLE                      R20 R21 ; [+9]
      117 GETTABLEKS                       R20 R15 K16 ["lastViewedAt"]
      119 GETTABLEKS                       R21 R15 K17 ["updatedAt"]
      121 JUMPIFLT                         R20 R21 ; [+2]
      123 LOADB                            R19 0 +1
      124 LOADB                            R19 1
      125 JUMPIFNOT                        R19 ; [+7]
      126 GETUPVAL                         R20 3
      127 GETTABLEKS                       R20 R20 K18 ["Enums"]
      129 GETTABLEKS                       R20 R20 K19 ["StatusIndicatorVariant"]
      131 GETTABLEKS                       R18 R20 K20 ["Emphasis"]
      133 MOVE                             R19 R15
      134 JUMPIFNOT                        R19 ; [+4]
      135 JUMPIF                           R4 ; [+2]
      136 MOVE                             R19 R7
      137 JUMPIFNOT                        R19 ; [+1]
      138 NOT                              R19 R9
      139 GETUPVAL                         R20 9
      140 CALL                             R20 0 1
      141 GETUPVAL                         R21 10
      142 GETUPVAL                         R22 11
      143 DUPTABLE                         R23 K27 [{"tag", "Size", "onActivated", "onStateChanged", "LayoutOrder", "testId"}]
      144 NEWTABLE                         R24 2 0
      146 LOADB                            R25 1
      147 SETTABLEKS                       R25 R24 K28 ["row align-y-center gap-medium padding-x-medium padding-y-xsmall radius-small"]
      149 SETTABLEKS                       R11 R24 K29 ["bg-action-soft-emphasis"]
      151 SETTABLEKS                       R24 R23 K21 ["tag"]
      153 GETIMPORT                        R24 K32 [UDim2.new]
      155 LOADN                            R25 1
      156 LOADN                            R26 0
      157 LOADN                            R27 0
      158 LOADN                            R28 26
      159 CALL                             R24 4 1
      160 SETTABLEKS                       R24 R23 K22 ["Size"]
      162 JUMPIF                           R9 ; [+3]
      163 GETTABLEKS                       R24 R0 K23 ["onActivated"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R24
      167 SETTABLEKS                       R24 R23 K23 ["onActivated"]
      169 JUMPIFNOT                        R15 ; [+2]
      170 MOVE                             R24 R6
      171 JUMP                             ; [+1]
      172 LOADNIL                          R24
      173 SETTABLEKS                       R24 R23 K24 ["onStateChanged"]
      175 GETTABLEKS                       R24 R0 K25 ["LayoutOrder"]
      177 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      179 GETTABLEKS                       R24 R0 K26 ["testId"]
      181 SETTABLEKS                       R24 R23 K26 ["testId"]
      183 DUPTABLE                         R24 K36 [{"LeadingIcon", "Text", "IndicatorArea"}]
      184 GETTABLEKS                       R25 R0 K37 ["leadingIcon"]
      186 JUMPIFNOT                        R25 ; [+21]
      187 GETUPVAL                         R25 10
      188 GETUPVAL                         R26 12
      189 DUPTABLE                         R27 K40 [{"name", "size", "LayoutOrder"}]
      190 GETTABLEKS                       R28 R0 K37 ["leadingIcon"]
      192 SETTABLEKS                       R28 R27 K38 ["name"]
      194 GETUPVAL                         R28 3
      195 GETTABLEKS                       R28 R28 K18 ["Enums"]
      197 GETTABLEKS                       R28 R28 K41 ["IconSize"]
      199 GETTABLEKS                       R28 R28 K42 ["Small"]
      201 SETTABLEKS                       R28 R27 K39 ["size"]
      203 MOVE                             R28 R20
      204 CALL                             R28 0 1
      205 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      207 CALL                             R25 2 1
      208 SETTABLEKS                       R25 R24 K33 ["LeadingIcon"]
      210 JUMPIFNOT                        R9 ; [+52]
      211 GETUPVAL                         R25 10
      212 GETUPVAL                         R26 13
      213 DUPTABLE                         R27 K50 [{["text"], ["label"] = "", ["width"], ["size"], ["hasError"], ["onChanged"], ["onReturnPressed"], ["ref"], ["LayoutOrder"], ["testId"]}]
      214 GETTABLEKS                       R28 R17 K51 ["renameText"]
      216 SETTABLEKS                       R28 R27 K15 ["text"]
      218 GETIMPORT                        R28 K53 [UDim.new]
      220 LOADN                            R29 1
      221 LOADN                            R30 0
      222 CALL                             R28 2 1
      223 SETTABLEKS                       R28 R27 K45 ["width"]
      225 GETUPVAL                         R28 3
      226 GETTABLEKS                       R28 R28 K18 ["Enums"]
      228 GETTABLEKS                       R28 R28 K54 ["InputSize"]
      230 GETTABLEKS                       R28 R28 K55 ["XSmall"]
      232 SETTABLEKS                       R28 R27 K39 ["size"]
      234 GETTABLEKS                       R28 R17 K46 ["hasError"]
      236 SETTABLEKS                       R28 R27 K46 ["hasError"]
      238 GETTABLEKS                       R28 R17 K56 ["setRenameText"]
      240 SETTABLEKS                       R28 R27 K47 ["onChanged"]
      242 GETTABLEKS                       R28 R17 K48 ["onReturnPressed"]
      244 SETTABLEKS                       R28 R27 K48 ["onReturnPressed"]
      246 GETTABLEKS                       R28 R17 K57 ["inputRef"]
      248 SETTABLEKS                       R28 R27 K49 ["ref"]
      250 MOVE                             R28 R20
      251 CALL                             R28 0 1
      252 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      254 GETUPVAL                         R28 14
      255 GETTABLEKS                       R28 R28 K58 ["ThreadEntry"]
      257 GETTABLEKS                       R28 R28 K59 ["RenameInput"]
      259 SETTABLEKS                       R28 R27 K26 ["testId"]
      261 CALL                             R25 2 1
      262 JUMP                             ; [+12]
      263 GETUPVAL                         R25 10
      264 GETUPVAL                         R26 15
      265 DUPTABLE                         R27 K61 [{["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      266 GETTABLEKS                       R28 R0 K15 ["text"]
      268 SETTABLEKS                       R28 R27 K34 ["Text"]
      270 MOVE                             R28 R20
      271 CALL                             R28 0 1
      272 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      274 CALL                             R25 2 1
      275 SETTABLEKS                       R25 R24 K34 ["Text"]
      277 GETUPVAL                         R25 10
      278 GETUPVAL                         R26 11
      279 DUPTABLE                         R27 K63 [{["tag"] = "align-x-center align-y-center size-400-400", ["LayoutOrder"]}]
      280 MOVE                             R28 R20
      281 CALL                             R28 0 1
      282 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      284 DUPTABLE                         R28 K66 [{"Status", "ThreadOptionsMenu"}]
      285 NOT                              R29 R19
      286 JUMPIFNOT                        R29 ; [+14]
      287 NOT                              R29 R9
      288 JUMPIFNOT                        R29 ; [+12]
      289 MOVE                             R29 R18
      290 JUMPIFNOT                        R29 ; [+10]
      291 GETUPVAL                         R29 10
      292 GETUPVAL                         R30 16
      293 DUPTABLE                         R31 K68 [{"variant", "LayoutOrder"}]
      294 SETTABLEKS                       R18 R31 K67 ["variant"]
      296 MOVE                             R32 R20
      297 CALL                             R32 0 1
      298 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      300 CALL                             R29 2 1
      301 SETTABLEKS                       R29 R28 K64 ["Status"]
      303 MOVE                             R29 R15
      304 JUMPIFNOT                        R29 ; [+79]
      305 GETUPVAL                         R30 8
      306 GETTABLEKS                       R30 R30 K69 ["FFlagAssistantPinForBuildUI"]
      308 JUMPIFNOT                        R30 ; [+4]
      309 GETTABLEKS                       R30 R15 K70 ["isSharedWithBuild"]
      311 NOT                              R29 R30
      312 JUMPIFNOT                        R29 ; [+71]
      313 GETUPVAL                         R29 10
      314 GETUPVAL                         R30 17
      315 DUPTABLE                         R31 K75 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      316 SETTABLEKS                       R15 R31 K7 ["thread"]
      318 GETTABLEKS                       R32 R0 K71 ["isGenerating"]
      320 SETTABLEKS                       R32 R31 K71 ["isGenerating"]
      322 SETTABLEKS                       R7 R31 K72 ["isOpen"]
      324 SETTABLEKS                       R8 R31 K73 ["setIsOpen"]
      326 SETTABLEKS                       R13 R31 K74 ["onRenameRequested"]
      328 MOVE                             R32 R20
      329 CALL                             R32 0 1
      330 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      332 DUPTABLE                         R32 K77 [{"OptionsButton"}]
      333 MOVE                             R33 R19
      334 JUMPIFNOT                        R33 ; [+46]
      335 GETUPVAL                         R33 10
      336 GETUPVAL                         R34 18
      337 DUPTABLE                         R35 K81 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      338 GETUPVAL                         R36 3
      339 GETTABLEKS                       R36 R36 K18 ["Enums"]
      341 GETTABLEKS                       R36 R36 K82 ["IconName"]
      343 GETTABLEKS                       R36 R36 K83 ["ThreeDotsVertical"]
      345 SETTABLEKS                       R36 R35 K78 ["icon"]
      347 GETUPVAL                         R36 3
      348 GETTABLEKS                       R36 R36 K18 ["Enums"]
      350 GETTABLEKS                       R36 R36 K54 ["InputSize"]
      352 GETTABLEKS                       R36 R36 K55 ["XSmall"]
      354 SETTABLEKS                       R36 R35 K39 ["size"]
      356 GETUPVAL                         R36 3
      357 GETTABLEKS                       R36 R36 K18 ["Enums"]
      359 GETTABLEKS                       R36 R36 K84 ["ButtonVariant"]
      361 GETTABLEKS                       R36 R36 K85 ["Utility"]
      363 SETTABLEKS                       R36 R35 K67 ["variant"]
      365 NEWCLOSURE                       R36 P4
      366 CAPTURE                          VAL R8
      367 SETTABLEKS                       R36 R35 K23 ["onActivated"]
      369 MOVE                             R36 R20
      370 CALL                             R36 0 1
      371 SETTABLEKS                       R36 R35 K25 ["LayoutOrder"]
      373 GETUPVAL                         R36 14
      374 GETTABLEKS                       R36 R36 K58 ["ThreadEntry"]
      376 GETTABLEKS                       R36 R36 K76 ["OptionsButton"]
      378 SETTABLEKS                       R36 R35 K26 ["testId"]
      380 CALL                             R33 2 1
      381 SETTABLEKS                       R33 R32 K76 ["OptionsButton"]
      383 CALL                             R29 3 1
      384 SETTABLEKS                       R29 R28 K65 ["ThreadOptionsMenu"]
      386 CALL                             R25 3 1
      387 SETTABLEKS                       R25 R24 K35 ["IndicatorArea"]
      389 CALL                             R21 3 -1
      390 RETURN                           R21 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{[1] = "row align-y-center gap-medium auto-y padding-x-medium padding-y-xsmall radius-small", ["Size"], ["LayoutOrder"], ["testId"]}]
        5 GETIMPORT                        R5 K8 [UDim2.new]
        7 LOADN                            R6 1
        8 LOADN                            R7 0
        9 LOADN                            R8 0
       10 LOADN                            R9 24
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K2 ["Size"]
       14 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       16 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       18 GETTABLEKS                       R5 R0 K4 ["testId"]
       20 SETTABLEKS                       R5 R4 K4 ["testId"]
       22 DUPTABLE                         R5 K10 [{"Text"}]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 3
       25 DUPTABLE                         R8 K12 [{[1] = "fill auto-y text-caption-small text-align-x-left text-truncate-split content-default", ["Text"], ["LayoutOrder"]}]
       26 GETTABLEKS                       R9 R0 K13 ["text"]
       28 SETTABLEKS                       R9 R8 K9 ["Text"]
       30 MOVE                             R9 R1
       31 CALL                             R9 0 1
       32 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K9 ["Text"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{["tag"] = "align-x-center size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K7 [{"Wrapper"}]
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K10 [{["tag"] = "auto-y", ["Size"]}]
       17 GETIMPORT                        R9 K13 [UDim2.new]
       19 LOADN                            R10 1
       20 LOADN                            R12 2
       21 GETTABLEKS                       R13 R1 K14 ["Padding"]
       23 GETTABLEKS                       R13 R13 K15 ["XSmall"]
       25 MUL                              R11 R12 R13
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K9 ["Size"]
       31 DUPTABLE                         R9 K17 [{"Divider"}]
       32 GETUPVAL                         R10 1
       33 GETUPVAL                         R11 3
       34 CALL                             R10 1 1
       35 SETTABLEKS                       R10 R9 K16 ["Divider"]
       37 CALL                             R6 3 1
       38 SETTABLEKS                       R6 R5 K6 ["Wrapper"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["FocusInput"]
        7 NAMECALL                         R2 R2 K1 ["Fire"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["setThreadsMenuOpen"]
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["ThreadSwitchSource"]
        7 GETTABLEKS                       R3 R3 K1 ["ThreadsMenuNew"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R0 K2 [{"NewThread", "ThreadsLoadError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["NewThread"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NewThread"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["ThreadsLoadError"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ThreadsLoadError"]
       17 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["ThreadSwitchSource"]
        5 GETTABLEKS                       R2 R2 K1 ["ThreadsMenu"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["listSessionsPage"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["nextCursor"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["checkForEdge"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["Y"]
        2 LOADN                            R4 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["Padding"]
        6 GETTABLEKS                       R5 R5 K2 ["Small"]
        8 MUL                              R3 R4 R5
        9 ADD                              R1 R2 R3
       10 GETIMPORT                        R2 K5 [UDim2.new]
       12 LOADN                            R3 1
       13 LOADN                            R4 0
       14 LOADN                            R5 0
       15 FASTCALL2K                       MATH_MIN R1 K6 ; [+5]
       17 MOVE                             R7 R1
       18 LOADK                            R8 K6 [500]
       19 GETIMPORT                        R6 K9 [math.min]
       21 CALL                             R6 2 1
       22 CALL                             R2 4 -1
       23 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADB                            R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useContext"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["Context"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K2 ["threadId"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K0 ["useContext"]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K1 ["Context"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R6 R5 K3 ["allThreadInputStates"]
       23 GETUPVAL                         R7 5
       24 CALL                             R7 0 1
       25 GETUPVAL                         R8 6
       26 GETTABLEKS                       R8 R8 K4 ["Hooks"]
       28 GETTABLEKS                       R8 R8 K5 ["useTokens"]
       30 CALL                             R8 0 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R7
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R11 0 2
       40 MOVE                             R12 R7
       41 GETTABLEKS                       R13 R0 K7 ["setThreadsMenuOpen"]
       43 SETLIST                          R11 R12 2 [1]
       45 CALL                             R9 2 1
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R9
       52 CAPTURE                          UPVAL U9
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R9
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K8 ["useMemo"]
       62 DUPCLOSURE                       R12 K9 [PROTO_23]
       63 CAPTURE                          UPVAL U10
       64 NEWTABLE                         R13 0 1
       66 GETUPVAL                         R14 10
       67 GETTABLEKS                       R14 R14 K10 ["locale"]
       69 SETLIST                          R13 R14 1 [1]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R12 R12 K11 ["useBinding"]
       75 GETIMPORT                        R13 K14 [Vector2.new]
       77 CALL                             R13 0 -1
       78 CALL                             R12 -1 2
       79 GETUPVAL                         R14 11
       80 CALL                             R14 0 1
       81 DUPTABLE                         R15 K16 [{"ThreadMenuButton_NewThread"}]
       82 GETUPVAL                         R16 12
       83 GETUPVAL                         R17 13
       84 DUPTABLE                         R18 K24 [{["text"], ["leadingIcon"], ["isSelected"] = False, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       85 GETTABLEKS                       R19 R11 K25 ["NewThread"]
       87 SETTABLEKS                       R19 R18 K17 ["text"]
       89 GETUPVAL                         R19 6
       90 GETTABLEKS                       R19 R19 K26 ["Enums"]
       92 GETTABLEKS                       R19 R19 K27 ["IconName"]
       94 GETTABLEKS                       R19 R19 K28 ["PencilSquare"]
       96 SETTABLEKS                       R19 R18 K18 ["leadingIcon"]
       98 SETTABLEKS                       R10 R18 K21 ["onActivated"]
      100 MOVE                             R19 R14
      101 CALL                             R19 0 1
      102 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      104 GETUPVAL                         R19 14
      105 GETTABLEKS                       R19 R19 K29 ["ThreadsMenu"]
      107 GETTABLEKS                       R19 R19 K30 ["AddThreadButton"]
      109 SETTABLEKS                       R19 R18 K23 ["testId"]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K15 ["ThreadMenuButton_NewThread"]
      114 GETUPVAL                         R16 15
      115 MOVE                             R17 R1
      116 CALL                             R16 1 1
      117 MOVE                             R17 R16
      118 LOADNIL                          R18
      119 LOADNIL                          R19
      120 FORGPREP                         R17
      121 GETTABLEKS                       R24 R21 K31 ["threads"]
      123 LENGTH                           R23 R24
      124 LOADN                            R24 0
      125 JUMPIFLT                         R24 R23 ; [+2]
      127 LOADB                            R22 0 +1
      128 LOADB                            R22 1
      129 JUMPIFNOT                        R22 ; [+114]
      130 GETTABLEKS                       R23 R21 K32 ["title"]
      132 LOADK                            R25 K33 ["ThreadMenuDivider_%*"]
      133 MOVE                             R27 R23
      134 NAMECALL                         R25 R25 K34 ["format"]
      136 CALL                             R25 2 1
      137 MOVE                             R24 R25
      138 GETUPVAL                         R25 12
      139 GETUPVAL                         R26 16
      140 DUPTABLE                         R27 K35 [{"LayoutOrder"}]
      141 MOVE                             R28 R14
      142 CALL                             R28 0 1
      143 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      145 CALL                             R25 2 1
      146 SETTABLE                         R25 R15 R24
      147 LOADK                            R25 K36 ["ThreadMenuHeader_%*"]
      148 MOVE                             R27 R23
      149 NAMECALL                         R25 R25 K34 ["format"]
      151 CALL                             R25 2 1
      152 MOVE                             R24 R25
      153 GETUPVAL                         R25 12
      154 GETUPVAL                         R26 17
      155 DUPTABLE                         R27 K39 [{["isHeader"] = True, ["text"], ["LayoutOrder"]}]
      156 SETTABLEKS                       R23 R27 K17 ["text"]
      158 MOVE                             R28 R14
      159 CALL                             R28 0 1
      160 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      162 CALL                             R25 2 1
      163 SETTABLE                         R25 R15 R24
      164 GETTABLEKS                       R24 R21 K31 ["threads"]
      166 LOADNIL                          R25
      167 LOADNIL                          R26
      168 FORGPREP                         R24
      169 GETTABLEKS                       R29 R28 K2 ["threadId"]
      171 JUMPIFEQ                         R29 R4 ; [+2]
      173 LOADB                            R30 0 +1
      174 LOADB                            R30 1
      175 GETTABLE                         R31 R6 R29
      176 JUMPIFNOT                        R31 ; [+3]
      177 GETTABLEKS                       R32 R31 K40 ["reasonDisabled"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R32
      181 MOVE                             R33 R32
      182 JUMPIFNOT                        R33 ; [+9]
      183 GETTABLEKS                       R34 R32 K40 ["reasonDisabled"]
      185 GETUPVAL                         R35 18
      186 GETTABLEKS                       R35 R35 K41 ["Generation"]
      188 JUMPIFEQ                         R34 R35 ; [+2]
      190 LOADB                            R33 0 +1
      191 LOADB                            R33 1
      192 LOADK                            R35 K42 ["ThreadMenuItem_%*"]
      193 MOVE                             R37 R29
      194 NAMECALL                         R35 R35 K34 ["format"]
      196 CALL                             R35 2 1
      197 MOVE                             R34 R35
      198 GETUPVAL                         R35 12
      199 GETUPVAL                         R36 13
      200 DUPTABLE                         R37 K45 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      201 GETUPVAL                         R39 19
      202 GETTABLEKS                       R39 R39 K46 ["FFlagAssistantUntitledChatPlaceholder"]
      204 JUMPIFNOT                        R39 ; [+8]
      205 GETTABLEKS                       R39 R28 K32 ["title"]
      207 JUMPIFNOTEQKS                    R39 K47 [""] ; [+5]
      209 GETUPVAL                         R38 19
      210 GETTABLEKS                       R38 R38 K48 ["FStringAssistantUntitledChatPlaceholder"]
      212 JUMP                             ; [+2]
      213 GETTABLEKS                       R38 R28 K32 ["title"]
      215 SETTABLEKS                       R38 R37 K17 ["text"]
      217 SETTABLEKS                       R28 R37 K43 ["thread"]
      219 SETTABLEKS                       R30 R37 K19 ["isSelected"]
      221 SETTABLEKS                       R33 R37 K44 ["isGenerating"]
      223 NEWCLOSURE                       R38 P3
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R29
      226 CAPTURE                          UPVAL U9
      227 SETTABLEKS                       R38 R37 K21 ["onActivated"]
      229 MOVE                             R38 R14
      230 CALL                             R38 0 1
      231 SETTABLEKS                       R38 R37 K22 ["LayoutOrder"]
      233 GETUPVAL                         R38 14
      234 GETTABLEKS                       R38 R38 K29 ["ThreadsMenu"]
      236 GETTABLEKS                       R38 R38 K49 ["ExistingThreadButton"]
      238 SETTABLEKS                       R38 R37 K23 ["testId"]
      240 CALL                             R35 2 1
      241 SETTABLE                         R35 R15 R34
      242 FORGLOOP                         R24 2 ; [-74]
      244 FORGLOOP                         R17 2 ; [-124]
      246 JUMPIFNOT                        R1 ; [+3]
      247 GETTABLEKS                       R17 R1 K50 ["threadPageState"]
      249 JUMP                             ; [+1]
      250 LOADNIL                          R17
      251 JUMPIFNOT                        R1 ; [+3]
      252 GETTABLEKS                       R18 R1 K51 ["threadLoadState"]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R18
      256 LOADB                            R19 0
      257 GETUPVAL                         R20 9
      258 GETTABLEKS                       R20 R20 K52 ["PersistenceLoadStates"]
      260 GETTABLEKS                       R20 R20 K53 ["Loading"]
      262 JUMPIFEQ                         R18 R20 ; [+10]
      264 LOADB                            R19 0
      265 JUMPIFEQKNIL                     R17 ; [+7]
      267 GETTABLEKS                       R20 R17 K54 ["nextCursor"]
      269 JUMPIFNOTEQKNIL                  R20 ; [+2]
      271 LOADB                            R19 0 +1
      272 LOADB                            R19 1
      273 GETUPVAL                         R20 2
      274 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      276 NEWCLOSURE                       R21 P4
      277 CAPTURE                          VAL R2
      278 CAPTURE                          VAL R17
      279 NEWTABLE                         R22 0 2
      281 GETTABLEKS                       R23 R2 K55 ["listSessionsPage"]
      283 MOVE                             R24 R17
      284 SETLIST                          R22 R23 2 [1]
      286 CALL                             R20 2 1
      287 GETUPVAL                         R21 20
      288 DUPTABLE                         R22 K58 [{"triggerDistance", "onScrolledToBottom"}]
      289 GETUPVAL                         R23 21
      290 GETTABLEKS                       R23 R23 K59 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      292 SETTABLEKS                       R23 R22 K56 ["triggerDistance"]
      294 JUMPIFNOT                        R19 ; [+2]
      295 MOVE                             R23 R20
      296 JUMP                             ; [+1]
      297 LOADNIL                          R23
      298 SETTABLEKS                       R23 R22 K57 ["onScrolledToBottom"]
      300 CALL                             R21 1 1
      301 GETUPVAL                         R22 9
      302 GETTABLEKS                       R22 R22 K52 ["PersistenceLoadStates"]
      304 GETTABLEKS                       R22 R22 K53 ["Loading"]
      306 JUMPIFNOTEQ                      R18 R22 ; [+28]
      308 GETUPVAL                         R22 12
      309 GETUPVAL                         R23 22
      310 DUPTABLE                         R24 K62 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      311 MOVE                             R25 R14
      312 CALL                             R25 0 1
      313 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      315 DUPTABLE                         R25 K63 [{"Loading"}]
      316 GETUPVAL                         R26 12
      317 GETUPVAL                         R27 23
      318 DUPTABLE                         R28 K65 [{"size"}]
      319 GETUPVAL                         R29 6
      320 GETTABLEKS                       R29 R29 K26 ["Enums"]
      322 GETTABLEKS                       R29 R29 K66 ["IconSize"]
      324 GETTABLEKS                       R29 R29 K67 ["Small"]
      326 SETTABLEKS                       R29 R28 K64 ["size"]
      328 CALL                             R26 2 1
      329 SETTABLEKS                       R26 R25 K53 ["Loading"]
      331 CALL                             R22 3 1
      332 SETTABLEKS                       R22 R15 K68 ["ThreadPersistenceInfo"]
      334 JUMP                             ; [+68]
      335 GETUPVAL                         R22 9
      336 GETTABLEKS                       R22 R22 K52 ["PersistenceLoadStates"]
      338 GETTABLEKS                       R22 R22 K69 ["Error"]
      340 JUMPIFNOTEQ                      R18 R22 ; [+62]
      342 GETUPVAL                         R22 12
      343 GETUPVAL                         R23 22
      344 DUPTABLE                         R24 K62 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      345 MOVE                             R25 R14
      346 CALL                             R25 0 1
      347 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      349 DUPTABLE                         R25 K72 [{"Icon", "Text"}]
      350 GETUPVAL                         R26 12
      351 GETUPVAL                         R27 24
      352 DUPTABLE                         R28 K75 [{"name", "size", "style", "LayoutOrder"}]
      353 GETUPVAL                         R29 6
      354 GETTABLEKS                       R29 R29 K26 ["Enums"]
      356 GETTABLEKS                       R29 R29 K27 ["IconName"]
      358 GETTABLEKS                       R29 R29 K76 ["TriangleExclamation"]
      360 SETTABLEKS                       R29 R28 K73 ["name"]
      362 GETUPVAL                         R29 6
      363 GETTABLEKS                       R29 R29 K26 ["Enums"]
      365 GETTABLEKS                       R29 R29 K66 ["IconSize"]
      367 GETTABLEKS                       R29 R29 K77 ["Medium"]
      369 SETTABLEKS                       R29 R28 K64 ["size"]
      371 GETTABLEKS                       R29 R8 K78 ["Color"]
      373 GETTABLEKS                       R29 R29 K79 ["System"]
      375 GETTABLEKS                       R29 R29 K80 ["Warning"]
      377 SETTABLEKS                       R29 R28 K74 ["style"]
      379 MOVE                             R29 R14
      380 CALL                             R29 0 1
      381 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      383 CALL                             R26 2 1
      384 SETTABLEKS                       R26 R25 K70 ["Icon"]
      386 GETUPVAL                         R26 12
      387 GETUPVAL                         R27 25
      388 DUPTABLE                         R28 K82 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      389 GETTABLEKS                       R29 R11 K83 ["ThreadsLoadError"]
      391 SETTABLEKS                       R29 R28 K71 ["Text"]
      393 MOVE                             R29 R14
      394 CALL                             R29 0 1
      395 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      397 CALL                             R26 2 1
      398 SETTABLEKS                       R26 R25 K71 ["Text"]
      400 CALL                             R22 3 1
      401 SETTABLEKS                       R22 R15 K68 ["ThreadPersistenceInfo"]
      403 GETUPVAL                         R22 2
      404 GETTABLEKS                       R22 R22 K84 ["useRef"]
      406 LOADNIL                          R23
      407 CALL                             R22 1 1
      408 GETUPVAL                         R23 12
      409 LOADK                            R24 K85 ["UIListLayout"]
      410 NEWTABLE                         R25 4 0
      412 GETIMPORT                        R26 K89 [Enum.FillDirection.Vertical]
      414 SETTABLEKS                       R26 R25 K87 ["FillDirection"]
      416 GETIMPORT                        R26 K91 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R26 R25 K90 ["SortOrder"]
      420 GETIMPORT                        R26 K93 [UDim.new]
      422 LOADN                            R27 0
      423 GETTABLEKS                       R28 R8 K94 ["Gap"]
      425 GETTABLEKS                       R28 R28 K95 ["XXSmall"]
      427 CALL                             R26 2 1
      428 SETTABLEKS                       R26 R25 K96 ["Padding"]
      430 GETUPVAL                         R26 2
      431 GETTABLEKS                       R26 R26 K97 ["Change"]
      433 GETTABLEKS                       R26 R26 K98 ["AbsoluteContentSize"]
      435 GETUPVAL                         R27 2
      436 GETTABLEKS                       R27 R27 K6 ["useCallback"]
      438 NEWCLOSURE                       R28 P5
      439 CAPTURE                          VAL R13
      440 CAPTURE                          VAL R22
      441 CAPTURE                          VAL R21
      442 NEWTABLE                         R29 0 2
      444 MOVE                             R30 R13
      445 GETTABLEKS                       R31 R21 K99 ["checkForEdge"]
      447 SETLIST                          R29 R30 2 [1]
      449 CALL                             R27 2 1
      450 SETTABLE                         R27 R25 R26
      451 CALL                             R23 2 1
      452 SETTABLEKS                       R23 R15 K100 ["ListLayout"]
      454 GETUPVAL                         R23 12
      455 GETUPVAL                         R24 22
      456 DUPTABLE                         R25 K102 [{["tag"] = "size-full-0 auto-y padding-x-small", ["testId"]}]
      457 GETUPVAL                         R26 14
      458 GETTABLEKS                       R26 R26 K29 ["ThreadsMenu"]
      460 GETTABLEKS                       R26 R26 K103 ["Container"]
      462 SETTABLEKS                       R26 R25 K23 ["testId"]
      464 DUPTABLE                         R26 K105 [{"ScrollView"}]
      465 GETUPVAL                         R27 12
      466 GETUPVAL                         R28 26
      467 DUPTABLE                         R29 K112 [{["tag"] = "col gap-xxsmall padding-xsmall stroke-standard stroke-default radius-medium bg-surface-200", ["scroll"], ["Size"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      468 DUPTABLE                         R30 K116 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      469 GETIMPORT                        R31 K119 [Enum.AutomaticSize.Y]
      471 SETTABLEKS                       R31 R30 K113 ["AutomaticCanvasSize"]
      473 GETIMPORT                        R31 K122 [UDim2.fromScale]
      475 LOADN                            R32 0
      476 LOADN                            R33 0
      477 CALL                             R31 2 1
      478 SETTABLEKS                       R31 R30 K114 ["CanvasSize"]
      480 GETIMPORT                        R31 K123 [Enum.ScrollingDirection.Y]
      482 SETTABLEKS                       R31 R30 K115 ["ScrollingDirection"]
      484 SETTABLEKS                       R30 R29 K107 ["scroll"]
      486 NEWCLOSURE                       R32 P6
      487 CAPTURE                          VAL R8
      488 NAMECALL                         R30 R12 K124 ["map"]
      490 CALL                             R30 2 1
      491 SETTABLEKS                       R30 R29 K108 ["Size"]
      493 SETTABLEKS                       R22 R29 K109 ["scrollingFrameRef"]
      495 GETTABLEKS                       R30 R21 K99 ["checkForEdge"]
      497 SETTABLEKS                       R30 R29 K110 ["onCanvasPositionChanged"]
      499 GETTABLEKS                       R30 R21 K99 ["checkForEdge"]
      501 SETTABLEKS                       R30 R29 K111 ["onAbsoluteWindowSizeChanged"]
      503 MOVE                             R30 R15
      504 CALL                             R27 3 1
      505 SETTABLEKS                       R27 R26 K104 ["ScrollView"]
      507 CALL                             R23 3 -1
      508 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ContentIdGenerator"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Guest"]
       32 GETTABLEKS                       R5 R5 K13 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Events"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K15 ["Flags"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Parent"]
       49 GETTABLEKS                       R8 R8 K17 ["Foundation"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Components"]
       56 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       58 GETTABLEKS                       R9 R9 K18 ["InputStateContext"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Parent"]
       65 GETTABLEKS                       R10 R10 K19 ["React"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K16 ["Parent"]
       72 GETTABLEKS                       R11 R11 K20 ["ReactUtils"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Components"]
       79 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K21 ["SessionIdContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Util"]
       88 GETTABLEKS                       R13 R13 K22 ["TestIds"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K7 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K23 ["ThreadIdContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Components"]
      104 GETTABLEKS                       R15 R15 K24 ["ThreadsWindow"]
      106 GETTABLEKS                       R15 R15 K25 ["ThreadOptionsMenu"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K26 ["Resources"]
      113 GETTABLEKS                       R16 R16 K27 ["Localization"]
      115 GETTABLEKS                       R16 R16 K28 ["Translator"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K29 ["Types"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K10 ["Util"]
      127 GETTABLEKS                       R18 R18 K30 ["createNewThread"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K31 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K32 ["useAcpSessionHistory"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K31 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K33 ["useConversation"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K31 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K34 ["useEditThread"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K31 ["Hooks"]
      155 GETTABLEKS                       R22 R22 K35 ["useScrollEdge"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K31 ["Hooks"]
      162 GETTABLEKS                       R23 R23 K36 ["useSwitchThread"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R7 K37 ["Divider"]
      167 GETTABLEKS                       R24 R7 K38 ["Icon"]
      169 GETTABLEKS                       R25 R7 K39 ["IconButton"]
      171 GETTABLEKS                       R26 R7 K40 ["Loading"]
      173 GETTABLEKS                       R27 R7 K41 ["ScrollView"]
      175 GETTABLEKS                       R28 R7 K42 ["StatusIndicator"]
      177 GETTABLEKS                       R29 R7 K43 ["Text"]
      179 GETTABLEKS                       R30 R7 K44 ["TextInput"]
      181 GETTABLEKS                       R31 R7 K45 ["View"]
      183 GETTABLEKS                       R32 R10 K46 ["createNextOrder"]
      185 GETTABLEKS                       R33 R9 K47 ["createElement"]
      187 GETTABLEKS                       R34 R8 K48 ["InputDisabledReasons"]
      189 DUPCLOSURE                       R35 K49 [PROTO_3]
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R3
      194 DUPCLOSURE                       R36 K50 [PROTO_9]
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R2
      197 DUPCLOSURE                       R37 K51 [PROTO_18]
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R36
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R32
      208 CAPTURE                          VAL R33
      209 CAPTURE                          VAL R31
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R30
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R29
      214 CAPTURE                          VAL R28
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R25
      217 DUPCLOSURE                       R38 K52 [PROTO_19]
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R33
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R29
      222 DUPCLOSURE                       R39 K53 [PROTO_20]
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R33
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R23
      227 DUPCLOSURE                       R40 K54 [PROTO_28]
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R32
      240 CAPTURE                          VAL R33
      241 CAPTURE                          VAL R37
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R35
      244 CAPTURE                          VAL R39
      245 CAPTURE                          VAL R38
      246 CAPTURE                          VAL R34
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R27
      255 RETURN                           R40 1
