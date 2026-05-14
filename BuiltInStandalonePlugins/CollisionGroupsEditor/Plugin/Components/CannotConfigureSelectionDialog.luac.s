PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["CannotConfigureSelectionDialog"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K12 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       13 LOADK                            R7 K13 ["Alert"]
       14 SETTABLEKS                       R7 R6 K5 ["Style"]
       16 GETTABLEKS                       R8 R0 K14 ["state"]
       18 GETTABLEKS                       R8 R8 K15 ["userRequestedDialogNeverShow"]
       20 NOT                              R7 R8
       21 JUMPIFNOT                        R7 ; [+2]
       22 GETTABLEKS                       R7 R1 K6 ["Enabled"]
       24 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       26 LOADK                            R9 K2 ["CannotConfigureSelectionDialog"]
       27 LOADK                            R10 K16 ["DialogWindowTitle"]
       28 NEWTABLE                         R11 0 1
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K17 ["CursorGroupName"]
       33 SETLIST                          R11 R12 1 [1]
       35 NAMECALL                         R7 R3 K18 ["getText"]
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K7 ["Title"]
       40 GETTABLEKS                       R7 R2 K19 ["DialogMinimumSize"]
       42 SETTABLEKS                       R7 R6 K8 ["MinContentSize"]
       44 NEWTABLE                         R7 0 1
       46 DUPTABLE                         R8 K22 [{"Key", "Text"}]
       47 LOADK                            R9 K23 ["ok"]
       48 SETTABLEKS                       R9 R8 K20 ["Key"]
       50 LOADK                            R11 K24 ["RenameWarningDialog"]
       51 LOADK                            R12 K25 ["Ok"]
       52 NAMECALL                         R9 R3 K18 ["getText"]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K21 ["Text"]
       57 SETLIST                          R7 R8 1 [1]
       59 SETTABLEKS                       R7 R6 K9 ["Buttons"]
       61 GETTABLEKS                       R7 R1 K11 ["OnClose"]
       63 SETTABLEKS                       R7 R6 K10 ["OnButtonPressed"]
       65 GETTABLEKS                       R7 R1 K11 ["OnClose"]
       67 SETTABLEKS                       R7 R6 K11 ["OnClose"]
       69 DUPTABLE                         R7 K27 [{"Contents"}]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["createElement"]
       73 GETUPVAL                         R9 3
       74 DUPTABLE                         R10 K29 [{"Style", "Layout"}]
       75 LOADK                            R11 K30 ["Box"]
       76 SETTABLEKS                       R11 R10 K5 ["Style"]
       78 GETIMPORT                        R11 K34 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R11 R10 K28 ["Layout"]
       82 DUPTABLE                         R11 K36 [{"TextLabel"}]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K4 ["createElement"]
       86 GETUPVAL                         R13 4
       87 DUPTABLE                         R14 K43 [{"LayoutOrder", "TextWrapped", "RichText", "TextXAlignment", "TextYAlignment", "AutomaticSize", "Text"}]
       88 LOADN                            R15 1
       89 SETTABLEKS                       R15 R14 K37 ["LayoutOrder"]
       91 LOADB                            R15 1
       92 SETTABLEKS                       R15 R14 K38 ["TextWrapped"]
       94 LOADB                            R15 1
       95 SETTABLEKS                       R15 R14 K39 ["RichText"]
       97 GETIMPORT                        R15 K45 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R15 R14 K40 ["TextXAlignment"]
      101 GETIMPORT                        R15 K47 [Enum.TextYAlignment.Top]
      103 SETTABLEKS                       R15 R14 K41 ["TextYAlignment"]
      105 GETIMPORT                        R15 K49 [Enum.AutomaticSize.XY]
      107 SETTABLEKS                       R15 R14 K42 ["AutomaticSize"]
      109 LOADK                            R17 K2 ["CannotConfigureSelectionDialog"]
      110 LOADK                            R18 K50 ["WarningMessage"]
      111 NEWTABLE                         R19 0 1
      113 LOADK                            R21 K51 ["<b>%*</b>"]
      114 GETUPVAL                         R23 2
      115 GETTABLEKS                       R23 R23 K17 ["CursorGroupName"]
      117 NAMECALL                         R21 R21 K52 ["format"]
      119 CALL                             R21 2 1
      120 MOVE                             R20 R21
      121 SETLIST                          R19 R20 1 [1]
      123 NAMECALL                         R15 R3 K18 ["getText"]
      125 CALL                             R15 4 1
      126 SETTABLEKS                       R15 R14 K21 ["Text"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K35 ["TextLabel"]
      131 CALL                             R8 3 1
      132 SETTABLEKS                       R8 R7 K26 ["Contents"]
      134 CALL                             R4 3 -1
      135 RETURN                           R4 -1

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
