PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Drafts"]
        5 GETIMPORT                        R2 K3 [next]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["GetCurrentSelection"]
       18 NAMECALL                         R2 R2 K5 ["Invoke"]
       20 CALL                             R2 1 1
       21 LENGTH                           R3 R2
       22 JUMPIFNOTEQKN                    R3 K6 [0] ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K7 ["commitChanges"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K4 [pairs]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R1 K5 ["OpenScript"]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-5]
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["ShowDiffsAgainstServer"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["DraftsCommitted"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K4 ["CommitEdits"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["UpdateToLatestVersion"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["RestoreScripts"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"draftsPendingDiscard"}]
        2 SETTABLEKS                       R0 R3 K0 ["draftsPendingDiscard"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["DraftService"]
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["state"]
       14 GETTABLEKS                       R3 R3 K4 ["draftsPendingDiscard"]
       16 NAMECALL                         R1 R1 K5 ["DiscardEdits"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 DUPTABLE                         R3 K6 [{"draftsPendingDiscard"}]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["None"]
       24 SETTABLEKS                       R4 R3 K4 ["draftsPendingDiscard"]
       26 NAMECALL                         R1 R1 K8 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Drafts"]
        5 GETTABLE                         R1 R2 R0
        6 LOADB                            R2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["Committed"]
       10 GETTABLE                         R3 R1 R4
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["Committed"]
       14 JUMPIFEQ                         R3 R4 ; [+10]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["Deleted"]
       19 GETTABLE                         R2 R1 R3
       20 JUMPIF                           R2 ; [+4]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K4 ["Outdated"]
       24 GETTABLE                         R2 R1 R3
       25 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsEdit"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["state"]
        8 GETTABLEKS                       R0 R0 K2 ["draftsHasActiveSelection"]
       10 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openScripts"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETIMPORT                        R1 K1 [next]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+7]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K4 [{["draftsHasActiveSelection"] = False}]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 DUPTABLE                         R3 K7 [{["draftsHasActiveSelection"] = True}]
       15 NAMECALL                         R1 R1 K5 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openScripts"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["diffChanges"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateSource"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitChanges"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["restoreScripts"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptDiscardEdits"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 LOADB                            R2 1
        6 LOADB                            R3 1
        7 LOADB                            R4 1
        8 LOADB                            R5 1
        9 LOADB                            R6 1
       10 LOADB                            R7 1
       11 LOADB                            R8 1
       12 LOADB                            R9 1
       13 GETIMPORT                        R10 K3 [ipairs]
       15 MOVE                             R11 R0
       16 CALL                             R10 1 3
       17 FORGPREP_INEXT                   R10
       18 GETUPVAL                         R16 0
       19 GETTABLEKS                       R16 R16 K0 ["props"]
       21 GETTABLEKS                       R16 R16 K4 ["Drafts"]
       23 GETTABLE                         R15 R16 R14
       24 GETUPVAL                         R17 1
       25 GETTABLEKS                       R17 R17 K5 ["Deleted"]
       27 GETTABLE                         R16 R15 R17
       28 JUMPIFNOT                        R16 ; [+4]
       29 LOADB                            R5 0
       30 LOADB                            R7 0
       31 LOADB                            R2 0
       32 JUMP                             ; [+8]
       33 GETUPVAL                         R17 1
       34 GETTABLEKS                       R17 R17 K6 ["Outdated"]
       36 GETTABLE                         R16 R15 R17
       37 JUMPIFNOT                        R16 ; [+2]
       38 LOADB                            R7 0
       39 JUMP                             ; [+1]
       40 LOADB                            R2 0
       41 GETUPVAL                         R17 1
       42 GETTABLEKS                       R17 R17 K5 ["Deleted"]
       44 GETTABLE                         R16 R15 R17
       45 JUMPIF                           R16 ; [+1]
       46 LOADB                            R3 0
       47 GETUPVAL                         R17 1
       48 GETTABLEKS                       R17 R17 K7 ["Committed"]
       50 GETTABLE                         R16 R15 R17
       51 GETUPVAL                         R17 2
       52 GETTABLEKS                       R17 R17 K8 ["Committing"]
       54 JUMPIFNOTEQ                      R16 R17 ; [+7]
       56 LOADB                            R4 0
       57 LOADB                            R8 0
       58 LOADB                            R6 0
       59 LOADB                            R7 0
       60 LOADB                            R5 0
       61 LOADB                            R9 0
       62 FORGLOOP                         R10 2 [inext] ; [-45]
       64 GETUPVAL                         R10 3
       65 NAMECALL                         R10 R10 K9 ["IsEdit"]
       67 CALL                             R10 1 1
       68 JUMPIF                           R10 ; [+5]
       69 LOADB                            R3 0
       70 LOADB                            R2 0
       71 LOADB                            R7 0
       72 LOADB                            R5 0
       73 LOADB                            R9 0
       74 NEWTABLE                         R10 0 6
       76 DUPTABLE                         R11 K13 [{"Text", "Enabled", "OnItemClicked"}]
       77 LOADK                            R14 K14 ["ContextMenu"]
       78 LOADK                            R15 K15 ["OpenScript"]
       79 NAMECALL                         R12 R1 K16 ["getText"]
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K10 ["Text"]
       84 SETTABLEKS                       R4 R11 K11 ["Enabled"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R12 R11 K12 ["OnItemClicked"]
       91 DUPTABLE                         R12 K13 [{"Text", "Enabled", "OnItemClicked"}]
       92 LOADK                            R15 K14 ["ContextMenu"]
       93 LOADK                            R16 K17 ["ShowDiff"]
       94 NAMECALL                         R13 R1 K16 ["getText"]
       96 CALL                             R13 3 1
       97 SETTABLEKS                       R13 R12 K10 ["Text"]
       99 SETTABLEKS                       R5 R12 K11 ["Enabled"]
      101 NEWCLOSURE                       R13 P1
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R13 R12 K12 ["OnItemClicked"]
      106 MOVE                             R13 R2
      107 JUMPIFNOT                        R13 ; [+15]
      108 DUPTABLE                         R13 K13 [{"Text", "Enabled", "OnItemClicked"}]
      109 LOADK                            R16 K14 ["ContextMenu"]
      110 LOADK                            R17 K18 ["Update"]
      111 NAMECALL                         R14 R1 K16 ["getText"]
      113 CALL                             R14 3 1
      114 SETTABLEKS                       R14 R13 K10 ["Text"]
      116 SETTABLEKS                       R6 R13 K11 ["Enabled"]
      118 NEWCLOSURE                       R14 P2
      119 CAPTURE                          UPVAL U0
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      123 NOT                              R14 R2
      124 JUMPIFNOT                        R14 ; [+15]
      125 DUPTABLE                         R14 K13 [{"Text", "Enabled", "OnItemClicked"}]
      126 LOADK                            R17 K14 ["ContextMenu"]
      127 LOADK                            R18 K19 ["Commit"]
      128 NAMECALL                         R15 R1 K16 ["getText"]
      130 CALL                             R15 3 1
      131 SETTABLEKS                       R15 R14 K10 ["Text"]
      133 SETTABLEKS                       R7 R14 K11 ["Enabled"]
      135 NEWCLOSURE                       R15 P3
      136 CAPTURE                          UPVAL U0
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R15 R14 K12 ["OnItemClicked"]
      140 MOVE                             R15 R3
      141 JUMPIFNOT                        R15 ; [+15]
      142 DUPTABLE                         R15 K13 [{"Text", "Enabled", "OnItemClicked"}]
      143 LOADK                            R18 K14 ["ContextMenu"]
      144 LOADK                            R19 K20 ["Restore"]
      145 NAMECALL                         R16 R1 K16 ["getText"]
      147 CALL                             R16 3 1
      148 SETTABLEKS                       R16 R15 K10 ["Text"]
      150 SETTABLEKS                       R8 R15 K11 ["Enabled"]
      152 NEWCLOSURE                       R16 P4
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R16 R15 K12 ["OnItemClicked"]
      157 DUPTABLE                         R16 K13 [{"Text", "Enabled", "OnItemClicked"}]
      158 LOADK                            R19 K14 ["ContextMenu"]
      159 LOADK                            R20 K21 ["Revert"]
      160 NAMECALL                         R17 R1 K16 ["getText"]
      162 CALL                             R17 3 1
      163 SETTABLEKS                       R17 R16 K10 ["Text"]
      165 SETTABLEKS                       R9 R16 K11 ["Enabled"]
      167 NEWCLOSURE                       R17 P5
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R17 R16 K12 ["OnItemClicked"]
      172 SETLIST                          R10 R11 6 [1]
      174 RETURN                           R10 1

PROTO_19:
        0 LOADNIL                          R1
        1 DUPTABLE                         R4 K2 [{[1] = False}]
        2 NAMECALL                         R2 R0 K3 ["setState"]
        4 CALL                             R2 2 0
        5 GETIMPORT                        R2 K6 [Instance.new]
        7 LOADK                            R3 K7 ["BindableFunction"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R0 K8 ["GetCurrentSelection"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K9 ["commitSelectedScripts"]
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K10 ["openScripts"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          REF R1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K11 ["diffChanges"]
       24 NEWCLOSURE                       R2 P3
       25 CAPTURE                          REF R1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K12 ["commitChanges"]
       29 NEWCLOSURE                       R2 P4
       30 CAPTURE                          REF R1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K13 ["updateSource"]
       34 NEWCLOSURE                       R2 P5
       35 CAPTURE                          REF R1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R2 R0 K14 ["restoreScripts"]
       39 NEWCLOSURE                       R2 P6
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K15 ["promptDiscardEdits"]
       43 NEWCLOSURE                       R2 P7
       44 CAPTURE                          REF R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 SETTABLEKS                       R2 R0 K16 ["discardPromptClosed"]
       49 NEWCLOSURE                       R2 P8
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U2
       53 SETTABLEKS                       R2 R0 K17 ["getIndicatorEnabled"]
       55 NEWCLOSURE                       R2 P9
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R0 K18 ["getCommitButtonEnabled"]
       60 NEWCLOSURE                       R2 P10
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R2 R0 K19 ["onDoubleClicked"]
       64 NEWCLOSURE                       R2 P11
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R2 R0 K20 ["onSelectionChanged"]
       68 NEWCLOSURE                       R2 P12
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 SETTABLEKS                       R2 R0 K21 ["makeMenuActions"]
       75 CLOSEUPVALS                      R1
       76 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 NAMECALL                         R3 R3 K1 ["lower"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K0 ["Name"]
        7 NAMECALL                         R4 R4 K1 ["lower"]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Draft", "RowProps", "IndicatorMargin"}]
        5 SETTABLEKS                       R0 R4 K1 ["Draft"]
        7 SETTABLEKS                       R1 R4 K2 ["RowProps"]
        9 GETUPVAL                         R6 2
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADN                            R5 24
       12 JUMP                             ; [+1]
       13 LOADN                            R5 0
       14 SETTABLEKS                       R5 R4 K3 ["IndicatorMargin"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Drafts"]
       12 GETTABLEKS                       R4 R0 K4 ["state"]
       14 GETTABLEKS                       R4 R4 K5 ["draftsPendingDiscard"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 GETIMPORT                        R7 K7 [next]
       22 MOVE                             R8 R3
       23 CALL                             R7 1 1
       24 JUMPIFEQKNIL                     R7 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 GETTABLEKS                       R7 R0 K8 ["getCommitButtonEnabled"]
       30 CALL                             R7 0 1
       31 LOADB                            R8 0
       32 NEWTABLE                         R9 0 0
       34 GETIMPORT                        R10 K10 [pairs]
       36 MOVE                             R11 R3
       37 CALL                             R10 1 3
       38 FORGPREP_NEXT                    R10
       39 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       41 MOVE                             R16 R9
       42 MOVE                             R17 R13
       43 GETIMPORT                        R15 K13 [table.insert]
       45 CALL                             R15 2 0
       46 JUMPIF                           R8 ; [+5]
       47 GETTABLEKS                       R15 R0 K14 ["getIndicatorEnabled"]
       49 MOVE                             R16 R13
       50 CALL                             R15 1 1
       51 MOVE                             R8 R15
       52 FORGLOOP                         R10 2 ; [-14]
       54 GETIMPORT                        R10 K16 [table.sort]
       56 MOVE                             R11 R9
       57 DUPCLOSURE                       R12 K17 [PROTO_20]
       58 CALL                             R10 2 0
       59 LOADK                            R12 K18 ["Toolbar"]
       60 LOADK                            R13 K19 ["CommitButton"]
       61 NAMECALL                         R10 R1 K20 ["getText"]
       63 CALL                             R10 3 1
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K21 ["createElement"]
       67 LOADK                            R12 K22 ["Frame"]
       68 DUPTABLE                         R13 K26 [{["BackgroundTransparency"] = 1, ["Size"]}]
       69 GETIMPORT                        R14 K29 [UDim2.new]
       71 LOADN                            R15 1
       72 LOADN                            R16 0
       73 LOADN                            R17 1
       74 LOADN                            R18 0
       75 CALL                             R14 4 1
       76 SETTABLEKS                       R14 R13 K25 ["Size"]
       78 DUPTABLE                         R14 K33 [{"UIListLayout", "Toolbar", "Container", "DiscardDialog"}]
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R15 R15 K21 ["createElement"]
       82 LOADK                            R16 K30 ["UIListLayout"]
       83 DUPTABLE                         R17 K36 [{"FillDirection", "SortOrder"}]
       84 GETIMPORT                        R18 K39 [Enum.FillDirection.Vertical]
       86 SETTABLEKS                       R18 R17 K34 ["FillDirection"]
       88 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
       90 SETTABLEKS                       R18 R17 K35 ["SortOrder"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K30 ["UIListLayout"]
       95 GETUPVAL                         R15 0
       96 GETTABLEKS                       R15 R15 K21 ["createElement"]
       98 LOADK                            R16 K22 ["Frame"]
       99 DUPTABLE                         R17 K43 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 0}]
      100 GETIMPORT                        R18 K29 [UDim2.new]
      102 LOADN                            R19 1
      103 LOADN                            R20 0
      104 LOADN                            R21 0
      105 LOADN                            R22 32
      106 CALL                             R18 4 1
      107 SETTABLEKS                       R18 R17 K25 ["Size"]
      109 DUPTABLE                         R18 K45 [{"UIPadding", "UIListLayout", "CommitButton"}]
      110 GETUPVAL                         R19 0
      111 GETTABLEKS                       R19 R19 K21 ["createElement"]
      113 LOADK                            R20 K44 ["UIPadding"]
      114 DUPTABLE                         R21 K50 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      115 GETIMPORT                        R22 K52 [UDim.new]
      117 LOADN                            R23 0
      118 LOADN                            R24 4
      119 CALL                             R22 2 1
      120 SETTABLEKS                       R22 R21 K46 ["PaddingTop"]
      122 GETIMPORT                        R22 K52 [UDim.new]
      124 LOADN                            R23 0
      125 LOADN                            R24 4
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K47 ["PaddingRight"]
      129 GETIMPORT                        R22 K52 [UDim.new]
      131 LOADN                            R23 0
      132 LOADN                            R24 4
      133 CALL                             R22 2 1
      134 SETTABLEKS                       R22 R21 K48 ["PaddingBottom"]
      136 GETIMPORT                        R22 K52 [UDim.new]
      138 LOADN                            R23 0
      139 LOADN                            R24 4
      140 CALL                             R22 2 1
      141 SETTABLEKS                       R22 R21 K49 ["PaddingLeft"]
      143 CALL                             R19 2 1
      144 SETTABLEKS                       R19 R18 K44 ["UIPadding"]
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K21 ["createElement"]
      149 LOADK                            R20 K30 ["UIListLayout"]
      150 DUPTABLE                         R21 K55 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      151 GETIMPORT                        R22 K57 [Enum.FillDirection.Horizontal]
      153 SETTABLEKS                       R22 R21 K34 ["FillDirection"]
      155 GETIMPORT                        R22 K59 [Enum.HorizontalAlignment.Right]
      157 SETTABLEKS                       R22 R21 K53 ["HorizontalAlignment"]
      159 GETIMPORT                        R22 K61 [Enum.VerticalAlignment.Center]
      161 SETTABLEKS                       R22 R21 K54 ["VerticalAlignment"]
      163 CALL                             R19 2 1
      164 SETTABLEKS                       R19 R18 K30 ["UIListLayout"]
      166 GETUPVAL                         R19 0
      167 GETTABLEKS                       R19 R19 K21 ["createElement"]
      169 GETUPVAL                         R20 1
      170 DUPTABLE                         R21 K67 [{["OnClick"], ["Size"], ["StyleModifier"], ["Style"] = "RoundPrimary", ["Text"]}]
      171 GETTABLEKS                       R22 R0 K68 ["commitSelectedScripts"]
      173 SETTABLEKS                       R22 R21 K62 ["OnClick"]
      175 GETIMPORT                        R22 K29 [UDim2.new]
      177 LOADN                            R23 0
      178 GETUPVAL                         R25 2
      179 MOVE                             R26 R10
      180 CALL                             R25 1 1
      181 GETTABLEKS                       R25 R25 K70 ["X"]
      183 ADDK                             R24 R25 K69 [20]
      184 LOADN                            R25 1
      185 LOADN                            R26 0
      186 CALL                             R22 4 1
      187 SETTABLEKS                       R22 R21 K25 ["Size"]
      189 JUMPIF                           R7 ; [+4]
      190 GETUPVAL                         R22 3
      191 GETTABLEKS                       R22 R22 K71 ["Disabled"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R22
      195 SETTABLEKS                       R22 R21 K63 ["StyleModifier"]
      197 SETTABLEKS                       R10 R21 K66 ["Text"]
      199 CALL                             R19 2 1
      200 SETTABLEKS                       R19 R18 K19 ["CommitButton"]
      202 CALL                             R15 3 1
      203 SETTABLEKS                       R15 R14 K18 ["Toolbar"]
      205 GETUPVAL                         R15 0
      206 GETTABLEKS                       R15 R15 K21 ["createElement"]
      208 LOADK                            R16 K22 ["Frame"]
      209 DUPTABLE                         R17 K72 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 1}]
      210 GETIMPORT                        R18 K29 [UDim2.new]
      212 LOADN                            R19 1
      213 LOADN                            R20 0
      214 LOADN                            R21 1
      215 LOADN                            R22 -32
      216 CALL                             R18 4 1
      217 SETTABLEKS                       R18 R17 K25 ["Size"]
      219 DUPTABLE                         R18 K75 [{"ListItemView", "EmptyLabel"}]
      220 GETUPVAL                         R19 0
      221 GETTABLEKS                       R19 R19 K21 ["createElement"]
      223 GETUPVAL                         R20 4
      224 DUPTABLE                         R21 K84 [{["Items"], ["ItemHeight"] = 24, ["GetCurrentSelection"], ["OnDoubleClicked"], ["OnSelectionChanged"], ["MakeMenuActions"], ["RenderItem"]}]
      225 SETTABLEKS                       R9 R21 K76 ["Items"]
      227 GETTABLEKS                       R22 R0 K79 ["GetCurrentSelection"]
      229 SETTABLEKS                       R22 R21 K79 ["GetCurrentSelection"]
      231 GETTABLEKS                       R22 R0 K85 ["onDoubleClicked"]
      233 SETTABLEKS                       R22 R21 K80 ["OnDoubleClicked"]
      235 GETTABLEKS                       R22 R0 K86 ["onSelectionChanged"]
      237 SETTABLEKS                       R22 R21 K81 ["OnSelectionChanged"]
      239 GETTABLEKS                       R22 R0 K87 ["makeMenuActions"]
      241 SETTABLEKS                       R22 R21 K82 ["MakeMenuActions"]
      243 NEWCLOSURE                       R22 P1
      244 CAPTURE                          UPVAL U0
      245 CAPTURE                          UPVAL U5
      246 CAPTURE                          REF R8
      247 SETTABLEKS                       R22 R21 K83 ["RenderItem"]
      249 CALL                             R19 2 1
      250 SETTABLEKS                       R19 R18 K73 ["ListItemView"]
      252 MOVE                             R19 R6
      253 JUMPIFNOT                        R19 ; [+58]
      254 GETUPVAL                         R19 0
      255 GETTABLEKS                       R19 R19 K21 ["createElement"]
      257 LOADK                            R20 K88 ["TextLabel"]
      258 DUPTABLE                         R21 K97 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextColor3"], ["TextSize"] = 22, ["Font"], ["TextXAlignment"], ["TextYAlignment"]}]
      259 GETIMPORT                        R22 K29 [UDim2.new]
      261 LOADN                            R23 1
      262 LOADN                            R24 -16
      263 LOADN                            R25 1
      264 LOADN                            R26 -16
      265 CALL                             R22 4 1
      266 SETTABLEKS                       R22 R21 K25 ["Size"]
      268 GETIMPORT                        R22 K29 [UDim2.new]
      270 LOADK                            R23 K98 [0.5]
      271 LOADN                            R24 0
      272 LOADK                            R25 K98 [0.5]
      273 LOADN                            R26 0
      274 CALL                             R22 4 1
      275 SETTABLEKS                       R22 R21 K89 ["Position"]
      277 GETIMPORT                        R22 K100 [Vector2.new]
      279 LOADK                            R23 K98 [0.5]
      280 LOADK                            R24 K98 [0.5]
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K90 ["AnchorPoint"]
      284 LOADK                            R24 K101 ["Main"]
      285 LOADK                            R25 K102 ["NoDrafts"]
      286 NAMECALL                         R22 R1 K20 ["getText"]
      288 CALL                             R22 3 1
      289 SETTABLEKS                       R22 R21 K66 ["Text"]
      291 GETTABLEKS                       R22 R2 K103 ["labels"]
      293 GETTABLEKS                       R22 R22 K104 ["MainText"]
      295 SETTABLEKS                       R22 R21 K91 ["TextColor3"]
      297 GETTABLEKS                       R22 R2 K103 ["labels"]
      299 GETTABLEKS                       R22 R22 K105 ["MainFont"]
      301 SETTABLEKS                       R22 R21 K94 ["Font"]
      303 GETIMPORT                        R22 K107 [Enum.TextXAlignment.Left]
      305 SETTABLEKS                       R22 R21 K95 ["TextXAlignment"]
      307 GETIMPORT                        R22 K109 [Enum.TextYAlignment.Top]
      309 SETTABLEKS                       R22 R21 K96 ["TextYAlignment"]
      311 CALL                             R19 2 1
      312 SETTABLEKS                       R19 R18 K74 ["EmptyLabel"]
      314 CALL                             R15 3 1
      315 SETTABLEKS                       R15 R14 K31 ["Container"]
      317 MOVE                             R15 R5
      318 JUMPIFNOT                        R15 ; [+12]
      319 GETUPVAL                         R15 0
      320 GETTABLEKS                       R15 R15 K21 ["createElement"]
      322 GETUPVAL                         R16 6
      323 DUPTABLE                         R17 K111 [{"Drafts", "ChoiceSelected"}]
      324 SETTABLEKS                       R4 R17 K3 ["Drafts"]
      326 GETTABLEKS                       R18 R0 K112 ["discardPromptClosed"]
      328 SETTABLEKS                       R18 R17 K110 ["ChoiceSelected"]
      330 CALL                             R15 2 1
      331 SETTABLEKS                       R15 R14 K32 ["DiscardDialog"]
      333 CALL                             R11 3 -1
      334 CLOSEUPVALS                      R8
      335 RETURN                           R11 -1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["Drafts"]
        2 DUPTABLE                         R3 K1 [{"Drafts"}]
        3 SETTABLEKS                       R2 R3 K0 ["Drafts"]
        5 RETURN                           R3 1

PROTO_24:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETUPVAL                         R6 0
        6 GETUPVAL                         R7 1
        7 MOVE                             R8 R5
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R9 R9 K2 ["Committed"]
       11 GETUPVAL                         R10 3
       12 GETTABLEKS                       R10 R10 K3 ["Committing"]
       14 CALL                             R7 3 -1
       15 CALL                             R6 -1 0
       16 FORGLOOP                         R1 2 [inext] ; [-12]
       18 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K1 [{"DraftsCommitted"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["DraftsCommitted"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["ContextServices"]
       21 GETTABLEKS                       R3 R3 K11 ["DraftsService"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K12 ["Packages"]
       28 GETTABLEKS                       R4 R4 K13 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K12 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K12 ["Packages"]
       42 GETTABLEKS                       R6 R6 K15 ["Framework"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K10 ["ContextServices"]
       47 GETTABLEKS                       R7 R6 K16 ["withContext"]
       49 GETTABLEKS                       R8 R5 K17 ["Util"]
       51 GETTABLEKS                       R8 R8 K18 ["GetTextSize"]
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R10 R1 K9 ["Src"]
       57 GETTABLEKS                       R10 R10 K19 ["Components"]
       59 GETTABLEKS                       R10 R10 K20 ["DraftDiscardDialog"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K8 [require]
       64 GETTABLEKS                       R11 R1 K9 ["Src"]
       66 GETTABLEKS                       R11 R11 K19 ["Components"]
       68 GETTABLEKS                       R11 R11 K21 ["DraftListItem"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K8 [require]
       73 GETTABLEKS                       R12 R1 K9 ["Src"]
       75 GETTABLEKS                       R12 R12 K19 ["Components"]
       77 GETTABLEKS                       R12 R12 K22 ["ListItemView"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R5 K23 ["UI"]
       82 GETTABLEKS                       R13 R12 K24 ["Button"]
       84 GETTABLEKS                       R14 R5 K17 ["Util"]
       86 GETTABLEKS                       R14 R14 K25 ["StyleModifier"]
       88 GETIMPORT                        R15 K8 [require]
       90 GETTABLEKS                       R16 R1 K9 ["Src"]
       92 GETTABLEKS                       R16 R16 K26 ["Actions"]
       94 GETTABLEKS                       R16 R16 K27 ["DraftStateChangedAction"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K8 [require]
       99 GETTABLEKS                       R17 R1 K9 ["Src"]
      101 GETTABLEKS                       R17 R17 K28 ["Symbols"]
      103 GETTABLEKS                       R17 R17 K29 ["DraftState"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K8 [require]
      108 GETTABLEKS                       R18 R1 K9 ["Src"]
      110 GETTABLEKS                       R18 R18 K28 ["Symbols"]
      112 GETTABLEKS                       R18 R18 K30 ["CommitState"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R18 R3 K31 ["Component"]
      117 LOADK                            R20 K32 ["DraftListView"]
      118 NAMECALL                         R18 R18 K33 ["extend"]
      120 CALL                             R18 2 1
      121 DUPCLOSURE                       R19 K34 [PROTO_19]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R19 R18 K35 ["init"]
      128 DUPCLOSURE                       R19 K36 [PROTO_22]
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 SETTABLEKS                       R19 R18 K37 ["render"]
      138 DUPCLOSURE                       R19 K38 [PROTO_23]
      139 DUPCLOSURE                       R20 K39 [PROTO_25]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R17
      143 MOVE                             R21 R7
      144 DUPTABLE                         R22 K44 [{"DraftService", "Localization", "Plugin", "Stylizer"}]
      145 SETTABLEKS                       R2 R22 K40 ["DraftService"]
      147 GETTABLEKS                       R23 R6 K41 ["Localization"]
      149 SETTABLEKS                       R23 R22 K41 ["Localization"]
      151 GETTABLEKS                       R23 R6 K42 ["Plugin"]
      153 SETTABLEKS                       R23 R22 K42 ["Plugin"]
      155 GETTABLEKS                       R23 R6 K43 ["Stylizer"]
      157 SETTABLEKS                       R23 R22 K43 ["Stylizer"]
      159 CALL                             R21 1 1
      160 MOVE                             R22 R18
      161 CALL                             R21 1 1
      162 MOVE                             R18 R21
      163 GETTABLEKS                       R21 R4 K45 ["connect"]
      165 MOVE                             R22 R19
      166 MOVE                             R23 R20
      167 CALL                             R21 2 1
      168 MOVE                             R22 R18
      169 CALL                             R21 1 -1
      170 RETURN                           R21 -1
