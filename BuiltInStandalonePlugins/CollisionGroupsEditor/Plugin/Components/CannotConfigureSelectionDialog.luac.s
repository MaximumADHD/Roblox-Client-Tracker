PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["CannotConfigureSelectionDialog"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K13 [{["Style"] = "Alert", ["Enabled"], ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       13 GETTABLEKS                       R8 R0 K14 ["state"]
       15 GETTABLEKS                       R8 R8 K15 ["userRequestedDialogNeverShow"]
       17 NOT                              R7 R8
       18 JUMPIFNOT                        R7 ; [+2]
       19 GETTABLEKS                       R7 R1 K7 ["Enabled"]
       21 SETTABLEKS                       R7 R6 K7 ["Enabled"]
       23 LOADK                            R9 K2 ["CannotConfigureSelectionDialog"]
       24 LOADK                            R10 K16 ["DialogWindowTitle"]
       25 NEWTABLE                         R11 0 1
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R12 R12 K17 ["CursorGroupName"]
       30 SETLIST                          R11 R12 1 [1]
       32 NAMECALL                         R7 R3 K18 ["getText"]
       34 CALL                             R7 4 1
       35 SETTABLEKS                       R7 R6 K8 ["Title"]
       37 GETTABLEKS                       R7 R2 K19 ["DialogMinimumSize"]
       39 SETTABLEKS                       R7 R6 K9 ["MinContentSize"]
       41 NEWTABLE                         R7 0 1
       43 DUPTABLE                         R8 K23 [{["Key"] = "ok", ["Text"]}]
       44 LOADK                            R11 K24 ["RenameWarningDialog"]
       45 LOADK                            R12 K25 ["Ok"]
       46 NAMECALL                         R9 R3 K18 ["getText"]
       48 CALL                             R9 3 1
       49 SETTABLEKS                       R9 R8 K22 ["Text"]
       51 SETLIST                          R7 R8 1 [1]
       53 SETTABLEKS                       R7 R6 K10 ["Buttons"]
       55 GETTABLEKS                       R7 R1 K12 ["OnClose"]
       57 SETTABLEKS                       R7 R6 K11 ["OnButtonPressed"]
       59 GETTABLEKS                       R7 R1 K12 ["OnClose"]
       61 SETTABLEKS                       R7 R6 K12 ["OnClose"]
       63 DUPTABLE                         R7 K27 [{"Contents"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K4 ["createElement"]
       67 GETUPVAL                         R9 3
       68 DUPTABLE                         R10 K30 [{["Style"] = "Box", ["Layout"]}]
       69 GETIMPORT                        R11 K34 [Enum.FillDirection.Vertical]
       71 SETTABLEKS                       R11 R10 K29 ["Layout"]
       73 DUPTABLE                         R11 K36 [{"TextLabel"}]
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K4 ["createElement"]
       77 GETUPVAL                         R13 4
       78 DUPTABLE                         R14 K45 [{["LayoutOrder"] = 1, ["TextWrapped"] = True, ["RichText"] = True, ["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["Text"]}]
       79 GETIMPORT                        R15 K47 [Enum.TextXAlignment.Left]
       81 SETTABLEKS                       R15 R14 K42 ["TextXAlignment"]
       83 GETIMPORT                        R15 K49 [Enum.TextYAlignment.Top]
       85 SETTABLEKS                       R15 R14 K43 ["TextYAlignment"]
       87 GETIMPORT                        R15 K51 [Enum.AutomaticSize.XY]
       89 SETTABLEKS                       R15 R14 K44 ["AutomaticSize"]
       91 LOADK                            R17 K2 ["CannotConfigureSelectionDialog"]
       92 LOADK                            R18 K52 ["WarningMessage"]
       93 NEWTABLE                         R19 0 1
       95 LOADK                            R21 K53 ["<b>%*</b>"]
       96 GETUPVAL                         R23 2
       97 GETTABLEKS                       R23 R23 K17 ["CursorGroupName"]
       99 NAMECALL                         R21 R21 K54 ["format"]
      101 CALL                             R21 2 1
      102 MOVE                             R20 R21
      103 SETLIST                          R19 R20 1 [1]
      105 NAMECALL                         R15 R3 K18 ["getText"]
      107 CALL                             R15 4 1
      108 SETTABLEKS                       R15 R14 K22 ["Text"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K35 ["TextLabel"]
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K26 ["Contents"]
      116 CALL                             R4 3 -1
      117 RETURN                           R4 -1

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
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 GETTABLEKS                       R5 R5 K2 ["Parent"]
       33 GETTABLEKS                       R5 R5 K9 ["Constants"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R2 K10 ["UI"]
       38 GETTABLEKS                       R6 R5 K11 ["Pane"]
       40 GETTABLEKS                       R7 R5 K12 ["StyledDialog"]
       42 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       44 GETTABLEKS                       R9 R1 K14 ["Component"]
       46 LOADK                            R11 K15 ["CannotConfigureSelectionDialog"]
       47 NAMECALL                         R9 R9 K16 ["extend"]
       49 CALL                             R9 2 1
       50 DUPCLOSURE                       R10 K17 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 SETTABLEKS                       R10 R9 K18 ["render"]
       58 GETTABLEKS                       R10 R3 K19 ["withContext"]
       60 DUPTABLE                         R11 K22 [{"Stylizer", "Localization"}]
       61 GETTABLEKS                       R12 R3 K20 ["Stylizer"]
       63 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       65 GETTABLEKS                       R12 R3 K21 ["Localization"]
       67 SETTABLEKS                       R12 R11 K21 ["Localization"]
       69 CALL                             R10 1 1
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 MOVE                             R9 R10
       73 RETURN                           R9 1
