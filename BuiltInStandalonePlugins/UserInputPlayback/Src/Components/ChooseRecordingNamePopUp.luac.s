PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dialogInputValue"}]
        2 SETTABLEKS                       R0 R3 K0 ["dialogInputValue"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["OnSaveButtonPressed"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["OnSaveButtonPressed prop not defined"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R1 K4 ["OnCancelButtonPressed"]
       10 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       12 LOADK                            R4 K5 ["OnCancelButtonPressed prop not defined"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K6 ["MessageLocalizationKey"]
       18 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       20 LOADK                            R4 K7 ["MessageLocalizationKey prop not defined"]
       21 GETIMPORT                        R2 K3 [assert]
       23 CALL                             R2 2 0
       24 DUPTABLE                         R4 K9 [{"dialogInputValue"}]
       25 GETTABLEKS                       R6 R1 K11 ["DefaultInputValue"]
       27 ORK                              R5 R6 K10 [""]
       28 SETTABLEKS                       R5 R4 K8 ["dialogInputValue"]
       30 NAMECALL                         R2 R0 K12 ["setState"]
       32 CALL                             R2 2 0
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R0 K13 ["onTextInputChanged"]
       37 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Save"] ; [+11]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["OnSaveButtonPressed"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["dialogInputValue"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKS                    R0 K4 ["Cancel"] ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["OnCancelButtonPressed"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize"}]
       11 LOADK                            R9 K10 ["ChooseRecordingNamePopUp"]
       12 LOADK                            R10 K4 ["Title"]
       13 NAMECALL                         R7 R2 K11 ["getText"]
       15 CALL                             R7 3 1
       16 SETTABLEKS                       R7 R6 K4 ["Title"]
       18 GETTABLEKS                       R7 R1 K12 ["OnCancelButtonPressed"]
       20 SETTABLEKS                       R7 R6 K5 ["OnClose"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R7 R6 K6 ["OnButtonPressed"]
       27 NEWTABLE                         R7 0 2
       29 DUPTABLE                         R8 K18 [{["Key"] = "Save", ["Text"], ["Style"] = "RoundPrimary"}]
       30 LOADK                            R11 K10 ["ChooseRecordingNamePopUp"]
       31 LOADK                            R12 K19 ["SaveButtonName"]
       32 NAMECALL                         R9 R2 K11 ["getText"]
       34 CALL                             R9 3 1
       35 SETTABLEKS                       R9 R8 K15 ["Text"]
       37 DUPTABLE                         R9 K22 [{["Key"] = "Cancel", ["Text"], ["Style"] = "Round"}]
       38 LOADK                            R12 K10 ["ChooseRecordingNamePopUp"]
       39 LOADK                            R13 K23 ["CancelButtonName"]
       40 NAMECALL                         R10 R2 K11 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K15 ["Text"]
       45 SETLIST                          R7 R8 2 [1]
       47 SETTABLEKS                       R7 R6 K7 ["Buttons"]
       49 GETTABLEKS                       R7 R3 K24 ["ContentSize"]
       51 SETTABLEKS                       R7 R6 K8 ["MinContentSize"]
       53 DUPTABLE                         R7 K26 [{"Container"}]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K3 ["createElement"]
       57 GETUPVAL                         R9 2
       58 DUPTABLE                         R10 K32 [{"Size", "Position", "Spacing", "Layout", "HorizontalAlignment"}]
       59 GETTABLEKS                       R11 R3 K33 ["PanelSize"]
       61 SETTABLEKS                       R11 R10 K27 ["Size"]
       63 GETTABLEKS                       R11 R3 K34 ["PanelPosition"]
       65 SETTABLEKS                       R11 R10 K28 ["Position"]
       67 GETTABLEKS                       R11 R3 K35 ["PaddingPx"]
       69 SETTABLEKS                       R11 R10 K29 ["Spacing"]
       71 GETIMPORT                        R11 K39 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R11 R10 K30 ["Layout"]
       75 GETIMPORT                        R11 K41 [Enum.HorizontalAlignment.Left]
       77 SETTABLEKS                       R11 R10 K31 ["HorizontalAlignment"]
       79 DUPTABLE                         R11 K44 [{"Message", "Input"}]
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K3 ["createElement"]
       83 GETUPVAL                         R13 3
       84 DUPTABLE                         R14 K50 [{["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
       85 GETTABLEKS                       R15 R3 K51 ["DialogMessageSize"]
       87 SETTABLEKS                       R15 R14 K27 ["Size"]
       89 LOADK                            R17 K10 ["ChooseRecordingNamePopUp"]
       90 GETTABLEKS                       R18 R1 K52 ["MessageLocalizationKey"]
       92 DUPTABLE                         R19 K54 [{"numBytes"}]
       93 GETTABLEKS                       R21 R1 K55 ["MessageLocalizationArgs"]
       95 GETTABLEN                        R20 R21 1
       96 SETTABLEKS                       R20 R19 K53 ["numBytes"]
       98 NAMECALL                         R15 R2 K11 ["getText"]
      100 CALL                             R15 4 1
      101 SETTABLEKS                       R15 R14 K15 ["Text"]
      103 GETIMPORT                        R15 K56 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R15 R14 K45 ["TextXAlignment"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K42 ["Message"]
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K3 ["createElement"]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R13 R13 K57 ["TextInput"]
      116 DUPTABLE                         R14 K62 [{["Size"], ["Text"], ["OnTextChanged"], ["PlaceholderText"] = "", ["LayoutOrder"] = 2}]
      117 GETTABLEKS                       R15 R3 K63 ["TextInputSize"]
      119 SETTABLEKS                       R15 R14 K27 ["Size"]
      121 GETTABLEKS                       R15 R0 K64 ["state"]
      123 GETTABLEKS                       R15 R15 K65 ["dialogInputValue"]
      125 SETTABLEKS                       R15 R14 K15 ["Text"]
      127 GETTABLEKS                       R15 R0 K66 ["onTextInputChanged"]
      129 SETTABLEKS                       R15 R14 K58 ["OnTextChanged"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K43 ["Input"]
      134 CALL                             R8 3 1
      135 SETTABLEKS                       R8 R7 K25 ["Container"]
      137 CALL                             R4 3 -1
      138 RETURN                           R4 -1

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
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETTABLEKS                       R6 R4 K11 ["TextLabel"]
       31 GETTABLEKS                       R7 R4 K12 ["StyledDialog"]
       33 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       35 LOADK                            R10 K14 ["ChooseRecordingNamePopUp"]
       36 NAMECALL                         R8 R8 K15 ["extend"]
       38 CALL                             R8 2 1
       39 DUPCLOSURE                       R9 K16 [PROTO_1]
       40 SETTABLEKS                       R9 R8 K17 ["init"]
       42 DUPCLOSURE                       R9 K18 [PROTO_3]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R9 R8 K19 ["render"]
       50 GETTABLEKS                       R9 R3 K20 ["withContext"]
       52 DUPTABLE                         R10 K23 [{"Stylizer", "Localization"}]
       53 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       55 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       57 GETTABLEKS                       R11 R3 K22 ["Localization"]
       59 SETTABLEKS                       R11 R10 K22 ["Localization"]
       61 CALL                             R9 1 1
       62 MOVE                             R10 R8
       63 CALL                             R9 1 1
       64 MOVE                             R8 R9
       65 RETURN                           R8 1
