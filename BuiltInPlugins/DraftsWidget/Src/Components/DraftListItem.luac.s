PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Draft"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K3 [{"draftName"}]
        7 GETTABLEKS                       R4 R0 K4 ["Name"]
        9 SETTABLEKS                       R4 R3 K2 ["draftName"]
       11 NAMECALL                         R1 R1 K5 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Drafts"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["Draft"]
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K3 ["Localization"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K4 ["Stylizer"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["Committed"]
       26 GETTABLE                         R5 R0 R6
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K5 ["Committed"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+14]
       32 LOADK                            R7 K6 ["Tooltip"]
       33 LOADK                            R8 K7 ["DraftCommitted"]
       34 NAMECALL                         R5 R1 K8 ["getText"]
       36 CALL                             R5 3 1
       37 MOVE                             R3 R5
       38 GETTABLEKS                       R5 R2 K9 ["icons"]
       40 GETTABLEKS                       R5 R5 K10 ["DraftState"]
       42 GETTABLEKS                       R4 R5 K5 ["Committed"]
       44 JUMP                             ; [+35]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K11 ["Deleted"]
       48 GETTABLE                         R5 R0 R6
       49 JUMPIFNOT                        R5 ; [+13]
       50 LOADK                            R7 K6 ["Tooltip"]
       51 LOADK                            R8 K12 ["ScriptDeleted"]
       52 NAMECALL                         R5 R1 K8 ["getText"]
       54 CALL                             R5 3 1
       55 MOVE                             R3 R5
       56 GETTABLEKS                       R5 R2 K9 ["icons"]
       58 GETTABLEKS                       R5 R5 K10 ["DraftState"]
       60 GETTABLEKS                       R4 R5 K11 ["Deleted"]
       62 JUMP                             ; [+17]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K13 ["Outdated"]
       66 GETTABLE                         R5 R0 R6
       67 JUMPIFNOT                        R5 ; [+12]
       68 LOADK                            R7 K6 ["Tooltip"]
       69 LOADK                            R8 K14 ["DraftOutdated"]
       70 NAMECALL                         R5 R1 K8 ["getText"]
       72 CALL                             R5 3 1
       73 MOVE                             R3 R5
       74 GETTABLEKS                       R5 R2 K9 ["icons"]
       76 GETTABLEKS                       R5 R5 K10 ["DraftState"]
       78 GETTABLEKS                       R4 R5 K13 ["Outdated"]
       80 JUMPIFNOT                        R4 ; [+11]
       81 GETUPVAL                         R5 3
       82 GETTABLEKS                       R5 R5 K15 ["createElement"]
       84 GETUPVAL                         R6 4
       85 DUPTABLE                         R7 K17 [{"Tooltip", "Icon"}]
       86 SETTABLEKS                       R3 R7 K6 ["Tooltip"]
       88 SETTABLEKS                       R4 R7 K16 ["Icon"]
       90 CALL                             R5 2 -1
       91 RETURN                           R5 -1
       92 LOADNIL                          R5
       93 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Drafts"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["Draft"]
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K3 ["Localization"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["Committed"]
       19 GETTABLE                         R2 R0 R3
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["Committed"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+3]
       25 LOADK                            R2 K5 [""]
       26 RETURN                           R2 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["Committed"]
       30 GETTABLE                         R2 R0 R3
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K6 ["Committing"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+7]
       36 LOADK                            R4 K7 ["StatusText"]
       37 LOADK                            R5 K6 ["Committing"]
       38 NAMECALL                         R2 R1 K8 ["getText"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K9 ["Autosaved"]
       45 GETTABLE                         R2 R0 R3
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K10 ["Saved"]
       49 JUMPIFNOTEQ                      R2 R3 ; [+7]
       51 LOADK                            R4 K7 ["StatusText"]
       52 LOADK                            R5 K11 ["Uncommitted"]
       53 NAMECALL                         R2 R1 K8 ["getText"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K9 ["Autosaved"]
       60 GETTABLE                         R2 R0 R3
       61 GETUPVAL                         R3 3
       62 GETTABLEKS                       R3 R3 K12 ["Saving"]
       64 JUMPIFNOTEQ                      R2 R3 ; [+7]
       66 LOADK                            R4 K7 ["StatusText"]
       67 LOADK                            R5 K12 ["Saving"]
       68 NAMECALL                         R2 R1 K8 ["getText"]
       70 CALL                             R2 3 -1
       71 RETURN                           R2 -1
       72 LOADK                            R2 K5 [""]
       73 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Draft"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["draftName"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K4 ["Drafts"]
       15 GETTABLE                         R2 R3 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K5 ["Localization"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["Committed"]
       24 GETTABLE                         R4 R2 R5
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K6 ["Committed"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+12]
       30 LOADK                            R6 K7 ["DraftItem"]
       31 LOADK                            R7 K8 ["CommittedLabel"]
       32 NEWTABLE                         R8 0 1
       34 MOVE                             R9 R1
       35 SETLIST                          R8 R9 1 [1]
       37 NAMECALL                         R4 R3 K9 ["getText"]
       39 CALL                             R4 4 -1
       40 RETURN                           R4 -1
       41 LOADK                            R5 K10 [".../"]
       42 MOVE                             R6 R1
       43 CONCAT                           R4 R5 R6
       44 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R3 K2 [{[1] = }]
        1 NAMECALL                         R1 R0 K3 ["setState"]
        3 CALL                             R1 2 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K4 ["nameUpdated"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 SETTABLEKS                       R1 R0 K5 ["getDraftIndicator"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U4
       21 SETTABLEKS                       R1 R0 K6 ["getStatusText"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 SETTABLEKS                       R1 R0 K7 ["getLabelText"]
       29 GETTABLEKS                       R1 R0 K8 ["props"]
       31 GETTABLEKS                       R1 R1 K9 ["Draft"]
       33 LOADK                            R3 K10 ["Name"]
       34 NAMECALL                         R1 R1 K11 ["GetPropertyChangedSignal"]
       36 CALL                             R1 2 1
       37 GETTABLEKS                       R3 R0 K4 ["nameUpdated"]
       39 NAMECALL                         R1 R1 K12 ["Connect"]
       41 CALL                             R1 2 1
       42 SETTABLEKS                       R1 R0 K13 ["nameChangedConnection"]
       44 GETTABLEKS                       R1 R0 K4 ["nameUpdated"]
       46 CALL                             R1 0 0
       47 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R1 K0 ["Draft"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R5 R5 K0 ["Draft"]
        6 JUMPIFEQ                         R4 R5 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["The Draft property of DraftListItem should never be changed. These should be keyed by the draft"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["nameChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["AutomaticSize"], ["Style"] = "Label", ["Text"]}]
        5 GETIMPORT                        R3 K8 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K4 ["Text"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDraftIndicator"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Drafts"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Draft"]
        8 GETTABLE                         R3 R1 R2
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 GETTABLEKS                       R4 R0 K3 ["getLabelText"]
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R5 R0 K4 ["getStatusText"]
       17 CALL                             R5 0 1
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R6 R6 K5 ["RowProps"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K6 ["createElement"]
       25 GETUPVAL                         R8 1
       26 DUPTABLE                         R9 K19 [{["TailItem"], ["BeforeIcon"], ["Children"], ["Depth"] = 0, ["Index"] = 1, ["Item"], ["OnToggle"], ["OnPress"], ["OnSecondaryPress"], ["Selected"]}]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R10 R9 K7 ["TailItem"]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R10 R9 K8 ["BeforeIcon"]
       37 NEWTABLE                         R10 0 0
       39 SETTABLEKS                       R10 R9 K9 ["Children"]
       41 DUPTABLE                         R10 K22 [{"text", "tooltip"}]
       42 SETTABLEKS                       R4 R10 K20 ["text"]
       44 NAMECALL                         R11 R2 K23 ["getFullName"]
       46 CALL                             R11 1 1
       47 SETTABLEKS                       R11 R10 K21 ["tooltip"]
       49 SETTABLEKS                       R10 R9 K14 ["Item"]
       51 DUPCLOSURE                       R10 K24 [PROTO_9]
       52 SETTABLEKS                       R10 R9 K15 ["OnToggle"]
       54 GETTABLEKS                       R10 R6 K16 ["OnPress"]
       56 SETTABLEKS                       R10 R9 K16 ["OnPress"]
       58 GETTABLEKS                       R10 R6 K17 ["OnSecondaryPress"]
       60 SETTABLEKS                       R10 R9 K17 ["OnSecondaryPress"]
       62 GETTABLEKS                       R10 R6 K18 ["Selected"]
       64 SETTABLEKS                       R10 R9 K18 ["Selected"]
       66 CALL                             R7 2 -1
       67 RETURN                           R7 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Drafts"]
        2 DUPTABLE                         R3 K1 [{"Drafts"}]
        3 SETTABLEKS                       R2 R3 K0 ["Drafts"]
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Components"]
       40 GETTABLEKS                       R7 R7 K13 ["DraftStatusIndicator"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R3 K14 ["UI"]
       45 GETTABLEKS                       R8 R7 K15 ["TextLabel"]
       47 GETTABLEKS                       R9 R7 K16 ["TreeViewRow"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K11 ["Src"]
       53 GETTABLEKS                       R11 R11 K17 ["Symbols"]
       55 GETTABLEKS                       R11 R11 K18 ["DraftState"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K4 [require]
       60 GETTABLEKS                       R12 R0 K11 ["Src"]
       62 GETTABLEKS                       R12 R12 K17 ["Symbols"]
       64 GETTABLEKS                       R12 R12 K19 ["CommitState"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R13 R0 K11 ["Src"]
       71 GETTABLEKS                       R13 R13 K17 ["Symbols"]
       73 GETTABLEKS                       R13 R13 K20 ["AutosaveState"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       78 LOADK                            R15 K22 ["DraftListItem"]
       79 NAMECALL                         R13 R13 K23 ["extend"]
       81 CALL                             R13 2 1
       82 DUPCLOSURE                       R14 K24 [PROTO_4]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R12
       88 SETTABLEKS                       R14 R13 K25 ["init"]
       90 DUPCLOSURE                       R14 K26 [PROTO_5]
       91 SETTABLEKS                       R14 R13 K27 ["didUpdate"]
       93 DUPCLOSURE                       R14 K28 [PROTO_6]
       94 SETTABLEKS                       R14 R13 K29 ["willUnmount"]
       96 DUPCLOSURE                       R14 K30 [PROTO_10]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R14 R13 K31 ["render"]
      102 MOVE                             R14 R5
      103 DUPTABLE                         R15 K34 [{"Localization", "Stylizer"}]
      104 GETTABLEKS                       R16 R4 K32 ["Localization"]
      106 SETTABLEKS                       R16 R15 K32 ["Localization"]
      108 GETTABLEKS                       R16 R4 K33 ["Stylizer"]
      110 SETTABLEKS                       R16 R15 K33 ["Stylizer"]
      112 CALL                             R14 1 1
      113 MOVE                             R15 R13
      114 CALL                             R14 1 1
      115 MOVE                             R13 R14
      116 DUPCLOSURE                       R14 K35 [PROTO_11]
      117 GETTABLEKS                       R15 R2 K36 ["connect"]
      119 MOVE                             R16 R14
      120 CALL                             R15 1 1
      121 MOVE                             R16 R13
      122 CALL                             R15 1 -1
      123 RETURN                           R15 -1
