PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["StudioLocaleId"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Plugin handle already exists"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K10 [{"draftsService", "focusGui", "localization", "plugin", "store", "theme"}]
       12 GETUPVAL                         R3 3
       13 SETTABLEKS                       R3 R2 K4 ["draftsService"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K5 ["focusGui"]
       18 GETUPVAL                         R3 5
       19 SETTABLEKS                       R3 R2 K6 ["localization"]
       21 GETUPVAL                         R3 6
       22 SETTABLEKS                       R3 R2 K7 ["plugin"]
       24 GETUPVAL                         R3 7
       25 SETTABLEKS                       R3 R2 K8 ["store"]
       27 GETUPVAL                         R3 8
       28 SETTABLEKS                       R3 R2 K9 ["theme"]
       30 DUPTABLE                         R3 K12 [{"mainView"}]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K3 ["createElement"]
       34 GETUPVAL                         R5 9
       35 NEWTABLE                         R6 0 0
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K11 ["mainView"]
       40 CALL                             R0 3 1
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K13 ["mount"]
       44 MOVE                             R2 R0
       45 GETUPVAL                         R3 4
       46 CALL                             R1 2 1
       47 SETUPVAL                         R1 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["draftsToolbar"]
        2 NAMECALL                         R1 R1 K1 ["CreateToolbar"]
        4 CALL                             R1 2 1
        5 LOADK                            R4 K2 ["draftsButton"]
        6 GETUPVAL                         R5 1
        7 LOADK                            R7 K3 ["Meta"]
        8 LOADK                            R8 K4 ["PluginButtonTooltip"]
        9 NAMECALL                         R5 R5 K5 ["getText"]
       11 CALL                             R5 3 1
       12 LOADK                            R6 K6 [""]
       13 NAMECALL                         R2 R1 K7 ["CreateButton"]
       15 CALL                             R2 4 1
       16 JUMPIFNOT                        R0 ; [+9]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K8 ["ClickableWhenViewportHidden"]
       20 GETTABLEKS                       R3 R2 K9 ["Click"]
       22 GETUPVAL                         R5 2
       23 NAMECALL                         R3 R3 K10 ["connect"]
       25 CALL                             R3 2 0
       26 SETTABLEKS                       R0 R2 K11 ["Enabled"]
       28 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LENGTH                           R2 R0
        7 LOADN                            R3 0
        8 JUMPIFLT                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       17 RETURN                           R0 0
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["DraftAdded"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R2
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R3 R3 K3 ["connect"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 CLOSEUPVALS                      R2
       30 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K3 [Enum.DraftStatusCode.DraftOutdated]
        2 JUMPIFNOTEQ                      R1 R2 ; [+13]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K4 ["Outdated"]
       10 LOADB                            R7 1
       11 CALL                             R4 3 -1
       12 NAMECALL                         R2 R2 K5 ["dispatch"]
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R2 K7 [Enum.DraftStatusCode.OK]
       18 JUMPIFNOTEQ                      R1 R2 ; [+13]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R0
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K4 ["Outdated"]
       26 LOADB                            R7 0
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R2 K9 [Enum.DraftStatusCode.DraftCommitted]
       34 JUMPIFNOTEQ                      R1 R2 ; [+52]
       36 GETUPVAL                         R2 0
       37 NAMECALL                         R2 R2 K10 ["getState"]
       39 CALL                             R2 1 1
       40 GETTABLEKS                       R7 R2 K11 ["Drafts"]
       42 GETTABLE                         R6 R7 R0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K4 ["Outdated"]
       46 GETTABLE                         R5 R6 R7
       47 JUMPIFEQKB                       R5 FALSE ; [+2]
       49 LOADB                            R4 0 +1
       50 LOADB                            R4 1
       51 LOADK                            R6 K12 ["Draft '"]
       52 NAMECALL                         R9 R0 K13 ["GetFullName"]
       54 CALL                             R9 1 1
       55 MOVE                             R7 R9
       56 LOADK                            R8 K14 ["' was committed with dirty Outdated state"]
       57 CONCAT                           R5 R6 R8
       58 FASTCALL2                        ASSERT R4 R5 ; [+3]
       60 GETIMPORT                        R3 K16 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R7 R2 K11 ["Drafts"]
       65 GETTABLE                         R6 R7 R0
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K17 ["Deleted"]
       69 GETTABLE                         R5 R6 R7
       70 JUMPIFEQKB                       R5 FALSE ; [+2]
       72 LOADB                            R4 0 +1
       73 LOADB                            R4 1
       74 LOADK                            R6 K12 ["Draft '"]
       75 NAMECALL                         R9 R0 K13 ["GetFullName"]
       77 CALL                             R9 1 1
       78 MOVE                             R7 R9
       79 LOADK                            R8 K18 ["' was committed with dirty Deleted state"]
       80 CONCAT                           R5 R6 R8
       81 FASTCALL2                        ASSERT R4 R5 ; [+3]
       83 GETIMPORT                        R3 K16 [assert]
       85 CALL                             R3 2 0
       86 RETURN                           R0 0
       87 GETIMPORT                        R2 K20 [Enum.DraftStatusCode.ScriptRemoved]
       89 JUMPIFNOTEQ                      R1 R2 ; [+1]
       91 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 GETTABLEKS                       R6 R6 K0 ["Deleted"]
        6 JUMPIFEQKNIL                     R1 ; [+2]
        8 LOADB                            R7 0 +1
        9 LOADB                            R7 1
       10 CALL                             R4 3 -1
       11 NAMECALL                         R2 R2 K1 ["dispatch"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL1                        ASSERT R2 ; [+2]
        7 GETIMPORT                        R1 K1 [assert]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["GetDraftStatus"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R3 R0 K3 ["AncestryChanged"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 NAMECALL                         R3 R3 K4 ["Connect"]
       29 CALL                             R3 2 1
       30 SETTABLE                         R3 R2 R0
       31 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL1                        ASSERT R2 ; [+2]
        7 GETIMPORT                        R1 K1 [assert]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLE                         R1 R2 R0
       12 NAMECALL                         R1 R1 K2 ["Disconnect"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R1 R0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDrafts"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R3 R4 R0
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL1                        ASSERT R2 ; [+2]
       14 GETIMPORT                        R1 K2 [assert]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 2
       18 GETTABLE                         R1 R2 R0
       19 NAMECALL                         R1 R1 K3 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 LOADNIL                          R2
       24 SETTABLE                         R2 R1 R0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetDraftStatus"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R3 K3 [Enum.DraftStatusCode.DraftCommitted]
        2 JUMPIFNOTEQ                      R1 R3 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["Committed"]
        7 JUMPIF                           R2 ; [+3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["Uncommitted"]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K4 ["Committed"]
       17 MOVE                             R8 R2
       18 CALL                             R5 3 -1
       19 NAMECALL                         R3 R3 K6 ["dispatch"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R4 2 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R1
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K2 ["dispatch"]
       21 CALL                             R2 -1 0
       22 GETIMPORT                        R2 K4 [pairs]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 3
       26 FORGPREP_NEXT                    R2
       27 GETUPVAL                         R7 4
       28 MOVE                             R8 R6
       29 CALL                             R7 1 0
       30 FORGLOOP                         R2 2 ; [-4]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K5 ["DraftAdded"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U4
       39 NAMECALL                         R2 R2 K6 ["connect"]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K7 ["DraftRemoved"]
       45 NEWCLOSURE                       R4 P2
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 NAMECALL                         R2 R2 K6 ["connect"]
       51 CALL                             R2 2 0
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K8 ["DraftStatusChanged"]
       55 NEWCLOSURE                       R4 P3
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U8
       58 NAMECALL                         R2 R2 K6 ["connect"]
       60 CALL                             R2 2 0
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K9 ["UpdateStatusChanged"]
       64 NEWCLOSURE                       R4 P4
       65 CAPTURE                          UPVAL U8
       66 NAMECALL                         R2 R2 K6 ["connect"]
       68 CALL                             R2 2 0
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K10 ["CommitStatusChanged"]
       72 NEWCLOSURE                       R4 P5
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          UPVAL U11
       77 CAPTURE                          UPVAL U8
       78 NAMECALL                         R2 R2 K6 ["connect"]
       80 CALL                             R2 2 0
       81 GETUPVAL                         R2 12
       82 NAMECALL                         R2 R2 K11 ["IsEdit"]
       84 CALL                             R2 1 1
       85 JUMPIF                           R2 ; [+1]
       86 RETURN                           R0 0
       87 LENGTH                           R3 R1
       88 LOADN                            R4 0
       89 JUMPIFLT                         R4 R3 ; [+2]
       91 LOADB                            R2 0 +1
       92 LOADB                            R2 1
       93 JUMPIFNOT                        R2 ; [+5]
       94 GETUPVAL                         R3 13
       95 LOADB                            R4 1
       96 SETTABLEKS                       R4 R3 K12 ["Enabled"]
       98 RETURN                           R0 0
       99 LOADNIL                          R3
      100 GETUPVAL                         R4 0
      101 GETTABLEKS                       R4 R4 K5 ["DraftAdded"]
      103 NEWCLOSURE                       R6 P6
      104 CAPTURE                          REF R3
      105 CAPTURE                          UPVAL U13
      106 NAMECALL                         R4 R4 K6 ["connect"]
      108 CALL                             R4 2 1
      109 MOVE                             R3 R4
      110 CLOSEUPVALS                      R3
      111 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          VAL R0
       15 GETIMPORT                        R4 K1 [spawn]
       17 NEWCLOSURE                       R5 P3
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 JUMP                             ; [+9]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["unmount"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 4
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["Enabled"]
       20 NAMECALL                         R0 R0 K2 ["SetActive"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Meta"]
        2 LOADK                            R3 K1 ["PluginName"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R0 R1 K3 ["Name"]
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K4 ["draftsToolbar"]
       11 NAMECALL                         R2 R2 K5 ["CreateToolbar"]
       13 CALL                             R2 2 1
       14 LOADK                            R5 K6 ["draftsButton"]
       15 GETUPVAL                         R6 0
       16 LOADK                            R8 K0 ["Meta"]
       17 LOADK                            R9 K7 ["PluginButtonTooltip"]
       18 NAMECALL                         R6 R6 K2 ["getText"]
       20 CALL                             R6 3 1
       21 LOADK                            R7 K8 [""]
       22 NAMECALL                         R3 R2 K9 ["CreateButton"]
       24 CALL                             R3 4 1
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K10 ["ClickableWhenViewportHidden"]
       28 GETTABLEKS                       R4 R3 K11 ["Click"]
       30 GETUPVAL                         R6 2
       31 NAMECALL                         R4 R4 K12 ["connect"]
       33 CALL                             R4 2 0
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K13 ["Enabled"]
       37 MOVE                             R1 R3
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R1
       44 GETIMPORT                        R3 K16 [DockWidgetPluginGuiInfo.new]
       46 GETIMPORT                        R4 K20 [Enum.InitialDockState.Right]
       48 LOADB                            R5 0
       49 LOADB                            R6 1
       50 LOADN                            R7 300
       51 LOADN                            R8 600
       52 LOADN                            R9 150
       53 LOADN                            R10 150
       54 CALL                             R3 7 1
       55 GETUPVAL                         R4 1
       56 LOADK                            R6 K21 ["Drafts"]
       57 MOVE                             R7 R3
       58 NAMECALL                         R4 R4 K22 ["CreateDockWidgetPluginGui"]
       60 CALL                             R4 3 1
       61 SETUPVAL                         R4 3
       62 GETUPVAL                         R4 3
       63 SETTABLEKS                       R0 R4 K3 ["Name"]
       65 GETUPVAL                         R4 3
       66 SETTABLEKS                       R0 R4 K23 ["Title"]
       68 GETUPVAL                         R4 3
       69 GETIMPORT                        R5 K26 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R5 R4 K24 ["ZIndexBehavior"]
       73 GETUPVAL                         R4 3
       74 LOADK                            R6 K13 ["Enabled"]
       75 NAMECALL                         R4 R4 K27 ["GetPropertyChangedSignal"]
       77 CALL                             R4 2 1
       78 MOVE                             R6 R2
       79 NAMECALL                         R4 R4 K12 ["connect"]
       81 CALL                             R4 2 0
       82 GETUPVAL                         R4 3
       83 GETTABLEKS                       R4 R4 K13 ["Enabled"]
       85 JUMPIFNOT                        R4 ; [+3]
       86 GETUPVAL                         R4 4
       87 CALL                             R4 0 0
       88 JUMP                             ; [+9]
       89 GETUPVAL                         R4 5
       90 JUMPIFNOT                        R4 ; [+7]
       91 GETUPVAL                         R4 6
       92 GETTABLEKS                       R4 R4 K28 ["unmount"]
       94 GETUPVAL                         R5 5
       95 CALL                             R4 1 0
       96 LOADNIL                          R4
       97 SETUPVAL                         R4 5
       98 GETUPVAL                         R6 3
       99 GETTABLEKS                       R6 R6 K13 ["Enabled"]
      101 NAMECALL                         R4 R1 K29 ["SetActive"]
      103 CALL                             R4 2 0
      104 GETUPVAL                         R4 7
      105 CALL                             R4 0 0
      106 RETURN                           R0 0

PROTO_22:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K1 [require]
        4 GETIMPORT                        R2 K3 [script]
        6 GETTABLEKS                       R2 R2 K4 ["Parent"]
        8 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       10 CALL                             R1 1 0
       11 GETIMPORT                        R1 K3 [script]
       13 GETTABLEKS                       R1 R1 K4 ["Parent"]
       15 GETTABLEKS                       R1 R1 K4 ["Parent"]
       17 GETIMPORT                        R2 K7 [settings]
       19 CALL                             R2 0 1
       20 LOADK                            R4 K8 ["StudioForceLocale"]
       21 NAMECALL                         R2 R2 K9 ["GetFVariable"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K1 [require]
       26 GETTABLEKS                       R4 R1 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["TestHelpers"]
       30 GETTABLEKS                       R4 R4 K12 ["MockDraftsService"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K14 [game]
       35 LOADK                            R6 K15 ["DraftsService"]
       36 NAMECALL                         R4 R4 K16 ["GetService"]
       38 CALL                             R4 2 1
       39 GETIMPORT                        R5 K14 [game]
       41 LOADK                            R7 K17 ["RunService"]
       42 NAMECALL                         R5 R5 K16 ["GetService"]
       44 CALL                             R5 2 1
       45 GETIMPORT                        R6 K14 [game]
       47 LOADK                            R8 K18 ["StudioService"]
       48 NAMECALL                         R6 R6 K16 ["GetService"]
       50 CALL                             R6 2 1
       51 GETIMPORT                        R7 K1 [require]
       53 GETTABLEKS                       R8 R1 K19 ["Packages"]
       55 GETTABLEKS                       R8 R8 K20 ["Roact"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K1 [require]
       60 GETTABLEKS                       R9 R1 K19 ["Packages"]
       62 GETTABLEKS                       R9 R9 K21 ["Rodux"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K1 [require]
       67 GETTABLEKS                       R10 R1 K19 ["Packages"]
       69 GETTABLEKS                       R10 R10 K22 ["Framework"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R9 K23 ["ContextServices"]
       74 GETIMPORT                        R11 K1 [require]
       76 GETTABLEKS                       R12 R1 K10 ["Src"]
       78 GETTABLEKS                       R12 R12 K24 ["Components"]
       80 GETTABLEKS                       R12 R12 K25 ["ServiceWrapper"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K1 [require]
       85 GETTABLEKS                       R13 R1 K10 ["Src"]
       87 GETTABLEKS                       R13 R13 K24 ["Components"]
       89 GETTABLEKS                       R13 R13 K26 ["MainView"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETTABLEKS                       R14 R1 K10 ["Src"]
       96 GETTABLEKS                       R14 R14 K27 ["Reducers"]
       98 GETTABLEKS                       R14 R14 K28 ["MainReducer"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K1 [require]
      103 GETTABLEKS                       R15 R1 K10 ["Src"]
      105 GETTABLEKS                       R15 R15 K29 ["Actions"]
      107 GETTABLEKS                       R15 R15 K30 ["DraftsServiceLoaded"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K1 [require]
      112 GETTABLEKS                       R16 R1 K10 ["Src"]
      114 GETTABLEKS                       R16 R16 K29 ["Actions"]
      116 GETTABLEKS                       R16 R16 K31 ["DraftsLoadedAction"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K1 [require]
      121 GETTABLEKS                       R17 R1 K10 ["Src"]
      123 GETTABLEKS                       R17 R17 K29 ["Actions"]
      125 GETTABLEKS                       R17 R17 K32 ["DraftAddedAction"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K1 [require]
      130 GETTABLEKS                       R18 R1 K10 ["Src"]
      132 GETTABLEKS                       R18 R18 K29 ["Actions"]
      134 GETTABLEKS                       R18 R18 K33 ["DraftRemovedAction"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K1 [require]
      139 GETTABLEKS                       R19 R1 K10 ["Src"]
      141 GETTABLEKS                       R19 R19 K29 ["Actions"]
      143 GETTABLEKS                       R19 R19 K34 ["DraftStateChangedAction"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K1 [require]
      148 GETTABLEKS                       R20 R1 K10 ["Src"]
      150 GETTABLEKS                       R20 R20 K35 ["Symbols"]
      152 GETTABLEKS                       R20 R20 K36 ["CommitState"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K1 [require]
      157 GETTABLEKS                       R21 R1 K10 ["Src"]
      159 GETTABLEKS                       R21 R21 K35 ["Symbols"]
      161 GETTABLEKS                       R21 R21 K37 ["DraftState"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K1 [require]
      166 GETTABLEKS                       R22 R1 K10 ["Src"]
      168 GETTABLEKS                       R22 R22 K38 ["Resources"]
      170 GETTABLEKS                       R22 R22 K39 ["MakeTheme"]
      172 CALL                             R21 1 1
      173 GETTABLEKS                       R22 R1 K10 ["Src"]
      175 GETTABLEKS                       R22 R22 K38 ["Resources"]
      177 GETTABLEKS                       R22 R22 K40 ["SourceStrings"]
      179 GETTABLEKS                       R23 R1 K10 ["Src"]
      181 GETTABLEKS                       R23 R23 K38 ["Resources"]
      183 GETTABLEKS                       R23 R23 K41 ["LocalizedStrings"]
      185 NEWCLOSURE                       R24 P0
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R6
      188 GETTABLEKS                       R25 R8 K42 ["Store"]
      190 GETTABLEKS                       R25 R25 K43 ["new"]
      192 MOVE                             R26 R13
      193 CALL                             R25 1 1
      194 MOVE                             R26 R21
      195 CALL                             R26 0 1
      196 GETTABLEKS                       R27 R10 K44 ["Localization"]
      198 GETTABLEKS                       R28 R27 K43 ["new"]
      200 DUPTABLE                         R29 K51 [{["stringResourceTable"], ["translationResourceTable"], ["overrideLocaleChangedSignal"], ["overrideGetLocale"], ["pluginName"] = "Drafts"}]
      201 SETTABLEKS                       R22 R29 K45 ["stringResourceTable"]
      203 SETTABLEKS                       R23 R29 K46 ["translationResourceTable"]
      205 LOADK                            R32 K52 ["StudioLocaleId"]
      206 NAMECALL                         R30 R6 K53 ["GetPropertyChangedSignal"]
      208 CALL                             R30 2 1
      209 SETTABLEKS                       R30 R29 K47 ["overrideLocaleChangedSignal"]
      211 SETTABLEKS                       R24 R29 K48 ["overrideGetLocale"]
      213 CALL                             R28 1 1
      214 GETIMPORT                        R29 K14 [game]
      216 LOADK                            R31 K54 ["DebugStudioDraftsWidgetTestCase"]
      217 NAMECALL                         R29 R29 K55 ["GetFastInt"]
      219 CALL                             R29 2 1
      220 JUMPIFNOTEQKN                    R29 K56 [0] ; [+3]
      222 MOVE                             R30 R4
      223 JUMPIF                           R30 ; [+4]
      224 GETTABLEKS                       R30 R3 K43 ["new"]
      226 MOVE                             R31 R29
      227 CALL                             R30 1 1
      228 LOADNIL                          R31
      229 LOADNIL                          R32
      230 NEWCLOSURE                       R33 P1
      231 CAPTURE                          REF R31
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R30
      235 CAPTURE                          REF R32
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R12
      241 NEWCLOSURE                       R34 P2
      242 CAPTURE                          REF R31
      243 CAPTURE                          VAL R7
      244 GETTABLEKS                       R35 R0 K57 ["Unloading"]
      246 NEWCLOSURE                       R37 P3
      247 CAPTURE                          REF R31
      248 CAPTURE                          VAL R7
      249 NAMECALL                         R35 R35 K58 ["Connect"]
      251 CALL                             R35 2 0
      252 NEWCLOSURE                       R35 P4
      253 CAPTURE                          REF R32
      254 NEWCLOSURE                       R36 P5
      255 CAPTURE                          VAL R0
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R35
      258 GETIMPORT                        R37 K14 [game]
      260 LOADK                            R39 K17 ["RunService"]
      261 NAMECALL                         R37 R37 K16 ["GetService"]
      263 CALL                             R37 2 1
      264 NAMECALL                         R37 R37 K59 ["IsEdit"]
      266 CALL                             R37 1 1
      267 JUMPIF                           R37 ; [+19]
      268 LOADK                            R39 K60 ["draftsToolbar"]
      269 NAMECALL                         R37 R0 K61 ["CreateToolbar"]
      271 CALL                             R37 2 1
      272 LOADK                            R40 K62 ["draftsButton"]
      273 LOADK                            R43 K63 ["Meta"]
      274 LOADK                            R44 K64 ["PluginButtonTooltip"]
      275 NAMECALL                         R41 R28 K65 ["getText"]
      277 CALL                             R41 3 1
      278 LOADK                            R42 K66 [""]
      279 NAMECALL                         R38 R37 K67 ["CreateButton"]
      281 CALL                             R38 4 1
      282 LOADB                            R39 0
      283 SETTABLEKS                       R39 R38 K68 ["Enabled"]
      285 CLOSEUPVALS                      R31
      286 RETURN                           R0 0
      287 NEWCLOSURE                       R37 P6
      288 CAPTURE                          VAL R5
      289 CAPTURE                          REF R32
      290 CAPTURE                          VAL R30
      291 NEWCLOSURE                       R38 P7
      292 CAPTURE                          VAL R25
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R20
      295 CAPTURE                          VAL R30
      296 CAPTURE                          VAL R14
      297 CAPTURE                          VAL R15
      298 CAPTURE                          VAL R16
      299 CAPTURE                          VAL R17
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R5
      302 CAPTURE                          REF R32
      303 NEWCLOSURE                       R39 P8
      304 CAPTURE                          VAL R28
      305 CAPTURE                          VAL R0
      306 CAPTURE                          VAL R35
      307 CAPTURE                          REF R32
      308 CAPTURE                          VAL R33
      309 CAPTURE                          REF R31
      310 CAPTURE                          VAL R7
      311 CAPTURE                          VAL R38
      312 MOVE                             R40 R39
      313 CALL                             R40 0 0
      314 CLOSEUPVALS                      R31
      315 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_22]
        2 RETURN                           R0 1
