PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["userRequestedDialogNeverShow"]
        2 NOT                              R1 R2
        3 DUPTABLE                         R2 K2 [{"neverShowCheckboxToggled"}]
        4 SETTABLEKS                       R1 R2 K1 ["neverShowCheckboxToggled"]
        6 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K3 [{[1] = False, ["userRequestedDialogNeverShow"] = False}]
        1 NAMECALL                         R1 R0 K4 ["setState"]
        3 CALL                             R1 2 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K5 ["toggleDialogNeverShow"]
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"userRequestedDialogNeverShow"}]
        1 GETTABLEKS                       R2 R0 K2 ["neverShowCheckboxToggled"]
        3 SETTABLEKS                       R2 R1 K0 ["userRequestedDialogNeverShow"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["userRequestedRenameDialogNeverShow"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["state"]
        9 GETTABLEKS                       R4 R4 K3 ["neverShowCheckboxToggled"]
       11 NAMECALL                         R1 R1 K4 ["SetSetting"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 2
       15 DUPCLOSURE                       R3 K5 [PROTO_3]
       16 NAMECALL                         R1 R1 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["GroupRenameDialog"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["Plugin"]
       10 NAMECALL                         R4 R4 K5 ["get"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K15 [{["Style"] = "Alert", ["Enabled"], ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       18 GETTABLEKS                       R9 R0 K16 ["state"]
       20 GETTABLEKS                       R9 R9 K17 ["userRequestedDialogNeverShow"]
       22 NOT                              R8 R9
       23 JUMPIFNOT                        R8 ; [+2]
       24 GETTABLEKS                       R8 R1 K9 ["Enabled"]
       26 SETTABLEKS                       R8 R7 K9 ["Enabled"]
       28 LOADK                            R10 K18 ["RenameWarningDialog"]
       29 LOADK                            R11 K19 ["DialogWindowTitle"]
       30 NAMECALL                         R8 R3 K20 ["getText"]
       32 CALL                             R8 3 1
       33 SETTABLEKS                       R8 R7 K10 ["Title"]
       35 GETTABLEKS                       R8 R2 K21 ["DialogMinimumSize"]
       37 SETTABLEKS                       R8 R7 K11 ["MinContentSize"]
       39 NEWTABLE                         R8 0 1
       41 DUPTABLE                         R9 K25 [{["Key"] = "ok", ["Text"]}]
       42 LOADK                            R12 K18 ["RenameWarningDialog"]
       43 LOADK                            R13 K26 ["Ok"]
       44 NAMECALL                         R10 R3 K20 ["getText"]
       46 CALL                             R10 3 1
       47 SETTABLEKS                       R10 R9 K24 ["Text"]
       49 SETLIST                          R8 R9 1 [1]
       51 SETTABLEKS                       R8 R7 K12 ["Buttons"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R8 R7 K13 ["OnButtonPressed"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R8 R7 K14 ["OnClose"]
       63 DUPTABLE                         R8 K28 [{"Contents"}]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K6 ["createElement"]
       67 GETUPVAL                         R10 2
       68 DUPTABLE                         R11 K33 [{["Style"] = "Box", ["Layout"], ["Padding"], ["Spacing"]}]
       69 GETIMPORT                        R12 K37 [Enum.FillDirection.Vertical]
       71 SETTABLEKS                       R12 R11 K30 ["Layout"]
       73 GETTABLEKS                       R12 R2 K31 ["Padding"]
       75 SETTABLEKS                       R12 R11 K31 ["Padding"]
       77 GETTABLEKS                       R12 R2 K32 ["Spacing"]
       79 SETTABLEKS                       R12 R11 K32 ["Spacing"]
       81 DUPTABLE                         R12 K40 [{"TextLabel", "Checkbox"}]
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K6 ["createElement"]
       85 GETUPVAL                         R14 3
       86 DUPTABLE                         R15 K46 [{["LayoutOrder"] = 1, ["TextWrapped"] = True, ["Size"], ["Text"]}]
       87 GETTABLEKS                       R16 R2 K47 ["WarningTextSize"]
       89 SETTABLEKS                       R16 R15 K45 ["Size"]
       91 LOADK                            R18 K18 ["RenameWarningDialog"]
       92 LOADK                            R19 K48 ["WarningMessage"]
       93 NAMECALL                         R16 R3 K20 ["getText"]
       95 CALL                             R16 3 1
       96 SETTABLEKS                       R16 R15 K24 ["Text"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K38 ["TextLabel"]
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R13 R13 K6 ["createElement"]
      104 GETUPVAL                         R14 4
      105 DUPTABLE                         R15 K52 [{["LayoutOrder"] = 2, ["Text"], ["Checked"], ["OnClick"]}]
      106 LOADK                            R18 K18 ["RenameWarningDialog"]
      107 LOADK                            R19 K53 ["DontShowThisWarningAgain"]
      108 NAMECALL                         R16 R3 K20 ["getText"]
      110 CALL                             R16 3 1
      111 SETTABLEKS                       R16 R15 K24 ["Text"]
      113 GETTABLEKS                       R16 R0 K16 ["state"]
      115 GETTABLEKS                       R16 R16 K54 ["neverShowCheckboxToggled"]
      117 SETTABLEKS                       R16 R15 K50 ["Checked"]
      119 GETTABLEKS                       R16 R0 K55 ["toggleDialogNeverShow"]
      121 SETTABLEKS                       R16 R15 K51 ["OnClick"]
      123 CALL                             R13 2 1
      124 SETTABLEKS                       R13 R12 K39 ["Checkbox"]
      126 CALL                             R9 3 1
      127 SETTABLEKS                       R9 R8 K27 ["Contents"]
      129 CALL                             R5 3 -1
      130 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 LOADK                            R4 K3 ["userRequestedRenameDialogNeverShow"]
        8 NAMECALL                         R2 R1 K4 ["GetSetting"]
       10 CALL                             R2 2 1
       11 DUPTABLE                         R5 K6 [{"userRequestedDialogNeverShow"}]
       12 SETTABLEKS                       R2 R5 K5 ["userRequestedDialogNeverShow"]
       14 NAMECALL                         R3 R0 K7 ["setState"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Checkbox"]
       29 GETTABLEKS                       R6 R4 K11 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R4 K13 ["StyledDialog"]
       35 GETTABLEKS                       R9 R1 K14 ["Component"]
       37 LOADK                            R11 K15 ["GroupRenameDialog"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K17 [PROTO_2]
       42 SETTABLEKS                       R10 R9 K18 ["init"]
       44 DUPCLOSURE                       R10 K19 [PROTO_6]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R10 R9 K20 ["render"]
       52 DUPCLOSURE                       R10 K21 [PROTO_7]
       53 SETTABLEKS                       R10 R9 K22 ["didMount"]
       55 GETTABLEKS                       R10 R3 K23 ["withContext"]
       57 DUPTABLE                         R11 K27 [{"Plugin", "Stylizer", "Localization"}]
       58 GETTABLEKS                       R12 R3 K24 ["Plugin"]
       60 SETTABLEKS                       R12 R11 K24 ["Plugin"]
       62 GETTABLEKS                       R12 R3 K25 ["Stylizer"]
       64 SETTABLEKS                       R12 R11 K25 ["Stylizer"]
       66 GETTABLEKS                       R12 R3 K26 ["Localization"]
       68 SETTABLEKS                       R12 R11 K26 ["Localization"]
       70 CALL                             R10 1 1
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 MOVE                             R9 R10
       74 RETURN                           R9 1
