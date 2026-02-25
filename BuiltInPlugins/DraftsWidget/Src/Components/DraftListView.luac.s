PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Drafts"]
        5 GETIMPORT                        R2 K3 [next]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["GetCurrentSelection"]
       18 NAMECALL                         R2 R2 K5 ["Invoke"]
       20 CALL                             R2 1 1
       21 LENGTH                           R3 R2
       22 JUMPIFNOTEQKN                    R3 K6 [0] ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K7 ["commitChanges"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
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
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["ShowDiffsAgainstServer"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["props"]
       12 GETTABLEKS                       R1 R2 K3 ["DraftsCommitted"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K4 ["CommitEdits"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["DraftService"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["UpdateToLatestVersion"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["DraftService"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["DraftService"]
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["state"]
       14 GETTABLEKS                       R3 R4 K4 ["draftsPendingDiscard"]
       16 NAMECALL                         R1 R1 K5 ["DiscardEdits"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 DUPTABLE                         R3 K6 [{"draftsPendingDiscard"}]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K7 ["None"]
       24 SETTABLEKS                       R4 R3 K4 ["draftsPendingDiscard"]
       26 NAMECALL                         R1 R1 K8 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Drafts"]
        5 GETTABLE                         R1 R2 R0
        6 LOADB                            R2 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["Committed"]
       10 GETTABLE                         R3 R1 R4
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["Committed"]
       14 JUMPIFEQ                         R3 R4 ; [+10]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K3 ["Deleted"]
       19 GETTABLE                         R2 R1 R3
       20 JUMPIF                           R2 ; [+4]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K4 ["Outdated"]
       24 GETTABLE                         R2 R1 R3
       25 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsEdit"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["state"]
        8 GETTABLEKS                       R0 R1 K2 ["draftsHasActiveSelection"]
       10 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["openScripts"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETIMPORT                        R1 K1 [next]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+10]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"draftsHasActiveSelection"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K2 ["draftsHasActiveSelection"]
       12 NAMECALL                         R1 R1 K4 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K3 [{"draftsHasActiveSelection"}]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["draftsHasActiveSelection"]
       21 NAMECALL                         R1 R1 K4 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["openScripts"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["diffChanges"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updateSource"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["commitChanges"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["restoreScripts"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["promptDiscardEdits"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
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
       18 GETUPVAL                         R18 0
       19 GETTABLEKS                       R17 R18 K0 ["props"]
       21 GETTABLEKS                       R16 R17 K4 ["Drafts"]
       23 GETTABLE                         R15 R16 R14
       24 GETUPVAL                         R18 1
       25 GETTABLEKS                       R17 R18 K5 ["Deleted"]
       27 GETTABLE                         R16 R15 R17
       28 JUMPIFNOT                        R16 ; [+4]
       29 LOADB                            R5 0
       30 LOADB                            R7 0
       31 LOADB                            R2 0
       32 JUMP                             ; [+8]
       33 GETUPVAL                         R18 1
       34 GETTABLEKS                       R17 R18 K6 ["Outdated"]
       36 GETTABLE                         R16 R15 R17
       37 JUMPIFNOT                        R16 ; [+2]
       38 LOADB                            R7 0
       39 JUMP                             ; [+1]
       40 LOADB                            R2 0
       41 GETUPVAL                         R18 1
       42 GETTABLEKS                       R17 R18 K5 ["Deleted"]
       44 GETTABLE                         R16 R15 R17
       45 JUMPIF                           R16 ; [+1]
       46 LOADB                            R3 0
       47 GETUPVAL                         R18 1
       48 GETTABLEKS                       R17 R18 K7 ["Committed"]
       50 GETTABLE                         R16 R15 R17
       51 GETUPVAL                         R18 2
       52 GETTABLEKS                       R17 R18 K8 ["Committing"]
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
        1 DUPTABLE                         R4 K1 [{"draftsHasActiveSelection"}]
        2 LOADB                            R5 0
        3 SETTABLEKS                       R5 R4 K0 ["draftsHasActiveSelection"]
        5 NAMECALL                         R2 R0 K2 ["setState"]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [Instance.new]
       10 LOADK                            R3 K6 ["BindableFunction"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R0 K7 ["GetCurrentSelection"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K8 ["commitSelectedScripts"]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K9 ["openScripts"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          REF R1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K10 ["diffChanges"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          REF R1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R0 K11 ["commitChanges"]
       32 NEWCLOSURE                       R2 P4
       33 CAPTURE                          REF R1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R0 K12 ["updateSource"]
       37 NEWCLOSURE                       R2 P5
       38 CAPTURE                          REF R1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K13 ["restoreScripts"]
       42 NEWCLOSURE                       R2 P6
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K14 ["promptDiscardEdits"]
       46 NEWCLOSURE                       R2 P7
       47 CAPTURE                          REF R1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U0
       50 SETTABLEKS                       R2 R0 K15 ["discardPromptClosed"]
       52 NEWCLOSURE                       R2 P8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R2 R0 K16 ["getIndicatorEnabled"]
       58 NEWCLOSURE                       R2 P9
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R2 R0 K17 ["getCommitButtonEnabled"]
       63 NEWCLOSURE                       R2 P10
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R2 R0 K18 ["onDoubleClicked"]
       67 NEWCLOSURE                       R2 P11
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R2 R0 K19 ["onSelectionChanged"]
       71 NEWCLOSURE                       R2 P12
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 SETTABLEKS                       R2 R0 K20 ["makeMenuActions"]
       78 CLOSEUPVALS                      R1
       79 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Drafts"]
       12 GETTABLEKS                       R5 R0 K4 ["state"]
       14 GETTABLEKS                       R4 R5 K5 ["draftsPendingDiscard"]
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
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R11 R12 K21 ["createElement"]
       67 LOADK                            R12 K22 ["Frame"]
       68 DUPTABLE                         R13 K25 [{"BackgroundTransparency", "Size"}]
       69 LOADN                            R14 1
       70 SETTABLEKS                       R14 R13 K23 ["BackgroundTransparency"]
       72 GETIMPORT                        R14 K28 [UDim2.new]
       74 LOADN                            R15 1
       75 LOADN                            R16 0
       76 LOADN                            R17 1
       77 LOADN                            R18 0
       78 CALL                             R14 4 1
       79 SETTABLEKS                       R14 R13 K24 ["Size"]
       81 DUPTABLE                         R14 K32 [{"UIListLayout", "Toolbar", "Container", "DiscardDialog"}]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R15 R16 K21 ["createElement"]
       85 LOADK                            R16 K29 ["UIListLayout"]
       86 DUPTABLE                         R17 K35 [{"FillDirection", "SortOrder"}]
       87 GETIMPORT                        R18 K38 [Enum.FillDirection.Vertical]
       89 SETTABLEKS                       R18 R17 K33 ["FillDirection"]
       91 GETIMPORT                        R18 K40 [Enum.SortOrder.LayoutOrder]
       93 SETTABLEKS                       R18 R17 K34 ["SortOrder"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K29 ["UIListLayout"]
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R15 R16 K21 ["createElement"]
      101 LOADK                            R16 K22 ["Frame"]
      102 DUPTABLE                         R17 K41 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      103 LOADN                            R18 1
      104 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      106 GETIMPORT                        R18 K28 [UDim2.new]
      108 LOADN                            R19 1
      109 LOADN                            R20 0
      110 LOADN                            R21 0
      111 LOADN                            R22 32
      112 CALL                             R18 4 1
      113 SETTABLEKS                       R18 R17 K24 ["Size"]
      115 LOADN                            R18 0
      116 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      118 DUPTABLE                         R18 K43 [{"UIPadding", "UIListLayout", "CommitButton"}]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R19 R20 K21 ["createElement"]
      122 LOADK                            R20 K42 ["UIPadding"]
      123 DUPTABLE                         R21 K48 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
      124 GETIMPORT                        R22 K50 [UDim.new]
      126 LOADN                            R23 0
      127 LOADN                            R24 4
      128 CALL                             R22 2 1
      129 SETTABLEKS                       R22 R21 K44 ["PaddingTop"]
      131 GETIMPORT                        R22 K50 [UDim.new]
      133 LOADN                            R23 0
      134 LOADN                            R24 4
      135 CALL                             R22 2 1
      136 SETTABLEKS                       R22 R21 K45 ["PaddingRight"]
      138 GETIMPORT                        R22 K50 [UDim.new]
      140 LOADN                            R23 0
      141 LOADN                            R24 4
      142 CALL                             R22 2 1
      143 SETTABLEKS                       R22 R21 K46 ["PaddingBottom"]
      145 GETIMPORT                        R22 K50 [UDim.new]
      147 LOADN                            R23 0
      148 LOADN                            R24 4
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K47 ["PaddingLeft"]
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K42 ["UIPadding"]
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R19 R20 K21 ["createElement"]
      158 LOADK                            R20 K29 ["UIListLayout"]
      159 DUPTABLE                         R21 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      160 GETIMPORT                        R22 K55 [Enum.FillDirection.Horizontal]
      162 SETTABLEKS                       R22 R21 K33 ["FillDirection"]
      164 GETIMPORT                        R22 K57 [Enum.HorizontalAlignment.Right]
      166 SETTABLEKS                       R22 R21 K51 ["HorizontalAlignment"]
      168 GETIMPORT                        R22 K59 [Enum.VerticalAlignment.Center]
      170 SETTABLEKS                       R22 R21 K52 ["VerticalAlignment"]
      172 CALL                             R19 2 1
      173 SETTABLEKS                       R19 R18 K29 ["UIListLayout"]
      175 GETUPVAL                         R20 0
      176 GETTABLEKS                       R19 R20 K21 ["createElement"]
      178 GETUPVAL                         R20 1
      179 DUPTABLE                         R21 K64 [{"OnClick", "Size", "StyleModifier", "Style", "Text"}]
      180 GETTABLEKS                       R22 R0 K65 ["commitSelectedScripts"]
      182 SETTABLEKS                       R22 R21 K60 ["OnClick"]
      184 GETIMPORT                        R22 K28 [UDim2.new]
      186 LOADN                            R23 0
      187 GETUPVAL                         R26 2
      188 MOVE                             R27 R10
      189 CALL                             R26 1 1
      190 GETTABLEKS                       R25 R26 K67 ["X"]
      192 ADDK                             R24 R25 K66 [20]
      193 LOADN                            R25 1
      194 LOADN                            R26 0
      195 CALL                             R22 4 1
      196 SETTABLEKS                       R22 R21 K24 ["Size"]
      198 JUMPIF                           R7 ; [+4]
      199 GETUPVAL                         R23 3
      200 GETTABLEKS                       R22 R23 K68 ["Disabled"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R22
      204 SETTABLEKS                       R22 R21 K61 ["StyleModifier"]
      206 LOADK                            R22 K69 ["RoundPrimary"]
      207 SETTABLEKS                       R22 R21 K62 ["Style"]
      209 SETTABLEKS                       R10 R21 K63 ["Text"]
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K19 ["CommitButton"]
      214 CALL                             R15 3 1
      215 SETTABLEKS                       R15 R14 K18 ["Toolbar"]
      217 GETUPVAL                         R16 0
      218 GETTABLEKS                       R15 R16 K21 ["createElement"]
      220 LOADK                            R16 K22 ["Frame"]
      221 DUPTABLE                         R17 K41 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      222 LOADN                            R18 1
      223 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      225 GETIMPORT                        R18 K28 [UDim2.new]
      227 LOADN                            R19 1
      228 LOADN                            R20 0
      229 LOADN                            R21 1
      230 LOADN                            R22 224
      231 CALL                             R18 4 1
      232 SETTABLEKS                       R18 R17 K24 ["Size"]
      234 LOADN                            R18 1
      235 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      237 DUPTABLE                         R18 K72 [{"ListItemView", "EmptyLabel"}]
      238 GETUPVAL                         R20 0
      239 GETTABLEKS                       R19 R20 K21 ["createElement"]
      241 GETUPVAL                         R20 4
      242 DUPTABLE                         R21 K80 [{"Items", "ItemHeight", "GetCurrentSelection", "OnDoubleClicked", "OnSelectionChanged", "MakeMenuActions", "RenderItem"}]
      243 SETTABLEKS                       R9 R21 K73 ["Items"]
      245 LOADN                            R22 24
      246 SETTABLEKS                       R22 R21 K74 ["ItemHeight"]
      248 GETTABLEKS                       R22 R0 K75 ["GetCurrentSelection"]
      250 SETTABLEKS                       R22 R21 K75 ["GetCurrentSelection"]
      252 GETTABLEKS                       R22 R0 K81 ["onDoubleClicked"]
      254 SETTABLEKS                       R22 R21 K76 ["OnDoubleClicked"]
      256 GETTABLEKS                       R22 R0 K82 ["onSelectionChanged"]
      258 SETTABLEKS                       R22 R21 K77 ["OnSelectionChanged"]
      260 GETTABLEKS                       R22 R0 K83 ["makeMenuActions"]
      262 SETTABLEKS                       R22 R21 K78 ["MakeMenuActions"]
      264 NEWCLOSURE                       R22 P1
      265 CAPTURE                          UPVAL U0
      266 CAPTURE                          UPVAL U5
      267 CAPTURE                          REF R8
      268 SETTABLEKS                       R22 R21 K79 ["RenderItem"]
      270 CALL                             R19 2 1
      271 SETTABLEKS                       R19 R18 K70 ["ListItemView"]
      273 MOVE                             R19 R6
      274 JUMPIFNOT                        R19 ; [+64]
      275 GETUPVAL                         R20 0
      276 GETTABLEKS                       R19 R20 K21 ["createElement"]
      278 LOADK                            R20 K84 ["TextLabel"]
      279 DUPTABLE                         R21 K92 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Text", "TextColor3", "TextSize", "Font", "TextXAlignment", "TextYAlignment"}]
      280 LOADN                            R22 1
      281 SETTABLEKS                       R22 R21 K23 ["BackgroundTransparency"]
      283 GETIMPORT                        R22 K28 [UDim2.new]
      285 LOADN                            R23 1
      286 LOADN                            R24 240
      287 LOADN                            R25 1
      288 LOADN                            R26 240
      289 CALL                             R22 4 1
      290 SETTABLEKS                       R22 R21 K24 ["Size"]
      292 GETIMPORT                        R22 K28 [UDim2.new]
      294 LOADK                            R23 K93 [0.5]
      295 LOADN                            R24 0
      296 LOADK                            R25 K93 [0.5]
      297 LOADN                            R26 0
      298 CALL                             R22 4 1
      299 SETTABLEKS                       R22 R21 K85 ["Position"]
      301 GETIMPORT                        R22 K95 [Vector2.new]
      303 LOADK                            R23 K93 [0.5]
      304 LOADK                            R24 K93 [0.5]
      305 CALL                             R22 2 1
      306 SETTABLEKS                       R22 R21 K86 ["AnchorPoint"]
      308 LOADK                            R24 K96 ["Main"]
      309 LOADK                            R25 K97 ["NoDrafts"]
      310 NAMECALL                         R22 R1 K20 ["getText"]
      312 CALL                             R22 3 1
      313 SETTABLEKS                       R22 R21 K63 ["Text"]
      315 GETTABLEKS                       R23 R2 K98 ["labels"]
      317 GETTABLEKS                       R22 R23 K99 ["MainText"]
      319 SETTABLEKS                       R22 R21 K87 ["TextColor3"]
      321 LOADN                            R22 22
      322 SETTABLEKS                       R22 R21 K88 ["TextSize"]
      324 GETTABLEKS                       R23 R2 K98 ["labels"]
      326 GETTABLEKS                       R22 R23 K100 ["MainFont"]
      328 SETTABLEKS                       R22 R21 K89 ["Font"]
      330 GETIMPORT                        R22 K102 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R22 R21 K90 ["TextXAlignment"]
      334 GETIMPORT                        R22 K104 [Enum.TextYAlignment.Top]
      336 SETTABLEKS                       R22 R21 K91 ["TextYAlignment"]
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K71 ["EmptyLabel"]
      341 CALL                             R15 3 1
      342 SETTABLEKS                       R15 R14 K30 ["Container"]
      344 MOVE                             R15 R5
      345 JUMPIFNOT                        R15 ; [+12]
      346 GETUPVAL                         R16 0
      347 GETTABLEKS                       R15 R16 K21 ["createElement"]
      349 GETUPVAL                         R16 6
      350 DUPTABLE                         R17 K106 [{"Drafts", "ChoiceSelected"}]
      351 SETTABLEKS                       R4 R17 K3 ["Drafts"]
      353 GETTABLEKS                       R18 R0 K107 ["discardPromptClosed"]
      355 SETTABLEKS                       R18 R17 K105 ["ChoiceSelected"]
      357 CALL                             R15 2 1
      358 SETTABLEKS                       R15 R14 K31 ["DiscardDialog"]
      360 CALL                             R11 3 -1
      361 CLOSEUPVALS                      R8
      362 RETURN                           R11 -1

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
        8 GETUPVAL                         R10 2
        9 GETTABLEKS                       R9 R10 K2 ["Committed"]
       11 GETUPVAL                         R11 3
       12 GETTABLEKS                       R10 R11 K3 ["Committing"]
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
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["ContextServices"]
       21 GETTABLEKS                       R3 R4 K11 ["DraftsService"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R5 R1 K12 ["Packages"]
       28 GETTABLEKS                       R4 R5 K13 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R6 R1 K12 ["Packages"]
       35 GETTABLEKS                       R5 R6 K14 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R7 R1 K12 ["Packages"]
       42 GETTABLEKS                       R6 R7 K15 ["Framework"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K10 ["ContextServices"]
       47 GETTABLEKS                       R7 R6 K16 ["withContext"]
       49 GETTABLEKS                       R9 R5 K17 ["Util"]
       51 GETTABLEKS                       R8 R9 K18 ["GetTextSize"]
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R12 R1 K9 ["Src"]
       57 GETTABLEKS                       R11 R12 K19 ["Components"]
       59 GETTABLEKS                       R10 R11 K20 ["DraftDiscardDialog"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K8 [require]
       64 GETTABLEKS                       R13 R1 K9 ["Src"]
       66 GETTABLEKS                       R12 R13 K19 ["Components"]
       68 GETTABLEKS                       R11 R12 K21 ["DraftListItem"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K8 [require]
       73 GETTABLEKS                       R14 R1 K9 ["Src"]
       75 GETTABLEKS                       R13 R14 K19 ["Components"]
       77 GETTABLEKS                       R12 R13 K22 ["ListItemView"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R5 K23 ["UI"]
       82 GETTABLEKS                       R13 R12 K24 ["Button"]
       84 GETTABLEKS                       R15 R5 K17 ["Util"]
       86 GETTABLEKS                       R14 R15 K25 ["StyleModifier"]
       88 GETIMPORT                        R15 K8 [require]
       90 GETTABLEKS                       R18 R1 K9 ["Src"]
       92 GETTABLEKS                       R17 R18 K26 ["Actions"]
       94 GETTABLEKS                       R16 R17 K27 ["DraftStateChangedAction"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K8 [require]
       99 GETTABLEKS                       R19 R1 K9 ["Src"]
      101 GETTABLEKS                       R18 R19 K28 ["Symbols"]
      103 GETTABLEKS                       R17 R18 K29 ["DraftState"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K8 [require]
      108 GETTABLEKS                       R20 R1 K9 ["Src"]
      110 GETTABLEKS                       R19 R20 K28 ["Symbols"]
      112 GETTABLEKS                       R18 R19 K30 ["CommitState"]
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
