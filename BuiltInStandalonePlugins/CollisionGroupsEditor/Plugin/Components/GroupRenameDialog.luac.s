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
        0 DUPTABLE                         R3 K2 [{"neverShowCheckboxToggled", "userRequestedDialogNeverShow"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["neverShowCheckboxToggled"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["userRequestedDialogNeverShow"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["toggleDialogNeverShow"]
       14 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"userRequestedDialogNeverShow"}]
        1 GETTABLEKS                       R2 R0 K2 ["neverShowCheckboxToggled"]
        3 SETTABLEKS                       R2 R1 K0 ["userRequestedDialogNeverShow"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["userRequestedRenameDialogNeverShow"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K2 ["state"]
        9 GETTABLEKS                       R4 R5 K3 ["neverShowCheckboxToggled"]
       11 NAMECALL                         R1 R1 K4 ["SetSetting"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 2
       15 DUPCLOSURE                       R3 K5 [PROTO_3]
       16 NAMECALL                         R1 R1 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["GroupRenameDialog"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["Plugin"]
       10 NAMECALL                         R4 R4 K5 ["get"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K6 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K14 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       18 LOADK                            R8 K15 ["Alert"]
       19 SETTABLEKS                       R8 R7 K7 ["Style"]
       21 GETTABLEKS                       R10 R0 K16 ["state"]
       23 GETTABLEKS                       R9 R10 K17 ["userRequestedDialogNeverShow"]
       25 NOT                              R8 R9
       26 JUMPIFNOT                        R8 ; [+2]
       27 GETTABLEKS                       R8 R1 K8 ["Enabled"]
       29 SETTABLEKS                       R8 R7 K8 ["Enabled"]
       31 LOADK                            R10 K18 ["RenameWarningDialog"]
       32 LOADK                            R11 K19 ["DialogWindowTitle"]
       33 NAMECALL                         R8 R3 K20 ["getText"]
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K9 ["Title"]
       38 GETTABLEKS                       R8 R2 K21 ["DialogMinimumSize"]
       40 SETTABLEKS                       R8 R7 K10 ["MinContentSize"]
       42 NEWTABLE                         R8 0 1
       44 DUPTABLE                         R9 K24 [{"Key", "Text"}]
       45 LOADK                            R10 K25 ["ok"]
       46 SETTABLEKS                       R10 R9 K22 ["Key"]
       48 LOADK                            R12 K18 ["RenameWarningDialog"]
       49 LOADK                            R13 K26 ["Ok"]
       50 NAMECALL                         R10 R3 K20 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K23 ["Text"]
       55 SETLIST                          R8 R9 1 [1]
       57 SETTABLEKS                       R8 R7 K11 ["Buttons"]
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R8 R7 K12 ["OnButtonPressed"]
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R8 R7 K13 ["OnClose"]
       69 DUPTABLE                         R8 K28 [{"Contents"}]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R9 R10 K6 ["createElement"]
       73 GETUPVAL                         R10 2
       74 DUPTABLE                         R11 K32 [{"Style", "Layout", "Padding", "Spacing"}]
       75 LOADK                            R12 K33 ["Box"]
       76 SETTABLEKS                       R12 R11 K7 ["Style"]
       78 GETIMPORT                        R12 K37 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R12 R11 K29 ["Layout"]
       82 GETTABLEKS                       R12 R2 K30 ["Padding"]
       84 SETTABLEKS                       R12 R11 K30 ["Padding"]
       86 GETTABLEKS                       R12 R2 K31 ["Spacing"]
       88 SETTABLEKS                       R12 R11 K31 ["Spacing"]
       90 DUPTABLE                         R12 K40 [{"TextLabel", "Checkbox"}]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R13 R14 K6 ["createElement"]
       94 GETUPVAL                         R14 3
       95 DUPTABLE                         R15 K44 [{"LayoutOrder", "TextWrapped", "Size", "Text"}]
       96 LOADN                            R16 1
       97 SETTABLEKS                       R16 R15 K41 ["LayoutOrder"]
       99 LOADB                            R16 1
      100 SETTABLEKS                       R16 R15 K42 ["TextWrapped"]
      102 GETTABLEKS                       R16 R2 K45 ["WarningTextSize"]
      104 SETTABLEKS                       R16 R15 K43 ["Size"]
      106 LOADK                            R18 K18 ["RenameWarningDialog"]
      107 LOADK                            R19 K46 ["WarningMessage"]
      108 NAMECALL                         R16 R3 K20 ["getText"]
      110 CALL                             R16 3 1
      111 SETTABLEKS                       R16 R15 K23 ["Text"]
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K38 ["TextLabel"]
      116 GETUPVAL                         R14 0
      117 GETTABLEKS                       R13 R14 K6 ["createElement"]
      119 GETUPVAL                         R14 4
      120 DUPTABLE                         R15 K49 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
      121 LOADN                            R16 2
      122 SETTABLEKS                       R16 R15 K41 ["LayoutOrder"]
      124 LOADK                            R18 K18 ["RenameWarningDialog"]
      125 LOADK                            R19 K50 ["DontShowThisWarningAgain"]
      126 NAMECALL                         R16 R3 K20 ["getText"]
      128 CALL                             R16 3 1
      129 SETTABLEKS                       R16 R15 K23 ["Text"]
      131 GETTABLEKS                       R17 R0 K16 ["state"]
      133 GETTABLEKS                       R16 R17 K51 ["neverShowCheckboxToggled"]
      135 SETTABLEKS                       R16 R15 K47 ["Checked"]
      137 GETTABLEKS                       R16 R0 K52 ["toggleDialogNeverShow"]
      139 SETTABLEKS                       R16 R15 K48 ["OnClick"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K39 ["Checkbox"]
      144 CALL                             R9 3 1
      145 SETTABLEKS                       R9 R8 K27 ["Contents"]
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
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
