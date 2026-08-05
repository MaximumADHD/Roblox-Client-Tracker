PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Pinned", "ThreadHistory"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Pinned"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pinned"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["ThreadHistory"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ThreadHistory"]
       17 RETURN                           R0 1

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
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["Pinned"]
        9 SETTABLEKS                       R1 R0 K0 ["title"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K1 ["threads"]
       15 DUPTABLE                         R1 K2 [{"title", "threads"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["ThreadHistory"]
       19 SETTABLEKS                       R2 R1 K0 ["title"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K1 ["threads"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K1 ["threads"]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETTABLEKS                       R7 R6 K5 ["isDeleted"]
       33 JUMPIF                           R7 ; [+29]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K6 ["getThreadMetadata"]
       37 GETTABLEKS                       R8 R6 K7 ["threadId"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R7 K8 ["isNewThread"]
       42 JUMPIF                           R8 ; [+20]
       43 GETTABLEKS                       R8 R6 K9 ["isPinned"]
       45 JUMPIFNOT                        R8 ; [+9]
       46 GETTABLEKS                       R9 R0 K1 ["threads"]
       48 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       50 MOVE                             R10 R6
       51 GETIMPORT                        R8 K12 [table.insert]
       53 CALL                             R8 2 0
       54 JUMP                             ; [+8]
       55 GETTABLEKS                       R9 R1 K1 ["threads"]
       57 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       59 MOVE                             R10 R6
       60 GETIMPORT                        R8 K12 [table.insert]
       62 CALL                             R8 2 0
       63 FORGLOOP                         R2 2 ; [-33]
       65 NEWTABLE                         R2 0 2
       67 MOVE                             R5 R0
       68 MOVE                             R6 R1
       69 SETLIST                          R2 R5 2 [1]
       71 LOADNIL                          R3
       72 LOADNIL                          R4
       73 FORGPREP                         R2
       74 GETIMPORT                        R7 K14 [table.sort]
       76 GETTABLEKS                       R8 R6 K1 ["threads"]
       78 DUPCLOSURE                       R9 K15 [PROTO_1]
       79 CALL                             R7 2 0
       80 FORGLOOP                         R2 2 ; [-7]
       82 NEWTABLE                         R2 0 2
       84 MOVE                             R3 R0
       85 MOVE                             R4 R1
       86 SETLIST                          R2 R3 2 [1]
       88 RETURN                           R2 1

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
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U2
       20 NEWTABLE                         R4 0 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

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
       91 GETTABLEKS                       R19 R0 K13 ["text"]
       93 SETTABLEKS                       R19 R18 K9 ["initialText"]
       95 SETTABLEKS                       R16 R18 K10 ["onRenameCommit"]
       97 SETTABLEKS                       R14 R18 K11 ["onRenameCancel"]
       99 CALL                             R17 1 1
      100 LOADNIL                          R18
      101 JUMPIFNOT                        R15 ; [+24]
      102 NOT                              R19 R11
      103 JUMPIFNOT                        R19 ; [+14]
      104 LOADB                            R19 0
      105 LOADN                            R20 0
      106 GETTABLEKS                       R21 R15 K14 ["lastViewedAt"]
      108 JUMPIFNOTLE                      R20 R21 ; [+9]
      110 GETTABLEKS                       R20 R15 K14 ["lastViewedAt"]
      112 GETTABLEKS                       R21 R15 K15 ["updatedAt"]
      114 JUMPIFLT                         R20 R21 ; [+2]
      116 LOADB                            R19 0 +1
      117 LOADB                            R19 1
      118 JUMPIFNOT                        R19 ; [+7]
      119 GETUPVAL                         R20 3
      120 GETTABLEKS                       R20 R20 K16 ["Enums"]
      122 GETTABLEKS                       R20 R20 K17 ["StatusIndicatorVariant"]
      124 GETTABLEKS                       R18 R20 K18 ["Emphasis"]
      126 MOVE                             R19 R15
      127 JUMPIFNOT                        R19 ; [+4]
      128 JUMPIF                           R4 ; [+2]
      129 MOVE                             R19 R7
      130 JUMPIFNOT                        R19 ; [+1]
      131 NOT                              R19 R9
      132 GETUPVAL                         R20 9
      133 CALL                             R20 0 1
      134 GETUPVAL                         R21 10
      135 GETUPVAL                         R22 11
      136 DUPTABLE                         R23 K25 [{"tag", "Size", "onActivated", "onStateChanged", "LayoutOrder", "testId"}]
      137 NEWTABLE                         R24 2 0
      139 LOADB                            R25 1
      140 SETTABLEKS                       R25 R24 K26 ["row align-y-center gap-medium padding-x-medium padding-y-xsmall radius-small"]
      142 SETTABLEKS                       R11 R24 K27 ["bg-action-soft-emphasis"]
      144 SETTABLEKS                       R24 R23 K19 ["tag"]
      146 GETIMPORT                        R24 K30 [UDim2.new]
      148 LOADN                            R25 1
      149 LOADN                            R26 0
      150 LOADN                            R27 0
      151 LOADN                            R28 26
      152 CALL                             R24 4 1
      153 SETTABLEKS                       R24 R23 K20 ["Size"]
      155 JUMPIF                           R9 ; [+3]
      156 GETTABLEKS                       R24 R0 K21 ["onActivated"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R24
      160 SETTABLEKS                       R24 R23 K21 ["onActivated"]
      162 JUMPIFNOT                        R15 ; [+2]
      163 MOVE                             R24 R6
      164 JUMP                             ; [+1]
      165 LOADNIL                          R24
      166 SETTABLEKS                       R24 R23 K22 ["onStateChanged"]
      168 GETTABLEKS                       R24 R0 K23 ["LayoutOrder"]
      170 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      172 GETTABLEKS                       R24 R0 K24 ["testId"]
      174 SETTABLEKS                       R24 R23 K24 ["testId"]
      176 DUPTABLE                         R24 K34 [{"LeadingIcon", "Text", "IndicatorArea"}]
      177 GETTABLEKS                       R25 R0 K35 ["leadingIcon"]
      179 JUMPIFNOT                        R25 ; [+21]
      180 GETUPVAL                         R25 10
      181 GETUPVAL                         R26 12
      182 DUPTABLE                         R27 K38 [{"name", "size", "LayoutOrder"}]
      183 GETTABLEKS                       R28 R0 K35 ["leadingIcon"]
      185 SETTABLEKS                       R28 R27 K36 ["name"]
      187 GETUPVAL                         R28 3
      188 GETTABLEKS                       R28 R28 K16 ["Enums"]
      190 GETTABLEKS                       R28 R28 K39 ["IconSize"]
      192 GETTABLEKS                       R28 R28 K40 ["Small"]
      194 SETTABLEKS                       R28 R27 K37 ["size"]
      196 MOVE                             R28 R20
      197 CALL                             R28 0 1
      198 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      200 CALL                             R25 2 1
      201 SETTABLEKS                       R25 R24 K31 ["LeadingIcon"]
      203 JUMPIFNOT                        R9 ; [+52]
      204 GETUPVAL                         R25 10
      205 GETUPVAL                         R26 13
      206 DUPTABLE                         R27 K48 [{["text"], ["label"] = "", ["width"], ["size"], ["hasError"], ["onChanged"], ["onReturnPressed"], ["ref"], ["LayoutOrder"], ["testId"]}]
      207 GETTABLEKS                       R28 R17 K49 ["renameText"]
      209 SETTABLEKS                       R28 R27 K13 ["text"]
      211 GETIMPORT                        R28 K51 [UDim.new]
      213 LOADN                            R29 1
      214 LOADN                            R30 0
      215 CALL                             R28 2 1
      216 SETTABLEKS                       R28 R27 K43 ["width"]
      218 GETUPVAL                         R28 3
      219 GETTABLEKS                       R28 R28 K16 ["Enums"]
      221 GETTABLEKS                       R28 R28 K52 ["InputSize"]
      223 GETTABLEKS                       R28 R28 K53 ["XSmall"]
      225 SETTABLEKS                       R28 R27 K37 ["size"]
      227 GETTABLEKS                       R28 R17 K44 ["hasError"]
      229 SETTABLEKS                       R28 R27 K44 ["hasError"]
      231 GETTABLEKS                       R28 R17 K54 ["setRenameText"]
      233 SETTABLEKS                       R28 R27 K45 ["onChanged"]
      235 GETTABLEKS                       R28 R17 K46 ["onReturnPressed"]
      237 SETTABLEKS                       R28 R27 K46 ["onReturnPressed"]
      239 GETTABLEKS                       R28 R17 K55 ["inputRef"]
      241 SETTABLEKS                       R28 R27 K47 ["ref"]
      243 MOVE                             R28 R20
      244 CALL                             R28 0 1
      245 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      247 GETUPVAL                         R28 14
      248 GETTABLEKS                       R28 R28 K56 ["ThreadEntry"]
      250 GETTABLEKS                       R28 R28 K57 ["RenameInput"]
      252 SETTABLEKS                       R28 R27 K24 ["testId"]
      254 CALL                             R25 2 1
      255 JUMP                             ; [+12]
      256 GETUPVAL                         R25 10
      257 GETUPVAL                         R26 15
      258 DUPTABLE                         R27 K59 [{["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      259 GETTABLEKS                       R28 R0 K13 ["text"]
      261 SETTABLEKS                       R28 R27 K32 ["Text"]
      263 MOVE                             R28 R20
      264 CALL                             R28 0 1
      265 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      267 CALL                             R25 2 1
      268 SETTABLEKS                       R25 R24 K32 ["Text"]
      270 GETUPVAL                         R25 10
      271 GETUPVAL                         R26 11
      272 DUPTABLE                         R27 K61 [{["tag"] = "align-x-center align-y-center size-400-400", ["LayoutOrder"]}]
      273 MOVE                             R28 R20
      274 CALL                             R28 0 1
      275 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      277 DUPTABLE                         R28 K64 [{"Status", "ThreadOptionsMenu"}]
      278 NOT                              R29 R19
      279 JUMPIFNOT                        R29 ; [+14]
      280 NOT                              R29 R9
      281 JUMPIFNOT                        R29 ; [+12]
      282 MOVE                             R29 R18
      283 JUMPIFNOT                        R29 ; [+10]
      284 GETUPVAL                         R29 10
      285 GETUPVAL                         R30 16
      286 DUPTABLE                         R31 K66 [{"variant", "LayoutOrder"}]
      287 SETTABLEKS                       R18 R31 K65 ["variant"]
      289 MOVE                             R32 R20
      290 CALL                             R32 0 1
      291 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      293 CALL                             R29 2 1
      294 SETTABLEKS                       R29 R28 K62 ["Status"]
      296 MOVE                             R29 R15
      297 JUMPIFNOT                        R29 ; [+71]
      298 GETUPVAL                         R29 10
      299 GETUPVAL                         R30 17
      300 DUPTABLE                         R31 K71 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      301 SETTABLEKS                       R15 R31 K7 ["thread"]
      303 GETTABLEKS                       R32 R0 K67 ["isGenerating"]
      305 SETTABLEKS                       R32 R31 K67 ["isGenerating"]
      307 SETTABLEKS                       R7 R31 K68 ["isOpen"]
      309 SETTABLEKS                       R8 R31 K69 ["setIsOpen"]
      311 SETTABLEKS                       R13 R31 K70 ["onRenameRequested"]
      313 MOVE                             R32 R20
      314 CALL                             R32 0 1
      315 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      317 DUPTABLE                         R32 K73 [{"OptionsButton"}]
      318 MOVE                             R33 R19
      319 JUMPIFNOT                        R33 ; [+46]
      320 GETUPVAL                         R33 10
      321 GETUPVAL                         R34 18
      322 DUPTABLE                         R35 K77 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      323 GETUPVAL                         R36 3
      324 GETTABLEKS                       R36 R36 K16 ["Enums"]
      326 GETTABLEKS                       R36 R36 K78 ["IconName"]
      328 GETTABLEKS                       R36 R36 K79 ["ThreeDotsVertical"]
      330 SETTABLEKS                       R36 R35 K74 ["icon"]
      332 GETUPVAL                         R36 3
      333 GETTABLEKS                       R36 R36 K16 ["Enums"]
      335 GETTABLEKS                       R36 R36 K52 ["InputSize"]
      337 GETTABLEKS                       R36 R36 K53 ["XSmall"]
      339 SETTABLEKS                       R36 R35 K37 ["size"]
      341 GETUPVAL                         R36 3
      342 GETTABLEKS                       R36 R36 K16 ["Enums"]
      344 GETTABLEKS                       R36 R36 K80 ["ButtonVariant"]
      346 GETTABLEKS                       R36 R36 K81 ["Utility"]
      348 SETTABLEKS                       R36 R35 K65 ["variant"]
      350 NEWCLOSURE                       R36 P4
      351 CAPTURE                          VAL R8
      352 SETTABLEKS                       R36 R35 K21 ["onActivated"]
      354 MOVE                             R36 R20
      355 CALL                             R36 0 1
      356 SETTABLEKS                       R36 R35 K23 ["LayoutOrder"]
      358 GETUPVAL                         R36 14
      359 GETTABLEKS                       R36 R36 K56 ["ThreadEntry"]
      361 GETTABLEKS                       R36 R36 K72 ["OptionsButton"]
      363 SETTABLEKS                       R36 R35 K24 ["testId"]
      365 CALL                             R33 2 1
      366 SETTABLEKS                       R33 R32 K72 ["OptionsButton"]
      368 CALL                             R29 3 1
      369 SETTABLEKS                       R29 R28 K63 ["ThreadOptionsMenu"]
      371 CALL                             R25 3 1
      372 SETTABLEKS                       R25 R24 K33 ["IndicatorArea"]
      374 CALL                             R21 3 -1
      375 RETURN                           R21 -1

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
      130 JUMPIFNOT                        R22 ; [+104]
      131 LOADK                            R24 K32 ["ThreadMenuDivider_%*"]
      132 GETTABLEKS                       R26 R21 K33 ["title"]
      134 NAMECALL                         R24 R24 K34 ["format"]
      136 CALL                             R24 2 1
      137 MOVE                             R23 R24
      138 GETUPVAL                         R24 13
      139 GETUPVAL                         R25 17
      140 DUPTABLE                         R26 K35 [{"LayoutOrder"}]
      141 MOVE                             R27 R14
      142 CALL                             R27 0 1
      143 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      145 CALL                             R24 2 1
      146 SETTABLE                         R24 R15 R23
      147 LOADK                            R24 K36 ["ThreadMenuHeader_%*"]
      148 GETTABLEKS                       R26 R21 K33 ["title"]
      150 NAMECALL                         R24 R24 K34 ["format"]
      152 CALL                             R24 2 1
      153 MOVE                             R23 R24
      154 GETUPVAL                         R24 13
      155 GETUPVAL                         R25 18
      156 DUPTABLE                         R26 K39 [{["isHeader"] = True, ["text"], ["LayoutOrder"]}]
      157 GETTABLEKS                       R27 R21 K33 ["title"]
      159 SETTABLEKS                       R27 R26 K17 ["text"]
      161 MOVE                             R27 R14
      162 CALL                             R27 0 1
      163 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      165 CALL                             R24 2 1
      166 SETTABLE                         R24 R15 R23
      167 GETTABLEKS                       R23 R21 K31 ["threads"]
      169 LOADNIL                          R24
      170 LOADNIL                          R25
      171 FORGPREP                         R23
      172 GETTABLEKS                       R28 R27 K2 ["threadId"]
      174 JUMPIFEQ                         R28 R4 ; [+2]
      176 LOADB                            R29 0 +1
      177 LOADB                            R29 1
      178 GETTABLE                         R30 R6 R28
      179 JUMPIFNOT                        R30 ; [+3]
      180 GETTABLEKS                       R31 R30 K40 ["reasonDisabled"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R31
      184 MOVE                             R32 R31
      185 JUMPIFNOT                        R32 ; [+9]
      186 GETTABLEKS                       R33 R31 K40 ["reasonDisabled"]
      188 GETUPVAL                         R34 19
      189 GETTABLEKS                       R34 R34 K41 ["Generation"]
      191 JUMPIFEQ                         R33 R34 ; [+2]
      193 LOADB                            R32 0 +1
      194 LOADB                            R32 1
      195 LOADK                            R34 K42 ["ThreadMenuItem_%*"]
      196 MOVE                             R36 R28
      197 NAMECALL                         R34 R34 K34 ["format"]
      199 CALL                             R34 2 1
      200 MOVE                             R33 R34
      201 GETUPVAL                         R34 13
      202 GETUPVAL                         R35 14
      203 DUPTABLE                         R36 K45 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      204 GETTABLEKS                       R37 R27 K33 ["title"]
      206 SETTABLEKS                       R37 R36 K17 ["text"]
      208 SETTABLEKS                       R27 R36 K43 ["thread"]
      210 SETTABLEKS                       R29 R36 K19 ["isSelected"]
      212 SETTABLEKS                       R32 R36 K44 ["isGenerating"]
      214 NEWCLOSURE                       R37 P3
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R28
      217 CAPTURE                          UPVAL U10
      218 SETTABLEKS                       R37 R36 K21 ["onActivated"]
      220 MOVE                             R37 R14
      221 CALL                             R37 0 1
      222 SETTABLEKS                       R37 R36 K22 ["LayoutOrder"]
      224 GETUPVAL                         R37 15
      225 GETTABLEKS                       R37 R37 K29 ["ThreadsMenu"]
      227 GETTABLEKS                       R37 R37 K46 ["ExistingThreadButton"]
      229 SETTABLEKS                       R37 R36 K23 ["testId"]
      231 CALL                             R34 2 1
      232 SETTABLE                         R34 R15 R33
      233 FORGLOOP                         R23 2 ; [-62]
      235 FORGLOOP                         R17 2 ; [-114]
      237 JUMPIFNOT                        R1 ; [+3]
      238 GETTABLEKS                       R17 R1 K47 ["threadPageState"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R17
      242 JUMPIFNOT                        R1 ; [+3]
      243 GETTABLEKS                       R18 R1 K48 ["threadLoadState"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R18
      247 LOADB                            R19 0
      248 GETUPVAL                         R20 10
      249 GETTABLEKS                       R20 R20 K49 ["PersistenceLoadStates"]
      251 GETTABLEKS                       R20 R20 K50 ["Loading"]
      253 JUMPIFEQ                         R18 R20 ; [+10]
      255 LOADB                            R19 0
      256 JUMPIFEQKNIL                     R17 ; [+7]
      258 GETTABLEKS                       R20 R17 K51 ["nextCursor"]
      260 JUMPIFNOTEQKNIL                  R20 ; [+2]
      262 LOADB                            R19 0 +1
      263 LOADB                            R19 1
      264 GETUPVAL                         R20 3
      265 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      267 NEWCLOSURE                       R21 P4
      268 CAPTURE                          UPVAL U2
      269 CAPTURE                          VAL R2
      270 CAPTURE                          VAL R17
      271 CAPTURE                          UPVAL U20
      272 NEWTABLE                         R22 0 2
      274 GETTABLEKS                       R23 R2 K52 ["listSessionsPage"]
      276 MOVE                             R24 R17
      277 SETLIST                          R22 R23 2 [1]
      279 CALL                             R20 2 1
      280 GETUPVAL                         R21 21
      281 DUPTABLE                         R22 K55 [{"triggerDistance", "onScrolledToBottom"}]
      282 GETUPVAL                         R23 22
      283 GETTABLEKS                       R23 R23 K56 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      285 SETTABLEKS                       R23 R22 K53 ["triggerDistance"]
      287 JUMPIFNOT                        R19 ; [+2]
      288 MOVE                             R23 R20
      289 JUMP                             ; [+1]
      290 LOADNIL                          R23
      291 SETTABLEKS                       R23 R22 K54 ["onScrolledToBottom"]
      293 CALL                             R21 1 1
      294 GETUPVAL                         R22 10
      295 GETTABLEKS                       R22 R22 K49 ["PersistenceLoadStates"]
      297 GETTABLEKS                       R22 R22 K50 ["Loading"]
      299 JUMPIFNOTEQ                      R18 R22 ; [+28]
      301 GETUPVAL                         R22 13
      302 GETUPVAL                         R23 23
      303 DUPTABLE                         R24 K59 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      304 MOVE                             R25 R14
      305 CALL                             R25 0 1
      306 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      308 DUPTABLE                         R25 K60 [{"Loading"}]
      309 GETUPVAL                         R26 13
      310 GETUPVAL                         R27 24
      311 DUPTABLE                         R28 K62 [{"size"}]
      312 GETUPVAL                         R29 7
      313 GETTABLEKS                       R29 R29 K26 ["Enums"]
      315 GETTABLEKS                       R29 R29 K63 ["IconSize"]
      317 GETTABLEKS                       R29 R29 K64 ["Small"]
      319 SETTABLEKS                       R29 R28 K61 ["size"]
      321 CALL                             R26 2 1
      322 SETTABLEKS                       R26 R25 K50 ["Loading"]
      324 CALL                             R22 3 1
      325 SETTABLEKS                       R22 R15 K65 ["ThreadPersistenceInfo"]
      327 JUMP                             ; [+68]
      328 GETUPVAL                         R22 10
      329 GETTABLEKS                       R22 R22 K49 ["PersistenceLoadStates"]
      331 GETTABLEKS                       R22 R22 K66 ["Error"]
      333 JUMPIFNOTEQ                      R18 R22 ; [+62]
      335 GETUPVAL                         R22 13
      336 GETUPVAL                         R23 23
      337 DUPTABLE                         R24 K59 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      338 MOVE                             R25 R14
      339 CALL                             R25 0 1
      340 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      342 DUPTABLE                         R25 K69 [{"Icon", "Text"}]
      343 GETUPVAL                         R26 13
      344 GETUPVAL                         R27 25
      345 DUPTABLE                         R28 K72 [{"name", "size", "style", "LayoutOrder"}]
      346 GETUPVAL                         R29 7
      347 GETTABLEKS                       R29 R29 K26 ["Enums"]
      349 GETTABLEKS                       R29 R29 K27 ["IconName"]
      351 GETTABLEKS                       R29 R29 K73 ["TriangleExclamation"]
      353 SETTABLEKS                       R29 R28 K70 ["name"]
      355 GETUPVAL                         R29 7
      356 GETTABLEKS                       R29 R29 K26 ["Enums"]
      358 GETTABLEKS                       R29 R29 K63 ["IconSize"]
      360 GETTABLEKS                       R29 R29 K74 ["Medium"]
      362 SETTABLEKS                       R29 R28 K61 ["size"]
      364 GETTABLEKS                       R29 R8 K75 ["Color"]
      366 GETTABLEKS                       R29 R29 K76 ["System"]
      368 GETTABLEKS                       R29 R29 K77 ["Warning"]
      370 SETTABLEKS                       R29 R28 K71 ["style"]
      372 MOVE                             R29 R14
      373 CALL                             R29 0 1
      374 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      376 CALL                             R26 2 1
      377 SETTABLEKS                       R26 R25 K67 ["Icon"]
      379 GETUPVAL                         R26 13
      380 GETUPVAL                         R27 26
      381 DUPTABLE                         R28 K79 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      382 GETTABLEKS                       R29 R11 K80 ["ThreadsLoadError"]
      384 SETTABLEKS                       R29 R28 K68 ["Text"]
      386 MOVE                             R29 R14
      387 CALL                             R29 0 1
      388 SETTABLEKS                       R29 R28 K22 ["LayoutOrder"]
      390 CALL                             R26 2 1
      391 SETTABLEKS                       R26 R25 K68 ["Text"]
      393 CALL                             R22 3 1
      394 SETTABLEKS                       R22 R15 K65 ["ThreadPersistenceInfo"]
      396 GETUPVAL                         R22 3
      397 GETTABLEKS                       R22 R22 K81 ["useRef"]
      399 LOADNIL                          R23
      400 CALL                             R22 1 1
      401 GETUPVAL                         R23 13
      402 LOADK                            R24 K82 ["UIListLayout"]
      403 NEWTABLE                         R25 4 0
      405 GETIMPORT                        R26 K86 [Enum.FillDirection.Vertical]
      407 SETTABLEKS                       R26 R25 K84 ["FillDirection"]
      409 GETIMPORT                        R26 K88 [Enum.SortOrder.LayoutOrder]
      411 SETTABLEKS                       R26 R25 K87 ["SortOrder"]
      413 GETIMPORT                        R26 K90 [UDim.new]
      415 LOADN                            R27 0
      416 GETTABLEKS                       R28 R8 K91 ["Gap"]
      418 GETTABLEKS                       R28 R28 K92 ["XXSmall"]
      420 CALL                             R26 2 1
      421 SETTABLEKS                       R26 R25 K93 ["Padding"]
      423 GETUPVAL                         R26 3
      424 GETTABLEKS                       R26 R26 K94 ["Change"]
      426 GETTABLEKS                       R26 R26 K95 ["AbsoluteContentSize"]
      428 GETUPVAL                         R27 3
      429 GETTABLEKS                       R27 R27 K6 ["useCallback"]
      431 NEWCLOSURE                       R28 P5
      432 CAPTURE                          VAL R13
      433 CAPTURE                          VAL R22
      434 CAPTURE                          VAL R21
      435 NEWTABLE                         R29 0 2
      437 MOVE                             R30 R13
      438 GETTABLEKS                       R31 R21 K96 ["checkForEdge"]
      440 SETLIST                          R29 R30 2 [1]
      442 CALL                             R27 2 1
      443 SETTABLE                         R27 R25 R26
      444 CALL                             R23 2 1
      445 SETTABLEKS                       R23 R15 K97 ["ListLayout"]
      447 GETUPVAL                         R23 13
      448 GETUPVAL                         R24 23
      449 DUPTABLE                         R25 K99 [{["tag"] = "size-full-0 auto-y padding-x-small", ["testId"]}]
      450 GETUPVAL                         R26 15
      451 GETTABLEKS                       R26 R26 K29 ["ThreadsMenu"]
      453 GETTABLEKS                       R26 R26 K100 ["Container"]
      455 SETTABLEKS                       R26 R25 K23 ["testId"]
      457 DUPTABLE                         R26 K102 [{"ScrollView"}]
      458 GETUPVAL                         R27 13
      459 GETUPVAL                         R28 27
      460 DUPTABLE                         R29 K109 [{["tag"] = "col gap-xxsmall padding-xsmall stroke-standard stroke-default radius-medium bg-surface-200", ["scroll"], ["Size"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      461 DUPTABLE                         R30 K113 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      462 GETIMPORT                        R31 K116 [Enum.AutomaticSize.Y]
      464 SETTABLEKS                       R31 R30 K110 ["AutomaticCanvasSize"]
      466 GETIMPORT                        R31 K119 [UDim2.fromScale]
      468 LOADN                            R32 0
      469 LOADN                            R33 0
      470 CALL                             R31 2 1
      471 SETTABLEKS                       R31 R30 K111 ["CanvasSize"]
      473 GETIMPORT                        R31 K120 [Enum.ScrollingDirection.Y]
      475 SETTABLEKS                       R31 R30 K112 ["ScrollingDirection"]
      477 SETTABLEKS                       R30 R29 K104 ["scroll"]
      479 NEWCLOSURE                       R32 P6
      480 CAPTURE                          VAL R8
      481 NAMECALL                         R30 R12 K121 ["map"]
      483 CALL                             R30 2 1
      484 SETTABLEKS                       R30 R29 K105 ["Size"]
      486 SETTABLEKS                       R22 R29 K106 ["scrollingFrameRef"]
      488 GETTABLEKS                       R30 R21 K96 ["checkForEdge"]
      490 SETTABLEKS                       R30 R29 K107 ["onCanvasPositionChanged"]
      492 GETTABLEKS                       R30 R21 K96 ["checkForEdge"]
      494 SETTABLEKS                       R30 R29 K108 ["onAbsoluteWindowSizeChanged"]
      496 MOVE                             R30 R15
      497 CALL                             R27 3 1
      498 SETTABLEKS                       R27 R26 K101 ["ScrollView"]
      500 CALL                             R23 3 -1
      501 RETURN                           R23 -1

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
       47 GETTABLEKS                       R8 R0 K16 ["Parent"]
       49 GETTABLEKS                       R8 R8 K17 ["Foundation"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R6 K18 ["getIsAssistantHarnessSplit"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K6 ["Components"]
       58 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       60 GETTABLEKS                       R10 R10 K19 ["InputStateContext"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Util"]
       67 GETTABLEKS                       R11 R11 K20 ["Persistence"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Parent"]
       74 GETTABLEKS                       R12 R12 K21 ["React"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K16 ["Parent"]
       81 GETTABLEKS                       R13 R13 K22 ["ReactUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Components"]
       88 GETTABLEKS                       R14 R14 K7 ["Contexts"]
       90 GETTABLEKS                       R14 R14 K23 ["SessionIdContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K10 ["Util"]
       97 GETTABLEKS                       R15 R15 K24 ["TestIds"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K6 ["Components"]
      104 GETTABLEKS                       R16 R16 K7 ["Contexts"]
      106 GETTABLEKS                       R16 R16 K25 ["ThreadIdContext"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R17 R0 K6 ["Components"]
      113 GETTABLEKS                       R17 R17 K26 ["ThreadsWindow"]
      115 GETTABLEKS                       R17 R17 K27 ["ThreadOptionsMenu"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R18 R0 K28 ["Resources"]
      122 GETTABLEKS                       R18 R18 K29 ["Localization"]
      124 GETTABLEKS                       R18 R18 K30 ["Translator"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K5 [require]
      129 GETTABLEKS                       R19 R0 K31 ["Types"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K10 ["Util"]
      136 GETTABLEKS                       R20 R20 K32 ["createNewThread"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K5 [require]
      141 GETTABLEKS                       R21 R0 K33 ["Hooks"]
      143 GETTABLEKS                       R21 R21 K34 ["useAcpSessionHistory"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K5 [require]
      148 GETTABLEKS                       R22 R0 K33 ["Hooks"]
      150 GETTABLEKS                       R22 R22 K35 ["useConversation"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K5 [require]
      155 GETTABLEKS                       R23 R0 K33 ["Hooks"]
      157 GETTABLEKS                       R23 R23 K36 ["useEditThread"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K5 [require]
      162 GETTABLEKS                       R24 R0 K33 ["Hooks"]
      164 GETTABLEKS                       R24 R24 K37 ["useScrollEdge"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K5 [require]
      169 GETTABLEKS                       R25 R0 K33 ["Hooks"]
      171 GETTABLEKS                       R25 R25 K38 ["useSwitchThread"]
      173 CALL                             R24 1 1
      174 GETTABLEKS                       R25 R7 K39 ["Divider"]
      176 GETTABLEKS                       R26 R7 K40 ["Icon"]
      178 GETTABLEKS                       R27 R7 K41 ["IconButton"]
      180 GETTABLEKS                       R28 R7 K42 ["Loading"]
      182 GETTABLEKS                       R29 R7 K43 ["ScrollView"]
      184 GETTABLEKS                       R30 R7 K44 ["StatusIndicator"]
      186 GETTABLEKS                       R31 R7 K45 ["Text"]
      188 GETTABLEKS                       R32 R7 K46 ["TextInput"]
      190 GETTABLEKS                       R33 R7 K47 ["View"]
      192 GETTABLEKS                       R34 R12 K48 ["createNextOrder"]
      194 GETTABLEKS                       R35 R11 K49 ["createElement"]
      196 GETTABLEKS                       R36 R9 K50 ["InputDisabledReasons"]
      198 DUPCLOSURE                       R37 K51 [PROTO_3]
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R3
      202 DUPCLOSURE                       R38 K52 [PROTO_9]
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R2
      205 DUPCLOSURE                       R39 K53 [PROTO_18]
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R38
      215 CAPTURE                          VAL R34
      216 CAPTURE                          VAL R35
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R32
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R31
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R27
      225 DUPCLOSURE                       R40 K54 [PROTO_19]
      226 CAPTURE                          VAL R34
      227 CAPTURE                          VAL R35
      228 CAPTURE                          VAL R33
      229 CAPTURE                          VAL R31
      230 DUPCLOSURE                       R41 K55 [PROTO_20]
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R35
      233 CAPTURE                          VAL R33
      234 CAPTURE                          VAL R25
      235 DUPCLOSURE                       R42 K56 [PROTO_28]
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R24
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R19
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R34
      249 CAPTURE                          VAL R35
      250 CAPTURE                          VAL R39
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R37
      253 CAPTURE                          VAL R41
      254 CAPTURE                          VAL R40
      255 CAPTURE                          VAL R36
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R28
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R29
      264 RETURN                           R42 1
