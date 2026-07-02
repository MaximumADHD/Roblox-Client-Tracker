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
       16 LOADB                            R3 0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

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
       37 GETUPVAL                         R11 3
       38 CALL                             R11 0 1
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       42 NEWCLOSURE                       R13 P1
       43 CAPTURE                          VAL R9
       44 NEWTABLE                         R14 0 0
       46 CALL                             R12 2 1
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       50 NEWCLOSURE                       R14 P2
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R15 0 0
       54 CALL                             R13 2 1
       55 GETTABLEKS                       R14 R0 K6 ["thread"]
       57 GETUPVAL                         R15 0
       58 GETTABLEKS                       R15 R15 K4 ["useCallback"]
       60 NEWCLOSURE                       R16 P3
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R11
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R9
       67 NEWTABLE                         R17 0 3
       69 MOVE                             R18 R11
       70 MOVE                             R19 R2
       71 MOVE                             R20 R14
       72 SETLIST                          R17 R18 3 [1]
       74 CALL                             R15 2 1
       75 GETUPVAL                         R16 6
       76 DUPTABLE                         R17 K11 [{"isRenaming", "initialText", "onRenameCommit", "onRenameCancel"}]
       77 SETTABLEKS                       R8 R17 K7 ["isRenaming"]
       79 GETTABLEKS                       R18 R0 K12 ["text"]
       81 SETTABLEKS                       R18 R17 K8 ["initialText"]
       83 SETTABLEKS                       R15 R17 K9 ["onRenameCommit"]
       85 SETTABLEKS                       R13 R17 K10 ["onRenameCancel"]
       87 CALL                             R16 1 1
       88 LOADNIL                          R17
       89 JUMPIFNOT                        R14 ; [+24]
       90 NOT                              R18 R10
       91 JUMPIFNOT                        R18 ; [+14]
       92 LOADB                            R18 0
       93 LOADN                            R19 0
       94 GETTABLEKS                       R20 R14 K13 ["lastViewedAt"]
       96 JUMPIFNOTLE                      R19 R20 ; [+9]
       98 GETTABLEKS                       R19 R14 K13 ["lastViewedAt"]
      100 GETTABLEKS                       R20 R14 K14 ["updatedAt"]
      102 JUMPIFLT                         R19 R20 ; [+2]
      104 LOADB                            R18 0 +1
      105 LOADB                            R18 1
      106 JUMPIFNOT                        R18 ; [+7]
      107 GETUPVAL                         R19 2
      108 GETTABLEKS                       R19 R19 K15 ["Enums"]
      110 GETTABLEKS                       R19 R19 K16 ["StatusIndicatorVariant"]
      112 GETTABLEKS                       R17 R19 K17 ["Emphasis"]
      114 MOVE                             R18 R14
      115 JUMPIFNOT                        R18 ; [+4]
      116 JUMPIF                           R3 ; [+2]
      117 MOVE                             R18 R6
      118 JUMPIFNOT                        R18 ; [+1]
      119 NOT                              R18 R8
      120 GETUPVAL                         R19 7
      121 CALL                             R19 0 1
      122 GETUPVAL                         R20 8
      123 GETUPVAL                         R21 9
      124 DUPTABLE                         R22 K24 [{"tag", "Size", "onActivated", "onStateChanged", "LayoutOrder", "testId"}]
      125 NEWTABLE                         R23 2 0
      127 LOADB                            R24 1
      128 SETTABLEKS                       R24 R23 K25 ["row align-y-center gap-medium padding-x-medium padding-y-xsmall radius-small"]
      130 SETTABLEKS                       R10 R23 K26 ["bg-action-soft-emphasis"]
      132 SETTABLEKS                       R23 R22 K18 ["tag"]
      134 GETIMPORT                        R23 K29 [UDim2.new]
      136 LOADN                            R24 1
      137 LOADN                            R25 0
      138 LOADN                            R26 0
      139 LOADN                            R27 26
      140 CALL                             R23 4 1
      141 SETTABLEKS                       R23 R22 K19 ["Size"]
      143 JUMPIF                           R8 ; [+3]
      144 GETTABLEKS                       R23 R0 K20 ["onActivated"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R23
      148 SETTABLEKS                       R23 R22 K20 ["onActivated"]
      150 JUMPIFNOT                        R14 ; [+2]
      151 MOVE                             R23 R5
      152 JUMP                             ; [+1]
      153 LOADNIL                          R23
      154 SETTABLEKS                       R23 R22 K21 ["onStateChanged"]
      156 GETTABLEKS                       R23 R0 K22 ["LayoutOrder"]
      158 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      160 GETTABLEKS                       R23 R0 K23 ["testId"]
      162 SETTABLEKS                       R23 R22 K23 ["testId"]
      164 DUPTABLE                         R23 K33 [{"LeadingIcon", "Text", "IndicatorArea"}]
      165 GETTABLEKS                       R24 R0 K34 ["leadingIcon"]
      167 JUMPIFNOT                        R24 ; [+21]
      168 GETUPVAL                         R24 8
      169 GETUPVAL                         R25 10
      170 DUPTABLE                         R26 K37 [{"name", "size", "LayoutOrder"}]
      171 GETTABLEKS                       R27 R0 K34 ["leadingIcon"]
      173 SETTABLEKS                       R27 R26 K35 ["name"]
      175 GETUPVAL                         R27 2
      176 GETTABLEKS                       R27 R27 K15 ["Enums"]
      178 GETTABLEKS                       R27 R27 K38 ["IconSize"]
      180 GETTABLEKS                       R27 R27 K39 ["Small"]
      182 SETTABLEKS                       R27 R26 K36 ["size"]
      184 MOVE                             R27 R19
      185 CALL                             R27 0 1
      186 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      188 CALL                             R24 2 1
      189 SETTABLEKS                       R24 R23 K30 ["LeadingIcon"]
      191 JUMPIFNOT                        R8 ; [+52]
      192 GETUPVAL                         R24 8
      193 GETUPVAL                         R25 11
      194 DUPTABLE                         R26 K47 [{["text"], ["label"] = "", ["width"], ["size"], ["hasError"], ["onChanged"], ["onReturnPressed"], ["ref"], ["LayoutOrder"], ["testId"]}]
      195 GETTABLEKS                       R27 R16 K48 ["renameText"]
      197 SETTABLEKS                       R27 R26 K12 ["text"]
      199 GETIMPORT                        R27 K50 [UDim.new]
      201 LOADN                            R28 1
      202 LOADN                            R29 0
      203 CALL                             R27 2 1
      204 SETTABLEKS                       R27 R26 K42 ["width"]
      206 GETUPVAL                         R27 2
      207 GETTABLEKS                       R27 R27 K15 ["Enums"]
      209 GETTABLEKS                       R27 R27 K51 ["InputSize"]
      211 GETTABLEKS                       R27 R27 K52 ["XSmall"]
      213 SETTABLEKS                       R27 R26 K36 ["size"]
      215 GETTABLEKS                       R27 R16 K43 ["hasError"]
      217 SETTABLEKS                       R27 R26 K43 ["hasError"]
      219 GETTABLEKS                       R27 R16 K53 ["setRenameText"]
      221 SETTABLEKS                       R27 R26 K44 ["onChanged"]
      223 GETTABLEKS                       R27 R16 K45 ["onReturnPressed"]
      225 SETTABLEKS                       R27 R26 K45 ["onReturnPressed"]
      227 GETTABLEKS                       R27 R16 K54 ["inputRef"]
      229 SETTABLEKS                       R27 R26 K46 ["ref"]
      231 MOVE                             R27 R19
      232 CALL                             R27 0 1
      233 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      235 GETUPVAL                         R27 12
      236 GETTABLEKS                       R27 R27 K55 ["ThreadEntry"]
      238 GETTABLEKS                       R27 R27 K56 ["RenameInput"]
      240 SETTABLEKS                       R27 R26 K23 ["testId"]
      242 CALL                             R24 2 1
      243 JUMP                             ; [+12]
      244 GETUPVAL                         R24 8
      245 GETUPVAL                         R25 13
      246 DUPTABLE                         R26 K58 [{["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      247 GETTABLEKS                       R27 R0 K12 ["text"]
      249 SETTABLEKS                       R27 R26 K31 ["Text"]
      251 MOVE                             R27 R19
      252 CALL                             R27 0 1
      253 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K31 ["Text"]
      258 GETUPVAL                         R24 8
      259 GETUPVAL                         R25 9
      260 DUPTABLE                         R26 K60 [{["tag"] = "align-x-center align-y-center size-400-400", ["LayoutOrder"]}]
      261 MOVE                             R27 R19
      262 CALL                             R27 0 1
      263 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      265 DUPTABLE                         R27 K63 [{"Status", "ThreadOptionsMenu"}]
      266 NOT                              R28 R18
      267 JUMPIFNOT                        R28 ; [+14]
      268 NOT                              R28 R8
      269 JUMPIFNOT                        R28 ; [+12]
      270 MOVE                             R28 R17
      271 JUMPIFNOT                        R28 ; [+10]
      272 GETUPVAL                         R28 8
      273 GETUPVAL                         R29 14
      274 DUPTABLE                         R30 K65 [{"variant", "LayoutOrder"}]
      275 SETTABLEKS                       R17 R30 K64 ["variant"]
      277 MOVE                             R31 R19
      278 CALL                             R31 0 1
      279 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      281 CALL                             R28 2 1
      282 SETTABLEKS                       R28 R27 K61 ["Status"]
      284 MOVE                             R28 R14
      285 JUMPIFNOT                        R28 ; [+71]
      286 GETUPVAL                         R28 8
      287 GETUPVAL                         R29 15
      288 DUPTABLE                         R30 K70 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      289 SETTABLEKS                       R14 R30 K6 ["thread"]
      291 GETTABLEKS                       R31 R0 K66 ["isGenerating"]
      293 SETTABLEKS                       R31 R30 K66 ["isGenerating"]
      295 SETTABLEKS                       R6 R30 K67 ["isOpen"]
      297 SETTABLEKS                       R7 R30 K68 ["setIsOpen"]
      299 SETTABLEKS                       R12 R30 K69 ["onRenameRequested"]
      301 MOVE                             R31 R19
      302 CALL                             R31 0 1
      303 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      305 DUPTABLE                         R31 K72 [{"OptionsButton"}]
      306 MOVE                             R32 R18
      307 JUMPIFNOT                        R32 ; [+46]
      308 GETUPVAL                         R32 8
      309 GETUPVAL                         R33 16
      310 DUPTABLE                         R34 K76 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      311 GETUPVAL                         R35 2
      312 GETTABLEKS                       R35 R35 K15 ["Enums"]
      314 GETTABLEKS                       R35 R35 K77 ["IconName"]
      316 GETTABLEKS                       R35 R35 K78 ["ThreeDotsVertical"]
      318 SETTABLEKS                       R35 R34 K73 ["icon"]
      320 GETUPVAL                         R35 2
      321 GETTABLEKS                       R35 R35 K15 ["Enums"]
      323 GETTABLEKS                       R35 R35 K51 ["InputSize"]
      325 GETTABLEKS                       R35 R35 K52 ["XSmall"]
      327 SETTABLEKS                       R35 R34 K36 ["size"]
      329 GETUPVAL                         R35 2
      330 GETTABLEKS                       R35 R35 K15 ["Enums"]
      332 GETTABLEKS                       R35 R35 K79 ["ButtonVariant"]
      334 GETTABLEKS                       R35 R35 K80 ["Utility"]
      336 SETTABLEKS                       R35 R34 K64 ["variant"]
      338 NEWCLOSURE                       R35 P4
      339 CAPTURE                          VAL R7
      340 SETTABLEKS                       R35 R34 K20 ["onActivated"]
      342 MOVE                             R35 R19
      343 CALL                             R35 0 1
      344 SETTABLEKS                       R35 R34 K22 ["LayoutOrder"]
      346 GETUPVAL                         R35 12
      347 GETTABLEKS                       R35 R35 K55 ["ThreadEntry"]
      349 GETTABLEKS                       R35 R35 K71 ["OptionsButton"]
      351 SETTABLEKS                       R35 R34 K23 ["testId"]
      353 CALL                             R32 2 1
      354 SETTABLEKS                       R32 R31 K71 ["OptionsButton"]
      356 CALL                             R28 3 1
      357 SETTABLEKS                       R28 R27 K62 ["ThreadOptionsMenu"]
      359 CALL                             R24 3 1
      360 SETTABLEKS                       R24 R23 K32 ["IndicatorArea"]
      362 CALL                             R20 3 -1
      363 RETURN                           R20 -1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["ThreadSwitchSource"]
        7 GETTABLEKS                       R3 R3 K1 ["ThreadsMenuNew"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["ThreadSwitchSource"]
        5 GETTABLEKS                       R2 R2 K1 ["ThreadsMenu"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadMoreThreads"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       59 DUPCLOSURE                       R11 K9 [PROTO_22]
       60 CAPTURE                          UPVAL U9
       61 NEWTABLE                         R12 0 1
       63 GETUPVAL                         R13 9
       64 GETTABLEKS                       R13 R13 K10 ["locale"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K11 ["useBinding"]
       72 GETIMPORT                        R12 K14 [Vector2.new]
       74 CALL                             R12 0 -1
       75 CALL                             R11 -1 2
       76 GETUPVAL                         R13 10
       77 CALL                             R13 0 1
       78 DUPTABLE                         R14 K16 [{"ThreadMenuButton_NewThread"}]
       79 GETUPVAL                         R15 11
       80 GETUPVAL                         R16 12
       81 DUPTABLE                         R17 K24 [{["text"], ["leadingIcon"], ["isSelected"] = False, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       82 GETTABLEKS                       R18 R10 K25 ["NewThread"]
       84 SETTABLEKS                       R18 R17 K17 ["text"]
       86 GETUPVAL                         R18 5
       87 GETTABLEKS                       R18 R18 K26 ["Enums"]
       89 GETTABLEKS                       R18 R18 K27 ["IconName"]
       91 GETTABLEKS                       R18 R18 K28 ["PencilSquare"]
       93 SETTABLEKS                       R18 R17 K18 ["leadingIcon"]
       95 SETTABLEKS                       R9 R17 K21 ["onActivated"]
       97 MOVE                             R18 R13
       98 CALL                             R18 0 1
       99 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      101 GETUPVAL                         R18 13
      102 GETTABLEKS                       R18 R18 K29 ["ThreadsMenu"]
      104 GETTABLEKS                       R18 R18 K30 ["AddThreadButton"]
      106 SETTABLEKS                       R18 R17 K23 ["testId"]
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K15 ["ThreadMenuButton_NewThread"]
      111 GETUPVAL                         R15 14
      112 MOVE                             R16 R1
      113 CALL                             R15 1 1
      114 MOVE                             R16 R15
      115 LOADNIL                          R17
      116 LOADNIL                          R18
      117 FORGPREP                         R16
      118 GETTABLEKS                       R23 R20 K31 ["threads"]
      120 LENGTH                           R22 R23
      121 LOADN                            R23 0
      122 JUMPIFLT                         R23 R22 ; [+2]
      124 LOADB                            R21 0 +1
      125 LOADB                            R21 1
      126 JUMPIFNOT                        R21 ; [+104]
      127 LOADK                            R23 K32 ["ThreadMenuDivider_%*"]
      128 GETTABLEKS                       R25 R20 K33 ["title"]
      130 NAMECALL                         R23 R23 K34 ["format"]
      132 CALL                             R23 2 1
      133 MOVE                             R22 R23
      134 GETUPVAL                         R23 11
      135 GETUPVAL                         R24 15
      136 DUPTABLE                         R25 K35 [{"LayoutOrder"}]
      137 MOVE                             R26 R13
      138 CALL                             R26 0 1
      139 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      141 CALL                             R23 2 1
      142 SETTABLE                         R23 R14 R22
      143 LOADK                            R23 K36 ["ThreadMenuHeader_%*"]
      144 GETTABLEKS                       R25 R20 K33 ["title"]
      146 NAMECALL                         R23 R23 K34 ["format"]
      148 CALL                             R23 2 1
      149 MOVE                             R22 R23
      150 GETUPVAL                         R23 11
      151 GETUPVAL                         R24 16
      152 DUPTABLE                         R25 K39 [{["isHeader"] = True, ["text"], ["LayoutOrder"]}]
      153 GETTABLEKS                       R26 R20 K33 ["title"]
      155 SETTABLEKS                       R26 R25 K17 ["text"]
      157 MOVE                             R26 R13
      158 CALL                             R26 0 1
      159 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      161 CALL                             R23 2 1
      162 SETTABLE                         R23 R14 R22
      163 GETTABLEKS                       R22 R20 K31 ["threads"]
      165 LOADNIL                          R23
      166 LOADNIL                          R24
      167 FORGPREP                         R22
      168 GETTABLEKS                       R27 R26 K2 ["threadId"]
      170 JUMPIFEQ                         R27 R3 ; [+2]
      172 LOADB                            R28 0 +1
      173 LOADB                            R28 1
      174 GETTABLE                         R29 R5 R27
      175 JUMPIFNOT                        R29 ; [+3]
      176 GETTABLEKS                       R30 R29 K40 ["reasonDisabled"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R30
      180 MOVE                             R31 R30
      181 JUMPIFNOT                        R31 ; [+9]
      182 GETTABLEKS                       R32 R30 K40 ["reasonDisabled"]
      184 GETUPVAL                         R33 17
      185 GETTABLEKS                       R33 R33 K41 ["Generation"]
      187 JUMPIFEQ                         R32 R33 ; [+2]
      189 LOADB                            R31 0 +1
      190 LOADB                            R31 1
      191 LOADK                            R33 K42 ["ThreadMenuItem_%*"]
      192 MOVE                             R35 R27
      193 NAMECALL                         R33 R33 K34 ["format"]
      195 CALL                             R33 2 1
      196 MOVE                             R32 R33
      197 GETUPVAL                         R33 11
      198 GETUPVAL                         R34 12
      199 DUPTABLE                         R35 K45 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      200 GETTABLEKS                       R36 R26 K33 ["title"]
      202 SETTABLEKS                       R36 R35 K17 ["text"]
      204 SETTABLEKS                       R26 R35 K43 ["thread"]
      206 SETTABLEKS                       R28 R35 K19 ["isSelected"]
      208 SETTABLEKS                       R31 R35 K44 ["isGenerating"]
      210 NEWCLOSURE                       R36 P3
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R27
      213 CAPTURE                          UPVAL U8
      214 SETTABLEKS                       R36 R35 K21 ["onActivated"]
      216 MOVE                             R36 R13
      217 CALL                             R36 0 1
      218 SETTABLEKS                       R36 R35 K22 ["LayoutOrder"]
      220 GETUPVAL                         R36 13
      221 GETTABLEKS                       R36 R36 K29 ["ThreadsMenu"]
      223 GETTABLEKS                       R36 R36 K46 ["ExistingThreadButton"]
      225 SETTABLEKS                       R36 R35 K23 ["testId"]
      227 CALL                             R33 2 1
      228 SETTABLE                         R33 R14 R32
      229 FORGLOOP                         R22 2 ; [-62]
      231 FORGLOOP                         R16 2 ; [-114]
      233 JUMPIFNOT                        R1 ; [+3]
      234 GETTABLEKS                       R16 R1 K47 ["threadPageState"]
      236 JUMP                             ; [+1]
      237 LOADNIL                          R16
      238 JUMPIFNOT                        R1 ; [+3]
      239 GETTABLEKS                       R17 R1 K48 ["threadLoadState"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R17
      243 LOADB                            R18 0
      244 GETUPVAL                         R19 8
      245 GETTABLEKS                       R19 R19 K49 ["PersistenceLoadStates"]
      247 GETTABLEKS                       R19 R19 K50 ["Loading"]
      249 JUMPIFEQ                         R17 R19 ; [+10]
      251 LOADB                            R18 0
      252 JUMPIFEQKNIL                     R16 ; [+7]
      254 GETTABLEKS                       R19 R16 K51 ["nextCursor"]
      256 JUMPIFNOTEQKNIL                  R19 ; [+2]
      258 LOADB                            R18 0 +1
      259 LOADB                            R18 1
      260 GETUPVAL                         R19 1
      261 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      263 NEWCLOSURE                       R20 P4
      264 CAPTURE                          UPVAL U18
      265 CAPTURE                          VAL R16
      266 NEWTABLE                         R21 0 1
      268 MOVE                             R22 R16
      269 SETLIST                          R21 R22 1 [1]
      271 CALL                             R19 2 1
      272 GETUPVAL                         R20 19
      273 DUPTABLE                         R21 K54 [{"triggerDistance", "onScrolledToBottom"}]
      274 GETUPVAL                         R22 20
      275 GETTABLEKS                       R22 R22 K55 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      277 SETTABLEKS                       R22 R21 K52 ["triggerDistance"]
      279 JUMPIFNOT                        R18 ; [+2]
      280 MOVE                             R22 R19
      281 JUMP                             ; [+1]
      282 LOADNIL                          R22
      283 SETTABLEKS                       R22 R21 K53 ["onScrolledToBottom"]
      285 CALL                             R20 1 1
      286 GETUPVAL                         R21 8
      287 GETTABLEKS                       R21 R21 K49 ["PersistenceLoadStates"]
      289 GETTABLEKS                       R21 R21 K50 ["Loading"]
      291 JUMPIFNOTEQ                      R17 R21 ; [+28]
      293 GETUPVAL                         R21 11
      294 GETUPVAL                         R22 21
      295 DUPTABLE                         R23 K58 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      296 MOVE                             R24 R13
      297 CALL                             R24 0 1
      298 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      300 DUPTABLE                         R24 K59 [{"Loading"}]
      301 GETUPVAL                         R25 11
      302 GETUPVAL                         R26 22
      303 DUPTABLE                         R27 K61 [{"size"}]
      304 GETUPVAL                         R28 5
      305 GETTABLEKS                       R28 R28 K26 ["Enums"]
      307 GETTABLEKS                       R28 R28 K62 ["IconSize"]
      309 GETTABLEKS                       R28 R28 K63 ["Small"]
      311 SETTABLEKS                       R28 R27 K60 ["size"]
      313 CALL                             R25 2 1
      314 SETTABLEKS                       R25 R24 K50 ["Loading"]
      316 CALL                             R21 3 1
      317 SETTABLEKS                       R21 R14 K64 ["ThreadPersistenceInfo"]
      319 JUMP                             ; [+68]
      320 GETUPVAL                         R21 8
      321 GETTABLEKS                       R21 R21 K49 ["PersistenceLoadStates"]
      323 GETTABLEKS                       R21 R21 K65 ["Error"]
      325 JUMPIFNOTEQ                      R17 R21 ; [+62]
      327 GETUPVAL                         R21 11
      328 GETUPVAL                         R22 21
      329 DUPTABLE                         R23 K58 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      330 MOVE                             R24 R13
      331 CALL                             R24 0 1
      332 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      334 DUPTABLE                         R24 K68 [{"Icon", "Text"}]
      335 GETUPVAL                         R25 11
      336 GETUPVAL                         R26 23
      337 DUPTABLE                         R27 K71 [{"name", "size", "style", "LayoutOrder"}]
      338 GETUPVAL                         R28 5
      339 GETTABLEKS                       R28 R28 K26 ["Enums"]
      341 GETTABLEKS                       R28 R28 K27 ["IconName"]
      343 GETTABLEKS                       R28 R28 K72 ["TriangleExclamation"]
      345 SETTABLEKS                       R28 R27 K69 ["name"]
      347 GETUPVAL                         R28 5
      348 GETTABLEKS                       R28 R28 K26 ["Enums"]
      350 GETTABLEKS                       R28 R28 K62 ["IconSize"]
      352 GETTABLEKS                       R28 R28 K73 ["Medium"]
      354 SETTABLEKS                       R28 R27 K60 ["size"]
      356 GETTABLEKS                       R28 R7 K74 ["Color"]
      358 GETTABLEKS                       R28 R28 K75 ["System"]
      360 GETTABLEKS                       R28 R28 K76 ["Warning"]
      362 SETTABLEKS                       R28 R27 K70 ["style"]
      364 MOVE                             R28 R13
      365 CALL                             R28 0 1
      366 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      368 CALL                             R25 2 1
      369 SETTABLEKS                       R25 R24 K66 ["Icon"]
      371 GETUPVAL                         R25 11
      372 GETUPVAL                         R26 24
      373 DUPTABLE                         R27 K78 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      374 GETTABLEKS                       R28 R10 K79 ["ThreadsLoadError"]
      376 SETTABLEKS                       R28 R27 K67 ["Text"]
      378 MOVE                             R28 R13
      379 CALL                             R28 0 1
      380 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      382 CALL                             R25 2 1
      383 SETTABLEKS                       R25 R24 K67 ["Text"]
      385 CALL                             R21 3 1
      386 SETTABLEKS                       R21 R14 K64 ["ThreadPersistenceInfo"]
      388 GETUPVAL                         R21 1
      389 GETTABLEKS                       R21 R21 K80 ["useRef"]
      391 LOADNIL                          R22
      392 CALL                             R21 1 1
      393 GETUPVAL                         R22 11
      394 LOADK                            R23 K81 ["UIListLayout"]
      395 NEWTABLE                         R24 4 0
      397 GETIMPORT                        R25 K85 [Enum.FillDirection.Vertical]
      399 SETTABLEKS                       R25 R24 K83 ["FillDirection"]
      401 GETIMPORT                        R25 K87 [Enum.SortOrder.LayoutOrder]
      403 SETTABLEKS                       R25 R24 K86 ["SortOrder"]
      405 GETIMPORT                        R25 K89 [UDim.new]
      407 LOADN                            R26 0
      408 GETTABLEKS                       R27 R7 K90 ["Gap"]
      410 GETTABLEKS                       R27 R27 K91 ["XXSmall"]
      412 CALL                             R25 2 1
      413 SETTABLEKS                       R25 R24 K92 ["Padding"]
      415 GETUPVAL                         R25 1
      416 GETTABLEKS                       R25 R25 K93 ["Change"]
      418 GETTABLEKS                       R25 R25 K94 ["AbsoluteContentSize"]
      420 GETUPVAL                         R26 1
      421 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      423 NEWCLOSURE                       R27 P5
      424 CAPTURE                          VAL R12
      425 CAPTURE                          VAL R21
      426 CAPTURE                          VAL R20
      427 NEWTABLE                         R28 0 2
      429 MOVE                             R29 R12
      430 GETTABLEKS                       R30 R20 K95 ["checkForEdge"]
      432 SETLIST                          R28 R29 2 [1]
      434 CALL                             R26 2 1
      435 SETTABLE                         R26 R24 R25
      436 CALL                             R22 2 1
      437 SETTABLEKS                       R22 R14 K96 ["ListLayout"]
      439 GETUPVAL                         R22 11
      440 GETUPVAL                         R23 21
      441 DUPTABLE                         R24 K98 [{["tag"] = "size-full-0 auto-y padding-x-small", ["testId"]}]
      442 GETUPVAL                         R25 13
      443 GETTABLEKS                       R25 R25 K29 ["ThreadsMenu"]
      445 GETTABLEKS                       R25 R25 K99 ["Container"]
      447 SETTABLEKS                       R25 R24 K23 ["testId"]
      449 DUPTABLE                         R25 K101 [{"ScrollView"}]
      450 GETUPVAL                         R26 11
      451 GETUPVAL                         R27 25
      452 DUPTABLE                         R28 K108 [{["tag"] = "col gap-xxsmall padding-xsmall stroke-standard stroke-default radius-medium bg-surface-200", ["scroll"], ["Size"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      453 DUPTABLE                         R29 K112 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      454 GETIMPORT                        R30 K115 [Enum.AutomaticSize.Y]
      456 SETTABLEKS                       R30 R29 K109 ["AutomaticCanvasSize"]
      458 GETIMPORT                        R30 K118 [UDim2.fromScale]
      460 LOADN                            R31 0
      461 LOADN                            R32 0
      462 CALL                             R30 2 1
      463 SETTABLEKS                       R30 R29 K110 ["CanvasSize"]
      465 GETIMPORT                        R30 K119 [Enum.ScrollingDirection.Y]
      467 SETTABLEKS                       R30 R29 K111 ["ScrollingDirection"]
      469 SETTABLEKS                       R29 R28 K103 ["scroll"]
      471 NEWCLOSURE                       R31 P6
      472 CAPTURE                          VAL R7
      473 NAMECALL                         R29 R11 K120 ["map"]
      475 CALL                             R29 2 1
      476 SETTABLEKS                       R29 R28 K104 ["Size"]
      478 SETTABLEKS                       R21 R28 K105 ["scrollingFrameRef"]
      480 GETTABLEKS                       R29 R20 K95 ["checkForEdge"]
      482 SETTABLEKS                       R29 R28 K106 ["onCanvasPositionChanged"]
      484 GETTABLEKS                       R29 R20 K95 ["checkForEdge"]
      486 SETTABLEKS                       R29 R28 K107 ["onAbsoluteWindowSizeChanged"]
      488 MOVE                             R29 R14
      489 CALL                             R26 3 1
      490 SETTABLEKS                       R26 R25 K100 ["ScrollView"]
      492 CALL                             R22 3 -1
      493 RETURN                           R22 -1

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
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Events"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Parent"]
       35 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K14 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K16 ["InputStateContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K7 ["Util"]
       51 GETTABLEKS                       R8 R8 K17 ["Persistence"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Parent"]
       58 GETTABLEKS                       R9 R9 K18 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Parent"]
       65 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K14 ["Components"]
       72 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K20 ["SessionIdContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K7 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["TestIds"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K14 ["Components"]
       88 GETTABLEKS                       R13 R13 K15 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K22 ["ThreadIdContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K14 ["Components"]
       97 GETTABLEKS                       R14 R14 K23 ["ThreadsWindow"]
       99 GETTABLEKS                       R14 R14 K24 ["ThreadOptionsMenu"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K25 ["Resources"]
      106 GETTABLEKS                       R15 R15 K26 ["Localization"]
      108 GETTABLEKS                       R15 R15 K27 ["Translator"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K28 ["Types"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K7 ["Util"]
      120 GETTABLEKS                       R17 R17 K29 ["createNewThread"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      127 GETTABLEKS                       R18 R18 K31 ["useConversation"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K32 ["useEditThread"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K33 ["useScrollEdge"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K30 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K34 ["useSwitchThread"]
      150 CALL                             R20 1 1
      151 GETTABLEKS                       R21 R5 K35 ["Divider"]
      153 GETTABLEKS                       R22 R5 K36 ["Icon"]
      155 GETTABLEKS                       R23 R5 K37 ["IconButton"]
      157 GETTABLEKS                       R24 R5 K38 ["Loading"]
      159 GETTABLEKS                       R25 R5 K39 ["ScrollView"]
      161 GETTABLEKS                       R26 R5 K40 ["StatusIndicator"]
      163 GETTABLEKS                       R27 R5 K41 ["Text"]
      165 GETTABLEKS                       R28 R5 K42 ["TextInput"]
      167 GETTABLEKS                       R29 R5 K43 ["View"]
      169 GETTABLEKS                       R30 R9 K44 ["createNextOrder"]
      171 GETTABLEKS                       R31 R8 K45 ["createElement"]
      173 GETTABLEKS                       R32 R6 K46 ["InputDisabledReasons"]
      175 DUPCLOSURE                       R33 K47 [PROTO_3]
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R2
      179 DUPCLOSURE                       R34 K48 [PROTO_9]
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R1
      182 DUPCLOSURE                       R35 K49 [PROTO_17]
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R34
      190 CAPTURE                          VAL R30
      191 CAPTURE                          VAL R31
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R27
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R23
      200 DUPCLOSURE                       R36 K50 [PROTO_18]
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R31
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R27
      205 DUPCLOSURE                       R37 K51 [PROTO_19]
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R31
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R21
      210 DUPCLOSURE                       R38 K52 [PROTO_27]
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R30
      222 CAPTURE                          VAL R31
      223 CAPTURE                          VAL R35
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R33
      226 CAPTURE                          VAL R37
      227 CAPTURE                          VAL R36
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R25
      237 RETURN                           R38 1
