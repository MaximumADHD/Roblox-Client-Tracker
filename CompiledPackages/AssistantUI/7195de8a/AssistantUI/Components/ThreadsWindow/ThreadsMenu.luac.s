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
       49 JUMPIF                           R7 ; [+36]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K9 ["getThreadMetadata"]
       53 GETTABLEKS                       R8 R6 K10 ["threadId"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K11 ["isNewThread"]
       58 JUMPIF                           R8 ; [+27]
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K3 ["FFlagAssistantPinForBuildUI"]
       62 JUMPIFNOT                        R9 ; [+3]
       63 GETTABLEKS                       R8 R6 K12 ["isSharedWithBuild"]
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R8 R6 K13 ["isPinned"]
       68 JUMPIFNOT                        R8 ; [+9]
       69 GETTABLEKS                       R10 R0 K1 ["threads"]
       71 FASTCALL2                        TABLE_INSERT R10 R6 ; [+4]
       73 MOVE                             R11 R6
       74 GETIMPORT                        R9 K16 [table.insert]
       76 CALL                             R9 2 0
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R10 R1 K1 ["threads"]
       80 FASTCALL2                        TABLE_INSERT R10 R6 ; [+4]
       82 MOVE                             R11 R6
       83 GETIMPORT                        R9 K16 [table.insert]
       85 CALL                             R9 2 0
       86 FORGLOOP                         R2 2 ; [-40]
       88 NEWTABLE                         R2 0 2
       90 MOVE                             R5 R0
       91 MOVE                             R6 R1
       92 SETLIST                          R2 R5 2 [1]
       94 LOADNIL                          R3
       95 LOADNIL                          R4
       96 FORGPREP                         R2
       97 GETIMPORT                        R7 K18 [table.sort]
       99 GETTABLEKS                       R8 R6 K1 ["threads"]
      101 DUPCLOSURE                       R9 K19 [PROTO_1]
      102 CALL                             R7 2 0
      103 FORGLOOP                         R2 2 ; [-7]
      105 NEWTABLE                         R2 0 2
      107 MOVE                             R3 R0
      108 MOVE                             R4 R1
      109 SETLIST                          R2 R3 2 [1]
      111 RETURN                           R2 1

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
       15 GETUPVAL                         R2 5
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+22]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["acpSessionId"]
       21 JUMPIFNOT                        R2 ; [+18]
       22 GETUPVAL                         R2 6
       23 JUMPIFNOT                        R2 ; [+16]
       24 GETUPVAL                         R2 6
       25 DUPTABLE                         R4 K4 [{"sessionId", "title"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K1 ["acpSessionId"]
       29 SETTABLEKS                       R5 R4 K2 ["sessionId"]
       31 SETTABLEKS                       R0 R4 K3 ["title"]
       33 NAMECALL                         R2 R2 K5 ["updateSessionInfo"]
       35 CALL                             R2 2 1
       36 DUPCLOSURE                       R4 K6 [PROTO_14]
       37 NAMECALL                         R2 R2 K7 ["catch"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 7
       41 LOADB                            R3 0
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

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
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R10
       78 NEWTABLE                         R18 0 4
       80 MOVE                             R19 R1
       81 MOVE                             R20 R12
       82 MOVE                             R21 R3
       83 MOVE                             R22 R15
       84 SETLIST                          R18 R19 4 [1]
       86 CALL                             R16 2 1
       87 GETUPVAL                         R17 8
       88 DUPTABLE                         R18 K12 [{"isRenaming", "initialText", "onRenameCommit", "onRenameCancel"}]
       89 SETTABLEKS                       R9 R18 K8 ["isRenaming"]
       91 GETUPVAL                         R20 9
       92 GETTABLEKS                       R20 R20 K13 ["FFlagAssistantUntitledChatPlaceholder"]
       94 JUMPIFNOT                        R20 ; [+4]
       95 JUMPIFNOT                        R15 ; [+3]
       96 GETTABLEKS                       R19 R15 K14 ["title"]
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R19 R0 K15 ["text"]
      101 SETTABLEKS                       R19 R18 K9 ["initialText"]
      103 SETTABLEKS                       R16 R18 K10 ["onRenameCommit"]
      105 SETTABLEKS                       R14 R18 K11 ["onRenameCancel"]
      107 CALL                             R17 1 1
      108 LOADNIL                          R18
      109 JUMPIFNOT                        R15 ; [+24]
      110 NOT                              R19 R11
      111 JUMPIFNOT                        R19 ; [+14]
      112 LOADB                            R19 0
      113 LOADN                            R20 0
      114 GETTABLEKS                       R21 R15 K16 ["lastViewedAt"]
      116 JUMPIFNOTLE                      R20 R21 ; [+9]
      118 GETTABLEKS                       R20 R15 K16 ["lastViewedAt"]
      120 GETTABLEKS                       R21 R15 K17 ["updatedAt"]
      122 JUMPIFLT                         R20 R21 ; [+2]
      124 LOADB                            R19 0 +1
      125 LOADB                            R19 1
      126 JUMPIFNOT                        R19 ; [+7]
      127 GETUPVAL                         R20 3
      128 GETTABLEKS                       R20 R20 K18 ["Enums"]
      130 GETTABLEKS                       R20 R20 K19 ["StatusIndicatorVariant"]
      132 GETTABLEKS                       R18 R20 K20 ["Emphasis"]
      134 MOVE                             R19 R15
      135 JUMPIFNOT                        R19 ; [+4]
      136 JUMPIF                           R4 ; [+2]
      137 MOVE                             R19 R7
      138 JUMPIFNOT                        R19 ; [+1]
      139 NOT                              R19 R9
      140 GETUPVAL                         R20 10
      141 CALL                             R20 0 1
      142 GETUPVAL                         R21 11
      143 GETUPVAL                         R22 12
      144 DUPTABLE                         R23 K27 [{"tag", "Size", "onActivated", "onStateChanged", "LayoutOrder", "testId"}]
      145 NEWTABLE                         R24 2 0
      147 LOADB                            R25 1
      148 SETTABLEKS                       R25 R24 K28 ["row align-y-center gap-medium padding-x-medium padding-y-xsmall radius-small"]
      150 SETTABLEKS                       R11 R24 K29 ["bg-action-soft-emphasis"]
      152 SETTABLEKS                       R24 R23 K21 ["tag"]
      154 GETIMPORT                        R24 K32 [UDim2.new]
      156 LOADN                            R25 1
      157 LOADN                            R26 0
      158 LOADN                            R27 0
      159 LOADN                            R28 26
      160 CALL                             R24 4 1
      161 SETTABLEKS                       R24 R23 K22 ["Size"]
      163 JUMPIF                           R9 ; [+3]
      164 GETTABLEKS                       R24 R0 K23 ["onActivated"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R24
      168 SETTABLEKS                       R24 R23 K23 ["onActivated"]
      170 JUMPIFNOT                        R15 ; [+2]
      171 MOVE                             R24 R6
      172 JUMP                             ; [+1]
      173 LOADNIL                          R24
      174 SETTABLEKS                       R24 R23 K24 ["onStateChanged"]
      176 GETTABLEKS                       R24 R0 K25 ["LayoutOrder"]
      178 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      180 GETTABLEKS                       R24 R0 K26 ["testId"]
      182 SETTABLEKS                       R24 R23 K26 ["testId"]
      184 DUPTABLE                         R24 K36 [{"LeadingIcon", "Text", "IndicatorArea"}]
      185 GETTABLEKS                       R25 R0 K37 ["leadingIcon"]
      187 JUMPIFNOT                        R25 ; [+21]
      188 GETUPVAL                         R25 11
      189 GETUPVAL                         R26 13
      190 DUPTABLE                         R27 K40 [{"name", "size", "LayoutOrder"}]
      191 GETTABLEKS                       R28 R0 K37 ["leadingIcon"]
      193 SETTABLEKS                       R28 R27 K38 ["name"]
      195 GETUPVAL                         R28 3
      196 GETTABLEKS                       R28 R28 K18 ["Enums"]
      198 GETTABLEKS                       R28 R28 K41 ["IconSize"]
      200 GETTABLEKS                       R28 R28 K42 ["Small"]
      202 SETTABLEKS                       R28 R27 K39 ["size"]
      204 MOVE                             R28 R20
      205 CALL                             R28 0 1
      206 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      208 CALL                             R25 2 1
      209 SETTABLEKS                       R25 R24 K33 ["LeadingIcon"]
      211 JUMPIFNOT                        R9 ; [+52]
      212 GETUPVAL                         R25 11
      213 GETUPVAL                         R26 14
      214 DUPTABLE                         R27 K50 [{["text"], ["label"] = "", ["width"], ["size"], ["hasError"], ["onChanged"], ["onReturnPressed"], ["ref"], ["LayoutOrder"], ["testId"]}]
      215 GETTABLEKS                       R28 R17 K51 ["renameText"]
      217 SETTABLEKS                       R28 R27 K15 ["text"]
      219 GETIMPORT                        R28 K53 [UDim.new]
      221 LOADN                            R29 1
      222 LOADN                            R30 0
      223 CALL                             R28 2 1
      224 SETTABLEKS                       R28 R27 K45 ["width"]
      226 GETUPVAL                         R28 3
      227 GETTABLEKS                       R28 R28 K18 ["Enums"]
      229 GETTABLEKS                       R28 R28 K54 ["InputSize"]
      231 GETTABLEKS                       R28 R28 K55 ["XSmall"]
      233 SETTABLEKS                       R28 R27 K39 ["size"]
      235 GETTABLEKS                       R28 R17 K46 ["hasError"]
      237 SETTABLEKS                       R28 R27 K46 ["hasError"]
      239 GETTABLEKS                       R28 R17 K56 ["setRenameText"]
      241 SETTABLEKS                       R28 R27 K47 ["onChanged"]
      243 GETTABLEKS                       R28 R17 K48 ["onReturnPressed"]
      245 SETTABLEKS                       R28 R27 K48 ["onReturnPressed"]
      247 GETTABLEKS                       R28 R17 K57 ["inputRef"]
      249 SETTABLEKS                       R28 R27 K49 ["ref"]
      251 MOVE                             R28 R20
      252 CALL                             R28 0 1
      253 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      255 GETUPVAL                         R28 15
      256 GETTABLEKS                       R28 R28 K58 ["ThreadEntry"]
      258 GETTABLEKS                       R28 R28 K59 ["RenameInput"]
      260 SETTABLEKS                       R28 R27 K26 ["testId"]
      262 CALL                             R25 2 1
      263 JUMP                             ; [+12]
      264 GETUPVAL                         R25 11
      265 GETUPVAL                         R26 16
      266 DUPTABLE                         R27 K61 [{["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      267 GETTABLEKS                       R28 R0 K15 ["text"]
      269 SETTABLEKS                       R28 R27 K34 ["Text"]
      271 MOVE                             R28 R20
      272 CALL                             R28 0 1
      273 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      275 CALL                             R25 2 1
      276 SETTABLEKS                       R25 R24 K34 ["Text"]
      278 GETUPVAL                         R25 11
      279 GETUPVAL                         R26 12
      280 DUPTABLE                         R27 K63 [{["tag"] = "align-x-center align-y-center size-400-400", ["LayoutOrder"]}]
      281 MOVE                             R28 R20
      282 CALL                             R28 0 1
      283 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      285 DUPTABLE                         R28 K66 [{"Status", "ThreadOptionsMenu"}]
      286 NOT                              R29 R19
      287 JUMPIFNOT                        R29 ; [+14]
      288 NOT                              R29 R9
      289 JUMPIFNOT                        R29 ; [+12]
      290 MOVE                             R29 R18
      291 JUMPIFNOT                        R29 ; [+10]
      292 GETUPVAL                         R29 11
      293 GETUPVAL                         R30 17
      294 DUPTABLE                         R31 K68 [{"variant", "LayoutOrder"}]
      295 SETTABLEKS                       R18 R31 K67 ["variant"]
      297 MOVE                             R32 R20
      298 CALL                             R32 0 1
      299 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      301 CALL                             R29 2 1
      302 SETTABLEKS                       R29 R28 K64 ["Status"]
      304 MOVE                             R29 R15
      305 JUMPIFNOT                        R29 ; [+79]
      306 GETUPVAL                         R30 9
      307 GETTABLEKS                       R30 R30 K69 ["FFlagAssistantPinForBuildUI"]
      309 JUMPIFNOT                        R30 ; [+4]
      310 GETTABLEKS                       R30 R15 K70 ["isSharedWithBuild"]
      312 NOT                              R29 R30
      313 JUMPIFNOT                        R29 ; [+71]
      314 GETUPVAL                         R29 11
      315 GETUPVAL                         R30 18
      316 DUPTABLE                         R31 K75 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      317 SETTABLEKS                       R15 R31 K7 ["thread"]
      319 GETTABLEKS                       R32 R0 K71 ["isGenerating"]
      321 SETTABLEKS                       R32 R31 K71 ["isGenerating"]
      323 SETTABLEKS                       R7 R31 K72 ["isOpen"]
      325 SETTABLEKS                       R8 R31 K73 ["setIsOpen"]
      327 SETTABLEKS                       R13 R31 K74 ["onRenameRequested"]
      329 MOVE                             R32 R20
      330 CALL                             R32 0 1
      331 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      333 DUPTABLE                         R32 K77 [{"OptionsButton"}]
      334 MOVE                             R33 R19
      335 JUMPIFNOT                        R33 ; [+46]
      336 GETUPVAL                         R33 11
      337 GETUPVAL                         R34 19
      338 DUPTABLE                         R35 K81 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      339 GETUPVAL                         R36 3
      340 GETTABLEKS                       R36 R36 K18 ["Enums"]
      342 GETTABLEKS                       R36 R36 K82 ["IconName"]
      344 GETTABLEKS                       R36 R36 K83 ["ThreeDotsVertical"]
      346 SETTABLEKS                       R36 R35 K78 ["icon"]
      348 GETUPVAL                         R36 3
      349 GETTABLEKS                       R36 R36 K18 ["Enums"]
      351 GETTABLEKS                       R36 R36 K54 ["InputSize"]
      353 GETTABLEKS                       R36 R36 K55 ["XSmall"]
      355 SETTABLEKS                       R36 R35 K39 ["size"]
      357 GETUPVAL                         R36 3
      358 GETTABLEKS                       R36 R36 K18 ["Enums"]
      360 GETTABLEKS                       R36 R36 K84 ["ButtonVariant"]
      362 GETTABLEKS                       R36 R36 K85 ["Utility"]
      364 SETTABLEKS                       R36 R35 K67 ["variant"]
      366 NEWCLOSURE                       R36 P4
      367 CAPTURE                          VAL R8
      368 SETTABLEKS                       R36 R35 K23 ["onActivated"]
      370 MOVE                             R36 R20
      371 CALL                             R36 0 1
      372 SETTABLEKS                       R36 R35 K25 ["LayoutOrder"]
      374 GETUPVAL                         R36 15
      375 GETTABLEKS                       R36 R36 K58 ["ThreadEntry"]
      377 GETTABLEKS                       R36 R36 K76 ["OptionsButton"]
      379 SETTABLEKS                       R36 R35 K26 ["testId"]
      381 CALL                             R33 2 1
      382 SETTABLEKS                       R33 R32 K76 ["OptionsButton"]
      384 CALL                             R29 3 1
      385 SETTABLEKS                       R29 R28 K65 ["ThreadOptionsMenu"]
      387 CALL                             R25 3 1
      388 SETTABLEKS                       R25 R24 K35 ["IndicatorArea"]
      390 CALL                             R21 3 -1
      391 RETURN                           R21 -1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["listSessionsPage"]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["nextCursor"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["loadMoreThreads"]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
        3 GETUPVAL                         R3 2
        4 CALL                             R3 0 -1
        5 CALL                             R2 -1 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useContext"]
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K1 ["Context"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K2 ["threadId"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K0 ["useContext"]
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K1 ["Context"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R6 R5 K3 ["allThreadInputStates"]
       24 GETUPVAL                         R7 6
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 7
       27 GETTABLEKS                       R8 R8 K4 ["Hooks"]
       29 GETTABLEKS                       R8 R8 K5 ["useTokens"]
       31 CALL                             R8 0 1
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R11 0 2
       41 MOVE                             R12 R7
       42 GETTABLEKS                       R13 R0 K7 ["setThreadsMenuOpen"]
       44 SETLIST                          R11 R12 2 [1]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U10
       54 NEWTABLE                         R12 0 1
       56 MOVE                             R13 R9
       57 SETLIST                          R12 R13 1 [1]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R11 3
       61 GETTABLEKS                       R11 R11 K8 ["useMemo"]
       63 DUPCLOSURE                       R12 K9 [PROTO_23]
       64 CAPTURE                          UPVAL U11
       65 NEWTABLE                         R13 0 1
       67 GETUPVAL                         R14 11
       68 GETTABLEKS                       R14 R14 K10 ["locale"]
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 3
       74 GETTABLEKS                       R12 R12 K11 ["useBinding"]
       76 GETIMPORT                        R13 K14 [Vector2.new]
       78 CALL                             R13 0 -1
       79 CALL                             R12 -1 2
       80 GETUPVAL                         R14 12
       81 CALL                             R14 0 1
       82 DUPTABLE                         R15 K16 [{"ThreadMenuButton_NewThread"}]
       83 GETUPVAL                         R16 13
       84 GETUPVAL                         R17 14
       85 DUPTABLE                         R18 K24 [{["text"], ["leadingIcon"], ["isSelected"] = False, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       86 GETTABLEKS                       R19 R11 K25 ["NewThread"]
       88 SETTABLEKS                       R19 R18 K17 ["text"]
       90 GETUPVAL                         R19 7
       91 GETTABLEKS                       R19 R19 K26 ["Enums"]
       93 GETTABLEKS                       R19 R19 K27 ["IconName"]
       95 GETTABLEKS                       R19 R19 K28 ["PencilSquare"]
       97 SETTABLEKS                       R19 R18 K18 ["leadingIcon"]
       99 SETTABLEKS                       R10 R18 K21 ["onActivated"]
      101 MOVE                             R19 R14
      102 CALL                             R19 0 1
      103 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      105 GETUPVAL                         R19 15
      106 GETTABLEKS                       R19 R19 K29 ["ThreadsMenu"]
      108 GETTABLEKS                       R19 R19 K30 ["AddThreadButton"]
      110 SETTABLEKS                       R19 R18 K23 ["testId"]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K15 ["ThreadMenuButton_NewThread"]
      115 GETUPVAL                         R16 16
      116 MOVE                             R17 R1
      117 CALL                             R16 1 1
      118 MOVE                             R17 R16
      119 LOADNIL                          R18
      120 LOADNIL                          R19
      121 FORGPREP                         R17
      122 GETTABLEKS                       R24 R21 K31 ["threads"]
      124 LENGTH                           R23 R24
      125 LOADN                            R24 0
      126 JUMPIFLT                         R24 R23 ; [+2]
      128 LOADB                            R22 0 +1
      129 LOADB                            R22 1
      130 JUMPIFNOT                        R22 ; [+114]
      131 GETTABLEKS                       R23 R21 K32 ["title"]
      133 LOADK                            R25 K33 ["ThreadMenuDivider_%*"]
      134 MOVE                             R27 R23
      135 NAMECALL                         R25 R25 K34 ["format"]
      137 CALL                             R25 2 1
      138 MOVE                             R24 R25
      139 GETUPVAL                         R25 13
      140 GETUPVAL                         R26 17
      141 DUPTABLE                         R27 K35 [{"LayoutOrder"}]
      142 MOVE                             R28 R14
      143 CALL                             R28 0 1
      144 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      146 CALL                             R25 2 1
      147 SETTABLE                         R25 R15 R24
      148 LOADK                            R25 K36 ["ThreadMenuHeader_%*"]
      149 MOVE                             R27 R23
      150 NAMECALL                         R25 R25 K34 ["format"]
      152 CALL                             R25 2 1
      153 MOVE                             R24 R25
      154 GETUPVAL                         R25 13
      155 GETUPVAL                         R26 18
      156 DUPTABLE                         R27 K39 [{["isHeader"] = True, ["text"], ["LayoutOrder"]}]
      157 SETTABLEKS                       R23 R27 K17 ["text"]
      159 MOVE                             R28 R14
      160 CALL                             R28 0 1
      161 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      163 CALL                             R25 2 1
      164 SETTABLE                         R25 R15 R24
      165 GETTABLEKS                       R24 R21 K31 ["threads"]
      167 LOADNIL                          R25
      168 LOADNIL                          R26
      169 FORGPREP                         R24
      170 GETTABLEKS                       R29 R28 K2 ["threadId"]
      172 JUMPIFEQ                         R29 R4 ; [+2]
      174 LOADB                            R30 0 +1
      175 LOADB                            R30 1
      176 GETTABLE                         R31 R6 R29
      177 JUMPIFNOT                        R31 ; [+3]
      178 GETTABLEKS                       R32 R31 K40 ["reasonDisabled"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R32
      182 MOVE                             R33 R32
      183 JUMPIFNOT                        R33 ; [+9]
      184 GETTABLEKS                       R34 R32 K40 ["reasonDisabled"]
      186 GETUPVAL                         R35 19
      187 GETTABLEKS                       R35 R35 K41 ["Generation"]
      189 JUMPIFEQ                         R34 R35 ; [+2]
      191 LOADB                            R33 0 +1
      192 LOADB                            R33 1
      193 LOADK                            R35 K42 ["ThreadMenuItem_%*"]
      194 MOVE                             R37 R29
      195 NAMECALL                         R35 R35 K34 ["format"]
      197 CALL                             R35 2 1
      198 MOVE                             R34 R35
      199 GETUPVAL                         R35 13
      200 GETUPVAL                         R36 14
      201 DUPTABLE                         R37 K45 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      202 GETUPVAL                         R39 20
      203 GETTABLEKS                       R39 R39 K46 ["FFlagAssistantUntitledChatPlaceholder"]
      205 JUMPIFNOT                        R39 ; [+8]
      206 GETTABLEKS                       R39 R28 K32 ["title"]
      208 JUMPIFNOTEQKS                    R39 K47 [""] ; [+5]
      210 GETUPVAL                         R38 20
      211 GETTABLEKS                       R38 R38 K48 ["FStringAssistantUntitledChatPlaceholder"]
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R38 R28 K32 ["title"]
      216 SETTABLEKS                       R38 R37 K17 ["text"]
      218 SETTABLEKS                       R28 R37 K43 ["thread"]
      220 SETTABLEKS                       R30 R37 K19 ["isSelected"]
      222 SETTABLEKS                       R33 R37 K44 ["isGenerating"]
      224 NEWCLOSURE                       R38 P3
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R29
      227 CAPTURE                          UPVAL U10
      228 SETTABLEKS                       R38 R37 K21 ["onActivated"]
      230 MOVE                             R38 R14
      231 CALL                             R38 0 1
      232 SETTABLEKS                       R38 R37 K22 ["LayoutOrder"]
      234 GETUPVAL                         R38 15
      235 GETTABLEKS                       R38 R38 K29 ["ThreadsMenu"]
      237 GETTABLEKS                       R38 R38 K49 ["ExistingThreadButton"]
      239 SETTABLEKS                       R38 R37 K23 ["testId"]
      241 CALL                             R35 2 1
      242 SETTABLE                         R35 R15 R34
      243 FORGLOOP                         R24 2 ; [-74]
      245 FORGLOOP                         R17 2 ; [-124]
      247 JUMPIFNOT                        R1 ; [+3]
      248 GETTABLEKS                       R17 R1 K50 ["threadPageState"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R17
      252 JUMPIFNOT                        R1 ; [+3]
      253 GETTABLEKS                       R18 R1 K51 ["threadLoadState"]
      255 JUMP                             ; [+1]
      256 LOADNIL                          R18
      257 LOADB                            R19 0
      258 GETUPVAL                         R20 10
      259 GETTABLEKS                       R20 R20 K52 ["PersistenceLoadStates"]
      261 GETTABLEKS                       R20 R20 K53 ["Loading"]
      263 JUMPIFEQ                         R18 R20 ; [+10]
      265 LOADB                            R19 0
      266 JUMPIFEQKNIL                     R17 ; [+7]
      268 GETTABLEKS                       R20 R17 K54 ["nextCursor"]
      270 JUMPIFNOTEQKNIL                  R20 ; [+2]
      272 LOADB                            R19 0 +1
      273 LOADB                            R19 1
      274 GETUPVAL                         R20 3
      275 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      277 NEWCLOSURE                       R21 P4
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R17
      281 CAPTURE                          UPVAL U21
      282 NEWTABLE                         R22 0 2
      284 GETTABLEKS                       R23 R2 K55 ["listSessionsPage"]
      286 MOVE                             R24 R17
      287 SETLIST                          R22 R23 2 [1]
      289 CALL                             R20 2 1
      290 GETUPVAL                         R21 22
      291 DUPTABLE                         R22 K58 [{"triggerDistance", "onScrolledToBottom"}]
      292 GETUPVAL                         R23 23
      293 GETTABLEKS                       R23 R23 K59 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      295 SETTABLEKS                       R23 R22 K56 ["triggerDistance"]
      297 JUMPIFNOT                        R19 ; [+2]
      298 MOVE                             R23 R20
      299 JUMP                             ; [+1]
      300 LOADNIL                          R23
      301 SETTABLEKS                       R23 R22 K57 ["onScrolledToBottom"]
      303 CALL                             R21 1 1
      304 GETUPVAL                         R22 10
      305 GETTABLEKS                       R22 R22 K52 ["PersistenceLoadStates"]
      307 GETTABLEKS                       R22 R22 K53 ["Loading"]
      309 JUMPIFNOTEQ                      R18 R22 ; [+28]
      311 GETUPVAL                         R22 13
      312 GETUPVAL                         R23 24
      313 DUPTABLE                         R24 K62 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      314 MOVE                             R25 R14
      315 CALL                             R25 0 1
      316 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      318 DUPTABLE                         R25 K63 [{"Loading"}]
      319 GETUPVAL                         R26 13
      320 GETUPVAL                         R27 25
      321 DUPTABLE                         R28 K65 [{"size"}]
      322 GETUPVAL                         R29 7
      323 GETTABLEKS                       R29 R29 K26 ["Enums"]
      325 GETTABLEKS                       R29 R29 K66 ["IconSize"]
      327 GETTABLEKS                       R29 R29 K67 ["Small"]
      329 SETTABLEKS                       R29 R28 K64 ["size"]
      331 CALL                             R26 2 1
      332 SETTABLEKS                       R26 R25 K53 ["Loading"]
      334 CALL                             R22 3 1
      335 SETTABLEKS                       R22 R15 K68 ["ThreadPersistenceInfo"]
      337 JUMP                             ; [+68]
      338 GETUPVAL                         R22 10
      339 GETTABLEKS                       R22 R22 K52 ["PersistenceLoadStates"]
      341 GETTABLEKS                       R22 R22 K69 ["Error"]
      343 JUMPIFNOTEQ                      R18 R22 ; [+62]
      345 GETUPVAL                         R22 13
      346 GETUPVAL                         R23 24
      347 DUPTABLE                         R24 K62 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      348 MOVE                             R25 R14
      349 CALL                             R25 0 1
      350 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      352 DUPTABLE                         R25 K72 [{"Icon", "Text"}]
      353 GETUPVAL                         R26 13
      354 GETUPVAL                         R27 26
      355 DUPTABLE                         R28 K75 [{"name", "size", "style", "LayoutOrder"}]
      356 GETUPVAL                         R29 7
      357 GETTABLEKS                       R29 R29 K26 ["Enums"]
      359 GETTABLEKS                       R29 R29 K27 ["IconName"]
      361 GETTABLEKS                       R29 R29 K76 ["TriangleExclamation"]
      363 SETTABLEKS                       R29 R28 K73 ["name"]
      365 GETUPVAL                         R29 7
      366 GETTABLEKS                       R29 R29 K26 ["Enums"]
      368 GETTABLEKS                       R29 R29 K66 ["IconSize"]
      370 GETTABLEKS                       R29 R29 K77 ["Medium"]
      372 SETTABLEKS                       R29 R28 K64 ["size"]
      374 GETTABLEKS                       R29 R8 K78 ["Color"]
      376 GETTABLEKS                       R29 R29 K79 ["System"]
      378 GETTABLEKS                       R29 R29 K80 ["Warning"]
      380 SETTABLEKS                       R29 R28 K74 ["style"]
      382 MOVE                             R29 R14
      383 CALL                             R29 0 1
      384 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      386 CALL                             R26 2 1
      387 SETTABLEKS                       R26 R25 K70 ["Icon"]
      389 GETUPVAL                         R26 13
      390 GETUPVAL                         R27 27
      391 DUPTABLE                         R28 K82 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      392 GETTABLEKS                       R29 R11 K83 ["ThreadsLoadError"]
      394 SETTABLEKS                       R29 R28 K71 ["Text"]
      396 MOVE                             R29 R14
      397 CALL                             R29 0 1
      398 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      400 CALL                             R26 2 1
      401 SETTABLEKS                       R26 R25 K71 ["Text"]
      403 CALL                             R22 3 1
      404 SETTABLEKS                       R22 R15 K68 ["ThreadPersistenceInfo"]
      406 GETUPVAL                         R22 3
      407 GETTABLEKS                       R22 R22 K84 ["useRef"]
      409 LOADNIL                          R23
      410 CALL                             R22 1 1
      411 GETUPVAL                         R23 13
      412 LOADK                            R24 K85 ["UIListLayout"]
      413 NEWTABLE                         R25 4 0
      415 GETIMPORT                        R26 K89 [Enum.FillDirection.Vertical]
      417 SETTABLEKS                       R26 R25 K87 ["FillDirection"]
      419 GETIMPORT                        R26 K91 [Enum.SortOrder.LayoutOrder]
      421 SETTABLEKS                       R26 R25 K90 ["SortOrder"]
      423 GETIMPORT                        R26 K93 [UDim.new]
      425 LOADN                            R27 0
      426 GETTABLEKS                       R28 R8 K94 ["Gap"]
      428 GETTABLEKS                       R28 R28 K95 ["XXSmall"]
      430 CALL                             R26 2 1
      431 SETTABLEKS                       R26 R25 K96 ["Padding"]
      433 GETUPVAL                         R26 3
      434 GETTABLEKS                       R26 R26 K97 ["Change"]
      436 GETTABLEKS                       R26 R26 K98 ["AbsoluteContentSize"]
      438 GETUPVAL                         R27 3
      439 GETTABLEKS                       R27 R27 K6 ["useCallback"]
      441 NEWCLOSURE                       R28 P5
      442 CAPTURE                          VAL R13
      443 CAPTURE                          VAL R22
      444 CAPTURE                          VAL R21
      445 NEWTABLE                         R29 0 2
      447 MOVE                             R30 R13
      448 GETTABLEKS                       R31 R21 K99 ["checkForEdge"]
      450 SETLIST                          R29 R30 2 [1]
      452 CALL                             R27 2 1
      453 SETTABLE                         R27 R25 R26
      454 CALL                             R23 2 1
      455 SETTABLEKS                       R23 R15 K100 ["ListLayout"]
      457 GETUPVAL                         R23 13
      458 GETUPVAL                         R24 24
      459 DUPTABLE                         R25 K102 [{["tag"] = "size-full-0 auto-y padding-x-small", ["testId"]}]
      460 GETUPVAL                         R26 15
      461 GETTABLEKS                       R26 R26 K29 ["ThreadsMenu"]
      463 GETTABLEKS                       R26 R26 K103 ["Container"]
      465 SETTABLEKS                       R26 R25 K23 ["testId"]
      467 DUPTABLE                         R26 K105 [{"ScrollView"}]
      468 GETUPVAL                         R27 13
      469 GETUPVAL                         R28 28
      470 DUPTABLE                         R29 K112 [{["tag"] = "col gap-xxsmall padding-xsmall stroke-standard stroke-default radius-medium bg-surface-200", ["scroll"], ["Size"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      471 DUPTABLE                         R30 K116 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      472 GETIMPORT                        R31 K119 [Enum.AutomaticSize.Y]
      474 SETTABLEKS                       R31 R30 K113 ["AutomaticCanvasSize"]
      476 GETIMPORT                        R31 K122 [UDim2.fromScale]
      478 LOADN                            R32 0
      479 LOADN                            R33 0
      480 CALL                             R31 2 1
      481 SETTABLEKS                       R31 R30 K114 ["CanvasSize"]
      483 GETIMPORT                        R31 K123 [Enum.ScrollingDirection.Y]
      485 SETTABLEKS                       R31 R30 K115 ["ScrollingDirection"]
      487 SETTABLEKS                       R30 R29 K107 ["scroll"]
      489 NEWCLOSURE                       R32 P6
      490 CAPTURE                          VAL R8
      491 NAMECALL                         R30 R12 K124 ["map"]
      493 CALL                             R30 2 1
      494 SETTABLEKS                       R30 R29 K108 ["Size"]
      496 SETTABLEKS                       R22 R29 K109 ["scrollingFrameRef"]
      498 GETTABLEKS                       R30 R21 K99 ["checkForEdge"]
      500 SETTABLEKS                       R30 R29 K110 ["onCanvasPositionChanged"]
      502 GETTABLEKS                       R30 R21 K99 ["checkForEdge"]
      504 SETTABLEKS                       R30 R29 K111 ["onAbsoluteWindowSizeChanged"]
      506 MOVE                             R30 R15
      507 CALL                             R27 3 1
      508 SETTABLEKS                       R27 R26 K104 ["ScrollView"]
      510 CALL                             R23 3 -1
      511 RETURN                           R23 -1

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
       42 GETTABLEKS                       R7 R0 K15 ["FlagUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Flags"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K17 ["Parent"]
       54 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R6 K19 ["getIsAssistantHarnessSplit"]
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K6 ["Components"]
       63 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       65 GETTABLEKS                       R11 R11 K20 ["InputStateContext"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Util"]
       72 GETTABLEKS                       R12 R12 K21 ["Persistence"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K17 ["Parent"]
       79 GETTABLEKS                       R13 R13 K22 ["React"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K17 ["Parent"]
       86 GETTABLEKS                       R14 R14 K23 ["ReactUtils"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R15 R0 K6 ["Components"]
       93 GETTABLEKS                       R15 R15 K7 ["Contexts"]
       95 GETTABLEKS                       R15 R15 K24 ["SessionIdContext"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K5 [require]
      100 GETTABLEKS                       R16 R0 K10 ["Util"]
      102 GETTABLEKS                       R16 R16 K25 ["TestIds"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K6 ["Components"]
      109 GETTABLEKS                       R17 R17 K7 ["Contexts"]
      111 GETTABLEKS                       R17 R17 K26 ["ThreadIdContext"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K6 ["Components"]
      118 GETTABLEKS                       R18 R18 K27 ["ThreadsWindow"]
      120 GETTABLEKS                       R18 R18 K28 ["ThreadOptionsMenu"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K29 ["Resources"]
      127 GETTABLEKS                       R19 R19 K30 ["Localization"]
      129 GETTABLEKS                       R19 R19 K31 ["Translator"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K32 ["Types"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K5 [require]
      139 GETTABLEKS                       R21 R0 K10 ["Util"]
      141 GETTABLEKS                       R21 R21 K33 ["createNewThread"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K5 [require]
      146 GETTABLEKS                       R22 R0 K34 ["Hooks"]
      148 GETTABLEKS                       R22 R22 K35 ["useAcpSessionHistory"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K5 [require]
      153 GETTABLEKS                       R23 R0 K34 ["Hooks"]
      155 GETTABLEKS                       R23 R23 K36 ["useConversation"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K5 [require]
      160 GETTABLEKS                       R24 R0 K34 ["Hooks"]
      162 GETTABLEKS                       R24 R24 K37 ["useEditThread"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K5 [require]
      167 GETTABLEKS                       R25 R0 K34 ["Hooks"]
      169 GETTABLEKS                       R25 R25 K38 ["useScrollEdge"]
      171 CALL                             R24 1 1
      172 GETIMPORT                        R25 K5 [require]
      174 GETTABLEKS                       R26 R0 K34 ["Hooks"]
      176 GETTABLEKS                       R26 R26 K39 ["useSwitchThread"]
      178 CALL                             R25 1 1
      179 GETTABLEKS                       R26 R8 K40 ["Divider"]
      181 GETTABLEKS                       R27 R8 K41 ["Icon"]
      183 GETTABLEKS                       R28 R8 K42 ["IconButton"]
      185 GETTABLEKS                       R29 R8 K43 ["Loading"]
      187 GETTABLEKS                       R30 R8 K44 ["ScrollView"]
      189 GETTABLEKS                       R31 R8 K45 ["StatusIndicator"]
      191 GETTABLEKS                       R32 R8 K46 ["Text"]
      193 GETTABLEKS                       R33 R8 K47 ["TextInput"]
      195 GETTABLEKS                       R34 R8 K48 ["View"]
      197 GETTABLEKS                       R35 R13 K49 ["createNextOrder"]
      199 GETTABLEKS                       R36 R12 K50 ["createElement"]
      201 GETTABLEKS                       R37 R10 K51 ["InputDisabledReasons"]
      203 DUPCLOSURE                       R38 K52 [PROTO_3]
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R3
      208 DUPCLOSURE                       R39 K53 [PROTO_9]
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R2
      211 DUPCLOSURE                       R40 K54 [PROTO_18]
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R39
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R35
      223 CAPTURE                          VAL R36
      224 CAPTURE                          VAL R34
      225 CAPTURE                          VAL R27
      226 CAPTURE                          VAL R33
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R28
      232 DUPCLOSURE                       R41 K55 [PROTO_19]
      233 CAPTURE                          VAL R35
      234 CAPTURE                          VAL R36
      235 CAPTURE                          VAL R34
      236 CAPTURE                          VAL R32
      237 DUPCLOSURE                       R42 K56 [PROTO_20]
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R36
      240 CAPTURE                          VAL R34
      241 CAPTURE                          VAL R26
      242 DUPCLOSURE                       R43 K57 [PROTO_28]
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R10
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R18
      255 CAPTURE                          VAL R35
      256 CAPTURE                          VAL R36
      257 CAPTURE                          VAL R40
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R38
      260 CAPTURE                          VAL R42
      261 CAPTURE                          VAL R41
      262 CAPTURE                          VAL R37
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R2
      267 CAPTURE                          VAL R34
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R27
      270 CAPTURE                          VAL R32
      271 CAPTURE                          VAL R30
      272 RETURN                           R43 1
