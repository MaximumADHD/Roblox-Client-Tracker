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
       39 JUMPIF                           R8 ; [+29]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K6 ["getThreadMetadata"]
       43 GETTABLEKS                       R9 R7 K7 ["threadId"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K8 ["isNewThread"]
       48 JUMPIF                           R9 ; [+20]
       49 GETTABLEKS                       R9 R7 K9 ["isPinned"]
       51 JUMPIFNOT                        R9 ; [+9]
       52 GETTABLEKS                       R10 R0 K1 ["threads"]
       54 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       56 MOVE                             R11 R7
       57 GETIMPORT                        R9 K12 [table.insert]
       59 CALL                             R9 2 0
       60 JUMP                             ; [+8]
       61 GETTABLEKS                       R10 R1 K1 ["threads"]
       63 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       65 MOVE                             R11 R7
       66 GETIMPORT                        R9 K12 [table.insert]
       68 CALL                             R9 2 0
       69 FORGLOOP                         R3 2 ; [-33]
       71 NEWTABLE                         R3 0 2
       73 MOVE                             R6 R0
       74 MOVE                             R7 R1
       75 SETLIST                          R3 R6 2 [1]
       77 LOADNIL                          R4
       78 LOADNIL                          R5
       79 FORGPREP                         R3
       80 GETIMPORT                        R8 K14 [table.sort]
       82 GETTABLEKS                       R9 R7 K1 ["threads"]
       84 DUPCLOSURE                       R10 K15 [PROTO_1]
       85 CALL                             R8 2 0
       86 FORGLOOP                         R3 2 ; [-7]
       88 NEWTABLE                         R3 0 2
       90 MOVE                             R4 R0
       91 MOVE                             R5 R1
       92 SETLIST                          R3 R4 2 [1]
       94 RETURN                           R3 1

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
        3 JUMPIFNOTEQ                      R1 R2 ; [+7]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K2 [{"cancelTransform"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K1 ["cancelTransform"]
       10 RETURN                           R2 2
       11 GETUPVAL                         R2 0
       12 SETTABLEKS                       R2 R0 K0 ["title"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["get"]
       17 CALL                             R2 0 1
       18 GETTABLEKS                       R3 R2 K4 ["EventLogger"]
       20 GETTABLEKS                       R3 R3 K5 ["logThreadRenamed"]
       22 DUPTABLE                         R4 K11 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
       23 GETUPVAL                         R5 2
       24 SETTABLEKS                       R5 R4 K6 ["conversationId"]
       26 GETUPVAL                         R5 3
       27 SETTABLEKS                       R5 R4 K7 ["threadId"]
       29 SETTABLEKS                       R1 R4 K8 ["oldTitle"]
       31 GETUPVAL                         R5 0
       32 SETTABLEKS                       R5 R4 K9 ["newTitle"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K12 ["ThreadNamingSource"]
       37 GETTABLEKS                       R5 R5 K13 ["ManualRename"]
       39 SETTABLEKS                       R5 R4 K10 ["namingSource"]
       41 CALL                             R3 1 0
       42 RETURN                           R0 1

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
      128 SETTABLEKS                       R24 R23 K25 ["row padding-x-medium padding-y-xsmall radius-small gap-medium align-y-center"]
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
      191 JUMPIFNOT                        R8 ; [+55]
      192 GETUPVAL                         R24 8
      193 GETUPVAL                         R25 11
      194 DUPTABLE                         R26 K46 [{"text", "label", "width", "size", "hasError", "onChanged", "onReturnPressed", "ref", "LayoutOrder", "testId"}]
      195 GETTABLEKS                       R27 R16 K47 ["renameText"]
      197 SETTABLEKS                       R27 R26 K12 ["text"]
      199 LOADK                            R27 K48 [""]
      200 SETTABLEKS                       R27 R26 K40 ["label"]
      202 GETIMPORT                        R27 K50 [UDim.new]
      204 LOADN                            R28 1
      205 LOADN                            R29 0
      206 CALL                             R27 2 1
      207 SETTABLEKS                       R27 R26 K41 ["width"]
      209 GETUPVAL                         R27 2
      210 GETTABLEKS                       R27 R27 K15 ["Enums"]
      212 GETTABLEKS                       R27 R27 K51 ["InputSize"]
      214 GETTABLEKS                       R27 R27 K52 ["XSmall"]
      216 SETTABLEKS                       R27 R26 K36 ["size"]
      218 GETTABLEKS                       R27 R16 K42 ["hasError"]
      220 SETTABLEKS                       R27 R26 K42 ["hasError"]
      222 GETTABLEKS                       R27 R16 K53 ["setRenameText"]
      224 SETTABLEKS                       R27 R26 K43 ["onChanged"]
      226 GETTABLEKS                       R27 R16 K44 ["onReturnPressed"]
      228 SETTABLEKS                       R27 R26 K44 ["onReturnPressed"]
      230 GETTABLEKS                       R27 R16 K54 ["inputRef"]
      232 SETTABLEKS                       R27 R26 K45 ["ref"]
      234 MOVE                             R27 R19
      235 CALL                             R27 0 1
      236 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      238 GETUPVAL                         R27 12
      239 GETTABLEKS                       R27 R27 K55 ["ThreadEntry"]
      241 GETTABLEKS                       R27 R27 K56 ["RenameInput"]
      243 SETTABLEKS                       R27 R26 K23 ["testId"]
      245 CALL                             R24 2 1
      246 JUMP                             ; [+15]
      247 GETUPVAL                         R24 8
      248 GETUPVAL                         R25 13
      249 DUPTABLE                         R26 K57 [{"tag", "Text", "LayoutOrder"}]
      250 LOADK                            R27 K58 ["fill auto-y text-align-x-left text-truncate-split text-body-small content-emphasis"]
      251 SETTABLEKS                       R27 R26 K18 ["tag"]
      253 GETTABLEKS                       R27 R0 K12 ["text"]
      255 SETTABLEKS                       R27 R26 K31 ["Text"]
      257 MOVE                             R27 R19
      258 CALL                             R27 0 1
      259 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K31 ["Text"]
      264 GETUPVAL                         R24 8
      265 GETUPVAL                         R25 9
      266 DUPTABLE                         R26 K59 [{"tag", "LayoutOrder"}]
      267 LOADK                            R27 K60 ["size-400-400 align-x-center align-y-center"]
      268 SETTABLEKS                       R27 R26 K18 ["tag"]
      270 MOVE                             R27 R19
      271 CALL                             R27 0 1
      272 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      274 DUPTABLE                         R27 K63 [{"Status", "ThreadOptionsMenu"}]
      275 NOT                              R28 R18
      276 JUMPIFNOT                        R28 ; [+14]
      277 NOT                              R28 R8
      278 JUMPIFNOT                        R28 ; [+12]
      279 MOVE                             R28 R17
      280 JUMPIFNOT                        R28 ; [+10]
      281 GETUPVAL                         R28 8
      282 GETUPVAL                         R29 14
      283 DUPTABLE                         R30 K65 [{"variant", "LayoutOrder"}]
      284 SETTABLEKS                       R17 R30 K64 ["variant"]
      286 MOVE                             R31 R19
      287 CALL                             R31 0 1
      288 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      290 CALL                             R28 2 1
      291 SETTABLEKS                       R28 R27 K61 ["Status"]
      293 MOVE                             R28 R14
      294 JUMPIFNOT                        R28 ; [+74]
      295 GETUPVAL                         R28 8
      296 GETUPVAL                         R29 15
      297 DUPTABLE                         R30 K70 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
      298 SETTABLEKS                       R14 R30 K6 ["thread"]
      300 GETTABLEKS                       R31 R0 K66 ["isGenerating"]
      302 SETTABLEKS                       R31 R30 K66 ["isGenerating"]
      304 SETTABLEKS                       R6 R30 K67 ["isOpen"]
      306 SETTABLEKS                       R7 R30 K68 ["setIsOpen"]
      308 SETTABLEKS                       R12 R30 K69 ["onRenameRequested"]
      310 MOVE                             R31 R19
      311 CALL                             R31 0 1
      312 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      314 DUPTABLE                         R31 K72 [{"OptionsButton"}]
      315 MOVE                             R32 R18
      316 JUMPIFNOT                        R32 ; [+49]
      317 GETUPVAL                         R32 8
      318 GETUPVAL                         R33 16
      319 DUPTABLE                         R34 K75 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      320 GETUPVAL                         R35 2
      321 GETTABLEKS                       R35 R35 K15 ["Enums"]
      323 GETTABLEKS                       R35 R35 K76 ["IconName"]
      325 GETTABLEKS                       R35 R35 K77 ["ThreeDotsVertical"]
      327 SETTABLEKS                       R35 R34 K73 ["icon"]
      329 GETUPVAL                         R35 2
      330 GETTABLEKS                       R35 R35 K15 ["Enums"]
      332 GETTABLEKS                       R35 R35 K51 ["InputSize"]
      334 GETTABLEKS                       R35 R35 K52 ["XSmall"]
      336 SETTABLEKS                       R35 R34 K36 ["size"]
      338 GETUPVAL                         R35 2
      339 GETTABLEKS                       R35 R35 K15 ["Enums"]
      341 GETTABLEKS                       R35 R35 K78 ["ButtonVariant"]
      343 GETTABLEKS                       R35 R35 K79 ["Utility"]
      345 SETTABLEKS                       R35 R34 K64 ["variant"]
      347 LOADB                            R35 1
      348 SETTABLEKS                       R35 R34 K74 ["isCircular"]
      350 NEWCLOSURE                       R35 P4
      351 CAPTURE                          VAL R7
      352 SETTABLEKS                       R35 R34 K20 ["onActivated"]
      354 MOVE                             R35 R19
      355 CALL                             R35 0 1
      356 SETTABLEKS                       R35 R34 K22 ["LayoutOrder"]
      358 GETUPVAL                         R35 12
      359 GETTABLEKS                       R35 R35 K55 ["ThreadEntry"]
      361 GETTABLEKS                       R35 R35 K71 ["OptionsButton"]
      363 SETTABLEKS                       R35 R34 K23 ["testId"]
      365 CALL                             R32 2 1
      366 SETTABLEKS                       R32 R31 K71 ["OptionsButton"]
      368 CALL                             R28 3 1
      369 SETTABLEKS                       R28 R27 K62 ["ThreadOptionsMenu"]
      371 CALL                             R24 3 1
      372 SETTABLEKS                       R24 R23 K32 ["IndicatorArea"]
      374 CALL                             R20 3 -1
      375 RETURN                           R20 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K4 [{"tag", "Size", "LayoutOrder", "testId"}]
        5 LOADK                            R5 K5 ["row auto-y padding-x-medium padding-y-xsmall radius-small gap-medium align-y-center"]
        6 SETTABLEKS                       R5 R4 K0 ["tag"]
        8 GETIMPORT                        R5 K8 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 LOADN                            R9 24
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K1 ["Size"]
       17 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       19 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       21 GETTABLEKS                       R5 R0 K3 ["testId"]
       23 SETTABLEKS                       R5 R4 K3 ["testId"]
       25 DUPTABLE                         R5 K10 [{"Text"}]
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 3
       28 DUPTABLE                         R8 K11 [{"tag", "Text", "LayoutOrder"}]
       29 LOADK                            R9 K12 ["fill auto-y text-align-x-left text-truncate-split text-caption-small content-default"]
       30 SETTABLEKS                       R9 R8 K0 ["tag"]
       32 GETTABLEKS                       R9 R0 K13 ["text"]
       34 SETTABLEKS                       R9 R8 K9 ["Text"]
       36 MOVE                             R9 R1
       37 CALL                             R9 0 1
       38 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K9 ["Text"]
       43 CALL                             R2 3 -1
       44 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-full-0 auto-y padding-y-xsmall align-x-center"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K7 [{"Wrapper"}]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K9 [{"tag", "Size"}]
       20 LOADK                            R9 K10 ["auto-y"]
       21 SETTABLEKS                       R9 R8 K2 ["tag"]
       23 GETIMPORT                        R9 K13 [UDim2.new]
       25 LOADN                            R10 1
       26 LOADN                            R12 2
       27 GETTABLEKS                       R13 R1 K14 ["Padding"]
       29 GETTABLEKS                       R13 R13 K15 ["XSmall"]
       31 MUL                              R11 R12 R13
       32 LOADN                            R12 0
       33 LOADN                            R13 0
       34 CALL                             R9 4 1
       35 SETTABLEKS                       R9 R8 K8 ["Size"]
       37 DUPTABLE                         R9 K17 [{"Divider"}]
       38 GETUPVAL                         R10 1
       39 GETUPVAL                         R11 3
       40 CALL                             R10 1 1
       41 SETTABLEKS                       R10 R9 K16 ["Divider"]
       43 CALL                             R6 3 1
       44 SETTABLEKS                       R6 R5 K6 ["Wrapper"]
       46 CALL                             R2 3 -1
       47 RETURN                           R2 -1

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
       81 DUPTABLE                         R17 K23 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       82 GETTABLEKS                       R18 R10 K24 ["NewThread"]
       84 SETTABLEKS                       R18 R17 K17 ["text"]
       86 GETUPVAL                         R18 5
       87 GETTABLEKS                       R18 R18 K25 ["Enums"]
       89 GETTABLEKS                       R18 R18 K26 ["IconName"]
       91 GETTABLEKS                       R18 R18 K27 ["PencilSquare"]
       93 SETTABLEKS                       R18 R17 K18 ["leadingIcon"]
       95 LOADB                            R18 0
       96 SETTABLEKS                       R18 R17 K19 ["isSelected"]
       98 SETTABLEKS                       R9 R17 K20 ["onActivated"]
      100 MOVE                             R18 R13
      101 CALL                             R18 0 1
      102 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      104 GETUPVAL                         R18 13
      105 GETTABLEKS                       R18 R18 K28 ["ThreadsMenu"]
      107 GETTABLEKS                       R18 R18 K29 ["AddThreadButton"]
      109 SETTABLEKS                       R18 R17 K22 ["testId"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K15 ["ThreadMenuButton_NewThread"]
      114 GETUPVAL                         R15 14
      115 MOVE                             R16 R1
      116 CALL                             R15 1 1
      117 MOVE                             R16 R15
      118 LOADNIL                          R17
      119 LOADNIL                          R18
      120 FORGPREP                         R16
      121 GETTABLEKS                       R23 R20 K30 ["threads"]
      123 LENGTH                           R22 R23
      124 LOADN                            R23 0
      125 JUMPIFLT                         R23 R22 ; [+2]
      127 LOADB                            R21 0 +1
      128 LOADB                            R21 1
      129 JUMPIFNOT                        R21 ; [+107]
      130 LOADK                            R23 K31 ["ThreadMenuDivider_%*"]
      131 GETTABLEKS                       R25 R20 K32 ["title"]
      133 NAMECALL                         R23 R23 K33 ["format"]
      135 CALL                             R23 2 1
      136 MOVE                             R22 R23
      137 GETUPVAL                         R23 11
      138 GETUPVAL                         R24 15
      139 DUPTABLE                         R25 K34 [{"LayoutOrder"}]
      140 MOVE                             R26 R13
      141 CALL                             R26 0 1
      142 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      144 CALL                             R23 2 1
      145 SETTABLE                         R23 R14 R22
      146 LOADK                            R23 K35 ["ThreadMenuHeader_%*"]
      147 GETTABLEKS                       R25 R20 K32 ["title"]
      149 NAMECALL                         R23 R23 K33 ["format"]
      151 CALL                             R23 2 1
      152 MOVE                             R22 R23
      153 GETUPVAL                         R23 11
      154 GETUPVAL                         R24 16
      155 DUPTABLE                         R25 K37 [{"isHeader", "text", "LayoutOrder"}]
      156 LOADB                            R26 1
      157 SETTABLEKS                       R26 R25 K36 ["isHeader"]
      159 GETTABLEKS                       R26 R20 K32 ["title"]
      161 SETTABLEKS                       R26 R25 K17 ["text"]
      163 MOVE                             R26 R13
      164 CALL                             R26 0 1
      165 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      167 CALL                             R23 2 1
      168 SETTABLE                         R23 R14 R22
      169 GETTABLEKS                       R22 R20 K30 ["threads"]
      171 LOADNIL                          R23
      172 LOADNIL                          R24
      173 FORGPREP                         R22
      174 GETTABLEKS                       R27 R26 K2 ["threadId"]
      176 JUMPIFEQ                         R27 R3 ; [+2]
      178 LOADB                            R28 0 +1
      179 LOADB                            R28 1
      180 GETTABLE                         R29 R5 R27
      181 JUMPIFNOT                        R29 ; [+3]
      182 GETTABLEKS                       R30 R29 K38 ["reasonDisabled"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R30
      186 MOVE                             R31 R30
      187 JUMPIFNOT                        R31 ; [+9]
      188 GETTABLEKS                       R32 R30 K38 ["reasonDisabled"]
      190 GETUPVAL                         R33 17
      191 GETTABLEKS                       R33 R33 K39 ["Generation"]
      193 JUMPIFEQ                         R32 R33 ; [+2]
      195 LOADB                            R31 0 +1
      196 LOADB                            R31 1
      197 LOADK                            R33 K40 ["ThreadMenuItem_%*"]
      198 MOVE                             R35 R27
      199 NAMECALL                         R33 R33 K33 ["format"]
      201 CALL                             R33 2 1
      202 MOVE                             R32 R33
      203 GETUPVAL                         R33 11
      204 GETUPVAL                         R34 12
      205 DUPTABLE                         R35 K43 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      206 GETTABLEKS                       R36 R26 K32 ["title"]
      208 SETTABLEKS                       R36 R35 K17 ["text"]
      210 SETTABLEKS                       R26 R35 K41 ["thread"]
      212 SETTABLEKS                       R28 R35 K19 ["isSelected"]
      214 SETTABLEKS                       R31 R35 K42 ["isGenerating"]
      216 NEWCLOSURE                       R36 P3
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R27
      219 CAPTURE                          UPVAL U8
      220 SETTABLEKS                       R36 R35 K20 ["onActivated"]
      222 MOVE                             R36 R13
      223 CALL                             R36 0 1
      224 SETTABLEKS                       R36 R35 K21 ["LayoutOrder"]
      226 GETUPVAL                         R36 13
      227 GETTABLEKS                       R36 R36 K28 ["ThreadsMenu"]
      229 GETTABLEKS                       R36 R36 K44 ["ExistingThreadButton"]
      231 SETTABLEKS                       R36 R35 K22 ["testId"]
      233 CALL                             R33 2 1
      234 SETTABLE                         R33 R14 R32
      235 FORGLOOP                         R22 2 ; [-62]
      237 FORGLOOP                         R16 2 ; [-117]
      239 JUMPIFNOT                        R1 ; [+3]
      240 GETTABLEKS                       R16 R1 K45 ["threadPageState"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R16
      244 JUMPIFNOT                        R1 ; [+3]
      245 GETTABLEKS                       R17 R1 K46 ["threadLoadState"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R17
      249 LOADB                            R18 0
      250 GETUPVAL                         R19 8
      251 GETTABLEKS                       R19 R19 K47 ["PersistenceLoadStates"]
      253 GETTABLEKS                       R19 R19 K48 ["Loading"]
      255 JUMPIFEQ                         R17 R19 ; [+10]
      257 LOADB                            R18 0
      258 JUMPIFEQKNIL                     R16 ; [+7]
      260 GETTABLEKS                       R19 R16 K49 ["nextCursor"]
      262 JUMPIFNOTEQKNIL                  R19 ; [+2]
      264 LOADB                            R18 0 +1
      265 LOADB                            R18 1
      266 GETUPVAL                         R19 1
      267 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      269 NEWCLOSURE                       R20 P4
      270 CAPTURE                          UPVAL U18
      271 CAPTURE                          VAL R16
      272 NEWTABLE                         R21 0 1
      274 MOVE                             R22 R16
      275 SETLIST                          R21 R22 1 [1]
      277 CALL                             R19 2 1
      278 GETUPVAL                         R20 19
      279 DUPTABLE                         R21 K52 [{"triggerDistance", "onScrolledToBottom"}]
      280 GETUPVAL                         R22 20
      281 GETTABLEKS                       R22 R22 K53 ["THREADS_LOAD_TRIGGER_DISTANCE"]
      283 SETTABLEKS                       R22 R21 K50 ["triggerDistance"]
      285 JUMPIFNOT                        R18 ; [+2]
      286 MOVE                             R22 R19
      287 JUMP                             ; [+1]
      288 LOADNIL                          R22
      289 SETTABLEKS                       R22 R21 K51 ["onScrolledToBottom"]
      291 CALL                             R20 1 1
      292 GETUPVAL                         R21 8
      293 GETTABLEKS                       R21 R21 K47 ["PersistenceLoadStates"]
      295 GETTABLEKS                       R21 R21 K48 ["Loading"]
      297 JUMPIFNOTEQ                      R17 R21 ; [+31]
      299 GETUPVAL                         R21 11
      300 GETUPVAL                         R22 21
      301 DUPTABLE                         R23 K55 [{"tag", "LayoutOrder"}]
      302 LOADK                            R24 K56 ["row size-full-800 gap-small align-x-center align-y-center"]
      303 SETTABLEKS                       R24 R23 K54 ["tag"]
      305 MOVE                             R24 R13
      306 CALL                             R24 0 1
      307 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      309 DUPTABLE                         R24 K57 [{"Loading"}]
      310 GETUPVAL                         R25 11
      311 GETUPVAL                         R26 22
      312 DUPTABLE                         R27 K59 [{"size"}]
      313 GETUPVAL                         R28 5
      314 GETTABLEKS                       R28 R28 K25 ["Enums"]
      316 GETTABLEKS                       R28 R28 K60 ["IconSize"]
      318 GETTABLEKS                       R28 R28 K61 ["Small"]
      320 SETTABLEKS                       R28 R27 K58 ["size"]
      322 CALL                             R25 2 1
      323 SETTABLEKS                       R25 R24 K48 ["Loading"]
      325 CALL                             R21 3 1
      326 SETTABLEKS                       R21 R14 K62 ["ThreadPersistenceInfo"]
      328 JUMP                             ; [+74]
      329 GETUPVAL                         R21 8
      330 GETTABLEKS                       R21 R21 K47 ["PersistenceLoadStates"]
      332 GETTABLEKS                       R21 R21 K63 ["Error"]
      334 JUMPIFNOTEQ                      R17 R21 ; [+68]
      336 GETUPVAL                         R21 11
      337 GETUPVAL                         R22 21
      338 DUPTABLE                         R23 K55 [{"tag", "LayoutOrder"}]
      339 LOADK                            R24 K56 ["row size-full-800 gap-small align-x-center align-y-center"]
      340 SETTABLEKS                       R24 R23 K54 ["tag"]
      342 MOVE                             R24 R13
      343 CALL                             R24 0 1
      344 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      346 DUPTABLE                         R24 K66 [{"Icon", "Text"}]
      347 GETUPVAL                         R25 11
      348 GETUPVAL                         R26 23
      349 DUPTABLE                         R27 K69 [{"name", "size", "style", "LayoutOrder"}]
      350 GETUPVAL                         R28 5
      351 GETTABLEKS                       R28 R28 K25 ["Enums"]
      353 GETTABLEKS                       R28 R28 K26 ["IconName"]
      355 GETTABLEKS                       R28 R28 K70 ["TriangleExclamation"]
      357 SETTABLEKS                       R28 R27 K67 ["name"]
      359 GETUPVAL                         R28 5
      360 GETTABLEKS                       R28 R28 K25 ["Enums"]
      362 GETTABLEKS                       R28 R28 K60 ["IconSize"]
      364 GETTABLEKS                       R28 R28 K71 ["Medium"]
      366 SETTABLEKS                       R28 R27 K58 ["size"]
      368 GETTABLEKS                       R28 R7 K72 ["Color"]
      370 GETTABLEKS                       R28 R28 K73 ["System"]
      372 GETTABLEKS                       R28 R28 K74 ["Warning"]
      374 SETTABLEKS                       R28 R27 K68 ["style"]
      376 MOVE                             R28 R13
      377 CALL                             R28 0 1
      378 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      380 CALL                             R25 2 1
      381 SETTABLEKS                       R25 R24 K64 ["Icon"]
      383 GETUPVAL                         R25 11
      384 GETUPVAL                         R26 24
      385 DUPTABLE                         R27 K75 [{"tag", "Text", "LayoutOrder"}]
      386 LOADK                            R28 K76 ["size-0-full auto-x content-system-warning text-label-medium text-align-x-center text-align-y-center text-truncate-split"]
      387 SETTABLEKS                       R28 R27 K54 ["tag"]
      389 GETTABLEKS                       R28 R10 K77 ["ThreadsLoadError"]
      391 SETTABLEKS                       R28 R27 K65 ["Text"]
      393 MOVE                             R28 R13
      394 CALL                             R28 0 1
      395 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      397 CALL                             R25 2 1
      398 SETTABLEKS                       R25 R24 K65 ["Text"]
      400 CALL                             R21 3 1
      401 SETTABLEKS                       R21 R14 K62 ["ThreadPersistenceInfo"]
      403 GETUPVAL                         R21 1
      404 GETTABLEKS                       R21 R21 K78 ["useRef"]
      406 LOADNIL                          R22
      407 CALL                             R21 1 1
      408 GETUPVAL                         R22 11
      409 LOADK                            R23 K79 ["UIListLayout"]
      410 NEWTABLE                         R24 4 0
      412 GETIMPORT                        R25 K83 [Enum.FillDirection.Vertical]
      414 SETTABLEKS                       R25 R24 K81 ["FillDirection"]
      416 GETIMPORT                        R25 K85 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R25 R24 K84 ["SortOrder"]
      420 GETIMPORT                        R25 K87 [UDim.new]
      422 LOADN                            R26 0
      423 GETTABLEKS                       R27 R7 K88 ["Gap"]
      425 GETTABLEKS                       R27 R27 K89 ["XXSmall"]
      427 CALL                             R25 2 1
      428 SETTABLEKS                       R25 R24 K90 ["Padding"]
      430 GETUPVAL                         R25 1
      431 GETTABLEKS                       R25 R25 K91 ["Change"]
      433 GETTABLEKS                       R25 R25 K92 ["AbsoluteContentSize"]
      435 GETUPVAL                         R26 1
      436 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      438 NEWCLOSURE                       R27 P5
      439 CAPTURE                          VAL R12
      440 CAPTURE                          VAL R21
      441 CAPTURE                          VAL R20
      442 NEWTABLE                         R28 0 2
      444 MOVE                             R29 R12
      445 GETTABLEKS                       R30 R20 K93 ["checkForEdge"]
      447 SETLIST                          R28 R29 2 [1]
      449 CALL                             R26 2 1
      450 SETTABLE                         R26 R24 R25
      451 CALL                             R22 2 1
      452 SETTABLEKS                       R22 R14 K94 ["ListLayout"]
      454 GETUPVAL                         R22 11
      455 GETUPVAL                         R23 21
      456 DUPTABLE                         R24 K95 [{"tag", "testId"}]
      457 LOADK                            R25 K96 ["size-full-0 auto-y padding-x-small"]
      458 SETTABLEKS                       R25 R24 K54 ["tag"]
      460 GETUPVAL                         R25 13
      461 GETTABLEKS                       R25 R25 K28 ["ThreadsMenu"]
      463 GETTABLEKS                       R25 R25 K97 ["Container"]
      465 SETTABLEKS                       R25 R24 K22 ["testId"]
      467 DUPTABLE                         R25 K99 [{"ScrollView"}]
      468 GETUPVAL                         R26 11
      469 GETUPVAL                         R27 25
      470 DUPTABLE                         R28 K105 [{"tag", "scroll", "Size", "scrollingFrameRef", "onCanvasPositionChanged", "onAbsoluteWindowSizeChanged"}]
      471 LOADK                            R29 K106 ["col bg-surface-200 radius-medium stroke-standard padding-xsmall gap-xxsmall stroke-default"]
      472 SETTABLEKS                       R29 R28 K54 ["tag"]
      474 DUPTABLE                         R29 K110 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      475 GETIMPORT                        R30 K113 [Enum.AutomaticSize.Y]
      477 SETTABLEKS                       R30 R29 K107 ["AutomaticCanvasSize"]
      479 GETIMPORT                        R30 K116 [UDim2.fromScale]
      481 LOADN                            R31 0
      482 LOADN                            R32 0
      483 CALL                             R30 2 1
      484 SETTABLEKS                       R30 R29 K108 ["CanvasSize"]
      486 GETIMPORT                        R30 K117 [Enum.ScrollingDirection.Y]
      488 SETTABLEKS                       R30 R29 K109 ["ScrollingDirection"]
      490 SETTABLEKS                       R29 R28 K100 ["scroll"]
      492 NEWCLOSURE                       R31 P6
      493 CAPTURE                          VAL R7
      494 NAMECALL                         R29 R11 K118 ["map"]
      496 CALL                             R29 2 1
      497 SETTABLEKS                       R29 R28 K101 ["Size"]
      499 SETTABLEKS                       R21 R28 K102 ["scrollingFrameRef"]
      501 GETTABLEKS                       R29 R20 K93 ["checkForEdge"]
      503 SETTABLEKS                       R29 R28 K103 ["onCanvasPositionChanged"]
      505 GETTABLEKS                       R29 R20 K93 ["checkForEdge"]
      507 SETTABLEKS                       R29 R28 K104 ["onAbsoluteWindowSizeChanged"]
      509 MOVE                             R29 R14
      510 CALL                             R26 3 1
      511 SETTABLEKS                       R26 R25 K98 ["ScrollView"]
      513 CALL                             R22 3 -1
      514 RETURN                           R22 -1

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
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K35 ["Flags"]
      155 GETTABLEKS                       R22 R22 K36 ["FFlagAssistantMultipleChatPersistence"]
      157 CALL                             R21 1 1
      158 GETTABLEKS                       R22 R5 K37 ["Divider"]
      160 GETTABLEKS                       R23 R5 K38 ["Icon"]
      162 GETTABLEKS                       R24 R5 K39 ["IconButton"]
      164 GETTABLEKS                       R25 R5 K40 ["Loading"]
      166 GETTABLEKS                       R26 R5 K41 ["ScrollView"]
      168 GETTABLEKS                       R27 R5 K42 ["StatusIndicator"]
      170 GETTABLEKS                       R28 R5 K43 ["Text"]
      172 GETTABLEKS                       R29 R5 K44 ["TextInput"]
      174 GETTABLEKS                       R30 R5 K45 ["View"]
      176 GETTABLEKS                       R31 R9 K46 ["createNextOrder"]
      178 GETTABLEKS                       R32 R8 K47 ["createElement"]
      180 GETTABLEKS                       R33 R6 K48 ["InputDisabledReasons"]
      182 DUPCLOSURE                       R34 K49 [PROTO_3]
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R2
      187 DUPCLOSURE                       R35 K50 [PROTO_9]
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R1
      190 DUPCLOSURE                       R36 K51 [PROTO_17]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R35
      198 CAPTURE                          VAL R31
      199 CAPTURE                          VAL R32
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R23
      202 CAPTURE                          VAL R29
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R27
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R24
      208 DUPCLOSURE                       R37 K52 [PROTO_18]
      209 CAPTURE                          VAL R31
      210 CAPTURE                          VAL R32
      211 CAPTURE                          VAL R30
      212 CAPTURE                          VAL R28
      213 DUPCLOSURE                       R38 K53 [PROTO_19]
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R22
      218 DUPCLOSURE                       R39 K54 [PROTO_27]
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R32
      231 CAPTURE                          VAL R36
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R34
      234 CAPTURE                          VAL R38
      235 CAPTURE                          VAL R37
      236 CAPTURE                          VAL R33
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R25
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R26
      245 RETURN                           R39 1
