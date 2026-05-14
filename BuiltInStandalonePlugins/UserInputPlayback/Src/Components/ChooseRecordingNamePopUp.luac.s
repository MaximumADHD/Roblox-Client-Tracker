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
       29 DUPTABLE                         R8 K16 [{"Key", "Text", "Style"}]
       30 LOADK                            R9 K17 ["Save"]
       31 SETTABLEKS                       R9 R8 K13 ["Key"]
       33 LOADK                            R11 K10 ["ChooseRecordingNamePopUp"]
       34 LOADK                            R12 K18 ["SaveButtonName"]
       35 NAMECALL                         R9 R2 K11 ["getText"]
       37 CALL                             R9 3 1
       38 SETTABLEKS                       R9 R8 K14 ["Text"]
       40 LOADK                            R9 K19 ["RoundPrimary"]
       41 SETTABLEKS                       R9 R8 K15 ["Style"]
       43 DUPTABLE                         R9 K16 [{"Key", "Text", "Style"}]
       44 LOADK                            R10 K20 ["Cancel"]
       45 SETTABLEKS                       R10 R9 K13 ["Key"]
       47 LOADK                            R12 K10 ["ChooseRecordingNamePopUp"]
       48 LOADK                            R13 K21 ["CancelButtonName"]
       49 NAMECALL                         R10 R2 K11 ["getText"]
       51 CALL                             R10 3 1
       52 SETTABLEKS                       R10 R9 K14 ["Text"]
       54 LOADK                            R10 K22 ["Round"]
       55 SETTABLEKS                       R10 R9 K15 ["Style"]
       57 SETLIST                          R7 R8 2 [1]
       59 SETTABLEKS                       R7 R6 K7 ["Buttons"]
       61 GETTABLEKS                       R7 R3 K23 ["ContentSize"]
       63 SETTABLEKS                       R7 R6 K8 ["MinContentSize"]
       65 DUPTABLE                         R7 K25 [{"Container"}]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K3 ["createElement"]
       69 GETUPVAL                         R9 2
       70 DUPTABLE                         R10 K31 [{"Size", "Position", "Spacing", "Layout", "HorizontalAlignment"}]
       71 GETTABLEKS                       R11 R3 K32 ["PanelSize"]
       73 SETTABLEKS                       R11 R10 K26 ["Size"]
       75 GETTABLEKS                       R11 R3 K33 ["PanelPosition"]
       77 SETTABLEKS                       R11 R10 K27 ["Position"]
       79 GETTABLEKS                       R11 R3 K34 ["PaddingPx"]
       81 SETTABLEKS                       R11 R10 K28 ["Spacing"]
       83 GETIMPORT                        R11 K38 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R11 R10 K29 ["Layout"]
       87 GETIMPORT                        R11 K40 [Enum.HorizontalAlignment.Left]
       89 SETTABLEKS                       R11 R10 K30 ["HorizontalAlignment"]
       91 DUPTABLE                         R11 K43 [{"Message", "Input"}]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K3 ["createElement"]
       95 GETUPVAL                         R13 3
       96 DUPTABLE                         R14 K47 [{"Size", "Text", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
       97 GETTABLEKS                       R15 R3 K48 ["DialogMessageSize"]
       99 SETTABLEKS                       R15 R14 K26 ["Size"]
      101 LOADK                            R17 K10 ["ChooseRecordingNamePopUp"]
      102 GETTABLEKS                       R18 R1 K49 ["MessageLocalizationKey"]
      104 DUPTABLE                         R19 K51 [{"numBytes"}]
      105 GETTABLEKS                       R21 R1 K52 ["MessageLocalizationArgs"]
      107 GETTABLEN                        R20 R21 1
      108 SETTABLEKS                       R20 R19 K50 ["numBytes"]
      110 NAMECALL                         R15 R2 K11 ["getText"]
      112 CALL                             R15 4 1
      113 SETTABLEKS                       R15 R14 K14 ["Text"]
      115 GETIMPORT                        R15 K53 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R15 R14 K44 ["TextXAlignment"]
      119 LOADB                            R15 1
      120 SETTABLEKS                       R15 R14 K45 ["TextWrapped"]
      122 LOADN                            R15 1
      123 SETTABLEKS                       R15 R14 K46 ["LayoutOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K41 ["Message"]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K3 ["createElement"]
      131 GETUPVAL                         R13 4
      132 GETTABLEKS                       R13 R13 K54 ["TextInput"]
      134 DUPTABLE                         R14 K57 [{"Size", "Text", "OnTextChanged", "Style", "PlaceholderText", "LayoutOrder"}]
      135 GETTABLEKS                       R15 R3 K58 ["TextInputSize"]
      137 SETTABLEKS                       R15 R14 K26 ["Size"]
      139 GETTABLEKS                       R15 R0 K59 ["state"]
      141 GETTABLEKS                       R15 R15 K60 ["dialogInputValue"]
      143 SETTABLEKS                       R15 R14 K14 ["Text"]
      145 GETTABLEKS                       R15 R0 K61 ["onTextInputChanged"]
      147 SETTABLEKS                       R15 R14 K55 ["OnTextChanged"]
      149 GETUPVAL                         R16 5
      150 JUMPIFNOT                        R16 ; [+2]
      151 LOADNIL                          R15
      152 JUMP                             ; [+1]
      153 LOADK                            R15 K62 ["RoundedBorder"]
      154 SETTABLEKS                       R15 R14 K15 ["Style"]
      156 LOADK                            R15 K63 [""]
      157 SETTABLEKS                       R15 R14 K56 ["PlaceholderText"]
      159 LOADN                            R15 2
      160 SETTABLEKS                       R15 R14 K46 ["LayoutOrder"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K42 ["Input"]
      165 CALL                             R8 3 1
      166 SETTABLEKS                       R8 R7 K24 ["Container"]
      168 CALL                             R4 3 -1
      169 RETURN                           R4 -1

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
       33 GETIMPORT                        R8 K14 [game]
       35 LOADK                            R10 K15 ["UserInputPlaybackPluginChooseRecordingNamePopUpFixStyle"]
       36 NAMECALL                         R8 R8 K16 ["GetFastFlag"]
       38 CALL                             R8 2 1
       39 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       41 LOADK                            R11 K18 ["ChooseRecordingNamePopUp"]
       42 NAMECALL                         R9 R9 K19 ["extend"]
       44 CALL                             R9 2 1
       45 DUPCLOSURE                       R10 K20 [PROTO_1]
       46 SETTABLEKS                       R10 R9 K21 ["init"]
       48 DUPCLOSURE                       R10 K22 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R10 R9 K23 ["render"]
       57 GETTABLEKS                       R10 R3 K24 ["withContext"]
       59 DUPTABLE                         R11 K27 [{"Stylizer", "Localization"}]
       60 GETTABLEKS                       R12 R3 K25 ["Stylizer"]
       62 SETTABLEKS                       R12 R11 K25 ["Stylizer"]
       64 GETTABLEKS                       R12 R3 K26 ["Localization"]
       66 SETTABLEKS                       R12 R11 K26 ["Localization"]
       68 CALL                             R10 1 1
       69 MOVE                             R11 R9
       70 CALL                             R10 1 1
       71 MOVE                             R9 R10
       72 RETURN                           R9 1
