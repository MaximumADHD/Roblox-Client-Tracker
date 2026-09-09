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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 LOADK                            R3 K0 ["%*-Touch-Instance"]
        4 ORK                              R5 R1 K1 ["keyCode"]
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K3 ["keyCode-Touch-Instance"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 LOADK                            R7 K4 ["UIButton cell '%*' not found from binding root"]
       15 MOVE                             R9 R2
       16 NAMECALL                         R7 R7 K2 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 CALL                             R3 3 1
       21 LOADK                            R6 K5 ["Text"]
       22 LOADB                            R7 1
       23 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       25 CALL                             R4 3 1
       26 MOVE                             R6 R4
       27 JUMPIFNOT                        R6 ; [+4]
       28 LOADK                            R8 K7 ["TextLabel"]
       29 NAMECALL                         R6 R4 K8 ["IsA"]
       31 CALL                             R6 2 1
       32 LOADK                            R8 K9 ["No label text found under '%*'"]
       33 MOVE                             R10 R2
       34 NAMECALL                         R8 R8 K2 ["format"]
       36 CALL                             R8 2 1
       37 MOVE                             R7 R8
       38 FASTCALL2                        ASSERT R6 R7 ; [+3]
       40 GETIMPORT                        R5 K11 [assert]
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R5 R4 K5 ["Text"]
       45 RETURN                           R5 1

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
       94 GETIMPORT                        R13 K18 [Enum.KeyCode.None]
       96 JUMPIFNOTEQ                      R3 R13 ; [+3]
       98 LOADK                            R12 K17 ["None"]
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R12 R3 K19 ["Name"]
      102 GETUPVAL                         R13 6
      103 MOVE                             R14 R10
      104 MOVE                             R15 R12
      105 CALL                             R13 2 1
      106 LOADK                            R16 K20 ["GuiButton"]
      107 NAMECALL                         R14 R13 K21 ["FindFirstAncestorWhichIsA"]
      109 CALL                             R14 2 1
      110 LOADK                            R18 K22 ["Button not found under '%*'"]
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
      127 GETIMPORT                        R16 K25 [Vector2.new]
      129 LOADN                            R17 0
      130 GETTABLEKS                       R18 R15 K8 ["Y"]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      135 GETUPVAL                         R17 7
      136 CALL                             R17 0 0
      137 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      139 GETUPVAL                         R17 7
      140 CALL                             R17 0 0
      141 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      143 GETUPVAL                         R17 7
      144 CALL                             R17 0 0
      145 GETUPVAL                         R17 1
      146 MOVE                             R18 R14
      147 CALL                             R17 1 0
      148 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+7]
        3 LOADK                            R4 K0 ["%*-Touch-Instance"]
        4 ORK                              R6 R2 K1 ["keyCode"]
        5 NAMECALL                         R4 R4 K2 ["format"]
        7 CALL                             R4 2 1
        8 MOVE                             R3 R4
        9 JUMP                             ; [+1]
       10 LOADK                            R3 K3 ["keyCode-Touch-Instance"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R0
       13 MOVE                             R6 R3
       14 LOADK                            R8 K4 ["Binding cell '%*' not found from binding root"]
       15 MOVE                             R10 R3
       16 NAMECALL                         R8 R8 K2 ["format"]
       18 CALL                             R8 2 1
       19 MOVE                             R7 R8
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 GETUPVAL                         R5 3
       25 NEWTABLE                         R7 0 1
       27 MOVE                             R8 R1
       28 SETLIST                          R7 R8 1 [1]
       30 NAMECALL                         R5 R5 K5 ["Set"]
       32 CALL                             R5 2 0
       33 GETUPVAL                         R5 4
       34 CALL                             R5 0 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 LOADK                            R3 K0 ["%*-Touch-Instance"]
        4 ORK                              R5 R1 K1 ["keyCode"]
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K3 ["keyCode-Touch-Instance"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 LOADK                            R7 K4 ["UIButton cell '%*' not found from binding root"]
       15 MOVE                             R9 R2
       16 NAMECALL                         R7 R7 K2 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 CALL                             R3 3 1
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 0
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R0
       28 LOADK                            R7 K5 ["%*--remove"]
       29 MOVE                             R9 R2
       30 NAMECALL                         R7 R7 K2 ["format"]
       32 CALL                             R7 2 1
       33 MOVE                             R6 R7
       34 LOADK                            R7 K6 ["Remove button not found"]
       35 CALL                             R4 3 1
       36 GETUPVAL                         R5 4
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 RETURN                           R0 0

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
      110 GETTABLEKS                       R22 R2 K13 ["Src"]
      112 GETTABLEKS                       R22 R22 K43 ["Flags"]
      114 GETIMPORT                        R23 K10 [require]
      116 GETTABLEKS                       R24 R22 K44 ["getFFlagIAMUIModifier"]
      118 CALL                             R23 1 1
      119 NEWTABLE                         R24 8 0
      121 DUPCLOSURE                       R25 K45 [PROTO_0]
      122 CAPTURE                          VAL R17
      123 SETTABLEKS                       R25 R24 K46 ["GetDisplayedKeycode"]
      125 DUPCLOSURE                       R25 K47 [PROTO_1]
      126 CAPTURE                          VAL R23
      127 CAPTURE                          VAL R17
      128 SETTABLEKS                       R25 R24 K48 ["GetDisplayedButton"]
      130 DUPCLOSURE                       R25 K49 [PROTO_3]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R15
      134 DUPCLOSURE                       R26 K50 [PROTO_4]
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R25
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R26 R24 K51 ["ChangeProperty"]
      145 DUPCLOSURE                       R26 K52 [PROTO_5]
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R12
      151 SETTABLEKS                       R26 R24 K53 ["ChangeButton"]
      153 DUPCLOSURE                       R26 K54 [PROTO_6]
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R14
      159 SETTABLEKS                       R26 R24 K55 ["DeleteButton"]
      161 DUPCLOSURE                       R26 K56 [PROTO_7]
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R20
      168 SETTABLEKS                       R26 R24 K57 ["CheckStatus"]
      170 RETURN                           R24 1
