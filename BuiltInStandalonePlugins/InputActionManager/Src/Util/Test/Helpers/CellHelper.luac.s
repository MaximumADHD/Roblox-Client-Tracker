PROTO_0:
        0 LOADK                            R4 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 LOADK                            R5 K2 ["%*--text"]
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R0
       15 MOVE                             R7 R4
       16 LOADK                            R9 K3 ["No label text found matching test id '%*'"]
       17 MOVE                             R11 R4
       18 NAMECALL                         R9 R9 K1 ["format"]
       20 CALL                             R9 2 1
       21 MOVE                             R8 R9
       22 CALL                             R5 3 1
       23 LOADK                            R9 K4 ["TextLabel"]
       24 NAMECALL                         R7 R5 K5 ["IsA"]
       26 CALL                             R7 2 1
       27 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       29 LOADK                            R8 K6 ["Incorrect element type for Text"]
       30 GETIMPORT                        R6 K8 [assert]
       32 CALL                             R6 2 0
       33 GETIMPORT                        R6 K11 [Enum.KeyCode]
       35 GETTABLEKS                       R8 R5 K12 ["Text"]
       37 NAMECALL                         R6 R6 K13 ["FromName"]
       39 CALL                             R6 2 1
       40 LOADK                            R10 K14 ["Invalid key code name: '%*'"]
       41 GETTABLEKS                       R12 R5 K12 ["Text"]
       43 NAMECALL                         R10 R10 K1 ["format"]
       45 CALL                             R10 2 1
       46 MOVE                             R9 R10
       47 FASTCALL2                        ASSERT R6 R9 ; [+4]
       49 MOVE                             R8 R6
       50 GETIMPORT                        R7 K8 [assert]
       52 CALL                             R7 2 0
       53 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["keyCode-Touch-Instance"]
        3 LOADK                            R4 K1 ["UIButton cell 'keyCode-Touch-Instance' not found from binding root"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K2 ["Text"]
        6 LOADB                            R5 1
        7 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
        9 CALL                             R2 3 1
       10 MOVE                             R4 R2
       11 JUMPIFNOT                        R4 ; [+4]
       12 LOADK                            R6 K4 ["TextLabel"]
       13 NAMECALL                         R4 R2 K5 ["IsA"]
       15 CALL                             R4 2 1
       16 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       18 LOADK                            R5 K6 ["No label text found under 'keyCode-Touch-Instance'"]
       19 GETIMPORT                        R3 K8 [assert]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R2 K2 ["Text"]
       24 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["%*--filter--internal-text-input--textbox"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R3
        9 LOADK                            R8 K2 ["Dropdown filter input '%*' not found from binding root"]
       10 MOVE                             R10 R3
       11 NAMECALL                         R8 R8 K1 ["format"]
       13 CALL                             R8 2 1
       14 MOVE                             R7 R8
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 1
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R6 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R8 R1
        2 MOVE                             R9 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 3 1
        6 MOVE                             R5 R6
        7 LOADK                            R7 K2 ["%*--control"]
        8 MOVE                             R9 R5
        9 NAMECALL                         R7 R7 K1 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 GETUPVAL                         R7 0
       14 MOVE                             R8 R0
       15 MOVE                             R9 R6
       16 LOADK                            R11 K3 ["Dropdown control '%*' not found from binding root"]
       17 MOVE                             R13 R6
       18 NAMECALL                         R11 R11 K1 ["format"]
       20 CALL                             R11 2 1
       21 MOVE                             R10 R11
       22 CALL                             R7 3 1
       23 GETUPVAL                         R8 1
       24 MOVE                             R9 R7
       25 CALL                             R8 1 0
       26 GETUPVAL                         R8 2
       27 CALL                             R8 0 0
       28 JUMPIFNOT                        R4 ; [+5]
       29 GETUPVAL                         R8 3
       30 MOVE                             R9 R0
       31 MOVE                             R10 R5
       32 MOVE                             R11 R4
       33 CALL                             R8 3 0
       34 LOADK                            R9 K4 ["%*--content"]
       35 MOVE                             R11 R5
       36 NAMECALL                         R9 R9 K1 ["format"]
       38 CALL                             R9 2 1
       39 MOVE                             R8 R9
       40 GETUPVAL                         R9 4
       41 GETUPVAL                         R10 5
       42 MOVE                             R11 R8
       43 CALL                             R9 2 1
       44 LOADNIL                          R10
       45 MOVE                             R11 R9
       46 LOADNIL                          R12
       47 LOADNIL                          R13
       48 FORGPREP                         R11
       49 GETTABLEKS                       R16 R15 K5 ["AbsolutePosition"]
       51 GETTABLEKS                       R16 R16 K6 ["X"]
       53 JUMPIFEQKN                       R16 K7 [0] ; [+9]
       55 GETTABLEKS                       R16 R15 K5 ["AbsolutePosition"]
       57 GETTABLEKS                       R16 R16 K8 ["Y"]
       59 JUMPIFEQKN                       R16 K7 [0] ; [+3]
       61 MOVE                             R10 R15
       62 JUMP                             ; [+2]
       63 FORGLOOP                         R11 2 ; [-15]
       65 LOADK                            R14 K9 ["Dropdown menu '%*' not found from binding root"]
       66 MOVE                             R16 R8
       67 NAMECALL                         R14 R14 K1 ["format"]
       69 CALL                             R14 2 1
       70 MOVE                             R13 R14
       71 FASTCALL2                        ASSERT R10 R13 ; [+4]
       73 MOVE                             R12 R10
       74 GETIMPORT                        R11 K11 [assert]
       76 CALL                             R11 2 0
       77 LOADK                            R13 K12 ["ScrollingFrame"]
       78 LOADB                            R14 1
       79 NAMECALL                         R11 R10 K13 ["FindFirstChildWhichIsA"]
       81 CALL                             R11 3 1
       82 LOADK                            R15 K14 ["ScrollingFrame not found under '%*'"]
       83 MOVE                             R17 R8
       84 NAMECALL                         R15 R15 K1 ["format"]
       86 CALL                             R15 2 1
       87 MOVE                             R14 R15
       88 FASTCALL2                        ASSERT R11 R14 ; [+4]
       90 MOVE                             R13 R11
       91 GETIMPORT                        R12 K11 [assert]
       93 CALL                             R12 2 0
       94 GETIMPORT                        R13 K18 [Enum.KeyCode.Unknown]
       96 JUMPIFNOTEQ                      R3 R13 ; [+3]
       98 LOADK                            R12 K19 ["None"]
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R12 R3 K20 ["Name"]
      102 GETUPVAL                         R13 6
      103 MOVE                             R14 R10
      104 MOVE                             R15 R12
      105 CALL                             R13 2 1
      106 LOADK                            R16 K21 ["GuiButton"]
      107 NAMECALL                         R14 R13 K22 ["FindFirstAncestorWhichIsA"]
      109 CALL                             R14 2 1
      110 LOADK                            R18 K23 ["Button not found under '%*'"]
      111 MOVE                             R20 R8
      112 NAMECALL                         R18 R18 K1 ["format"]
      114 CALL                             R18 2 1
      115 MOVE                             R17 R18
      116 FASTCALL2                        ASSERT R14 R17 ; [+4]
      118 MOVE                             R16 R14
      119 GETIMPORT                        R15 K11 [assert]
      121 CALL                             R15 2 0
      122 GETTABLEKS                       R16 R14 K5 ["AbsolutePosition"]
      124 GETTABLEKS                       R17 R11 K5 ["AbsolutePosition"]
      126 SUB                              R15 R16 R17
      127 GETIMPORT                        R16 K26 [Vector2.new]
      129 LOADN                            R17 0
      130 GETTABLEKS                       R18 R15 K8 ["Y"]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R11 K27 ["CanvasPosition"]
      135 GETUPVAL                         R17 7
      136 CALL                             R17 0 0
      137 SETTABLEKS                       R16 R11 K27 ["CanvasPosition"]
      139 GETUPVAL                         R17 7
      140 CALL                             R17 0 0
      141 SETTABLEKS                       R16 R11 K27 ["CanvasPosition"]
      143 GETUPVAL                         R17 7
      144 CALL                             R17 0 0
      145 GETUPVAL                         R17 1
      146 MOVE                             R18 R14
      147 CALL                             R17 1 0
      148 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["keyCode-Touch-Instance"]
        3 LOADK                            R5 K1 ["Binding cell 'keyCode-Touch-Instance' not found from binding root"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 2
        9 NEWTABLE                         R5 0 1
       11 MOVE                             R6 R1
       12 SETLIST                          R5 R6 1 [1]
       14 NAMECALL                         R3 R3 K2 ["Set"]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 3
       18 CALL                             R3 0 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["keyCode-Touch-Instance"]
        3 LOADK                            R4 K1 ["UIButton cell 'keyCode-Touch-Instance' not found from binding root"]
        4 CALL                             R1 3 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 LOADK                            R4 K2 ["keyCode-Touch-Instance--remove"]
       13 LOADK                            R5 K3 ["Remove button not found"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K0 ["property cell element is required"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 LOADK                            R7 K3 ["status"]
       10 LOADK                            R8 K4 ["Status anchor not found in property cell"]
       11 CALL                             R5 3 1
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 0
       14 GETUPVAL                         R6 2
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 GETUPVAL                         R6 1
       18 CALL                             R6 0 0
       19 GETUPVAL                         R6 3
       20 GETUPVAL                         R7 4
       21 MOVE                             R8 R2
       22 MOVE                             R9 R3
       23 MOVE                             R10 R4
       24 CALL                             R6 4 1
       25 GETUPVAL                         R7 5
       26 MOVE                             R8 R0
       27 GETTABLEKS                       R9 R6 K5 ["Title"]
       29 LOADK                            R11 K6 ["Status title '%*' not found"]
       30 GETTABLEKS                       R13 R6 K5 ["Title"]
       32 NAMECALL                         R11 R11 K7 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 CALL                             R7 3 0
       37 GETUPVAL                         R7 5
       38 MOVE                             R8 R0
       39 GETTABLEKS                       R9 R6 K8 ["Message"]
       41 LOADK                            R11 K9 ["Status message '%*' not found"]
       42 GETTABLEKS                       R13 R6 K8 ["Message"]
       44 NAMECALL                         R11 R11 K7 ["format"]
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 CALL                             R7 3 0
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K15 ["StudioFoundation"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K16 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["Localization"]
       44 GETTABLEKS                       R7 R2 K13 ["Src"]
       46 GETTABLEKS                       R7 R7 K18 ["Resources"]
       48 GETTABLEKS                       R7 R7 K17 ["Localization"]
       50 GETTABLEKS                       R7 R7 K19 ["SourceStrings"]
       52 GETTABLEKS                       R8 R2 K13 ["Src"]
       54 GETTABLEKS                       R8 R8 K18 ["Resources"]
       56 GETTABLEKS                       R8 R8 K17 ["Localization"]
       58 GETTABLEKS                       R8 R8 K20 ["LocalizedStrings"]
       60 GETIMPORT                        R9 K10 [require]
       62 GETTABLEKS                       R10 R2 K13 ["Src"]
       64 GETTABLEKS                       R10 R10 K21 ["Util"]
       66 GETTABLEKS                       R10 R10 K22 ["Binding"]
       68 GETTABLEKS                       R10 R10 K23 ["createStatusEntry"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K10 [require]
       73 GETIMPORT                        R11 K6 [script]
       75 GETTABLEKS                       R11 R11 K24 ["Parent"]
       77 GETTABLEKS                       R11 R11 K25 ["TestHelper"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R10 K26 ["act"]
       82 GETTABLEKS                       R12 R10 K27 ["awaitDeferAsync"]
       84 GETTABLEKS                       R13 R10 K28 ["updateStyling"]
       86 GETTABLEKS                       R14 R10 K29 ["click"]
       88 GETTABLEKS                       R15 R10 K30 ["change"]
       90 GETTABLEKS                       R16 R10 K31 ["mouseEnter"]
       92 GETTABLEKS                       R17 R10 K32 ["queryByTestId"]
       94 GETTABLEKS                       R18 R10 K33 ["queryAllByTestId"]
       96 GETTABLEKS                       R19 R10 K34 ["queryByText"]
       98 GETTABLEKS                       R20 R10 K35 ["getAllByText"]
      100 GETTABLEKS                       R21 R6 K17 ["Localization"]
      102 GETTABLEKS                       R21 R21 K36 ["new"]
      104 DUPTABLE                         R22 K42 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      105 SETTABLEKS                       R7 R22 K37 ["stringResourceTable"]
      107 SETTABLEKS                       R8 R22 K38 ["translationResourceTable"]
      109 CALL                             R21 1 1
      110 NEWTABLE                         R22 8 0
      112 DUPCLOSURE                       R23 K43 [PROTO_0]
      113 CAPTURE                          VAL R17
      114 SETTABLEKS                       R23 R22 K44 ["GetDisplayedKeycode"]
      116 DUPCLOSURE                       R23 K45 [PROTO_1]
      117 CAPTURE                          VAL R17
      118 SETTABLEKS                       R23 R22 K46 ["GetDisplayedButton"]
      120 DUPCLOSURE                       R23 K47 [PROTO_3]
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R15
      124 DUPCLOSURE                       R24 K48 [PROTO_4]
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R23
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R12
      133 SETTABLEKS                       R24 R22 K49 ["ChangeProperty"]
      135 DUPCLOSURE                       R24 K50 [PROTO_5]
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R12
      140 SETTABLEKS                       R24 R22 K51 ["ChangeButton"]
      142 DUPCLOSURE                       R24 K52 [PROTO_6]
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R14
      147 SETTABLEKS                       R24 R22 K53 ["DeleteButton"]
      149 DUPCLOSURE                       R24 K54 [PROTO_7]
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R20
      156 SETTABLEKS                       R24 R22 K55 ["CheckStatus"]
      158 RETURN                           R22 1
