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
       25 GETUPVAL                         R3 2
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K1 ["threads"]
       31 JUMP                             ; [+1]
       32 GETUPVAL                         R2 0
       33 MOVE                             R3 R2
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLEKS                       R8 R7 K5 ["isDeleted"]
       39 JUMPIF                           R8 ; [+36]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K6 ["getContentMetadata"]
       43 GETTABLEKS                       R9 R7 K7 ["threadId"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K8 ["type"]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K9 ["Thread"]
       51 JUMPIFNOTEQ                      R9 R10 ; [+4]
       53 GETTABLEKS                       R9 R8 K10 ["isNewThread"]
       55 JUMPIF                           R9 ; [+20]
       56 GETTABLEKS                       R9 R7 K11 ["isPinned"]
       58 JUMPIFNOT                        R9 ; [+9]
       59 GETTABLEKS                       R10 R0 K1 ["threads"]
       61 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       63 MOVE                             R11 R7
       64 GETIMPORT                        R9 K14 [table.insert]
       66 CALL                             R9 2 0
       67 JUMP                             ; [+8]
       68 GETTABLEKS                       R10 R1 K1 ["threads"]
       70 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       72 MOVE                             R11 R7
       73 GETIMPORT                        R9 K14 [table.insert]
       75 CALL                             R9 2 0
       76 FORGLOOP                         R3 2 ; [-40]
       78 NEWTABLE                         R3 0 2
       80 MOVE                             R6 R0
       81 MOVE                             R7 R1
       82 SETLIST                          R3 R6 2 [1]
       84 LOADNIL                          R4
       85 LOADNIL                          R5
       86 FORGPREP                         R3
       87 GETIMPORT                        R8 K16 [table.sort]
       89 GETTABLEKS                       R9 R7 K1 ["threads"]
       91 DUPCLOSURE                       R10 K17 [PROTO_1]
       92 CALL                             R8 2 0
       93 FORGLOOP                         R3 2 ; [-7]
       95 NEWTABLE                         R3 0 2
       97 MOVE                             R4 R0
       98 MOVE                             R5 R1
       99 SETLIST                          R3 R4 2 [1]
      101 RETURN                           R3 1

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
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 SETLIST                          R4 R5 2 [1]
       28 CALL                             R2 2 1
       29 RETURN                           R2 1

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
        3 SETTABLEKS                       R2 R0 K0 ["title"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R3 K3 ["logThreadRenamed"]
       13 DUPTABLE                         R4 K9 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
       14 GETUPVAL                         R5 2
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R5 3
       18 SETTABLEKS                       R5 R4 K5 ["threadId"]
       20 SETTABLEKS                       R1 R4 K6 ["oldTitle"]
       22 GETUPVAL                         R5 0
       23 SETTABLEKS                       R5 R4 K7 ["newTitle"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K10 ["ThreadNamingSource"]
       28 GETTABLEKS                       R5 R5 K11 ["ManualRename"]
       30 SETTABLEKS                       R5 R4 K8 ["namingSource"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thread"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["thread"]
        8 GETTABLEKS                       R1 R1 K1 ["threadId"]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 5
       20 LOADB                            R3 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_15:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_15]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["sessionId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["useState"]
       26 LOADB                            R7 0
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K3 ["useState"]
       31 LOADB                            R9 0
       32 CALL                             R8 1 2
       33 GETTABLEKS                       R12 R0 K5 ["isSelected"]
       35 NOT                              R11 R12
       36 NOT                              R10 R11
       37 GETTABLEKS                       R13 R0 K6 ["isHeader"]
       39 NOT                              R12 R13
       40 NOT                              R11 R12
       41 GETUPVAL                         R12 3
       42 CALL                             R12 0 1
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       46 NEWCLOSURE                       R14 P1
       47 CAPTURE                          VAL R9
       48 NEWTABLE                         R15 0 0
       50 CALL                             R13 2 1
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R14 R14 K4 ["useCallback"]
       54 NEWCLOSURE                       R15 P2
       55 CAPTURE                          VAL R9
       56 NEWTABLE                         R16 0 0
       58 CALL                             R14 2 1
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K4 ["useCallback"]
       62 NEWCLOSURE                       R16 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R12
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R9
       69 NEWTABLE                         R17 0 3
       71 MOVE                             R18 R12
       72 MOVE                             R19 R2
       73 GETTABLEKS                       R20 R0 K7 ["thread"]
       75 SETLIST                          R17 R18 3 [1]
       77 CALL                             R15 2 1
       78 GETUPVAL                         R16 6
       79 DUPTABLE                         R17 K12 [{"isRenaming", "initialText", "onRenameCommit", "onRenameCancel"}]
       80 SETTABLEKS                       R8 R17 K8 ["isRenaming"]
       82 GETTABLEKS                       R18 R0 K13 ["text"]
       84 SETTABLEKS                       R18 R17 K9 ["initialText"]
       86 SETTABLEKS                       R15 R17 K10 ["onRenameCommit"]
       88 SETTABLEKS                       R14 R17 K11 ["onRenameCancel"]
       90 CALL                             R16 1 1
       91 GETUPVAL                         R17 7
       92 CALL                             R17 0 1
       93 GETUPVAL                         R18 8
       94 GETUPVAL                         R19 9
       95 DUPTABLE                         R20 K16 [{"tag", "LayoutOrder"}]
       96 LOADK                            R21 K17 ["size-full-0 auto-y padding-x-small"]
       97 SETTABLEKS                       R21 R20 K14 ["tag"]
       99 GETTABLEKS                       R21 R0 K15 ["LayoutOrder"]
      101 SETTABLEKS                       R21 R20 K15 ["LayoutOrder"]
      103 DUPTABLE                         R21 K19 [{"Background"}]
      104 GETUPVAL                         R22 8
      105 GETUPVAL                         R23 9
      106 DUPTABLE                         R24 K23 [{"tag", "onActivated", "onStateChanged", "testId"}]
      107 NEWTABLE                         R25 2 0
      109 LOADB                            R26 1
      110 SETTABLEKS                       R26 R25 K24 ["row size-full-1000 auto-y padding-x-medium padding-y-small radius-medium gap-medium align-y-center"]
      112 SETTABLEKS                       R10 R25 K25 ["bg-action-soft-emphasis"]
      114 SETTABLEKS                       R25 R24 K14 ["tag"]
      116 JUMPIF                           R8 ; [+3]
      117 GETTABLEKS                       R25 R0 K20 ["onActivated"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R25
      121 SETTABLEKS                       R25 R24 K20 ["onActivated"]
      123 GETTABLEKS                       R26 R0 K7 ["thread"]
      125 JUMPIFNOT                        R26 ; [+2]
      126 MOVE                             R25 R5
      127 JUMP                             ; [+1]
      128 LOADNIL                          R25
      129 SETTABLEKS                       R25 R24 K21 ["onStateChanged"]
      131 GETTABLEKS                       R25 R0 K22 ["testId"]
      133 SETTABLEKS                       R25 R24 K22 ["testId"]
      135 DUPTABLE                         R25 K29 [{"LeadingIcon", "Text", "ThreadOptionsMenu"}]
      136 GETTABLEKS                       R26 R0 K30 ["leadingIcon"]
      138 JUMPIFNOT                        R26 ; [+21]
      139 GETUPVAL                         R26 8
      140 GETUPVAL                         R27 10
      141 DUPTABLE                         R28 K33 [{"name", "size", "LayoutOrder"}]
      142 GETTABLEKS                       R29 R0 K30 ["leadingIcon"]
      144 SETTABLEKS                       R29 R28 K31 ["name"]
      146 GETUPVAL                         R29 2
      147 GETTABLEKS                       R29 R29 K34 ["Enums"]
      149 GETTABLEKS                       R29 R29 K35 ["IconSize"]
      151 GETTABLEKS                       R29 R29 K36 ["Medium"]
      153 SETTABLEKS                       R29 R28 K32 ["size"]
      155 MOVE                             R29 R17
      156 CALL                             R29 0 1
      157 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      159 CALL                             R26 2 1
      160 SETTABLEKS                       R26 R25 K26 ["LeadingIcon"]
      162 JUMPIFNOT                        R8 ; [+55]
      163 GETUPVAL                         R26 8
      164 GETUPVAL                         R27 11
      165 DUPTABLE                         R28 K43 [{"text", "label", "width", "size", "hasError", "onChanged", "onReturnPressed", "ref", "LayoutOrder", "testId"}]
      166 GETTABLEKS                       R29 R16 K44 ["renameText"]
      168 SETTABLEKS                       R29 R28 K13 ["text"]
      170 LOADK                            R29 K45 [""]
      171 SETTABLEKS                       R29 R28 K37 ["label"]
      173 GETIMPORT                        R29 K48 [UDim.new]
      175 LOADN                            R30 1
      176 LOADN                            R31 0
      177 CALL                             R29 2 1
      178 SETTABLEKS                       R29 R28 K38 ["width"]
      180 GETUPVAL                         R29 2
      181 GETTABLEKS                       R29 R29 K34 ["Enums"]
      183 GETTABLEKS                       R29 R29 K49 ["InputSize"]
      185 GETTABLEKS                       R29 R29 K50 ["Small"]
      187 SETTABLEKS                       R29 R28 K32 ["size"]
      189 GETTABLEKS                       R29 R16 K39 ["hasError"]
      191 SETTABLEKS                       R29 R28 K39 ["hasError"]
      193 GETTABLEKS                       R29 R16 K51 ["setRenameText"]
      195 SETTABLEKS                       R29 R28 K40 ["onChanged"]
      197 GETTABLEKS                       R29 R16 K41 ["onReturnPressed"]
      199 SETTABLEKS                       R29 R28 K41 ["onReturnPressed"]
      201 GETTABLEKS                       R29 R16 K52 ["inputRef"]
      203 SETTABLEKS                       R29 R28 K42 ["ref"]
      205 MOVE                             R29 R17
      206 CALL                             R29 0 1
      207 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      209 GETUPVAL                         R29 12
      210 GETTABLEKS                       R29 R29 K53 ["ThreadEntry"]
      212 GETTABLEKS                       R29 R29 K54 ["RenameInput"]
      214 SETTABLEKS                       R29 R28 K22 ["testId"]
      216 CALL                             R26 2 1
      217 JUMP                             ; [+24]
      218 GETUPVAL                         R26 8
      219 GETUPVAL                         R27 13
      220 DUPTABLE                         R28 K55 [{"tag", "Text", "LayoutOrder"}]
      221 NEWTABLE                         R29 4 0
      223 LOADB                            R30 1
      224 SETTABLEKS                       R30 R29 K56 ["fill auto-y content-emphasis text-align-x-left text-truncate-split"]
      226 NOT                              R30 R11
      227 SETTABLEKS                       R30 R29 K57 ["text-body-medium"]
      229 SETTABLEKS                       R11 R29 K58 ["text-caption-medium"]
      231 SETTABLEKS                       R29 R28 K14 ["tag"]
      233 GETTABLEKS                       R29 R0 K13 ["text"]
      235 SETTABLEKS                       R29 R28 K27 ["Text"]
      237 MOVE                             R29 R17
      238 CALL                             R29 0 1
      239 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      241 CALL                             R26 2 1
      242 SETTABLEKS                       R26 R25 K27 ["Text"]
      244 GETTABLEKS                       R26 R0 K7 ["thread"]
      246 JUMPIFNOT                        R26 ; [+79]
      247 NOT                              R26 R8
      248 JUMPIFNOT                        R26 ; [+77]
      249 GETUPVAL                         R26 8
      250 GETUPVAL                         R27 14
      251 DUPTABLE                         R28 K63 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      252 GETTABLEKS                       R29 R0 K7 ["thread"]
      254 SETTABLEKS                       R29 R28 K7 ["thread"]
      256 GETTABLEKS                       R29 R0 K59 ["isGenerating"]
      258 SETTABLEKS                       R29 R28 K59 ["isGenerating"]
      260 SETTABLEKS                       R6 R28 K60 ["isOpen"]
      262 SETTABLEKS                       R7 R28 K61 ["setIsOpen"]
      264 SETTABLEKS                       R13 R28 K62 ["onRenameRequested"]
      266 MOVE                             R29 R17
      267 CALL                             R29 0 1
      268 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      270 DUPTABLE                         R29 K65 [{"OptionsButton"}]
      271 JUMPIF                           R3 ; [+2]
      272 MOVE                             R30 R6
      273 JUMPIFNOT                        R30 ; [+49]
      274 GETUPVAL                         R30 8
      275 GETUPVAL                         R31 15
      276 DUPTABLE                         R32 K69 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      277 GETUPVAL                         R33 2
      278 GETTABLEKS                       R33 R33 K34 ["Enums"]
      280 GETTABLEKS                       R33 R33 K70 ["IconName"]
      282 GETTABLEKS                       R33 R33 K71 ["ThreeDotsVertical"]
      284 SETTABLEKS                       R33 R32 K66 ["icon"]
      286 GETUPVAL                         R33 2
      287 GETTABLEKS                       R33 R33 K34 ["Enums"]
      289 GETTABLEKS                       R33 R33 K49 ["InputSize"]
      291 GETTABLEKS                       R33 R33 K72 ["XSmall"]
      293 SETTABLEKS                       R33 R32 K32 ["size"]
      295 GETUPVAL                         R33 2
      296 GETTABLEKS                       R33 R33 K34 ["Enums"]
      298 GETTABLEKS                       R33 R33 K73 ["ButtonVariant"]
      300 GETTABLEKS                       R33 R33 K74 ["Utility"]
      302 SETTABLEKS                       R33 R32 K67 ["variant"]
      304 LOADB                            R33 1
      305 SETTABLEKS                       R33 R32 K68 ["isCircular"]
      307 NEWCLOSURE                       R33 P4
      308 CAPTURE                          VAL R7
      309 SETTABLEKS                       R33 R32 K20 ["onActivated"]
      311 MOVE                             R33 R17
      312 CALL                             R33 0 1
      313 SETTABLEKS                       R33 R32 K15 ["LayoutOrder"]
      315 GETUPVAL                         R33 12
      316 GETTABLEKS                       R33 R33 K53 ["ThreadEntry"]
      318 GETTABLEKS                       R33 R33 K64 ["OptionsButton"]
      320 SETTABLEKS                       R33 R32 K22 ["testId"]
      322 CALL                             R30 2 1
      323 SETTABLEKS                       R30 R29 K64 ["OptionsButton"]
      325 CALL                             R26 3 1
      326 SETTABLEKS                       R26 R25 K28 ["ThreadOptionsMenu"]
      328 CALL                             R22 3 1
      329 SETTABLEKS                       R22 R21 K18 ["Background"]
      331 CALL                             R18 3 -1
      332 RETURN                           R18 -1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["ThreadSwitchSource"]
        7 GETTABLEKS                       R3 R3 K1 ["ThreadsMenuNew"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["ThreadSwitchSource"]
        5 GETTABLEKS                       R2 R2 K1 ["ThreadsMenu"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadMoreThreads"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_24:
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
       18 LOADK                            R8 K6 [300]
       19 GETIMPORT                        R6 K9 [math.min]
       21 CALL                             R6 2 1
       22 CALL                             R2 4 -1
       23 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K1 ["Context"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R4 K3 ["allThreadInputStates"]
       20 GETUPVAL                         R6 4
       21 CALL                             R6 0 1
       22 GETUPVAL                         R7 5
       23 GETTABLEKS                       R7 R7 K4 ["Hooks"]
       25 GETTABLEKS                       R7 R7 K5 ["useTokens"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       31 NEWCLOSURE                       R9 P0
       32 CAPTURE                          VAL R6
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R6
       38 GETTABLEKS                       R12 R0 K7 ["setThreadsMenuOpen"]
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U8
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R8
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       59 DUPCLOSURE                       R11 K9 [PROTO_20]
       60 CAPTURE                          UPVAL U9
       61 NEWTABLE                         R12 0 1
       63 GETUPVAL                         R13 9
       64 GETTABLEKS                       R13 R13 K10 ["locale"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K11 ["useRef"]
       72 LOADNIL                          R12
       73 CALL                             R11 1 1
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K12 ["useBinding"]
       77 GETIMPORT                        R13 K15 [Vector2.new]
       79 CALL                             R13 0 -1
       80 CALL                             R12 -1 2
       81 GETUPVAL                         R14 10
       82 CALL                             R14 0 1
       83 DUPTABLE                         R15 K18 [{"AddThreadButton", "Divider"}]
       84 GETUPVAL                         R16 11
       85 GETUPVAL                         R17 12
       86 DUPTABLE                         R18 K25 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       87 GETTABLEKS                       R19 R10 K26 ["NewThread"]
       89 SETTABLEKS                       R19 R18 K19 ["text"]
       91 GETUPVAL                         R19 5
       92 GETTABLEKS                       R19 R19 K27 ["Enums"]
       94 GETTABLEKS                       R19 R19 K28 ["IconName"]
       96 GETTABLEKS                       R19 R19 K29 ["PencilSquare"]
       98 SETTABLEKS                       R19 R18 K20 ["leadingIcon"]
      100 LOADB                            R19 0
      101 SETTABLEKS                       R19 R18 K21 ["isSelected"]
      103 SETTABLEKS                       R9 R18 K22 ["onActivated"]
      105 MOVE                             R19 R14
      106 CALL                             R19 0 1
      107 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      109 GETUPVAL                         R19 13
      110 GETTABLEKS                       R19 R19 K30 ["ThreadsMenu"]
      112 GETTABLEKS                       R19 R19 K16 ["AddThreadButton"]
      114 SETTABLEKS                       R19 R18 K24 ["testId"]
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K16 ["AddThreadButton"]
      119 GETUPVAL                         R16 11
      120 GETUPVAL                         R17 14
      121 DUPTABLE                         R18 K32 [{"tag", "LayoutOrder"}]
      122 LOADK                            R19 K33 ["size-full-0 auto-y padding-y-small"]
      123 SETTABLEKS                       R19 R18 K31 ["tag"]
      125 MOVE                             R19 R14
      126 CALL                             R19 0 1
      127 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      129 DUPTABLE                         R19 K34 [{"Divider"}]
      130 GETUPVAL                         R20 11
      131 GETUPVAL                         R21 15
      132 CALL                             R20 1 1
      133 SETTABLEKS                       R20 R19 K17 ["Divider"]
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K17 ["Divider"]
      138 NEWTABLE                         R16 0 0
      140 GETUPVAL                         R17 16
      141 MOVE                             R18 R1
      142 CALL                             R17 1 1
      143 MOVE                             R18 R17
      144 LOADNIL                          R19
      145 LOADNIL                          R20
      146 FORGPREP                         R18
      147 GETTABLEKS                       R25 R22 K35 ["threads"]
      149 LENGTH                           R24 R25
      150 LOADN                            R25 0
      151 JUMPIFLT                         R25 R24 ; [+2]
      153 LOADB                            R23 0 +1
      154 LOADB                            R23 1
      155 JUMPIFNOT                        R23 ; [+85]
      156 LOADK                            R25 K36 ["ThreadHeader_%*"]
      157 GETTABLEKS                       R27 R22 K37 ["title"]
      159 NAMECALL                         R25 R25 K38 ["format"]
      161 CALL                             R25 2 1
      162 MOVE                             R24 R25
      163 GETUPVAL                         R25 11
      164 GETUPVAL                         R26 12
      165 DUPTABLE                         R27 K40 [{"isHeader", "text", "LayoutOrder"}]
      166 LOADB                            R28 1
      167 SETTABLEKS                       R28 R27 K39 ["isHeader"]
      169 GETTABLEKS                       R28 R22 K37 ["title"]
      171 SETTABLEKS                       R28 R27 K19 ["text"]
      173 MOVE                             R28 R14
      174 CALL                             R28 0 1
      175 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      177 CALL                             R25 2 1
      178 SETTABLE                         R25 R16 R24
      179 GETTABLEKS                       R24 R22 K35 ["threads"]
      181 LOADNIL                          R25
      182 LOADNIL                          R26
      183 FORGPREP                         R24
      184 GETTABLEKS                       R29 R28 K2 ["threadId"]
      186 JUMPIFEQ                         R29 R3 ; [+2]
      188 LOADB                            R30 0 +1
      189 LOADB                            R30 1
      190 GETTABLE                         R31 R5 R29
      191 JUMPIFNOT                        R31 ; [+3]
      192 GETTABLEKS                       R32 R31 K41 ["reasonDisabled"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R32
      196 MOVE                             R33 R32
      197 JUMPIFNOT                        R33 ; [+9]
      198 GETTABLEKS                       R34 R32 K41 ["reasonDisabled"]
      200 GETUPVAL                         R35 17
      201 GETTABLEKS                       R35 R35 K42 ["Generation"]
      203 JUMPIFEQ                         R34 R35 ; [+2]
      205 LOADB                            R33 0 +1
      206 LOADB                            R33 1
      207 GETUPVAL                         R34 11
      208 GETUPVAL                         R35 12
      209 DUPTABLE                         R36 K45 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      210 GETTABLEKS                       R37 R28 K37 ["title"]
      212 SETTABLEKS                       R37 R36 K19 ["text"]
      214 SETTABLEKS                       R28 R36 K43 ["thread"]
      216 SETTABLEKS                       R30 R36 K21 ["isSelected"]
      218 SETTABLEKS                       R33 R36 K44 ["isGenerating"]
      220 NEWCLOSURE                       R37 P3
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R29
      223 CAPTURE                          UPVAL U8
      224 SETTABLEKS                       R37 R36 K22 ["onActivated"]
      226 MOVE                             R37 R14
      227 CALL                             R37 0 1
      228 SETTABLEKS                       R37 R36 K23 ["LayoutOrder"]
      230 GETUPVAL                         R37 13
      231 GETTABLEKS                       R37 R37 K30 ["ThreadsMenu"]
      233 GETTABLEKS                       R37 R37 K46 ["ExistingThreadButton"]
      235 SETTABLEKS                       R37 R36 K24 ["testId"]
      237 CALL                             R34 2 1
      238 SETTABLE                         R34 R16 R29
      239 FORGLOOP                         R24 2 ; [-56]
      241 FORGLOOP                         R18 2 ; [-95]
      243 JUMPIFNOT                        R1 ; [+3]
      244 GETTABLEKS                       R18 R1 K47 ["threadPageState"]
      246 JUMP                             ; [+1]
      247 LOADNIL                          R18
      248 JUMPIFNOT                        R1 ; [+3]
      249 GETTABLEKS                       R19 R1 K48 ["threadLoadState"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R19
      253 GETUPVAL                         R20 18
      254 DUPTABLE                         R21 K54 [{"pageState", "loadState", "onLoadMore", "direction", "triggerDistance"}]
      255 SETTABLEKS                       R18 R21 K49 ["pageState"]
      257 SETTABLEKS                       R19 R21 K50 ["loadState"]
      259 GETUPVAL                         R22 1
      260 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      262 NEWCLOSURE                       R23 P4
      263 CAPTURE                          UPVAL U19
      264 CAPTURE                          VAL R18
      265 NEWTABLE                         R24 0 1
      267 MOVE                             R25 R18
      268 SETLIST                          R24 R25 1 [1]
      270 CALL                             R22 2 1
      271 SETTABLEKS                       R22 R21 K51 ["onLoadMore"]
      273 LOADK                            R22 K55 ["bottom"]
      274 SETTABLEKS                       R22 R21 K52 ["direction"]
      276 GETUPVAL                         R22 20
      277 GETTABLEKS                       R22 R22 K56 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      279 SETTABLEKS                       R22 R21 K53 ["triggerDistance"]
      281 CALL                             R20 1 1
      282 GETUPVAL                         R21 1
      283 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      285 NEWCLOSURE                       R22 P5
      286 CAPTURE                          VAL R13
      287 NEWTABLE                         R23 0 1
      289 MOVE                             R24 R13
      290 SETLIST                          R23 R24 1 [1]
      292 CALL                             R21 2 1
      293 NEWTABLE                         R22 0 0
      295 GETUPVAL                         R23 8
      296 GETTABLEKS                       R23 R23 K57 ["PersistenceLoadStates"]
      298 GETTABLEKS                       R23 R23 K58 ["Loading"]
      300 JUMPIFNOTEQ                      R19 R23 ; [+31]
      302 GETUPVAL                         R23 11
      303 GETUPVAL                         R24 14
      304 DUPTABLE                         R25 K32 [{"tag", "LayoutOrder"}]
      305 LOADK                            R26 K59 ["row size-full-800 gap-small align-x-center align-y-center"]
      306 SETTABLEKS                       R26 R25 K31 ["tag"]
      308 MOVE                             R26 R14
      309 CALL                             R26 0 1
      310 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      312 DUPTABLE                         R26 K60 [{"Loading"}]
      313 GETUPVAL                         R27 11
      314 GETUPVAL                         R28 21
      315 DUPTABLE                         R29 K62 [{"size"}]
      316 GETUPVAL                         R30 5
      317 GETTABLEKS                       R30 R30 K27 ["Enums"]
      319 GETTABLEKS                       R30 R30 K63 ["IconSize"]
      321 GETTABLEKS                       R30 R30 K64 ["Small"]
      323 SETTABLEKS                       R30 R29 K61 ["size"]
      325 CALL                             R27 2 1
      326 SETTABLEKS                       R27 R26 K58 ["Loading"]
      328 CALL                             R23 3 1
      329 SETTABLEKS                       R23 R22 K65 ["ThreadPersistenceInfo"]
      331 JUMP                             ; [+74]
      332 GETUPVAL                         R23 8
      333 GETTABLEKS                       R23 R23 K57 ["PersistenceLoadStates"]
      335 GETTABLEKS                       R23 R23 K66 ["Error"]
      337 JUMPIFNOTEQ                      R19 R23 ; [+68]
      339 GETUPVAL                         R23 11
      340 GETUPVAL                         R24 14
      341 DUPTABLE                         R25 K32 [{"tag", "LayoutOrder"}]
      342 LOADK                            R26 K59 ["row size-full-800 gap-small align-x-center align-y-center"]
      343 SETTABLEKS                       R26 R25 K31 ["tag"]
      345 MOVE                             R26 R14
      346 CALL                             R26 0 1
      347 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      349 DUPTABLE                         R26 K69 [{"Icon", "Text"}]
      350 GETUPVAL                         R27 11
      351 GETUPVAL                         R28 22
      352 DUPTABLE                         R29 K72 [{"name", "size", "style", "LayoutOrder"}]
      353 GETUPVAL                         R30 5
      354 GETTABLEKS                       R30 R30 K27 ["Enums"]
      356 GETTABLEKS                       R30 R30 K28 ["IconName"]
      358 GETTABLEKS                       R30 R30 K73 ["TriangleExclamation"]
      360 SETTABLEKS                       R30 R29 K70 ["name"]
      362 GETUPVAL                         R30 5
      363 GETTABLEKS                       R30 R30 K27 ["Enums"]
      365 GETTABLEKS                       R30 R30 K63 ["IconSize"]
      367 GETTABLEKS                       R30 R30 K74 ["Medium"]
      369 SETTABLEKS                       R30 R29 K61 ["size"]
      371 GETTABLEKS                       R30 R7 K75 ["Color"]
      373 GETTABLEKS                       R30 R30 K76 ["System"]
      375 GETTABLEKS                       R30 R30 K77 ["Warning"]
      377 SETTABLEKS                       R30 R29 K71 ["style"]
      379 MOVE                             R30 R14
      380 CALL                             R30 0 1
      381 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      383 CALL                             R27 2 1
      384 SETTABLEKS                       R27 R26 K67 ["Icon"]
      386 GETUPVAL                         R27 11
      387 GETUPVAL                         R28 23
      388 DUPTABLE                         R29 K78 [{"tag", "Text", "LayoutOrder"}]
      389 LOADK                            R30 K79 ["size-0-full auto-x content-system-warning text-label-medium text-align-x-center text-align-y-center text-truncate-split"]
      390 SETTABLEKS                       R30 R29 K31 ["tag"]
      392 GETTABLEKS                       R30 R10 K80 ["ThreadsLoadError"]
      394 SETTABLEKS                       R30 R29 K68 ["Text"]
      396 MOVE                             R30 R14
      397 CALL                             R30 0 1
      398 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      400 CALL                             R27 2 1
      401 SETTABLEKS                       R27 R26 K68 ["Text"]
      403 CALL                             R23 3 1
      404 SETTABLEKS                       R23 R22 K65 ["ThreadPersistenceInfo"]
      406 GETUPVAL                         R23 24
      407 GETTABLEKS                       R23 R23 K81 ["assign"]
      409 DUPTABLE                         R24 K83 [{"UIListLayout"}]
      410 GETUPVAL                         R25 11
      411 LOADK                            R26 K82 ["UIListLayout"]
      412 NEWTABLE                         R27 4 0
      414 GETIMPORT                        R28 K87 [Enum.FillDirection.Vertical]
      416 SETTABLEKS                       R28 R27 K85 ["FillDirection"]
      418 GETIMPORT                        R28 K89 [Enum.SortOrder.LayoutOrder]
      420 SETTABLEKS                       R28 R27 K88 ["SortOrder"]
      422 GETIMPORT                        R28 K91 [UDim.new]
      424 LOADN                            R29 0
      425 GETTABLEKS                       R30 R7 K92 ["Gap"]
      427 GETTABLEKS                       R30 R30 K93 ["XXSmall"]
      429 CALL                             R28 2 1
      430 SETTABLEKS                       R28 R27 K94 ["Padding"]
      432 GETUPVAL                         R28 1
      433 GETTABLEKS                       R28 R28 K95 ["Change"]
      435 GETTABLEKS                       R28 R28 K96 ["AbsoluteContentSize"]
      437 SETTABLE                         R21 R27 R28
      438 CALL                             R25 2 1
      439 SETTABLEKS                       R25 R24 K82 ["UIListLayout"]
      441 MOVE                             R25 R15
      442 MOVE                             R26 R16
      443 MOVE                             R27 R22
      444 CALL                             R23 4 1
      445 GETUPVAL                         R24 11
      446 GETUPVAL                         R25 14
      447 DUPTABLE                         R26 K97 [{"tag", "testId"}]
      448 LOADK                            R27 K98 ["size-full-0 auto-y padding-x-small"]
      449 SETTABLEKS                       R27 R26 K31 ["tag"]
      451 GETUPVAL                         R27 13
      452 GETTABLEKS                       R27 R27 K30 ["ThreadsMenu"]
      454 GETTABLEKS                       R27 R27 K99 ["Container"]
      456 SETTABLEKS                       R27 R26 K24 ["testId"]
      458 DUPTABLE                         R27 K101 [{"ScrollView"}]
      459 GETUPVAL                         R28 11
      460 GETUPVAL                         R29 25
      461 DUPTABLE                         R30 K108 [{"tag", "scroll", "Size", "scrollingFrameRef", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged"}]
      462 LOADK                            R31 K109 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      463 SETTABLEKS                       R31 R30 K31 ["tag"]
      465 DUPTABLE                         R31 K113 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      466 GETIMPORT                        R32 K116 [Enum.AutomaticSize.Y]
      468 SETTABLEKS                       R32 R31 K110 ["AutomaticCanvasSize"]
      470 GETIMPORT                        R32 K119 [UDim2.fromScale]
      472 LOADN                            R33 0
      473 LOADN                            R34 0
      474 CALL                             R32 2 1
      475 SETTABLEKS                       R32 R31 K111 ["CanvasSize"]
      477 GETIMPORT                        R32 K120 [Enum.ScrollingDirection.Y]
      479 SETTABLEKS                       R32 R31 K112 ["ScrollingDirection"]
      481 SETTABLEKS                       R31 R30 K102 ["scroll"]
      483 NEWCLOSURE                       R33 P6
      484 CAPTURE                          VAL R7
      485 NAMECALL                         R31 R12 K121 ["map"]
      487 CALL                             R31 2 1
      488 SETTABLEKS                       R31 R30 K103 ["Size"]
      490 SETTABLEKS                       R11 R30 K104 ["scrollingFrameRef"]
      492 GETTABLEKS                       R31 R20 K105 ["onCanvasPositionChanged"]
      494 SETTABLEKS                       R31 R30 K105 ["onCanvasPositionChanged"]
      496 GETTABLEKS                       R31 R20 K106 ["onAbsoluteCanvasSizeChanged"]
      498 SETTABLEKS                       R31 R30 K106 ["onAbsoluteCanvasSizeChanged"]
      500 GETTABLEKS                       R31 R20 K107 ["onAbsoluteWindowSizeChanged"]
      502 SETTABLEKS                       R31 R30 K107 ["onAbsoluteWindowSizeChanged"]
      504 MOVE                             R31 R23
      505 CALL                             R28 3 1
      506 SETTABLEKS                       R28 R27 K100 ["ScrollView"]
      508 CALL                             R24 3 -1
      509 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["ContentIdGenerator"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Guest"]
       30 GETTABLEKS                       R5 R5 K12 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Events"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Parent"]
       42 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K15 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K17 ["InputStateContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K7 ["Util"]
       58 GETTABLEKS                       R9 R9 K18 ["Persistence"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K9 ["Parent"]
       65 GETTABLEKS                       R10 R10 K19 ["React"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K9 ["Parent"]
       72 GETTABLEKS                       R11 R11 K20 ["ReactUtils"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K15 ["Components"]
       79 GETTABLEKS                       R12 R12 K16 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K21 ["SessionIdContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K7 ["Util"]
       88 GETTABLEKS                       R13 R13 K22 ["TestIds"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K15 ["Components"]
       95 GETTABLEKS                       R14 R14 K16 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K23 ["ThreadIdContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K15 ["Components"]
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
      125 GETTABLEKS                       R18 R0 K7 ["Util"]
      127 GETTABLEKS                       R18 R18 K30 ["createNewThread"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K31 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K32 ["useConversation"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K31 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K33 ["useEditThread"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K31 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K34 ["usePaginatedScrollEdge"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K31 ["Hooks"]
      155 GETTABLEKS                       R22 R22 K35 ["useSwitchThread"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K36 ["Flags"]
      162 GETTABLEKS                       R23 R23 K37 ["FFlagAssistantMultipleChatPersistence"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R6 K38 ["Divider"]
      167 GETTABLEKS                       R24 R6 K39 ["Icon"]
      169 GETTABLEKS                       R25 R6 K40 ["IconButton"]
      171 GETTABLEKS                       R26 R6 K41 ["Loading"]
      173 GETTABLEKS                       R27 R6 K42 ["ScrollView"]
      175 GETTABLEKS                       R28 R6 K43 ["Text"]
      177 GETTABLEKS                       R29 R6 K44 ["TextInput"]
      179 GETTABLEKS                       R30 R6 K45 ["View"]
      181 GETTABLEKS                       R31 R10 K46 ["createNextOrder"]
      183 GETTABLEKS                       R32 R9 K47 ["createElement"]
      185 GETTABLEKS                       R33 R7 K48 ["InputDisabledReasons"]
      187 GETTABLEKS                       R34 R2 K49 ["METADATA_TYPES"]
      189 DUPCLOSURE                       R35 K50 [PROTO_3]
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R34
      195 DUPCLOSURE                       R36 K51 [PROTO_9]
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R1
      198 DUPCLOSURE                       R37 K52 [PROTO_17]
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R36
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R32
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R29
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R25
      215 DUPCLOSURE                       R38 K53 [PROTO_25]
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R31
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R37
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R30
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R35
      233 CAPTURE                          VAL R33
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R27
      242 RETURN                           R38 1
